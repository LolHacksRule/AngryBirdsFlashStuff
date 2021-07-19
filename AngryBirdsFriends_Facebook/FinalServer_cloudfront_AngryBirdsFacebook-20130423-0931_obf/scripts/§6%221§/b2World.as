package §6"1§
{
   import §!"3§.*;
   import §'"-§.*;
   import §'"6§.*;
   import §,"[§.*;
   import §,,§.*;
   import §6!^§.*;
   import §?D§.b2Controller;
   import §?D§.b2ControllerEdge;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep;
      
      private static var §?n§:b2Transform;
      
      private static var §'!E§:b2Sweep;
      
      private static var §-"#§:b2Sweep;
      
      private static var §@!,§:b2TimeStep;
      
      private static var §-!<§:Vector.<b2Body>;
      
      private static var §<g§:b2Color;
      
      private static var § !D§:Boolean;
      
      private static var §^!O§:Boolean;
      
      public static const §-!M§:int = 1;
      
      public static const §'!w§:int = 2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            s_timestep2 = new b2TimeStep();
            loop0:
            while(true)
            {
               §?n§ = new b2Transform();
               while(true)
               {
                  §'!E§ = new b2Sweep();
                  continue loop0;
                  loop4:
                  for(; !_loc2_; loop7:
                  while(_loc1_ || _loc1_)
                  {
                     while(true)
                     {
                        §'!w§ = 2;
                        if(_loc2_)
                        {
                           continue loop7;
                        }
                        §§goto(addr34);
                     }
                     §§goto(addr50);
                  })
                  {
                     §-!<§ = new Vector.<b2Body>();
                     loop5:
                     while(!_loc2_)
                     {
                        §<g§ = new b2Color(0.5,0.8,0.8);
                        while(true)
                        {
                           §-!M§ = 1;
                           continue loop4;
                           addr34:
                           if(_loc2_ && _loc2_)
                           {
                              continue;
                           }
                           if(_loc2_)
                           {
                              continue loop5;
                           }
                           addr43:
                           if(!(_loc2_ && _loc1_))
                           {
                              return;
                              addr50:
                           }
                           else
                           {
                              addr115:
                           }
                           while(true)
                           {
                              §@!,§ = new b2TimeStep();
                              continue loop4;
                              §§goto(addr43);
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr72);
      }
      
      private var §%"&§:Vector.<b2Body>;
      
      b2internal var §2"B§:int;
      
      b2internal var §9s§:b2ContactManager;
      
      private var §,"V§:b2ContactSolver;
      
      private var §8!J§:b2Island;
      
      b2internal var §6t§:b2Body;
      
      private var §@!g§:b2Joint;
      
      b2internal var §>"K§:b2Contact;
      
      private var §;0§:int;
      
      b2internal var §%!0§:int;
      
      private var §<!y§:int;
      
      private var §]!5§:b2Controller;
      
      private var §>+§:int;
      
      private var §!F§:b2Vec2;
      
      private var §,!T§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §4"<§:b2DestructionListener;
      
      private var §1s§:b2DebugDraw;
      
      private var §4!Z§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            this.§%"&§ = new Vector.<b2Body>();
            loop0:
            while(true)
            {
               this.§9s§ = new b2ContactManager();
               loop1:
               while(true)
               {
                  this.§,"V§ = new b2ContactSolver();
                  while(true)
                  {
                     this.§8!J§ = new b2Island();
                     addr211:
                     while(true)
                     {
                        super();
                        addr205:
                        while(true)
                        {
                           this.§4"<§ = null;
                        }
                     }
                     addr98:
                     if(_loc4_ && this)
                     {
                        continue;
                     }
                     this.§,!T§ = param2;
                     while(!(_loc4_ && param2))
                     {
                        continue loop1;
                     }
                     loop10:
                     while(true)
                     {
                        if(_loc5_)
                        {
                           if(_loc5_)
                           {
                              if(_loc5_)
                              {
                                 this.§;0§ = 0;
                                 loop11:
                                 while(true)
                                 {
                                    this.§%!0§ = 0;
                                    addr144:
                                    addr191:
                                    loop12:
                                    for(; !(_loc4_ && _loc3_); while(_loc5_ || param2)
                                    {
                                       if(!_loc5_)
                                       {
                                          continue loop11;
                                       }
                                       §^!O§ = true;
                                       §§goto(addr96);
                                    })
                                    {
                                       if(!_loc4_)
                                       {
                                          this.§<!y§ = 0;
                                          loop13:
                                          while(true)
                                          {
                                             this.§>+§ = 0;
                                             while(true)
                                             {
                                                § !D§ = true;
                                                continue loop12;
                                                addr65:
                                                if(_loc5_ || this)
                                                {
                                                   loop19:
                                                   while(true)
                                                   {
                                                      this.§4!Z§ = 0;
                                                      while(true)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               break;
                                                            }
                                                            this.§9s§.m_world = this;
                                                            if(!(_loc4_ && param1))
                                                            {
                                                               continue loop19;
                                                            }
                                                            continue;
                                                         }
                                                         addr54:
                                                         while(true)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               continue loop10;
                                                            }
                                                            addr56:
                                                            if(!(_loc4_ && param2))
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr65);
                                                            }
                                                            else
                                                            {
                                                               while(_loc5_)
                                                               {
                                                                  §§goto(addr98);
                                                                  §§goto(addr56);
                                                               }
                                                               §§goto(addr205);
                                                               addr96:
                                                            }
                                                         }
                                                         continue loop12;
                                                      }
                                                      continue loop0;
                                                   }
                                                   continue loop13;
                                                }
                                             }
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             this.§1s§ = null;
                                             break loop10;
                                          }
                                          addr201:
                                       }
                                    }
                                    while(true)
                                    {
                                       this.§>"K§ = null;
                                       continue loop0;
                                       §§goto(addr144);
                                    }
                                 }
                              }
                              else
                              {
                                 §§goto(addr211);
                              }
                              §§goto(addr205);
                           }
                           break;
                        }
                        addr174:
                        while(true)
                        {
                           this.§]!5§ = null;
                           continue loop10;
                        }
                     }
                     addr77:
                     while(true)
                     {
                        this.§6t§ = null;
                        §§goto(addr191);
                     }
                  }
               }
            }
         }
         §§goto(addr201);
      }
      
      public function §["Y§(param1:b2DestructionListener) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§4"<§ = param1;
         }
      }
      
      public function §=!Q§(param1:b2ContactFilter) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§9s§.§]"B§ = param1;
         }
      }
      
      public function § "Q§(param1:b2ContactListener) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§9s§.§4!O§ = param1;
         }
      }
      
      public function §@!C§(param1:b2DebugDraw) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§1s§ = param1;
         }
      }
      
      public function §6'§(param1:§3Q§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:b2Fixture = null;
         var _loc2_:§3Q§ = this.§9s§.§9"§;
         if(_loc6_)
         {
            this.§9s§.§9"§ = param1;
         }
         var _loc3_:b2Body = this.§6t§;
         for(; _loc3_; _loc3_ = _loc3_.§?!g§)
         {
            _loc4_ = _loc3_.§64§;
            if(!(_loc5_ && _loc3_))
            {
               loop1:
               while(_loc4_)
               {
                  _loc4_.§2!x§ = param1.§!!$§(_loc2_.§""8§(_loc4_.§2!x§),_loc4_);
                  if(!_loc6_)
                  {
                     break;
                  }
                  while(true)
                  {
                     _loc4_ = _loc4_.§?!g§;
                     continue loop1;
                  }
               }
               continue;
            }
            §§goto(addr81);
         }
      }
      
      public function §8!V§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§9s§.§9"§.§8!V§();
         }
      }
      
      public function §4!>§() : int
      {
         return this.§9s§.§9"§.§4!>§();
      }
      
      public function §@H§(param1:b2BodyDef) : b2Body
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            if(this.§?"A§() == true)
            {
               if(_loc5_ || param1)
               {
                  return null;
               }
            }
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         if(_loc5_)
         {
            _loc2_.§;<§ = null;
            while(true)
            {
               _loc2_.§?!g§ = this.§6t§;
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §§push(this.§6t§);
                     if(!(_loc6_ && this))
                     {
                        if(!§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              this.§6t§ = _loc2_;
                              if(!_loc6_)
                              {
                                 if(_loc6_ && param1)
                                 {
                                    continue loop1;
                                 }
                                 addr53:
                                 if(_loc5_ || param1)
                                 {
                                    if(true)
                                    {
                                       var _loc3_:*;
                                       §§push((_loc3_ = this).§;0§);
                                       if(!(_loc6_ && this))
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc4_:* = §§pop();
                                    }
                                    continue loop2;
                                    if(_loc5_ || param1)
                                    {
                                       _loc3_.§;0§ = _loc4_;
                                    }
                                    break;
                                 }
                                 addr83:
                                 while(true)
                                 {
                                    §§push(this.§6t§);
                                    addr85:
                                    while(true)
                                    {
                                       §§pop().§;<§ = _loc2_;
                                       continue loop1;
                                    }
                                    §§goto(addr53);
                                 }
                              }
                              break;
                              addr101:
                              while(true)
                              {
                                 continue loop4;
                              }
                           }
                           return _loc2_;
                        }
                        §§goto(addr83);
                     }
                     §§goto(addr85);
                  }
               }
               if(!(_loc5_ || this))
               {
                  continue;
               }
               §§goto(addr101);
            }
         }
         §§goto(addr101);
      }
      
      public function §#!O§(param1:b2Body) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(_loc13_ || param1)
         {
            if(this.§?"A§() == true)
            {
               if(_loc13_ || this)
               {
                  return;
               }
            }
         }
         var _loc2_:b2JointEdge = param1.§@!g§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§3u§;
            if(_loc13_)
            {
               §§push(this.§4"<§);
               if(!(_loc12_ && param1))
               {
                  if(§§pop())
                  {
                     if(_loc12_ && _loc2_)
                     {
                        continue;
                     }
                     §§push(this.§4"<§);
                  }
                  addr87:
                  this.§0§(_loc6_.§<S§);
                  continue;
               }
               §§pop().§'!K§(_loc6_.§<S§);
               if(!_loc13_)
               {
                  continue;
               }
            }
            §§goto(addr87);
         }
         var _loc3_:b2ControllerEdge = param1.§]!5§;
         if(_loc13_)
         {
            while(_loc3_)
            {
               _loc7_ = _loc3_;
               _loc3_ = _loc3_.§@!'§;
               if(!(_loc12_ && param1))
               {
                  _loc7_.§5-§.§!!z§(param1);
               }
            }
         }
         var _loc4_:b2ContactEdge = param1.§>"K§;
         if(_loc13_ || param1)
         {
            while(_loc4_)
            {
               _loc8_ = _loc4_;
               _loc4_ = _loc4_.§3u§;
               if(_loc13_ || this)
               {
                  this.§9s§.§2!s§(_loc8_.§-"G§);
               }
            }
            if(_loc13_)
            {
               param1.§>"K§ = null;
            }
         }
         var _loc5_:b2Fixture = param1.§64§;
         if(!_loc12_)
         {
            loop3:
            while(_loc5_)
            {
               _loc9_ = _loc5_;
               _loc5_ = _loc5_.§?!g§;
               if(!(_loc12_ && param1))
               {
                  §§push(this.§4"<§);
                  if(_loc13_ || _loc2_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc12_ && param1))
                        {
                           addr233:
                           this.§4"<§.§,"H§(_loc9_);
                        }
                        loop4:
                        while(true)
                        {
                           addr213:
                           loop6:
                           while(true)
                           {
                              _loc9_.§2!s§();
                              if(!(_loc13_ || _loc3_))
                              {
                                 continue;
                              }
                              if(!_loc13_)
                              {
                                 continue loop4;
                              }
                              if(true)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 _loc9_.§&-§(this.§9s§.§9"§);
                                 continue loop6;
                              }
                           }
                           continue loop3;
                        }
                     }
                     §§goto(addr207);
                  }
                  §§goto(addr233);
               }
               §§goto(addr213);
            }
            if(!_loc12_)
            {
               param1.§64§ = null;
               if(!(_loc12_ && this))
               {
                  param1.§&!I§ = 0;
                  loop7:
                  while(true)
                  {
                     §§push(param1.§;<§);
                     if(_loc13_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc12_ && _loc3_))
                           {
                              addr321:
                              param1.§;<§.§?!g§ = param1.§?!g§;
                           }
                           loop8:
                           while(true)
                           {
                              loop13:
                              while(true)
                              {
                                 if(_loc12_ && _loc2_)
                                 {
                                    continue loop8;
                                 }
                                 if(_loc12_)
                                 {
                                    continue loop7;
                                 }
                                 if(false)
                                 {
                                    while(true)
                                    {
                                       §§push(param1.§?!g§);
                                       if(!(_loc12_ && this))
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc12_)
                                             {
                                                while(true)
                                                {
                                                   §§push(param1.§?!g§);
                                                   addr302:
                                                   while(true)
                                                   {
                                                      §§pop().§;<§ = param1.§;<§;
                                                   }
                                                }
                                                addr300:
                                             }
                                             while(true)
                                             {
                                                addr258:
                                                if(_loc13_ || _loc3_)
                                                {
                                                   while(true)
                                                   {
                                                      this.§6t§ = param1.§?!g§;
                                                      if(_loc12_ && param1)
                                                      {
                                                         break;
                                                      }
                                                      continue loop13;
                                                   }
                                                   addr364:
                                                   return;
                                                   addr265:
                                                }
                                             }
                                             addr305:
                                          }
                                          while(param1 == this.§6t§)
                                          {
                                             if(!_loc13_)
                                             {
                                                continue loop13;
                                             }
                                             §§goto(addr258);
                                             §§goto(addr305);
                                          }
                                          addr339:
                                          var _loc10_:*;
                                          §§push((_loc10_ = this).§;0§);
                                          if(!(_loc12_ && param1))
                                          {
                                             §§push(§§pop() - 1);
                                          }
                                          var _loc11_:* = §§pop();
                                          if(!(_loc12_ && param1))
                                          {
                                             _loc10_.§;0§ = _loc11_;
                                          }
                                          §§goto(addr364);
                                       }
                                       §§goto(addr302);
                                    }
                                    continue loop7;
                                    addr287:
                                 }
                                 §§goto(addr339);
                              }
                           }
                        }
                        §§goto(addr287);
                     }
                     §§goto(addr321);
                  }
               }
               §§goto(addr265);
            }
         }
         §§goto(addr300);
      }
      
      public function §]"&§(param1:b2JointDef) : b2Joint
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§3!N§(param1,null);
         if(_loc8_ || this)
         {
            _loc2_.§;<§ = null;
            if(_loc8_)
            {
               _loc2_.§?!g§ = this.§@!g§;
               if(!(_loc9_ && _loc3_))
               {
                  while(true)
                  {
                     §§push(this.§@!g§);
                     if(_loc8_ || param1)
                     {
                        if(§§pop())
                        {
                           if(_loc8_)
                           {
                              addr56:
                              this.§@!g§.§;<§ = _loc2_;
                              if(_loc8_)
                              {
                                 addr33:
                                 this.§@!g§ = _loc2_;
                                 if(_loc8_)
                                 {
                                    if(false)
                                    {
                                       continue;
                                    }
                                    var _loc6_:*;
                                    §§push((_loc6_ = this).§<!y§);
                                    if(_loc8_)
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    var _loc7_:* = §§pop();
                                    if(_loc8_)
                                    {
                                       _loc6_.§<!y§ = _loc7_;
                                    }
                                    if(!_loc9_)
                                    {
                                       §§push(_loc2_.§,E§);
                                       loop1:
                                       while(true)
                                       {
                                          §§pop().§<S§ = _loc2_;
                                          while(true)
                                          {
                                             §§push(_loc2_.§,E§);
                                             loop3:
                                             while(true)
                                             {
                                                §§pop().§[!!§ = _loc2_.§5!§;
                                                while(true)
                                                {
                                                   §§push(_loc2_.§,E§);
                                                   while(!_loc9_)
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         §§pop().§ " § = null;
                                                         while(true)
                                                         {
                                                            §§push(_loc2_.§,E§);
                                                            if(!(_loc8_ || param1))
                                                            {
                                                               break;
                                                            }
                                                            §§pop().§3u§ = _loc2_.§3"X§.§@!g§;
                                                            while(true)
                                                            {
                                                               §§push(_loc2_.§3"X§);
                                                               loop8:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().§@!g§);
                                                                  addr287:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        addr288:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_.§3"X§);
                                                                           addr290:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().§@!g§);
                                                                              addr291:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().§ " § = _loc2_.§,E§;
                                                                                 addr294:
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr288:
                                                                     }
                                                                     addr262:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_.§3"X§);
                                                                        if(!(_loc9_ && this))
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                        §§goto(addr290);
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                               }
                                                               while(_loc8_ || _loc3_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr229);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         continue;
                                                      }
                                                      continue loop1;
                                                   }
                                                   continue loop3;
                                                }
                                             }
                                          }
                                       }
                                       addr97:
                                    }
                                    §§goto(addr225);
                                 }
                                 §§goto(addr97);
                              }
                              break;
                           }
                           §§goto(addr261);
                        }
                        §§goto(addr33);
                     }
                     §§goto(addr56);
                  }
                  while(true)
                  {
                     §§goto(addr124);
                  }
               }
               §§goto(addr248);
            }
            §§goto(addr288);
         }
         §§goto(addr156);
      }
      
      public function §0§(param1:b2Joint) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:b2ContactEdge = null;
         §§push(param1.§8_§);
         if(_loc8_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc9_ && _loc2_))
         {
            §§push(param1.§;<§);
            if(!_loc9_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(param1.§;<§);
                     addr88:
                     while(true)
                     {
                        §§pop().§?!g§ = param1.§?!g§;
                        addr91:
                        while(true)
                        {
                        }
                     }
                     addr42:
                     if(!(_loc8_ || _loc2_))
                     {
                        continue;
                     }
                     this.§@!g§ = param1.§?!g§;
                     addr53:
                     if(!(_loc9_ && this))
                     {
                        while(true)
                        {
                           if(false)
                           {
                              while(true)
                              {
                                 §§push(param1.§?!g§);
                                 if(!_loc9_)
                                 {
                                    if(§§pop())
                                    {
                                       loop2:
                                       while(true)
                                       {
                                          §§push(param1.§?!g§);
                                          addr70:
                                          while(true)
                                          {
                                             §§pop().§;<§ = param1.§;<§;
                                             addr73:
                                             while(true)
                                             {
                                                if(_loc8_ || _loc3_)
                                                {
                                                   while(true)
                                                   {
                                                      if(param1 == this.§@!g§)
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               continue loop2;
                                                            }
                                                            §§goto(addr42);
                                                         }
                                                         §§goto(addr53);
                                                      }
                                                      else
                                                      {
                                                         addr92:
                                                         var _loc3_:b2Body = param1.§3"X§;
                                                         var _loc4_:b2Body = param1.§5!§;
                                                         if(_loc8_ || this)
                                                         {
                                                            _loc3_.SetAwake(true);
                                                            loop9:
                                                            while(true)
                                                            {
                                                               _loc4_.SetAwake(true);
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  §§push(param1.§,E§);
                                                                  loop11:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().§ " §);
                                                                     loop12:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           while(_loc8_)
                                                                           {
                                                                              §§push(param1.§,E§);
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().§ " §);
                                                                                 addr402:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param1.§,E§.§3u§);
                                                                                    addr405:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().§3u§ = §§pop();
                                                                                       addr406:
                                                                                       while(true)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop10;
                                                                           addr397:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(param1.§,E§);
                                                                           if(_loc8_)
                                                                           {
                                                                              §§push(§§pop().§3u§);
                                                                              loop19:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param1.§,E§);
                                                                                       addr386:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().§3u§);
                                                                                          addr387:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(param1.§,E§.§ " §);
                                                                                             addr390:
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop().§ " § = §§pop();
                                                                                                addr391:
                                                                                                while(true)
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr384:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param1.§,E§);
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop() == _loc3_.§@!g§)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             _loc3_.§@!g§ = param1.§,E§.§3u§;
                                                                                             addr374:
                                                                                             while(!_loc9_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(param1.§,E§);
                                                                                                   loop26:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc9_ && this))
                                                                                                      {
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§push(null);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().§ " § = §§pop();
                                                                                                               §§push(null);
                                                                                                               addr329:
                                                                                                               continue loop26;
                                                                                                               if(_loc8_ || _loc3_)
                                                                                                               {
                                                                                                                  §§pop().§3u§ = §§pop();
                                                                                                                  continue loop9;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr401);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr386);
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop11;
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr406);
                                                                                          }
                                                                                          addr369:
                                                                                       }
                                                                                       §§goto(addr346);
                                                                                    }
                                                                                 }
                                                                                 addr243:
                                                                                 if(!(_loc8_ || _loc2_))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(§§pop())
                                                                                 {
                                                                                    while(_loc8_)
                                                                                    {
                                                                                       §§push(param1.§?!B§);
                                                                                       loop34:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().§3u§);
                                                                                          loop41:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                §§push(param1.§?!B§.§ " §);
                                                                                                if(!(_loc9_ && _loc2_))
                                                                                                {
                                                                                                   §§pop().§ " § = §§pop();
                                                                                                   loop42:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         addr271:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(param1.§?!B§);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  if(§§pop() == _loc4_.§@!g§)
                                                                                                                  {
                                                                                                                     if(_loc8_ || _loc2_)
                                                                                                                     {
                                                                                                                        _loc4_.§@!g§ = param1.§?!B§.§3u§;
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              continue loop42;
                                                                                                                           }
                                                                                                                           if(_loc8_)
                                                                                                                           {
                                                                                                                              if(!(_loc9_ && this))
                                                                                                                              {
                                                                                                                                 if(!_loc9_)
                                                                                                                                 {
                                                                                                                                    addr178:
                                                                                                                                    §§push(param1.§?!B§);
                                                                                                                                    loop37:
                                                                                                                                    while(_loc8_)
                                                                                                                                    {
                                                                                                                                       §§push(null);
                                                                                                                                       loop38:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop().§ " § = §§pop();
                                                                                                                                          addr185:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             addr129:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(param1.§?!B§);
                                                                                                                                                if(!_loc8_)
                                                                                                                                                {
                                                                                                                                                   continue loop37;
                                                                                                                                                }
                                                                                                                                                if(!_loc8_)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                if(_loc8_)
                                                                                                                                                {
                                                                                                                                                   continue loop38;
                                                                                                                                                }
                                                                                                                                                addr297:
                                                                                                                                                addr297:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().§ " §);
                                                                                                                                                   addr298:
                                                                                                                                                   while(!(_loc9_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      §§push(param1.§?!B§.§3u§);
                                                                                                                                                      if(_loc8_)
                                                                                                                                                      {
                                                                                                                                                         §§pop().§3u§ = §§pop();
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            addr222:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(param1.§?!B§);
                                                                                                                                                               addr235:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().§3u§);
                                                                                                                                                                  if(_loc9_ && param1)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop41;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr243);
                                                                                                                                                               }
                                                                                                                                                               continue loop19;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr311:
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr405);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue loop12;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             continue loop34;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 §§goto(addr397);
                                                                                                                                 §§goto(addr401);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr384);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(!_loc9_)
                                                                                                                              {
                                                                                                                                 §§push(param1.§?!B§);
                                                                                                                              }
                                                                                                                              §§goto(addr374);
                                                                                                                              addr293:
                                                                                                                           }
                                                                                                                           §§goto(addr297);
                                                                                                                        }
                                                                                                                        §§goto(addr438);
                                                                                                                     }
                                                                                                                     §§goto(addr451);
                                                                                                                  }
                                                                                                                  §§goto(addr178);
                                                                                                               }
                                                                                                               §§goto(addr235);
                                                                                                            }
                                                                                                            §§goto(addr387);
                                                                                                            §§goto(addr271);
                                                                                                         }
                                                                                                         addr186:
                                                                                                      }
                                                                                                      §§goto(addr369);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr390);
                                                                                             }
                                                                                             §§goto(addr387);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr391);
                                                                                 }
                                                                                 §§goto(addr186);
                                                                              }
                                                                           }
                                                                           §§goto(addr386);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr451);
                                                      }
                                                   }
                                                   addr33:
                                                }
                                                §§goto(addr91);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr33);
                                 }
                                 §§goto(addr70);
                              }
                              addr62:
                           }
                           §§goto(addr92);
                        }
                        addr60:
                     }
                     §§goto(addr73);
                  }
               }
               §§goto(addr62);
            }
            §§goto(addr88);
         }
         §§goto(addr60);
      }
      
      public function §%"D§(param1:b2Controller) : b2Controller
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            param1.§?!g§ = this.§]!5§;
            loop0:
            while(true)
            {
               param1.§;<§ = null;
               loop1:
               while(true)
               {
                  while(true)
                  {
                     this.§]!5§ = param1;
                     addr49:
                     while(_loc5_)
                     {
                        if(_loc4_)
                        {
                           continue loop0;
                        }
                     }
                     continue loop1;
                     addr35:
                  }
               }
            }
         }
         while(true)
         {
            param1.m_world = this;
            if(!_loc4_)
            {
               if(!_loc4_)
               {
                  if(true)
                  {
                     var _loc2_:*;
                     §§push((_loc2_ = this).§>+§);
                     if(_loc5_ || _loc2_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc3_:* = §§pop();
                     if(!(_loc4_ && this))
                     {
                        _loc2_.§>+§ = _loc3_;
                     }
                     break;
                  }
                  §§goto(addr35);
               }
               §§goto(addr49);
            }
            break;
         }
         return param1;
      }
      
      public function §%H§(param1:b2Controller) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(param1.§;<§);
            if(!_loc5_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(param1.§;<§);
                     addr111:
                     while(true)
                     {
                        §§pop().§?!g§ = param1.§?!g§;
                        addr114:
                        while(true)
                        {
                        }
                     }
                     addr26:
                     if(_loc5_ && _loc3_)
                     {
                        continue;
                     }
                     this.§]!5§ = param1.§?!g§;
                     if(!(_loc5_ && param1))
                     {
                        addr44:
                        if(false)
                        {
                           loop1:
                           while(true)
                           {
                              §§push(param1.§?!g§);
                              if(!(_loc5_ && param1))
                              {
                                 if(§§pop())
                                 {
                                    if(_loc4_ || this)
                                    {
                                       while(true)
                                       {
                                          §§push(param1.§?!g§);
                                          addr76:
                                          while(true)
                                          {
                                             §§pop().§;<§ = param1.§;<§;
                                             if(_loc5_ && param1)
                                             {
                                             }
                                             break loop1;
                                          }
                                       }
                                       addr74:
                                    }
                                    while(true)
                                    {
                                       if(_loc5_ && _loc3_)
                                       {
                                          §§goto(addr114);
                                       }
                                    }
                                 }
                                 while(this.§]!5§ == param1)
                                 {
                                    if(!_loc5_)
                                    {
                                       §§goto(addr26);
                                    }
                                    §§goto(addr44);
                                 }
                                 addr115:
                                 var _loc2_:*;
                                 §§push((_loc2_ = this).§>+§);
                                 if(_loc4_)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 var _loc3_:* = §§pop();
                                 if(!(_loc5_ && param1))
                                 {
                                    _loc2_.§>+§ = _loc3_;
                                 }
                                 break;
                              }
                              §§goto(addr76);
                           }
                           addr135:
                           return;
                           addr46:
                        }
                        §§goto(addr115);
                     }
                     §§goto(addr135);
                  }
               }
               §§goto(addr46);
            }
            §§goto(addr111);
         }
         §§goto(addr74);
      }
      
      public function §8Y§(param1:b2Controller) : b2Controller
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
                  param1.§?!g§ = this.§]!5§;
                  if(_loc5_)
                  {
                     break;
                  }
                  param1.§;<§ = null;
                  loop1:
                  for(; _loc4_; if(!(_loc5_ && _loc3_))
                  {
                     if(_loc4_ || this)
                     {
                        if(false)
                        {
                           §§goto(addr50);
                        }
                        var _loc2_:*;
                        §§push((_loc2_ = this).§>+§);
                        if(!(_loc5_ && _loc3_))
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc3_:* = §§pop();
                        if(_loc4_ || _loc3_)
                        {
                           _loc2_.§>+§ = _loc3_;
                        }
                        if(!(_loc5_ && _loc2_))
                        {
                           §§goto(addr142);
                        }
                        break loop0;
                     }
                     §§goto(addr95);
                  })
                  {
                     while(true)
                     {
                        §§push(this.§]!5§);
                        if(_loc4_ || this)
                        {
                           if(§§pop())
                           {
                              addr71:
                              while(true)
                              {
                                 §§push(this.§]!5§);
                                 addr73:
                                 while(true)
                                 {
                                    §§pop().§;<§ = param1;
                                    addr75:
                                    while(true)
                                    {
                                    }
                                 }
                              }
                              addr71:
                           }
                           while(true)
                           {
                              this.§]!5§ = param1;
                              if(_loc5_ && param1)
                              {
                                 break;
                              }
                              if(_loc5_)
                              {
                                 continue;
                              }
                              if(!_loc5_)
                              {
                                 continue loop1;
                              }
                              §§goto(addr71);
                           }
                           addr142:
                           param1.m_world = this;
                           break loop0;
                        }
                        §§goto(addr73);
                     }
                  }
               }
               return param1;
            }
            addr95:
            throw new Error("Controller can only be a member of one world");
         }
         §§goto(addr71);
      }
      
      public function §=!n§(param1:b2Controller) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            param1.§7!P§();
            loop0:
            while(true)
            {
               §§push(param1.§?!g§);
               if(!_loc4_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(param1.§?!g§);
                        addr95:
                        while(true)
                        {
                           §§pop().§;<§ = param1.§;<§;
                           addr98:
                           while(true)
                           {
                           }
                        }
                        addr55:
                        if(_loc4_)
                        {
                           continue;
                        }
                        addr69:
                        param1.§;<§.§?!g§ = param1.§?!g§;
                        if(!(_loc4_ && _loc2_))
                        {
                           addr79:
                           if(_loc5_ || _loc3_)
                           {
                              addr25:
                              if(param1 == this.§]!5§)
                              {
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    if(!_loc5_)
                                    {
                                       continue loop0;
                                    }
                                    while(true)
                                    {
                                       this.§]!5§ = param1.§?!g§;
                                       if(_loc4_)
                                       {
                                       }
                                       §§goto(addr137);
                                    }
                                 }
                                 while(true)
                                 {
                                    if(false)
                                    {
                                       while(true)
                                       {
                                          §§push(param1.§;<§);
                                          if(_loc5_)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc5_)
                                                {
                                                   §§goto(addr55);
                                                }
                                                §§goto(addr79);
                                             }
                                             §§goto(addr25);
                                          }
                                          §§goto(addr69);
                                       }
                                       addr137:
                                       return;
                                       addr47:
                                    }
                                 }
                              }
                              var _loc2_:*;
                              §§push((_loc2_ = this).§>+§);
                              if(!(_loc4_ && _loc2_))
                              {
                                 §§push(§§pop() - 1);
                              }
                              var _loc3_:* = §§pop();
                              if(!(_loc4_ && this))
                              {
                                 _loc2_.§>+§ = _loc3_;
                              }
                              §§goto(addr137);
                           }
                           §§goto(addr98);
                        }
                        §§goto(addr137);
                     }
                  }
                  §§goto(addr47);
               }
               §§goto(addr95);
            }
         }
         §§goto(addr39);
      }
      
      public function §<!!§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            § !D§ = param1;
         }
      }
      
      public function §;!b§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §^!O§ = param1;
         }
      }
      
      public function §!!&§() : int
      {
         return this.§;0§;
      }
      
      public function §-=§() : int
      {
         return this.§<!y§;
      }
      
      public function §`!^§() : int
      {
         return this.§%!0§;
      }
      
      public function §&!@§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§!F§ = param1;
         }
      }
      
      public function §1_§() : b2Vec2
      {
         return this.§!F§;
      }
      
      public function §?!3§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §=m§(param1:Number, param2:int, param3:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
            §§push(this.§2"B§);
            if(_loc5_ || param3)
            {
               §§push(§§pop() & §-!M§);
            }
            if(§§pop())
            {
               loop0:
               while(true)
               {
                  this.§9s§.§+!l§();
                  loop1:
                  while(true)
                  {
                     addr47:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§2"B§);
                        if(_loc5_)
                        {
                           §§push(§-!M§);
                           if(!_loc6_)
                           {
                              §§push(~§§pop());
                           }
                           §§push(§§pop() & §§pop());
                        }
                        §§pop().§2"B§ = §§pop();
                        addr59:
                        loop3:
                        while(_loc5_)
                        {
                           if(_loc6_)
                           {
                              continue loop0;
                           }
                           while(true)
                           {
                              continue loop3;
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
            while(true)
            {
               §§push(this);
               §§push(this.§2"B§);
               if(!(_loc6_ && param3))
               {
                  §§push(§§pop() | §'!w§);
               }
               §§pop().§2"B§ = §§pop();
               if(_loc5_ || param1)
               {
                  if(true)
                  {
                     break;
                  }
                  §§goto(addr47);
               }
               §§goto(addr59);
            }
            var _loc4_:b2TimeStep;
            (_loc4_ = s_timestep2).§;J§ = param1;
            if(_loc5_)
            {
               _loc4_.§;N§ = param2;
               loop5:
               while(true)
               {
                  _loc4_.§="W§ = param3;
                  loop6:
                  while(true)
                  {
                     §§push(param1);
                     while(true)
                     {
                        §§push(0);
                        addr287:
                        while(true)
                        {
                           if(§§pop() > §§pop())
                           {
                              if(_loc5_)
                              {
                                 continue loop6;
                              }
                              addr302:
                              addr302:
                              while(true)
                              {
                              }
                           }
                           else
                           {
                              _loc4_.§9n§ = 0;
                              addr283:
                              while(true)
                              {
                              }
                              addr283:
                           }
                           while(true)
                           {
                              §§push(_loc4_);
                              §§push(this.§4!Z§);
                              if(!_loc6_)
                              {
                                 §§push(§§pop() * param1);
                              }
                              §§pop().§]'§ = §§pop();
                              §§goto(addr283);
                           }
                        }
                        continue loop6;
                        addr151:
                        if(!(_loc5_ || param2))
                        {
                           continue;
                        }
                        §§push(0);
                        if(_loc5_)
                        {
                           if(_loc5_ || param1)
                           {
                              if(§§pop() > §§pop())
                              {
                                 loop29:
                                 while(true)
                                 {
                                    if(_loc5_ || param3)
                                    {
                                       if(!_loc6_)
                                       {
                                          this.§4!Z§ = _loc4_.§9n§;
                                          loop30:
                                          while(!_loc6_)
                                          {
                                             while(true)
                                             {
                                                §§push(this);
                                                §§push(this.§2"B§);
                                                if(!_loc6_)
                                                {
                                                   §§push(§'!w§);
                                                   if(_loc5_ || param1)
                                                   {
                                                      §§push(~§§pop());
                                                   }
                                                   §§push(§§pop() & §§pop());
                                                }
                                                §§pop().§2"B§ = §§pop();
                                                if(!_loc5_)
                                                {
                                                   continue loop30;
                                                }
                                                if(_loc6_)
                                                {
                                                   continue loop29;
                                                }
                                                if(_loc5_ || param3)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      if(_loc5_ || param1)
                                                      {
                                                         return;
                                                      }
                                                      while(!_loc6_)
                                                      {
                                                         this.§+!o§(_loc4_);
                                                         break loop29;
                                                      }
                                                      loop14:
                                                      while(_loc5_)
                                                      {
                                                         §§push(_loc4_.§;J§);
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §§push(0);
                                                            addr236:
                                                            while(true)
                                                            {
                                                               if(§§pop() > §§pop())
                                                               {
                                                                  §§goto(addr237);
                                                               }
                                                               addr223:
                                                               while(true)
                                                               {
                                                                  §§push(§^!O§);
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                                  addr228:
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 this.§7!_§(_loc4_);
                                                                                 addr213:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc6_ && param3))
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          addr131:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc4_.§;J§);
                                                                                             if(!(_loc5_ || param2))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr151);
                                                                                          }
                                                                                          continue loop15;
                                                                                          addr131:
                                                                                       }
                                                                                       continue loop5;
                                                                                    }
                                                                                    addr266:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc4_.§@I§ = § !D§;
                                                                                       break loop14;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr210:
                                                                           }
                                                                           §§goto(addr131);
                                                                        }
                                                                        addr208:
                                                                     }
                                                                     addr230:
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        addr231:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc4_.§;J§);
                                                                           continue loop15;
                                                                        }
                                                                     }
                                                                     addr201:
                                                                     if(_loc6_ && this)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§goto(addr208);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr237:
                                                      while(true)
                                                      {
                                                         this.§9s§.§+"M§();
                                                         §§goto(addr249);
                                                      }
                                                      addr249:
                                                   }
                                                   §§goto(addr210);
                                                }
                                                §§goto(addr213);
                                             }
                                          }
                                          §§goto(addr283);
                                       }
                                       break;
                                    }
                                    §§goto(addr231);
                                 }
                                 while(!_loc6_)
                                 {
                                    §§goto(addr223);
                                 }
                                 §§goto(addr302);
                              }
                              §§goto(addr93);
                           }
                           §§goto(addr236);
                        }
                        §§goto(addr196);
                     }
                  }
               }
            }
            §§goto(addr266);
         }
         §§goto(addr63);
      }
      
      public function §6!h§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Body = this.§6t§;
         while(_loc1_)
         {
            _loc1_.§8"?§.§%y§();
            if(!_loc3_)
            {
               break;
            }
            _loc1_.§1"@§ = 0;
            if(_loc2_ && _loc1_)
            {
               break;
            }
            _loc1_ = _loc1_.§?!g§;
         }
      }
      
      public function §else§() : void
      {
         var _loc23_:Boolean = false;
         var _loc24_:Boolean = true;
         var _loc2_:int = 0;
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§3Q§ = null;
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
            §§push(this.§1s§);
            if(_loc24_)
            {
               if(§§pop() == null)
               {
                  if(_loc24_)
                  {
                     §§goto(addr73);
                  }
               }
               §§push(this.§1s§);
               if(_loc24_ || _loc3_)
               {
                  §§pop().§5!t§.graphics.clear();
                  §§push(this.§1s§);
               }
            }
            §§push(§§pop().§6"Q§());
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
            if(!_loc23_)
            {
               if(_loc1_ & b2DebugDraw.§?O§)
               {
                  addr140:
                  _loc3_ = this.§6t§;
                  while(_loc3_)
                  {
                     _loc11_ = _loc3_.m_xf;
                     _loc4_ = _loc3_.GetFixtureList();
                     if(!(_loc23_ && _loc2_))
                     {
                        loop15:
                        for(; _loc4_; _loc4_ = _loc4_.§?!g§)
                        {
                           _loc5_ = _loc4_.GetShape();
                           if(!_loc23_)
                           {
                              §§push(_loc3_.§,"G§());
                              while(true)
                              {
                                 §§push(false);
                                 addr343:
                                 while(true)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       addr344:
                                       _loc15_.Set(0.5,0.5,0.3);
                                       this.§["4§(_loc5_,_loc11_,_loc15_);
                                       addr349:
                                    }
                                    else
                                    {
                                       §§push(_loc3_.§>!f§());
                                       loop18:
                                       while(true)
                                       {
                                          §§push(b2Body.b2_staticBody);
                                          addr326:
                                          addr327:
                                          addr332:
                                          while(§§pop() != §§pop())
                                          {
                                             continue loop18;
                                          }
                                          addr332:
                                          addr311:
                                          _loc15_.Set(0.5,0.9,0.5);
                                          this.§["4§(_loc5_,_loc11_,_loc15_);
                                          if(_loc24_ || _loc2_)
                                          {
                                             continue loop15;
                                          }
                                       }
                                    }
                                    addr339:
                                    continue loop15;
                                 }
                                 §§push(_loc3_.IsAwake());
                                 if(!(_loc24_ || _loc2_))
                                 {
                                    continue;
                                 }
                                 §§push(false);
                                 if(!_loc24_)
                                 {
                                    §§goto(addr343);
                                 }
                                 if(§§pop() != §§pop())
                                 {
                                    _loc15_.Set(0.9,0.7,0.7);
                                    addr202:
                                    if(!_loc23_)
                                    {
                                       if(!(_loc23_ && this))
                                       {
                                          if(_loc24_ || this)
                                          {
                                             this.§["4§(_loc5_,_loc11_,_loc15_);
                                             if(_loc23_ && _loc1_)
                                             {
                                                §§goto(addr202);
                                             }
                                             if(_loc24_)
                                             {
                                                if(_loc24_ || _loc1_)
                                                {
                                                   if(true)
                                                   {
                                                      continue loop15;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr311);
                                                }
                                             }
                                             else
                                             {
                                                addr225:
                                             }
                                             continue loop15;
                                          }
                                          §§goto(addr304);
                                       }
                                       addr242:
                                       if(!(_loc23_ && _loc3_))
                                       {
                                          if(!(_loc23_ && _loc1_))
                                          {
                                             _loc15_.Set(0.6,0.6,0.6);
                                             addr261:
                                             if(_loc24_)
                                             {
                                                if(_loc24_)
                                                {
                                                   this.§["4§(_loc5_,_loc11_,_loc15_);
                                                   §§goto(addr225);
                                                }
                                                else
                                                {
                                                   §§goto(addr344);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr327);
                                             }
                                             §§goto(addr339);
                                          }
                                          else
                                          {
                                             §§goto(addr290);
                                          }
                                       }
                                       §§goto(addr272);
                                    }
                                    §§goto(addr261);
                                 }
                                 §§goto(addr242);
                              }
                           }
                           §§goto(addr344);
                        }
                     }
                     _loc3_ = _loc3_.§?!g§;
                  }
               }
               §§push(_loc1_);
               if(!_loc23_)
               {
                  §§push(b2DebugDraw.§12§);
                  if(!_loc23_)
                  {
                     §§push(§§pop() & §§pop());
                     if(!_loc23_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc23_ && _loc1_))
                           {
                              _loc6_ = this.§@!g§;
                              if(_loc24_)
                              {
                                 while(_loc6_)
                                 {
                                    this.§="I§(_loc6_);
                                    if(_loc23_ && _loc3_)
                                    {
                                       break;
                                    }
                                    _loc6_ = _loc6_.§?!g§;
                                 }
                                 addr414:
                                 §§push(_loc1_);
                                 if(_loc24_)
                                 {
                                    §§push(b2DebugDraw.§1!L§);
                                    if(_loc24_)
                                    {
                                       addr421:
                                       §§push(§§pop() & §§pop());
                                       if(!_loc23_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc23_ && _loc3_))
                                             {
                                                _loc16_ = this.§]!5§;
                                                if(!_loc23_)
                                                {
                                                   loop12:
                                                   while(_loc16_)
                                                   {
                                                      _loc16_.§5""§(this.§1s§);
                                                      if(_loc23_)
                                                      {
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         _loc16_ = _loc16_.§?!g§;
                                                         continue loop12;
                                                      }
                                                   }
                                                   addr452:
                                                   §§push(_loc1_);
                                                   if(!_loc23_)
                                                   {
                                                      addr455:
                                                      §§push(b2DebugDraw.§in§);
                                                      if(_loc24_)
                                                      {
                                                         §§push(§§pop() & §§pop());
                                                         if(!_loc23_)
                                                         {
                                                            §§goto(addr462);
                                                         }
                                                         §§goto(addr550);
                                                      }
                                                      §§goto(addr707);
                                                   }
                                                   §§goto(addr533);
                                                }
                                                §§goto(addr446);
                                             }
                                             §§goto(addr560);
                                          }
                                          §§goto(addr452);
                                       }
                                       §§goto(addr550);
                                    }
                                 }
                                 §§goto(addr707);
                              }
                              §§goto(addr414);
                           }
                           §§goto(addr712);
                        }
                        §§goto(addr414);
                     }
                     addr462:
                     if(§§pop())
                     {
                        if(_loc24_ || _loc1_)
                        {
                           _loc15_.Set(0.3,0.9,0.9);
                           if(_loc24_ || _loc3_)
                           {
                              §§push(this.§9s§);
                              if(_loc24_)
                              {
                                 _loc17_ = §§pop().§>"K§;
                                 if(_loc24_)
                                 {
                                    while(_loc17_)
                                    {
                                       _loc18_ = _loc17_.§]!A§();
                                       _loc19_ = _loc17_.§3!]§();
                                       _loc20_ = _loc18_.§+""§().§4P§();
                                       _loc21_ = _loc19_.§+""§().§4P§();
                                       if(!_loc23_)
                                       {
                                          this.§1s§.§%!2§(_loc20_,_loc21_,_loc15_);
                                       }
                                       _loc17_ = _loc17_.§>!v§();
                                    }
                                 }
                                 §§goto(addr525);
                              }
                           }
                           §§goto(addr560);
                        }
                        §§goto(addr712);
                     }
                     addr525:
                     §§push(_loc1_);
                     if(_loc24_ || _loc2_)
                     {
                        addr533:
                        §§push(b2DebugDraw.§9Q§);
                        if(_loc24_ || this)
                        {
                           §§push(§§pop() & §§pop());
                           if(!(_loc23_ && _loc2_))
                           {
                              addr550:
                              if(§§pop())
                              {
                                 if(!(_loc23_ && this))
                                 {
                                    addr560:
                                    _loc7_ = this.§9s§.§9"§;
                                    _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
                                    _loc3_ = this.§6t§;
                                    if(!_loc23_)
                                    {
                                       loop3:
                                       for(; _loc3_; while(true)
                                       {
                                          _loc3_ = _loc3_.§>!v§();
                                          continue loop3;
                                       })
                                       {
                                          if(_loc3_.§,"G§() != false)
                                          {
                                             _loc4_ = _loc3_.GetFixtureList();
                                             if(_loc24_ || _loc2_)
                                             {
                                                loop4:
                                                for(; _loc4_; _loc4_ = _loc4_.§>!v§())
                                                {
                                                   _loc22_ = _loc7_.§""8§(_loc4_.§2!x§);
                                                   if(!(_loc23_ && this))
                                                   {
                                                      _loc14_[0].Set(_loc22_.§8"S§.x,_loc22_.§8"S§.y);
                                                      while(true)
                                                      {
                                                         _loc14_[1].Set(_loc22_.§4B§.x,_loc22_.§8"S§.y);
                                                         loop6:
                                                         for(; !(_loc23_ && _loc3_); if(_loc23_ && _loc1_)
                                                         {
                                                            continue;
                                                         },if(true)
                                                         {
                                                            continue loop4;
                                                         },§§goto(addr639))
                                                         {
                                                            _loc14_[2].Set(_loc22_.§4B§.x,_loc22_.§4B§.y);
                                                            loop7:
                                                            while(true)
                                                            {
                                                               addr639:
                                                               while(true)
                                                               {
                                                                  _loc14_[3].Set(_loc22_.§8"S§.x,_loc22_.§4B§.y);
                                                                  while(!_loc23_)
                                                                  {
                                                                     this.§1s§.§2!W§(_loc14_,4,_loc15_);
                                                                     if(_loc24_)
                                                                     {
                                                                        continue loop6;
                                                                     }
                                                                  }
                                                                  continue loop7;
                                                               }
                                                               continue loop4;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr664);
                                                }
                                             }
                                             continue;
                                          }
                                          if(_loc23_ && this)
                                          {
                                             break;
                                          }
                                       }
                                       §§goto(addr707);
                                    }
                                    while(true)
                                    {
                                       §§goto(addr701);
                                    }
                                 }
                                 §§goto(addr712);
                              }
                              addr707:
                              §§goto(addr711);
                           }
                           addr711:
                           §§goto(addr710);
                        }
                        addr710:
                        §§goto(addr708);
                     }
                     addr708:
                     if(_loc1_ & b2DebugDraw.§7#§)
                     {
                        addr712:
                        _loc3_ = this.§6t§;
                        if(!(_loc23_ && this))
                        {
                           while(_loc3_)
                           {
                              (_loc11_ = §?n§).R = _loc3_.m_xf.R;
                              if(!(_loc23_ && _loc1_))
                              {
                                 _loc11_.position = _loc3_.§2]§();
                                 if(_loc24_)
                                 {
                                    this.§1s§.§>"Z§(_loc11_);
                                 }
                              }
                              _loc3_ = _loc3_.§?!g§;
                           }
                        }
                     }
                     return;
                  }
                  §§goto(addr421);
               }
               §§goto(addr455);
            }
            §§goto(addr140);
         }
         addr73:
      }
      
      public function §"4§(param1:Function, param2:b2AABB) : void
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
                     while(_loc4_ || this)
                     {
                        §§push(§§newactivation());
                        continue loop3;
                        while(_loc4_ || this)
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
                                    if(_loc4_)
                                    {
                                       if(_loc5_)
                                       {
                                          break;
                                          addr93:
                                       }
                                       §§pop().§§slot[4] = function(param1:*):Boolean
                                       {
                                          return callback(broadPhase.GetUserData(param1));
                                       };
                                       while(!(_loc5_ && param2))
                                       {
                                          §§push(§§newactivation());
                                          continue loop9;
                                       }
                                       continue loop8;
                                    }
                                    continue loop7;
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                     continue loop2;
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §!c§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
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
                        for(; _loc5_; while(true)
                        {
                           if(_loc5_ || param2)
                           {
                              continue loop0;
                           }
                           continue loop5;
                        },continue loop0)
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
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    loop9:
                                    while(_loc5_)
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
                                                if(b2Shape.§9e§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§!"0§()))
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
                                                while(_loc5_)
                                                {
                                                   §§push(§§pop().§§slot[3]);
                                                   loop14:
                                                   while(true)
                                                   {
                                                      if(§§pop() == null)
                                                      {
                                                         if(!(_loc6_ && this))
                                                         {
                                                            if(!(_loc6_ && param1))
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(§§newactivation());
                                                               continue loop5;
                                                            }
                                                            continue loop12;
                                                         }
                                                         addr180:
                                                         addr180:
                                                         while(!(_loc6_ && param3))
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               §§push(§§newactivation());
                                                               continue loop14;
                                                            }
                                                            continue loop6;
                                                         }
                                                         continue loop8;
                                                      }
                                                      loop19:
                                                      while(true)
                                                      {
                                                         §§push(§§newactivation());
                                                         continue loop13;
                                                         addr137:
                                                         loop20:
                                                         for(; !(_loc6_ && param1); while(true)
                                                         {
                                                            if(!(_loc5_ || param2))
                                                            {
                                                               continue loop20;
                                                            }
                                                            if(_loc6_)
                                                            {
                                                               break;
                                                            }
                                                            §§pop().§§slot[6] = new b2AABB();
                                                            while(true)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(§§newactivation());
                                                                  loop24:
                                                                  while(true)
                                                                  {
                                                                     §§pop().§§slot[2].ComputeAABB(aabb,transform);
                                                                     addr69:
                                                                     while(true)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           if(!(_loc6_ && param2))
                                                                           {
                                                                              continue loop24;
                                                                           }
                                                                           continue loop2;
                                                                        }
                                                                        continue loop10;
                                                                     }
                                                                     §§goto(addr180);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr125);
                                                               }
                                                               addr51:
                                                               if(_loc6_ && this)
                                                               {
                                                                  continue;
                                                               }
                                                               if(!_loc6_)
                                                               {
                                                                  return;
                                                               }
                                                               §§goto(addr180);
                                                            }
                                                            §§goto(addr137);
                                                            if(!(_loc5_ || this))
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc6_)
                                                            {
                                                               continue loop5;
                                                            }
                                                            §§pop().§§slot[4].§^"Y§(WorldQueryWrapper,aabb);
                                                            if(_loc5_)
                                                            {
                                                               §§goto(addr51);
                                                            }
                                                            §§goto(addr69);
                                                         },§§goto(addr128))
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               continue loop11;
                                                            }
                                                            §§pop().§§slot[4] = this.§9s§.§9"§;
                                                            while(true)
                                                            {
                                                               §§push(§§newactivation());
                                                               continue loop20;
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            continue loop19;
                                                         }
                                                      }
                                                   }
                                                   continue loop4;
                                                }
                                                continue loop9;
                                             }
                                          }
                                       }
                                    }
                                    continue loop7;
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
            if(_loc6_ && this)
            {
               continue;
            }
            §§pop().§§slot[3] = new b2Transform();
            §§goto(addr180);
         }
      }
      
      public function §6N§(param1:Function, param2:b2Vec2) : void
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
               while(true)
               {
                  §§push(§§newactivation());
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
                           continue loop4;
                           addr32:
                           if(_loc5_ || _loc3_)
                           {
                              continue loop0;
                           }
                        }
                     }
                     while(_loc5_ || _loc3_)
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
                        §§goto(addr224);
                        §§goto(addr175);
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
                     while(_loc5_)
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
                              if(_loc6_)
                              {
                                 break;
                              }
                              §§pop().§§slot[6] = §§pop();
                              loop7:
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 loop8:
                                 while(true)
                                 {
                                    §§pop().§§slot[1] = param1;
                                    continue loop7;
                                    addr106:
                                    if(_loc5_ || param3)
                                    {
                                       §§pop().§§slot[5] = new b2RayCastOutput();
                                       loop19:
                                       while(true)
                                       {
                                          if(!_loc6_)
                                          {
                                             if(!_loc5_)
                                             {
                                                break;
                                             }
                                             §§push(§§newactivation());
                                             while(true)
                                             {
                                                if(_loc5_)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   addr164:
                                                   while(true)
                                                   {
                                                      §§pop().§§slot[2] = param2;
                                                      break loop19;
                                                   }
                                                }
                                                else
                                                {
                                                   loop16:
                                                   while(true)
                                                   {
                                                      §§pop().§§slot[4] = this.§9s§.§9"§;
                                                      addr129:
                                                      while(true)
                                                      {
                                                         §§push(§§newactivation());
                                                         addr102:
                                                         while(true)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               §§goto(addr106);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
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
                                                                     return param1.§;"I§;
                                                                  };
                                                                  addr135:
                                                                  while(_loc5_ || param3)
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     continue loop16;
                                                                  }
                                                                  continue loop7;
                                                               }
                                                               addr132:
                                                            }
                                                         }
                                                         continue loop8;
                                                      }
                                                   }
                                                }
                                                addr89:
                                                §§push(§§newactivation());
                                                if(!_loc5_)
                                                {
                                                   continue;
                                                }
                                                if(!_loc6_)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      addr33:
                                                      §§pop().§§slot[4].RayCast(RayCastWrapper,input);
                                                      if(_loc5_ || this)
                                                      {
                                                         return;
                                                      }
                                                      continue loop19;
                                                   }
                                                   continue loop3;
                                                }
                                                §§goto(addr102);
                                             }
                                             continue loop6;
                                          }
                                          addr154:
                                          while(_loc5_ || param3)
                                          {
                                             §§push(§§newactivation());
                                          }
                                          continue loop2;
                                          §§goto(addr132);
                                       }
                                       while(!_loc6_)
                                       {
                                          §§push(§§newactivation());
                                          continue loop0;
                                       }
                                       continue loop5;
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
      
      public function §]O§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
                     if(_loc4_ && param1)
                     {
                        break;
                     }
                     §§pop().§§slot[4] = §§pop();
                     loop4:
                     while(!(_loc4_ && param1))
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
                              while(!_loc4_)
                              {
                                 §§pop().§§slot[2] = param2;
                                 while(!_loc4_)
                                 {
                                    §§push(§§newactivation());
                                    while(true)
                                    {
                                       if(_loc5_)
                                       {
                                          continue loop3;
                                       }
                                       §§push(§§newactivation());
                                       addr62:
                                       continue loop5;
                                       if(!_loc4_)
                                       {
                                          if(_loc5_)
                                          {
                                             return §§pop().§§slot[3];
                                          }
                                          continue loop7;
                                       }
                                    }
                                    continue loop3;
                                    §§pop().§§slot[4] = function(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number):Number
                                    {
                                       result = param1;
                                       return param4;
                                    };
                                    do
                                    {
                                       this.RayCast(RayCastOneWrapper,point1,point2);
                                    }
                                    while(!_loc5_);
                                    
                                    if(_loc4_ && this)
                                    {
                                       continue;
                                    }
                                    if(!_loc5_)
                                    {
                                       continue loop6;
                                    }
                                    §§goto(addr62);
                                 }
                                 continue loop4;
                              }
                              continue loop0;
                           }
                        }
                     }
                     continue loop2;
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §%"I§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
                     if(_loc5_)
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
                              loop7:
                              while(!_loc5_)
                              {
                                 §§pop().§§slot[2] = param2;
                                 while(true)
                                 {
                                    if(!(_loc4_ || _loc3_))
                                    {
                                       break;
                                       addr94:
                                    }
                                    §§push(§§newactivation());
                                    while(_loc4_)
                                    {
                                       continue loop0;
                                    }
                                    continue loop3;
                                    addr42:
                                    if(!(_loc4_ || param2))
                                    {
                                       continue;
                                    }
                                    if(!(_loc4_ || param1))
                                    {
                                       continue loop6;
                                    }
                                    if(_loc5_)
                                    {
                                       continue loop4;
                                    }
                                    §§push(§§newactivation());
                                    if(!_loc4_)
                                    {
                                       loop11:
                                       for(; !(_loc5_ && this); §§goto(addr58))
                                       {
                                          §§pop().§§slot[3] = new Vector.<b2Fixture>();
                                          while(!(_loc5_ && param2))
                                          {
                                             this.RayCast(RayCastAllWrapper,point1,point2);
                                             if(_loc5_)
                                             {
                                                continue;
                                             }
                                             §§goto(addr42);
                                          }
                                          while(true)
                                          {
                                             continue loop11;
                                             §§goto(addr84);
                                          }
                                          addr84:
                                       }
                                       continue loop7;
                                    }
                                    if(!_loc5_)
                                    {
                                       return §§pop().§§slot[3];
                                    }
                                    §§goto(addr94);
                                 }
                                 continue loop2;
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
      
      public function §4"-§() : b2Body
      {
         return this.§6t§;
      }
      
      public function §5,§() : b2Joint
      {
         return this.§@!g§;
      }
      
      public function §0!z§() : b2Contact
      {
         return this.§>"K§;
      }
      
      public function §?"A§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§2"B§);
         if(!_loc2_)
         {
            §§push(§'!w§);
            if(_loc1_ || this)
            {
               addr29:
               §§push(§§pop() & §§pop());
               §§push(0);
            }
            return §§pop() > §§pop();
         }
         §§goto(addr29);
      }
      
      b2internal function §+!o§(param1:b2TimeStep) : void
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:* = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§]!5§;
         while(_loc3_)
         {
            _loc3_.§=m§(param1);
            if(!(_loc18_ || _loc2_))
            {
               break;
            }
            _loc3_ = _loc3_.§?!g§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§8!J§).§6!Q§(this.§;0§,this.§%!0§,this.§<!y§,null,this.§9s§.§4!O§,this.§,"V§);
         _loc2_ = this.§6t§;
         if(!(_loc17_ && _loc3_))
         {
            loop1:
            while(_loc2_)
            {
               _loc2_.§2"B§ &= ~b2Body.§>7§;
               if(!_loc18_)
               {
                  break;
               }
               while(true)
               {
                  _loc2_ = _loc2_.§?!g§;
                  continue loop1;
               }
            }
            var _loc5_:b2Contact = this.§>"K§;
            if(!(_loc17_ && param1))
            {
               loop2:
               while(_loc5_)
               {
                  _loc5_.§2"B§ &= ~b2Contact.§>7§;
                  if(!_loc18_)
                  {
                     break;
                  }
                  while(true)
                  {
                     _loc5_ = _loc5_.§?!g§;
                     continue loop2;
                  }
               }
               var _loc6_:b2Joint = this.§@!g§;
               if(!(_loc17_ && this))
               {
                  loop3:
                  while(_loc6_)
                  {
                     _loc6_.§9!v§ = false;
                     if(_loc17_)
                     {
                        break;
                     }
                     while(true)
                     {
                        _loc6_ = _loc6_.§?!g§;
                        continue loop3;
                     }
                  }
                  §§push(this.§;0§);
                  if(!(_loc17_ && this))
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc7_:* = §§pop();
                  var _loc8_:Vector.<b2Body> = this.§%"&§;
                  var _loc9_:b2Body = this.§6t§;
                  if(_loc18_)
                  {
                     loop4:
                     while(true)
                     {
                        if(!_loc9_)
                        {
                           if(!(_loc17_ && _loc2_))
                           {
                              §§push(0);
                              if(_loc18_ || this)
                              {
                                 _loc11_ = §§pop();
                                 if(_loc18_)
                                 {
                                    addr727:
                                 }
                                 addr755:
                                 if(_loc11_ < _loc8_.length)
                                 {
                                    if(!_loc8_[_loc11_])
                                    {
                                       if(_loc17_)
                                       {
                                          addr747:
                                          _loc11_++;
                                          if(!(_loc17_ && param1))
                                          {
                                             §§goto(addr755);
                                          }
                                          §§goto(addr759);
                                       }
                                       §§goto(addr735);
                                    }
                                    _loc8_[_loc11_] = null;
                                    if(_loc18_ || param1)
                                    {
                                       §§goto(addr747);
                                    }
                                 }
                              }
                              §§goto(addr755);
                           }
                           §§goto(addr747);
                        }
                        else
                        {
                           §§push(_loc9_.§2"B§);
                           loop5:
                           while(true)
                           {
                              §§push(b2Body.§>7§);
                              addr251:
                              while(true)
                              {
                                 §§push(§§pop() & §§pop());
                                 addr252:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc17_ && this))
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
                                          if(_loc18_)
                                          {
                                             §§push(§§pop() == §§pop());
                                             while(true)
                                             {
                                                §§push(§§pop());
                                             }
                                             addr267:
                                          }
                                          loop10:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                loop11:
                                                while(true)
                                                {
                                                   §§pop();
                                                   if(_loc18_ || param1)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc9_.§,"G§());
                                                         if(!_loc17_)
                                                         {
                                                            if(_loc17_)
                                                            {
                                                               continue loop11;
                                                            }
                                                            §§push(false);
                                                            if(_loc17_)
                                                            {
                                                               continue loop10;
                                                            }
                                                            §§push(§§pop() == §§pop());
                                                         }
                                                         if(_loc17_)
                                                         {
                                                            break;
                                                         }
                                                         if(_loc18_)
                                                         {
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  continue loop5;
                                                               }
                                                               if(!_loc17_)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr747);
                                                            }
                                                            continue loop4;
                                                            addr208:
                                                         }
                                                         continue loop8;
                                                      }
                                                      §§goto(addr267);
                                                      addr193:
                                                   }
                                                   break;
                                                }
                                                §§goto(addr747);
                                             }
                                             §§goto(addr208);
                                          }
                                       }
                                       §§goto(addr755);
                                    }
                                    §§goto(addr747);
                                 }
                              }
                           }
                        }
                        §§goto(addr755);
                     }
                  }
                  addr735:
                  addr759:
                  _loc2_ = this.§6t§;
                  if(_loc18_)
                  {
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           if(_loc17_)
                           {
                           }
                           break;
                        }
                        §§push(_loc2_.IsAwake());
                        if(_loc18_)
                        {
                           §§push(false);
                           if(!_loc17_)
                           {
                              §§push(§§pop() == §§pop());
                              if(_loc18_)
                              {
                                 §§push(§§pop());
                                 if(!_loc17_)
                                 {
                                    if(!§§pop())
                                    {
                                       if(!(_loc17_ && this))
                                       {
                                          §§pop();
                                          if(_loc18_ || _loc3_)
                                          {
                                             §§push(_loc2_.§,"G§());
                                             if(!_loc18_)
                                             {
                                             }
                                             addr812:
                                             if(§§pop())
                                             {
                                                if(!_loc18_)
                                                {
                                                   addr836:
                                                   this.§9s§.§+!l§();
                                                }
                                                continue;
                                                break;
                                             }
                                             if(_loc2_.§>!f§() == b2Body.b2_staticBody)
                                             {
                                                if(_loc17_)
                                                {
                                                }
                                             }
                                             else
                                             {
                                                _loc2_.§-! §();
                                                if(!_loc18_)
                                                {
                                                   break;
                                                }
                                             }
                                          }
                                          continue;
                                       }
                                    }
                                    §§goto(addr812);
                                 }
                                 addr811:
                                 §§goto(addr812);
                                 §§push(§§pop() == §§pop());
                              }
                              §§push(false);
                           }
                           §§goto(addr811);
                        }
                        §§goto(addr812);
                        §§goto(addr836);
                     }
                  }
                  return;
               }
               §§goto(addr149);
            }
            §§goto(addr125);
         }
         §§goto(addr96);
      }
      
      b2internal function §7!_§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§8!J§).§6!Q§(this.§;0§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§9s§.§4!O§,this.§,"V§);
         var _loc10_:Vector.<b2Body> = §-!<§;
         _loc2_ = this.§6t§;
         while(_loc2_)
         {
            _loc2_.§2"B§ &= ~b2Body.§>7§;
            if(!(_loc24_ || _loc2_))
            {
               break;
            }
            _loc2_.m_sweep.§6!0§ = 0;
            if(!(_loc24_ || _loc2_))
            {
               break;
            }
            _loc2_ = _loc2_.§?!g§;
         }
         _loc11_ = this.§>"K§;
         if(_loc24_)
         {
            loop1:
            while(_loc11_)
            {
               §§push(_loc11_);
               §§push(_loc11_.§2"B§);
               §§push(b2Contact.§?!$§ | b2Contact.§>7§);
               if(!_loc23_)
               {
                  §§push(~§§pop());
               }
               §§pop().§2"B§ = §§pop() & §§pop();
               if(!(_loc24_ || _loc3_))
               {
                  break;
               }
               while(true)
               {
                  _loc11_ = _loc11_.§?!g§;
                  continue loop1;
               }
            }
            _loc8_ = this.§@!g§;
            if(_loc24_)
            {
               while(_loc8_)
               {
                  _loc8_.§9!v§ = false;
                  if(_loc23_ && param1)
                  {
                     break;
                  }
                  _loc8_ = _loc8_.§?!g§;
               }
            }
            loop3:
            while(true)
            {
               _loc12_ = null;
               if(!(_loc23_ && this))
               {
                  _loc13_ = Number(1);
               }
               _loc11_ = this.§>"K§;
               if(_loc24_)
               {
                  loop4:
                  while(true)
                  {
                     if(!_loc11_)
                     {
                        if(_loc24_ || _loc2_)
                        {
                           §§push(_loc12_ == null);
                           if(_loc24_ || _loc2_)
                           {
                              addr965:
                              if(!§§pop())
                              {
                                 if(_loc24_)
                                 {
                                    addr969:
                                    §§pop();
                                    §§goto(addr981);
                                 }
                              }
                           }
                           addr980:
                           if(§§pop())
                           {
                              §§goto(addr981);
                           }
                           else
                           {
                              addr984:
                              _loc3_ = _loc12_.§4!?§;
                              _loc4_ = _loc12_.§3!B§;
                              _loc5_ = _loc3_.m_body;
                              _loc6_ = _loc4_.m_body;
                              if(_loc24_ || _loc3_)
                              {
                                 §'!E§.Set(_loc5_.m_sweep);
                                 §-"#§.Set(_loc6_.m_sweep);
                                 _loc5_.§'a§(_loc13_);
                                 addr1196:
                                 if(_loc24_ || _loc3_)
                                 {
                                    _loc6_.§'a§(_loc13_);
                                    _loc12_.§7J§(this.§9s§.§4!O§);
                                    _loc12_.§2"B§ &= ~b2Contact.§?!$§;
                                    addr1161:
                                    addr1173:
                                    addr1168:
                                    §§push(_loc12_.§0d§());
                                    if(_loc24_)
                                    {
                                       §§push(true);
                                       if(_loc24_ || param1)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(!(_loc23_ && this))
                                          {
                                             addr1142:
                                             if(!§§pop())
                                             {
                                                addr1143:
                                                §§pop();
                                                if(_loc24_ || param1)
                                                {
                                                   §§push(_loc12_.§;!S§());
                                                   if(_loc24_)
                                                   {
                                                      §§push(false);
                                                      if(!(_loc23_ && _loc3_))
                                                      {
                                                         if(!(_loc23_ && param1))
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            if(_loc24_ || param1)
                                                            {
                                                               if(_loc24_ || param1)
                                                               {
                                                                  addr1109:
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc24_)
                                                                     {
                                                                        if(_loc24_)
                                                                        {
                                                                           addr1117:
                                                                           _loc5_.m_sweep.Set(§'!E§);
                                                                           addr1119:
                                                                           §§push(_loc6_.m_sweep);
                                                                           if(!(_loc23_ && this))
                                                                           {
                                                                              §§pop().Set(§-"#§);
                                                                              addr1066:
                                                                              if(!(_loc23_ && param1))
                                                                              {
                                                                                 addr1044:
                                                                                 _loc5_.§+!q§();
                                                                                 if(_loc24_)
                                                                                 {
                                                                                    if(!_loc23_)
                                                                                    {
                                                                                       if(!_loc23_)
                                                                                       {
                                                                                          _loc6_.§+!q§();
                                                                                          if(_loc24_)
                                                                                          {
                                                                                             if(_loc24_ || param1)
                                                                                             {
                                                                                                if(_loc24_ || this)
                                                                                                {
                                                                                                   if(_loc24_ || _loc3_)
                                                                                                   {
                                                                                                      if(false)
                                                                                                      {
                                                                                                         §§goto(addr1044);
                                                                                                      }
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr1196);
                                                                                             }
                                                                                             §§goto(addr1044);
                                                                                          }
                                                                                          addr1202:
                                                                                          continue loop3;
                                                                                       }
                                                                                       §§goto(addr1161);
                                                                                    }
                                                                                    §§goto(addr1119);
                                                                                 }
                                                                                 §§goto(addr1066);
                                                                              }
                                                                              §§goto(addr1173);
                                                                           }
                                                                           §§goto(addr1117);
                                                                        }
                                                                        §§goto(addr1168);
                                                                     }
                                                                     §§goto(addr1117);
                                                                  }
                                                                  addr1200:
                                                                  if(_loc12_.§3"I§() == false)
                                                                  {
                                                                     §§goto(addr1202);
                                                                  }
                                                                  else
                                                                  {
                                                                     if((_loc14_ = _loc5_).§>!f§() != b2Body.b2_dynamicBody)
                                                                     {
                                                                        if(_loc24_ || _loc2_)
                                                                        {
                                                                           _loc14_ = _loc6_;
                                                                           addr1221:
                                                                           _loc9_.§7!P§();
                                                                           if(!_loc23_)
                                                                           {
                                                                              §§push(0);
                                                                              if(_loc24_)
                                                                              {
                                                                                 _loc15_ = §§pop();
                                                                                 addr1275:
                                                                                 §§push(0);
                                                                                 if(!_loc23_)
                                                                                 {
                                                                                    _loc16_ = §§pop();
                                                                                    addr1250:
                                                                                    _loc10_[_loc15_ + _loc16_++] = _loc14_;
                                                                                    addr1270:
                                                                                    if(!_loc23_)
                                                                                    {
                                                                                       if(_loc24_)
                                                                                       {
                                                                                          _loc14_.§2"B§ |= b2Body.§>7§;
                                                                                          if(_loc24_ || _loc2_)
                                                                                          {
                                                                                             if(_loc24_ || _loc2_)
                                                                                             {
                                                                                                if(false)
                                                                                                {
                                                                                                   §§goto(addr1250);
                                                                                                }
                                                                                                addr1770:
                                                                                                if(_loc16_ > 0)
                                                                                                {
                                                                                                   _loc2_ = _loc10_[_loc15_++];
                                                                                                   if(!(_loc23_ && this))
                                                                                                   {
                                                                                                      §§push(_loc16_);
                                                                                                      if(!_loc23_)
                                                                                                      {
                                                                                                         §§push(§§pop() - 1);
                                                                                                      }
                                                                                                      _loc16_ = §§pop();
                                                                                                      addr1327:
                                                                                                      _loc9_.§'!$§(_loc2_);
                                                                                                      addr1337:
                                                                                                      addr1331:
                                                                                                      if(_loc2_.IsAwake() == false)
                                                                                                      {
                                                                                                         if(_loc24_)
                                                                                                         {
                                                                                                            if(!(_loc23_ && _loc3_))
                                                                                                            {
                                                                                                               _loc2_.SetAwake(true);
                                                                                                               if(!(_loc23_ && this))
                                                                                                               {
                                                                                                                  if(!(_loc23_ && _loc2_))
                                                                                                                  {
                                                                                                                     if(false)
                                                                                                                     {
                                                                                                                        §§goto(addr1327);
                                                                                                                     }
                                                                                                                     addr1338:
                                                                                                                     if(_loc2_.§>!f§() != b2Body.b2_dynamicBody)
                                                                                                                     {
                                                                                                                        addr1343:
                                                                                                                        §§goto(addr1770);
                                                                                                                     }
                                                                                                                     _loc7_ = _loc2_.§>"K§;
                                                                                                                     if(_loc24_ || _loc3_)
                                                                                                                     {
                                                                                                                        addr1604:
                                                                                                                        if(!_loc7_)
                                                                                                                        {
                                                                                                                           addr1606:
                                                                                                                           _loc21_ = _loc2_.§@!g§;
                                                                                                                           if(_loc24_)
                                                                                                                           {
                                                                                                                              addr1768:
                                                                                                                              if(!_loc21_)
                                                                                                                              {
                                                                                                                                 §§goto(addr1770);
                                                                                                                              }
                                                                                                                              if(_loc9_.§<!y§ == _loc9_.§9!q§)
                                                                                                                              {
                                                                                                                                 if(!_loc23_)
                                                                                                                                 {
                                                                                                                                    addr1764:
                                                                                                                                    _loc21_ = _loc21_.§3u§;
                                                                                                                                    §§goto(addr1768);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1770);
                                                                                                                              }
                                                                                                                              if(_loc21_.§<S§.§9!v§ == true)
                                                                                                                              {
                                                                                                                                 if(_loc24_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr1764);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1770);
                                                                                                                              }
                                                                                                                              if((_loc22_ = _loc21_.§[!!§).§,"G§() == false)
                                                                                                                              {
                                                                                                                                 if(_loc24_ || param1)
                                                                                                                                 {
                                                                                                                                    §§goto(addr1764);
                                                                                                                                 }
                                                                                                                                 _loc22_.SetAwake(true);
                                                                                                                                 addr1713:
                                                                                                                                 addr1758:
                                                                                                                                 if(!(_loc23_ && this))
                                                                                                                                 {
                                                                                                                                    if(!(_loc23_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       addr1701:
                                                                                                                                       _loc10_[_loc15_ + _loc16_] = _loc22_;
                                                                                                                                       addr1689:
                                                                                                                                       _loc16_++;
                                                                                                                                       addr1708:
                                                                                                                                       if(_loc24_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          if(_loc24_)
                                                                                                                                          {
                                                                                                                                             _loc22_.§2"B§ |= b2Body.§>7§;
                                                                                                                                             if(!(_loc23_ && this))
                                                                                                                                             {
                                                                                                                                                if(!_loc23_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc23_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      if(false)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr1689);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1764);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1713);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1708);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1689);
                                                                                                                                          }
                                                                                                                                          §§push(_loc22_.§2"B§);
                                                                                                                                          if(_loc24_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             §§push(b2Body.§>7§);
                                                                                                                                             if(_loc24_ || this)
                                                                                                                                             {
                                                                                                                                                if(§§pop() & §§pop())
                                                                                                                                                {
                                                                                                                                                   addr1749:
                                                                                                                                                   §§goto(addr1764);
                                                                                                                                                }
                                                                                                                                                addr1752:
                                                                                                                                                §§push(_loc22_.§>!f§());
                                                                                                                                                §§push(b2Body.b2_staticBody);
                                                                                                                                             }
                                                                                                                                             if(§§pop() != §§pop())
                                                                                                                                             {
                                                                                                                                                addr1755:
                                                                                                                                                _loc22_.§'a§(_loc13_);
                                                                                                                                                §§goto(addr1758);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1701);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1752);
                                                                                                                                          addr1763:
                                                                                                                                       }
                                                                                                                                       §§goto(addr1713);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1749);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1755);
                                                                                                                              }
                                                                                                                              _loc9_.§@"9§(_loc21_.§<S§);
                                                                                                                              if(!(_loc23_ && this))
                                                                                                                              {
                                                                                                                                 _loc21_.§<S§.§9!v§ = true;
                                                                                                                              }
                                                                                                                              §§goto(addr1763);
                                                                                                                           }
                                                                                                                           §§goto(addr1770);
                                                                                                                        }
                                                                                                                        §§push(_loc9_.§%!0§);
                                                                                                                        if(!_loc23_)
                                                                                                                        {
                                                                                                                           if(§§pop() == _loc9_.§9"3§)
                                                                                                                           {
                                                                                                                              if(_loc24_)
                                                                                                                              {
                                                                                                                                 §§goto(addr1606);
                                                                                                                              }
                                                                                                                              addr1600:
                                                                                                                              _loc7_ = _loc7_.§3u§;
                                                                                                                              §§goto(addr1604);
                                                                                                                              addr1483:
                                                                                                                           }
                                                                                                                           addr1486:
                                                                                                                           §§push(_loc7_.§-"G§);
                                                                                                                           if(_loc24_)
                                                                                                                           {
                                                                                                                              addr1482:
                                                                                                                              if(§§pop().§2"B§ & b2Contact.§>7§)
                                                                                                                              {
                                                                                                                                 §§goto(addr1483);
                                                                                                                              }
                                                                                                                              §§push(_loc7_.§-"G§);
                                                                                                                           }
                                                                                                                           §§push(§§pop().§0d§());
                                                                                                                           if(_loc24_)
                                                                                                                           {
                                                                                                                              §§push(true);
                                                                                                                              if(!(_loc23_ && param1))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() == §§pop());
                                                                                                                                 if(_loc24_ || param1)
                                                                                                                                 {
                                                                                                                                    addr1506:
                                                                                                                                    if(!§§pop())
                                                                                                                                    {
                                                                                                                                       addr1507:
                                                                                                                                       §§pop();
                                                                                                                                       addr1508:
                                                                                                                                       §§push(_loc7_.§-"G§.§;!S§());
                                                                                                                                       if(_loc24_)
                                                                                                                                       {
                                                                                                                                          §§push(false);
                                                                                                                                          if(!(_loc23_ && this))
                                                                                                                                          {
                                                                                                                                             if(_loc24_ || param1)
                                                                                                                                             {
                                                                                                                                                addr1458:
                                                                                                                                                §§push(§§pop() == §§pop());
                                                                                                                                                §§push(§§pop() == §§pop());
                                                                                                                                             }
                                                                                                                                             §§goto(addr1506);
                                                                                                                                          }
                                                                                                                                          addr1459:
                                                                                                                                          if(!§§pop())
                                                                                                                                          {
                                                                                                                                             addr1460:
                                                                                                                                             §§pop();
                                                                                                                                             addr1461:
                                                                                                                                             §§push(_loc7_.§-"G§);
                                                                                                                                             if(_loc24_ || this)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().§3"I§());
                                                                                                                                                if(_loc24_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   if(_loc24_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc24_)
                                                                                                                                                      {
                                                                                                                                                         §§push(false);
                                                                                                                                                         if(!(_loc23_ && this))
                                                                                                                                                         {
                                                                                                                                                            addr1414:
                                                                                                                                                            §§push(§§pop() == §§pop());
                                                                                                                                                            if(_loc24_)
                                                                                                                                                            {
                                                                                                                                                               addr1416:
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc23_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc23_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc23_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr1600);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1508);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1461);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1606);
                                                                                                                                                               }
                                                                                                                                                               _loc9_.§87§(_loc7_.§-"G§);
                                                                                                                                                               addr1434:
                                                                                                                                                               §§push(_loc7_.§-"G§);
                                                                                                                                                               if(!_loc23_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc23_)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().§2"B§ = _loc7_.§-"G§.§2"B§ | b2Contact.§>7§;
                                                                                                                                                                     if(!_loc23_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc24_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc23_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              if(false)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr1461);
                                                                                                                                                                              }
                                                                                                                                                                              §§push((_loc22_ = _loc7_.§[!!§).§2"B§);
                                                                                                                                                                              if(_loc24_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(b2Body.§>7§);
                                                                                                                                                                                 if(!(_loc23_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop() & §§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc23_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr1600);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr1574:
                                                                                                                                                                                       if(false)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1576:
                                                                                                                                                                                          _loc16_++;
                                                                                                                                                                                          addr1578:
                                                                                                                                                                                          if(_loc24_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc24_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc22_.§2"B§ |= b2Body.§>7§;
                                                                                                                                                                                                if(!(_loc23_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr1574);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1578);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr1589:
                                                                                                                                                                                             _loc10_[_loc15_ + _loc16_] = _loc22_;
                                                                                                                                                                                             addr1599:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1576);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1600);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr1538:
                                                                                                                                                                                    §§push(_loc22_.§>!f§());
                                                                                                                                                                                    §§push(b2Body.b2_staticBody);
                                                                                                                                                                                 }
                                                                                                                                                                                 if(§§pop() != §§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc23_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc22_.§'a§(_loc13_);
                                                                                                                                                                                       if(!(_loc23_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc22_.SetAwake(true);
                                                                                                                                                                                          §§goto(addr1599);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1576);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1599);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1589);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1538);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1600);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1434);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1606);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1486);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1461);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1460);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1459);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1507);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1458);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1414);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1507);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1416);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr1458);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1507);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr1506);
                                                                                                                        }
                                                                                                                        §§goto(addr1482);
                                                                                                                     }
                                                                                                                     §§goto(addr1507);
                                                                                                                  }
                                                                                                                  §§goto(addr1337);
                                                                                                               }
                                                                                                               §§goto(addr1343);
                                                                                                            }
                                                                                                            §§goto(addr1331);
                                                                                                         }
                                                                                                         §§goto(addr1343);
                                                                                                      }
                                                                                                      §§goto(addr1338);
                                                                                                   }
                                                                                                   §§goto(addr1343);
                                                                                                }
                                                                                                addr1773:
                                                                                                (_loc17_ = §@!,§).§@I§ = false;
                                                                                                if(!_loc23_)
                                                                                                {
                                                                                                   §§push(_loc17_);
                                                                                                   §§push(1 - _loc13_);
                                                                                                   if(!_loc23_)
                                                                                                   {
                                                                                                      §§push(§§pop() * param1.§;J§);
                                                                                                   }
                                                                                                   §§pop().§;J§ = §§pop();
                                                                                                   if(!(_loc23_ && this))
                                                                                                   {
                                                                                                      _loc17_.§9n§ = 1 / _loc17_.§;J§;
                                                                                                      if(_loc24_)
                                                                                                      {
                                                                                                         _loc17_.§]'§ = 0;
                                                                                                         if(!_loc23_)
                                                                                                         {
                                                                                                            _loc17_.§;N§ = param1.§;N§;
                                                                                                            _loc17_.§="W§ = param1.§="W§;
                                                                                                            addr1801:
                                                                                                            _loc9_.§7!_§(_loc17_);
                                                                                                            addr1828:
                                                                                                            addr1822:
                                                                                                            if(_loc24_ || this)
                                                                                                            {
                                                                                                               if(_loc24_)
                                                                                                               {
                                                                                                                  if(!_loc23_)
                                                                                                                  {
                                                                                                                     §§push(0);
                                                                                                                     if(_loc24_ || this)
                                                                                                                     {
                                                                                                                        _loc18_ = §§pop();
                                                                                                                        if(!(_loc23_ && _loc2_))
                                                                                                                        {
                                                                                                                           if(false)
                                                                                                                           {
                                                                                                                              §§goto(addr1801);
                                                                                                                           }
                                                                                                                           addr1960:
                                                                                                                           §§push(_loc18_);
                                                                                                                           if(!_loc23_)
                                                                                                                           {
                                                                                                                              §§push(_loc9_.§;0§);
                                                                                                                              if(_loc24_)
                                                                                                                              {
                                                                                                                                 if(§§pop() < §§pop())
                                                                                                                                 {
                                                                                                                                    _loc2_ = _loc9_.§;"[§[_loc18_];
                                                                                                                                    if(_loc24_)
                                                                                                                                    {
                                                                                                                                       _loc2_.§2"B§ &= ~b2Body.§>7§;
                                                                                                                                       if(_loc24_ || param1)
                                                                                                                                       {
                                                                                                                                          if(_loc2_.IsAwake() == false)
                                                                                                                                          {
                                                                                                                                             if(!(_loc23_ && param1))
                                                                                                                                             {
                                                                                                                                                addr1959:
                                                                                                                                                _loc18_++;
                                                                                                                                                §§goto(addr1960);
                                                                                                                                                addr1900:
                                                                                                                                             }
                                                                                                                                             addr1923:
                                                                                                                                             _loc7_ = _loc2_.§>"K§;
                                                                                                                                             if(_loc24_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                addr1957:
                                                                                                                                                if(!_loc7_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr1959);
                                                                                                                                                }
                                                                                                                                                _loc7_.§-"G§.§2"B§ &= ~b2Contact.§?!$§;
                                                                                                                                                if(_loc24_ || param1)
                                                                                                                                                {
                                                                                                                                                   addr1953:
                                                                                                                                                   _loc7_ = _loc7_.§3u§;
                                                                                                                                                   §§goto(addr1957);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1959);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1953);
                                                                                                                                          }
                                                                                                                                          if(_loc2_.§>!f§() != b2Body.b2_dynamicBody)
                                                                                                                                          {
                                                                                                                                             if(_loc24_ || param1)
                                                                                                                                             {
                                                                                                                                                §§goto(addr1959);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1923);
                                                                                                                                          }
                                                                                                                                          _loc2_.§-! §();
                                                                                                                                          if(_loc24_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr1923);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1960);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1900);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1960);
                                                                                                                                 }
                                                                                                                                 if(_loc23_ && _loc3_)
                                                                                                                                 {
                                                                                                                                    continue loop3;
                                                                                                                                 }
                                                                                                                                 addr1975:
                                                                                                                                 §§push(0);
                                                                                                                                 if(!(_loc23_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    _loc18_ = §§pop();
                                                                                                                                    if(_loc24_)
                                                                                                                                    {
                                                                                                                                       addr2020:
                                                                                                                                       §§push(_loc18_);
                                                                                                                                       if(!(_loc23_ && param1))
                                                                                                                                       {
                                                                                                                                          §§push(_loc9_.§%!0§);
                                                                                                                                          if(_loc24_)
                                                                                                                                          {
                                                                                                                                             addr2032:
                                                                                                                                             if(§§pop() < §§pop())
                                                                                                                                             {
                                                                                                                                                _loc11_ = _loc9_.§=p§[_loc18_];
                                                                                                                                                §§push(_loc11_);
                                                                                                                                                §§push(_loc11_.§2"B§);
                                                                                                                                                §§push(b2Contact.§?!$§ | b2Contact.§>7§);
                                                                                                                                                if(_loc24_ || param1)
                                                                                                                                                {
                                                                                                                                                   §§push(~§§pop());
                                                                                                                                                }
                                                                                                                                                §§pop().§2"B§ = §§pop() & §§pop();
                                                                                                                                                if(!(_loc23_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   _loc18_++;
                                                                                                                                                }
                                                                                                                                                §§goto(addr2020);
                                                                                                                                             }
                                                                                                                                             if(!(_loc23_ && param1))
                                                                                                                                             {
                                                                                                                                                addr2040:
                                                                                                                                                §§push(0);
                                                                                                                                                if(_loc24_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   addr2048:
                                                                                                                                                   _loc18_ = §§pop();
                                                                                                                                                   if(!_loc23_)
                                                                                                                                                   {
                                                                                                                                                      addr2080:
                                                                                                                                                      if(_loc18_ < _loc9_.§<!y§)
                                                                                                                                                      {
                                                                                                                                                         (_loc8_ = _loc9_.§,!f§[_loc18_]).§9!v§ = false;
                                                                                                                                                         if(!(_loc23_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            _loc18_++;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr2080);
                                                                                                                                                      }
                                                                                                                                                      addr2051:
                                                                                                                                                      if(_loc23_ && this)
                                                                                                                                                      {
                                                                                                                                                         continue loop3;
                                                                                                                                                      }
                                                                                                                                                      addr2051:
                                                                                                                                                   }
                                                                                                                                                   this.§9s§.§+!l§();
                                                                                                                                                   continue loop3;
                                                                                                                                                }
                                                                                                                                                §§goto(addr2080);
                                                                                                                                             }
                                                                                                                                             §§goto(addr2051);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr2080);
                                                                                                                                       addr1986:
                                                                                                                                    }
                                                                                                                                    §§goto(addr2051);
                                                                                                                                 }
                                                                                                                                 §§goto(addr2048);
                                                                                                                              }
                                                                                                                              §§goto(addr2032);
                                                                                                                           }
                                                                                                                           §§goto(addr2048);
                                                                                                                        }
                                                                                                                        §§goto(addr2051);
                                                                                                                     }
                                                                                                                     §§goto(addr2080);
                                                                                                                     addr1816:
                                                                                                                  }
                                                                                                                  §§goto(addr1828);
                                                                                                               }
                                                                                                               §§goto(addr1822);
                                                                                                            }
                                                                                                            §§goto(addr1975);
                                                                                                         }
                                                                                                         §§goto(addr1986);
                                                                                                      }
                                                                                                      §§goto(addr2040);
                                                                                                   }
                                                                                                   §§goto(addr1975);
                                                                                                }
                                                                                                §§goto(addr1816);
                                                                                             }
                                                                                             §§goto(addr1275);
                                                                                          }
                                                                                          §§goto(addr1773);
                                                                                       }
                                                                                       §§goto(addr1270);
                                                                                    }
                                                                                    §§goto(addr1773);
                                                                                 }
                                                                              }
                                                                              §§goto(addr1770);
                                                                              addr1225:
                                                                           }
                                                                           §§goto(addr1275);
                                                                        }
                                                                        §§goto(addr1225);
                                                                     }
                                                                     §§goto(addr1221);
                                                                  }
                                                               }
                                                               §§goto(addr1143);
                                                            }
                                                            §§goto(addr1200);
                                                         }
                                                         §§goto(addr1142);
                                                      }
                                                   }
                                                   §§goto(addr1200);
                                                }
                                                §§goto(addr1202);
                                             }
                                          }
                                       }
                                       §§goto(addr1109);
                                    }
                                    §§goto(addr1142);
                                 }
                                 addr1191:
                                 §§goto(addr1191);
                              }
                              §§goto(addr1117);
                           }
                        }
                        §§goto(addr972);
                     }
                     else
                     {
                        §§push(_loc11_.§0d§());
                        loop5:
                        while(true)
                        {
                           §§push(true);
                           loop6:
                           while(true)
                           {
                              §§push(§§pop() == §§pop());
                              if(_loc24_ || this)
                              {
                                 §§push(§§pop());
                                 loop7:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       if(_loc24_ || _loc3_)
                                       {
                                          §§pop();
                                          loop8:
                                          while(true)
                                          {
                                             §§push(_loc11_.§;!S§());
                                             loop9:
                                             while(true)
                                             {
                                                §§push(false);
                                                if(_loc24_ || _loc2_)
                                                {
                                                   if(_loc23_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   if(_loc23_ && param1)
                                                   {
                                                      break;
                                                   }
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc24_ || _loc3_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         loop15:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               addr318:
                                                               if(!(_loc23_ && _loc3_))
                                                               {
                                                                  while(!_loc23_)
                                                                  {
                                                                     §§pop();
                                                                     if(_loc24_ || _loc3_)
                                                                     {
                                                                        loop11:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc11_.§>"2§());
                                                                           if(_loc24_ || _loc3_)
                                                                           {
                                                                              §§push(false);
                                                                              if(_loc24_)
                                                                              {
                                                                                 if(_loc23_)
                                                                                 {
                                                                                    continue loop15;
                                                                                 }
                                                                                 §§push(§§pop() == §§pop());
                                                                                 if(!(_loc23_ && this))
                                                                                 {
                                                                                    if(_loc23_)
                                                                                    {
                                                                                       continue loop9;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc24_ || _loc2_)
                                                                                          {
                                                                                             continue loop8;
                                                                                          }
                                                                                          loop12:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc11_.§2"B§ & b2Contact.§?!$§);
                                                                                             if(!_loc23_)
                                                                                             {
                                                                                                if(_loc24_)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(_loc24_)
                                                                                                      {
                                                                                                         §§push(_loc11_.§;"K§);
                                                                                                         if(!(_loc23_ && _loc3_))
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(!_loc23_)
                                                                                                            {
                                                                                                               _loc19_ = §§pop();
                                                                                                               if(!_loc23_)
                                                                                                               {
                                                                                                                  if(true)
                                                                                                                  {
                                                                                                                     addr880:
                                                                                                                     §§push(Number.MIN_VALUE < _loc19_);
                                                                                                                  }
                                                                                                                  continue loop11;
                                                                                                                  if(!_loc23_)
                                                                                                                  {
                                                                                                                     break loop11;
                                                                                                                  }
                                                                                                                  break loop6;
                                                                                                               }
                                                                                                               §§goto(addr972);
                                                                                                            }
                                                                                                            addr913:
                                                                                                            §§push(_loc13_);
                                                                                                            if(_loc24_)
                                                                                                            {
                                                                                                               §§push(§§pop() < §§pop());
                                                                                                               if(_loc24_ || param1)
                                                                                                               {
                                                                                                                  addr924:
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     continue loop4;
                                                                                                                  }
                                                                                                                  if(_loc24_)
                                                                                                                  {
                                                                                                                     addr927:
                                                                                                                     _loc12_ = _loc11_;
                                                                                                                     if(_loc24_ || _loc2_)
                                                                                                                     {
                                                                                                                        §§push(_loc19_);
                                                                                                                        if(!_loc23_)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        _loc13_ = §§pop();
                                                                                                                     }
                                                                                                                     continue loop4;
                                                                                                                  }
                                                                                                                  §§goto(addr981);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr965);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr972);
                                                                                                      }
                                                                                                      addr905:
                                                                                                      §§push(_loc19_);
                                                                                                      if(_loc24_ || param1)
                                                                                                      {
                                                                                                         §§goto(addr913);
                                                                                                      }
                                                                                                      §§goto(addr972);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(_loc11_.§4!?§);
                                                                                                      if(!(_loc23_ && param1))
                                                                                                      {
                                                                                                         _loc3_ = §§pop();
                                                                                                         _loc4_ = _loc11_.§3!B§;
                                                                                                         _loc5_ = _loc3_.m_body;
                                                                                                         _loc6_ = _loc4_.m_body;
                                                                                                         if(_loc24_ || param1)
                                                                                                         {
                                                                                                            addr877:
                                                                                                            §§push(_loc5_.§>!f§() != b2Body.b2_dynamicBody);
                                                                                                            if(!(_loc5_.§>!f§() != b2Body.b2_dynamicBody))
                                                                                                            {
                                                                                                               addr878:
                                                                                                               §§pop();
                                                                                                               addr879:
                                                                                                               §§push(_loc5_.IsAwake());
                                                                                                               if(_loc24_)
                                                                                                               {
                                                                                                                  addr864:
                                                                                                                  §§push(§§pop() == false);
                                                                                                                  if(§§pop() == false)
                                                                                                                  {
                                                                                                                     addr868:
                                                                                                                     §§pop();
                                                                                                                     addr869:
                                                                                                                     §§push(_loc6_.§>!f§());
                                                                                                                     if(_loc24_ || _loc3_)
                                                                                                                     {
                                                                                                                        §§push(b2Body.b2_dynamicBody);
                                                                                                                        if(!(_loc23_ && this))
                                                                                                                        {
                                                                                                                           addr845:
                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                           if(_loc24_)
                                                                                                                           {
                                                                                                                              if(!_loc23_)
                                                                                                                              {
                                                                                                                                 §§push(!§§pop());
                                                                                                                                 if(_loc24_)
                                                                                                                                 {
                                                                                                                                    addr853:
                                                                                                                                    §§push(§§pop());
                                                                                                                                    if(_loc24_)
                                                                                                                                    {
                                                                                                                                       if(!§§pop())
                                                                                                                                       {
                                                                                                                                          addr856:
                                                                                                                                          §§pop();
                                                                                                                                          addr857:
                                                                                                                                          §§push(_loc6_.IsAwake());
                                                                                                                                          if(!_loc23_)
                                                                                                                                          {
                                                                                                                                             if(_loc24_)
                                                                                                                                             {
                                                                                                                                                if(_loc24_)
                                                                                                                                                {
                                                                                                                                                   addr811:
                                                                                                                                                   §§push(false);
                                                                                                                                                   if(_loc24_)
                                                                                                                                                   {
                                                                                                                                                      addr814:
                                                                                                                                                      §§push(§§pop() == §§pop());
                                                                                                                                                      if(!_loc23_)
                                                                                                                                                      {
                                                                                                                                                         addr816:
                                                                                                                                                         if(!§§pop())
                                                                                                                                                         {
                                                                                                                                                            addr823:
                                                                                                                                                            _loc20_ = _loc5_.m_sweep.§6!0§;
                                                                                                                                                            addr787:
                                                                                                                                                            addr824:
                                                                                                                                                            addr821:
                                                                                                                                                            §§push(_loc5_.m_sweep.§6!0§);
                                                                                                                                                            if(!_loc23_)
                                                                                                                                                            {
                                                                                                                                                               addr792:
                                                                                                                                                               if(§§pop() < _loc6_.m_sweep.§6!0§)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc24_)
                                                                                                                                                                  {
                                                                                                                                                                     addr799:
                                                                                                                                                                     _loc20_ = _loc6_.m_sweep.§6!0§;
                                                                                                                                                                  }
                                                                                                                                                                  addr800:
                                                                                                                                                                  §§push(_loc5_.m_sweep);
                                                                                                                                                                  if(_loc24_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc24_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        addr774:
                                                                                                                                                                        §§pop().§'a§(_loc20_);
                                                                                                                                                                        if(_loc24_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           addr685:
                                                                                                                                                                           _loc19_ = Number(_loc11_.§2"5§(_loc5_.m_sweep,_loc6_.m_sweep));
                                                                                                                                                                           addr677:
                                                                                                                                                                           addr684:
                                                                                                                                                                           if(!_loc23_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(b2Settings);
                                                                                                                                                                              if(_loc24_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(0);
                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() <= _loc19_);
                                                                                                                                                                                    if(!_loc23_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc24_ || _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr669:
                                                                                                                                                                                             §§pop();
                                                                                                                                                                                             §§push(_loc19_ <= 1);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§pop().b2Assert(§§pop());
                                                                                                                                                                                       addr674:
                                                                                                                                                                                       if(_loc24_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr597:
                                                                                                                                                                                          §§push(_loc19_);
                                                                                                                                                                                          §§push(0);
                                                                                                                                                                                          if(!_loc23_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr601:
                                                                                                                                                                                             §§push(§§pop() > §§pop());
                                                                                                                                                                                             §§push(§§pop() > §§pop());
                                                                                                                                                                                             if(!(_loc23_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc23_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc23_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr624:
                                                                                                                                                                                                         if(_loc24_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                               addr634:
                                                                                                                                                                                                               if(_loc24_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc24_ || param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc19_);
                                                                                                                                                                                                                     if(_loc24_ || param1)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(1);
                                                                                                                                                                                                                        if(_loc24_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() < §§pop());
                                                                                                                                                                                                                           if(_loc24_ || _loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc24_ || _loc2_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc23_ && this))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr478:
                                                                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc23_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc24_ || param1)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(1);
                                                                                                                                                                                                                                                if(!_loc23_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() - _loc19_);
                                                                                                                                                                                                                                                   if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc20_);
                                                                                                                                                                                                                                                      if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                         if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc24_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc19_);
                                                                                                                                                                                                                                                               if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                  if(!(_loc23_ && param1))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc24_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                           if(!_loc23_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr554:
                                                                                                                                                                                                                                                                              if(!(_loc23_ && param1))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc24_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr564:
                                                                                                                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                                                                                                                    if(_loc24_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       _loc19_ = §§pop();
                                                                                                                                                                                                                                                                                       if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr574:
                                                                                                                                                                                                                                                                                          if(_loc24_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc24_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc24_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr581:
                                                                                                                                                                                                                                                                                                   if(§§pop() > 1)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr582:
                                                                                                                                                                                                                                                                                                      if(!_loc23_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr586:
                                                                                                                                                                                                                                                                                                         _loc19_ = Number(1);
                                                                                                                                                                                                                                                                                                         addr587:
                                                                                                                                                                                                                                                                                                         if(!(_loc23_ && param1))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr418:
                                                                                                                                                                                                                                                                                                            _loc11_.§;"K§ = _loc19_;
                                                                                                                                                                                                                                                                                                            if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!(_loc23_ && param1))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc24_ || _loc3_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     _loc11_.§2"B§ |= b2Contact.§?!$§;
                                                                                                                                                                                                                                                                                                                     if(_loc24_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!(_loc23_ && this))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr416:
                                                                                                                                                                                                                                                                                                                              if(false)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§goto(addr418);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr880);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr869);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        addr703:
                                                                                                                                                                                                                                                                                                                        if(_loc24_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§goto(addr677);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr879);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr418);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  addr745:
                                                                                                                                                                                                                                                                                                                  §§push(_loc5_.m_sweep.§6!0§);
                                                                                                                                                                                                                                                                                                                  if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr754:
                                                                                                                                                                                                                                                                                                                     _loc20_ = §§pop();
                                                                                                                                                                                                                                                                                                                     §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                                                                                     if(_loc24_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(_loc20_);
                                                                                                                                                                                                                                                                                                                        if(!(_loc23_ && this))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§pop().§'a§(§§pop());
                                                                                                                                                                                                                                                                                                                           §§goto(addr703);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr774);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr745);
                                                                                                                                                                                                                                                                                                                     addr755:
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr799);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr582);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr587);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr800);
                                                                                                                                                                                                                                                                                                         addr585:
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr634);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr418);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr723:
                                                                                                                                                                                                                                                                                                if(_loc24_ || param1)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc5_.m_sweep);
                                                                                                                                                                                                                                                                                                   if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr740:
                                                                                                                                                                                                                                                                                                      §§push(§§pop().§6!0§);
                                                                                                                                                                                                                                                                                                      if(_loc24_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(§§pop() < §§pop())
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§goto(addr745);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr677);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr792);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr799);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr754);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr597);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr586);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr597);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr787);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr745);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr586);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr823);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr685);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr554);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr564);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr684);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr586);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr564);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr574);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr585);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr824);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr674);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr586);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr418);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr814);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr601);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr624);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr581);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr574);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr857);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr755);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr856);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr478);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr877);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr864);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr811);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr740);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr685);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr669);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr774);
                                                                                                                                                                        }
                                                                                                                                                                        addr818:
                                                                                                                                                                        continue loop4;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr821);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr799);
                                                                                                                                                               }
                                                                                                                                                               §§push(_loc6_.m_sweep);
                                                                                                                                                               if(_loc24_)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc23_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc24_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr723);
                                                                                                                                                                        §§push(§§pop().§6!0§);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr823);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr800);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr745);
                                                                                                                                                            }
                                                                                                                                                            addr822:
                                                                                                                                                            §§goto(addr822);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr818);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr878);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr853);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr877);
                                                                                                                                          }
                                                                                                                                          §§goto(addr845);
                                                                                                                                       }
                                                                                                                                       §§goto(addr816);
                                                                                                                                    }
                                                                                                                                    §§goto(addr864);
                                                                                                                                 }
                                                                                                                                 §§goto(addr856);
                                                                                                                              }
                                                                                                                              §§goto(addr864);
                                                                                                                           }
                                                                                                                           §§goto(addr868);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr877);
                                                                                                                  }
                                                                                                                  §§goto(addr816);
                                                                                                               }
                                                                                                               §§goto(addr868);
                                                                                                            }
                                                                                                            §§goto(addr864);
                                                                                                         }
                                                                                                         §§goto(addr416);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr984);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(!_loc23_)
                                                                                                      {
                                                                                                         _loc19_ = §§pop();
                                                                                                         if(!_loc23_)
                                                                                                         {
                                                                                                            continue loop12;
                                                                                                         }
                                                                                                         §§goto(addr981);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr972);
                                                                                                      }
                                                                                                      return;
                                                                                                   }
                                                                                                   addr280:
                                                                                                }
                                                                                                §§goto(addr972);
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr972);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(1);
                                                                                       }
                                                                                       §§goto(addr280);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr924);
                                                                              }
                                                                              §§goto(addr965);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§push(§§pop());
                                                                        if(!_loc23_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(!(_loc23_ && _loc2_))
                                                                              {
                                                                                 break loop6;
                                                                              }
                                                                              §§goto(addr980);
                                                                           }
                                                                           §§goto(addr924);
                                                                        }
                                                                        §§goto(addr965);
                                                                     }
                                                                     §§goto(addr972);
                                                                     §§goto(addr318);
                                                                  }
                                                                  continue loop5;
                                                                  addr325:
                                                               }
                                                               §§goto(addr980);
                                                            }
                                                            §§goto(addr262);
                                                         }
                                                      }
                                                      addr315:
                                                   }
                                                   §§goto(addr325);
                                                }
                                                §§goto(addr965);
                                             }
                                             continue loop6;
                                          }
                                       }
                                       break;
                                    }
                                    §§goto(addr315);
                                 }
                                 §§goto(addr969);
                              }
                              break;
                           }
                           §§pop();
                           if(!(_loc23_ && this))
                           {
                              §§goto(addr905);
                           }
                           §§goto(addr927);
                        }
                     }
                     §§goto(addr972);
                  }
               }
               §§goto(addr969);
            }
         }
         §§goto(addr155);
      }
      
      b2internal function §="I§(param1:b2Joint) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§["H§();
         var _loc3_:b2Body = param1.§]!s§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §<g§;
         §§push(param1.§<"@§);
         if(_loc16_ || _loc3_)
         {
            var _loc14_:* = §§pop();
            if(!(_loc15_ && _loc3_))
            {
               §§push(b2Joint.§&"W§);
               if(!_loc15_)
               {
                  §§push(_loc14_);
                  if(_loc16_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc16_ || _loc3_)
                        {
                           addr278:
                           §§push(0);
                           if(_loc16_ || _loc2_)
                           {
                              addr341:
                              loop9:
                              switch(§§pop())
                              {
                                 case 0:
                                    this.§1s§.§%!2§(_loc8_,_loc9_,_loc10_);
                                    if(!(_loc15_ && _loc2_))
                                    {
                                       break;
                                    }
                                    break;
                                 case 1:
                                    _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§8!i§();
                                    _loc13_ = _loc11_.§?0§();
                                    if(_loc16_)
                                    {
                                       §§push(this.§1s§);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          if(false)
                                          {
                                             loop3:
                                             while(true)
                                             {
                                                §§push(this.§1s§);
                                                loop4:
                                                while(_loc16_)
                                                {
                                                   if(!(_loc15_ && _loc2_))
                                                   {
                                                      §§pop().§%!2§(_loc8_,_loc9_,_loc10_);
                                                      while(true)
                                                      {
                                                         if(!_loc15_)
                                                         {
                                                            if(_loc16_ || param1)
                                                            {
                                                               if(_loc3_ == this.m_groundBody)
                                                               {
                                                                  break;
                                                               }
                                                               if(!_loc16_)
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(this.§1s§);
                                                               if(_loc15_)
                                                               {
                                                                  continue loop4;
                                                               }
                                                               if(_loc16_ || _loc3_)
                                                               {
                                                                  §§pop().§%!2§(_loc7_,_loc9_,_loc10_);
                                                                  continue;
                                                               }
                                                               addr186:
                                                               while(true)
                                                               {
                                                                  if(_loc15_ && _loc3_)
                                                                  {
                                                                     addr210:
                                                                     §§pop().§%!2§(_loc8_,_loc9_,_loc10_);
                                                                     break;
                                                                  }
                                                                  if(_loc15_ && this)
                                                                  {
                                                                     addr218:
                                                                     §§pop().§%!2§(_loc12_,_loc13_,_loc10_);
                                                                     loop7:
                                                                     while(!(_loc16_ || _loc2_))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr218);
                                                                           continue loop7;
                                                                        }
                                                                     }
                                                                     break loop9;
                                                                     addr222:
                                                                  }
                                                                  §§pop().§%!2§(_loc6_,_loc8_,_loc10_);
                                                                  while(true)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                               }
                                                            }
                                                            break loop9;
                                                         }
                                                         §§goto(addr204);
                                                      }
                                                      addr245:
                                                      break loop9;
                                                   }
                                                   addr240:
                                                   §§pop().§%!2§(_loc12_,_loc8_,_loc10_);
                                                   §§goto(addr244);
                                                }
                                                §§pop().§%!2§(_loc13_,_loc9_,_loc10_);
                                                §§goto(addr237);
                                             }
                                             addr141:
                                          }
                                          §§goto(addr245);
                                       }
                                    }
                                    §§goto(addr240);
                                 case 2:
                                    §§goto(addr210);
                                 default:
                                    §§push(this.§1s§);
                                    if(_loc2_ != this.m_groundBody)
                                    {
                                       §§goto(addr184);
                                    }
                                    §§goto(addr141);
                              }
                              return;
                              addr340:
                           }
                        }
                        else
                        {
                           addr317:
                           §§push(1);
                           if(_loc15_)
                           {
                              addr330:
                              if(§§pop() === _loc14_)
                              {
                                 addr332:
                                 §§push(2);
                                 if(!_loc15_)
                                 {
                                    addr335:
                                 }
                                 §§goto(addr340);
                              }
                              else
                              {
                                 §§goto(addr340);
                                 §§push(3);
                              }
                           }
                        }
                     }
                     else
                     {
                        §§push(b2Joint.§3`§);
                        if(!_loc15_)
                        {
                           §§push(_loc14_);
                           if(_loc16_ || _loc2_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc16_ || _loc2_)
                                 {
                                    §§goto(addr317);
                                 }
                                 §§goto(addr332);
                              }
                              else
                              {
                                 §§push(b2Joint.§-m§);
                                 if(!(_loc15_ && _loc3_))
                                 {
                                    §§goto(addr330);
                                 }
                              }
                              §§goto(addr335);
                           }
                        }
                     }
                     §§goto(addr340);
                  }
                  §§goto(addr330);
               }
               §§goto(addr340);
            }
            §§goto(addr278);
         }
         §§goto(addr341);
      }
      
      b2internal function §["4§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         §§push(param1.§<"@§);
         if(!_loc15_)
         {
            var _loc14_:* = §§pop();
            if(!(_loc15_ && param1))
            {
               §§push(b2Shape.§ "&§);
               if(!(_loc15_ && param3))
               {
                  §§push(_loc14_);
                  if(_loc16_ || this)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc15_ && param3))
                        {
                           §§push(0);
                           if(!_loc16_)
                           {
                              addr286:
                              if(§§pop() === _loc14_)
                              {
                                 addr288:
                                 §§push(2);
                                 if(_loc16_ || this)
                                 {
                                    addr296:
                                 }
                              }
                              else
                              {
                                 §§push(3);
                              }
                           }
                           addr302:
                           switch(§§pop())
                           {
                              case 0:
                                 _loc4_ = param1 as b2CircleShape;
                                 _loc5_ = b2Math.§^T§(param2,_loc4_.§2"9§);
                                 if(!(_loc15_ && param1))
                                 {
                                    _loc6_ = _loc4_.§0!_§;
                                 }
                                 _loc7_ = param2.R.col1;
                                 if(!(_loc15_ && this))
                                 {
                                    this.§1s§.§2"P§(_loc5_,_loc6_,_loc7_,param3);
                                 }
                                 break;
                              case 1:
                                 §§push((_loc9_ = param1 as b2PolygonShape).§"R§());
                                 if(!_loc15_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 _loc10_ = §§pop();
                                 _loc11_ = _loc9_.§,!N§();
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
                                 if(!_loc15_)
                                 {
                                    this.§1s§.§%!2§(b2Math.§^T§(param2,_loc13_.GetVertex1()),b2Math.§^T§(param2,_loc13_.GetVertex2()),param3);
                                 }
                           }
                           return;
                           addr301:
                        }
                        §§goto(addr288);
                     }
                     else
                     {
                        §§push(b2Shape.§8x§);
                        if(!_loc15_)
                        {
                           §§push(_loc14_);
                           if(!(_loc15_ && param3))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc16_)
                                 {
                                    addr258:
                                    §§push(1);
                                    if(_loc15_ && param2)
                                    {
                                       §§goto(addr296);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr288);
                                 }
                              }
                              else
                              {
                                 §§push(b2Shape.§?!7§);
                                 if(!(_loc15_ && this))
                                 {
                                    §§goto(addr286);
                                 }
                              }
                              §§goto(addr301);
                           }
                           §§goto(addr286);
                        }
                     }
                  }
                  §§goto(addr286);
               }
               §§goto(addr296);
            }
            §§goto(addr258);
         }
         §§goto(addr302);
      }
   }
}
