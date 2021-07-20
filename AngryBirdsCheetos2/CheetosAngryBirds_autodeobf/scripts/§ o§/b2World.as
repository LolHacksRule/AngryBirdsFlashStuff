package § o§
{
   import §"0§.*;
   import §#-§.b2Controller;
   import §#-§.b2ControllerEdge;
   import §-r§.*;
   import §30§.*;
   import §6!H§.*;
   import §;!#§.*;
   import §]!S§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep;
      
      private static var § !8§:b2Transform;
      
      private static var §[4§:b2Sweep;
      
      private static var §?;§:b2Sweep;
      
      private static var §%v§:b2TimeStep;
      
      private static var §;! §:Vector.<b2Body>;
      
      private static var §-!g§:b2Color;
      
      private static var §5M§:Boolean;
      
      private static var § !5§:Boolean;
      
      public static const §[=§:int = 1;
      
      public static const §4X§:int = 2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            s_timestep2 = new b2TimeStep();
            while(true)
            {
               § !8§ = new b2Transform();
            }
            addr129:
         }
         while(true)
         {
            §[4§ = new b2Sweep();
            loop2:
            while(true)
            {
               §?;§ = new b2Sweep();
               addr102:
               while(true)
               {
                  §%v§ = new b2TimeStep();
                  continue loop2;
               }
            }
         }
      }
      
      private var §%I§:Vector.<b2Body>;
      
      b2internal var §0b§:int;
      
      b2internal var §-!-§:b2ContactManager;
      
      private var §2!T§:b2ContactSolver;
      
      private var §5u§:b2Island;
      
      b2internal var §%! §:b2Body;
      
      private var §-!&§:b2Joint;
      
      b2internal var §4!]§:b2Contact;
      
      private var §`#§:int;
      
      b2internal var §,!^§:int;
      
      private var §;6§:int;
      
      private var §3j§:b2Controller;
      
      private var §7!"§:int;
      
      private var §@[§:b2Vec2;
      
      private var §6@§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §=`§:b2DestructionListener;
      
      private var §1!;§:b2DebugDraw;
      
      private var § x§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            this.§%I§ = new Vector.<b2Body>();
            loop0:
            while(true)
            {
               this.§-!-§ = new b2ContactManager();
               loop1:
               while(true)
               {
                  this.§2!T§ = new b2ContactSolver();
                  while(true)
                  {
                     this.§5u§ = new b2Island();
                     addr206:
                     addr82:
                     while(true)
                     {
                        super();
                        continue loop1;
                     }
                     if(!(_loc5_ || this))
                     {
                        continue;
                     }
                     this.§@[§ = param1;
                     loop19:
                     while(!(_loc4_ && param1))
                     {
                        do
                        {
                           this.§ x§ = 0;
                           while(true)
                           {
                              if(_loc4_ && _loc3_)
                              {
                                 continue loop19;
                              }
                              if(_loc5_)
                              {
                                 addr54:
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    this.§-!-§.m_world = this;
                                    if(!_loc4_)
                                    {
                                       continue loop0;
                                    }
                                    continue;
                                 }
                                 loop15:
                                 while(true)
                                 {
                                    if(_loc5_)
                                    {
                                       if(!_loc4_)
                                       {
                                          if(!_loc4_)
                                          {
                                             §5M§ = true;
                                             loop16:
                                             while(true)
                                             {
                                                § !5§ = true;
                                                addr94:
                                                loop17:
                                                while(true)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      continue loop16;
                                                   }
                                                   if(_loc5_)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         this.§6@§ = param2;
                                                         break loop19;
                                                      }
                                                      break;
                                                   }
                                                   loop12:
                                                   while(true)
                                                   {
                                                      this.§,!^§ = 0;
                                                      addr138:
                                                      while(true)
                                                      {
                                                         this.§;6§ = 0;
                                                         addr131:
                                                         addr148:
                                                         while(_loc5_)
                                                         {
                                                            this.§7!"§ = 0;
                                                            continue loop15;
                                                         }
                                                         addr148:
                                                         addr165:
                                                         while(_loc5_ || _loc3_)
                                                         {
                                                            this.§`#§ = 0;
                                                            continue loop12;
                                                         }
                                                         while(!_loc4_)
                                                         {
                                                            if(!(_loc5_ || this))
                                                            {
                                                               continue loop1;
                                                            }
                                                            while(true)
                                                            {
                                                               this.§-!&§ = null;
                                                               break loop15;
                                                            }
                                                            §§goto(addr148);
                                                         }
                                                         while(true)
                                                         {
                                                            this.§%! § = null;
                                                            break loop17;
                                                         }
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   this.§4!]§ = null;
                                                   §§goto(addr165);
                                                }
                                             }
                                          }
                                          break;
                                          addr114:
                                       }
                                       §§goto(addr138);
                                    }
                                    §§goto(addr131);
                                 }
                                 while(true)
                                 {
                                    this.§3j§ = null;
                                    §§goto(addr148);
                                    §§goto(addr114);
                                 }
                              }
                              §§goto(addr94);
                           }
                           §§goto(addr206);
                           continue loop19;
                        }
                        while(false);
                        
                        var _loc3_:b2BodyDef = new b2BodyDef();
                        if(!(_loc4_ && param1))
                        {
                           this.m_groundBody = this.§<s§(_loc3_);
                        }
                        return;
                     }
                     while(_loc5_)
                     {
                        §§goto(addr82);
                        §§goto(addr68);
                     }
                     addr68:
                     while(true)
                     {
                        this.§1!;§ = null;
                        §§goto(addr165);
                     }
                  }
               }
            }
         }
         §§goto(addr174);
      }
      
      public function §6!^§(param1:b2DestructionListener) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§=`§ = param1;
         }
      }
      
      public function §`M§(param1:b2ContactFilter) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§-!-§.§1!A§ = param1;
         }
      }
      
      public function §`Q§(param1:b2ContactListener) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§-!-§.§8!I§ = param1;
         }
      }
      
      public function §1!$§(param1:b2DebugDraw) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§1!;§ = param1;
         }
      }
      
      public function §=!R§(param1:§@C§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:b2Fixture = null;
         var _loc2_:§@C§ = this.§-!-§.§<x§;
         if(!_loc6_)
         {
            this.§-!-§.§<x§ = param1;
         }
         var _loc3_:b2Body = this.§%! §;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§>0§;
            if(_loc5_ || _loc3_)
            {
               while(_loc4_)
               {
                  _loc4_.§4!W§ = param1.§1<§(_loc2_.§4!^§(_loc4_.§4!W§),_loc4_);
                  if(_loc6_ && _loc3_)
                  {
                     break;
                  }
                  _loc4_ = _loc4_.§-![§;
               }
            }
            _loc3_ = _loc3_.§-![§;
         }
      }
      
      public function §6!<§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§-!-§.§<x§.§6!<§();
         }
      }
      
      public function §<Q§() : int
      {
         return this.§-!-§.§<x§.§<Q§();
      }
      
      public function §<s§(param1:b2BodyDef) : b2Body
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
            if(this.§5Y§() == true)
            {
               if(_loc5_)
               {
                  §§goto(addr29);
               }
            }
            var _loc2_:b2Body = new b2Body(param1,this);
            if(_loc5_ || param1)
            {
               _loc2_.§`D§ = null;
               if(_loc5_ || _loc2_)
               {
                  _loc2_.§-![§ = this.§%! §;
                  loop0:
                  while(true)
                  {
                     addr84:
                     while(true)
                     {
                        §§push(this.§%! §);
                        if(_loc5_ || _loc2_)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§push(this.§%! §);
                                 addr97:
                                 while(true)
                                 {
                                    §§pop().§`D§ = _loc2_;
                                    addr99:
                                    while(true)
                                    {
                                    }
                                 }
                                 addr58:
                                 if(_loc5_ || _loc2_)
                                 {
                                    continue loop0;
                                 }
                              }
                           }
                           while(true)
                           {
                              this.§%! § = _loc2_;
                              if(!_loc5_)
                              {
                                 break;
                              }
                              if(_loc6_ && param1)
                              {
                                 continue;
                              }
                              §§goto(addr58);
                           }
                           §§goto(addr147);
                        }
                        §§goto(addr97);
                     }
                  }
               }
               addr147:
               return _loc2_;
            }
            §§goto(addr99);
         }
         addr29:
         return null;
      }
      
      public function §=!B§(param1:b2Body) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(!(_loc13_ && _loc2_))
         {
            if(this.§5Y§() == true)
            {
               if(!_loc13_)
               {
                  §§goto(addr41);
               }
            }
            var _loc2_:b2JointEdge = param1.§-!&§;
            while(_loc2_)
            {
               _loc6_ = _loc2_;
               _loc2_ = _loc2_.§23§;
               if(!_loc12_)
               {
                  continue;
               }
               §§push(this.§=`§);
               if(_loc12_)
               {
                  if(§§pop())
                  {
                     if(_loc13_)
                     {
                        continue;
                     }
                     addr66:
                     this.§=`§.§"!e§(_loc6_.§>!&§);
                     if(_loc13_ && param1)
                     {
                        continue;
                     }
                  }
                  this.§4!F§(_loc6_.§>!&§);
                  continue;
               }
               §§goto(addr66);
            }
            var _loc3_:b2ControllerEdge = param1.§3j§;
            if(!(_loc13_ && param1))
            {
               while(_loc3_)
               {
                  _loc7_ = _loc3_;
                  _loc3_ = _loc3_.§4p§;
                  if(!_loc13_)
                  {
                     _loc7_.§^&§.§<%§(param1);
                  }
               }
            }
            var _loc4_:b2ContactEdge = param1.§4!]§;
            if(_loc12_ || _loc2_)
            {
               while(_loc4_)
               {
                  _loc8_ = _loc4_;
                  _loc4_ = _loc4_.§23§;
                  if(!(_loc13_ && _loc2_))
                  {
                     this.§-!-§.§[!$§(_loc8_.§4§);
                  }
               }
               if(!_loc13_)
               {
                  addr146:
                  param1.§4!]§ = null;
               }
               var _loc5_:b2Fixture = param1.§>0§;
               if(!(_loc13_ && _loc3_))
               {
                  loop3:
                  while(_loc5_)
                  {
                     _loc9_ = _loc5_;
                     _loc5_ = _loc5_.§-![§;
                     if(_loc12_ || _loc3_)
                     {
                        §§push(this.§=`§);
                        if(_loc12_)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§push(this.§=`§);
                                 addr212:
                                 while(true)
                                 {
                                    §§pop().§&!X§(_loc9_);
                                    addr214:
                                    while(true)
                                    {
                                    }
                                 }
                              }
                              addr210:
                           }
                           loop5:
                           while(true)
                           {
                              _loc9_.§%!4§(this.§-!-§.§<x§);
                              loop6:
                              while(_loc12_)
                              {
                                 if(_loc12_)
                                 {
                                    while(true)
                                    {
                                       _loc9_.§[!$§();
                                       if(!_loc13_)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          continue loop5;
                                       }
                                       continue loop6;
                                    }
                                    continue loop3;
                                    addr204:
                                 }
                                 §§goto(addr210);
                              }
                              §§goto(addr214);
                           }
                        }
                        §§goto(addr212);
                     }
                     §§goto(addr204);
                  }
                  if(!(_loc13_ && param1))
                  {
                     param1.§>0§ = null;
                     if(!_loc13_)
                     {
                        param1.§ !2§ = 0;
                        loop15:
                        while(true)
                        {
                           §§push(param1.§`D§);
                           if(!(_loc13_ && _loc3_))
                           {
                              if(§§pop())
                              {
                                 if(_loc12_ || _loc2_)
                                 {
                                    addr305:
                                    param1.§`D§.§-![§ = param1.§-![§;
                                 }
                                 while(true)
                                 {
                                 }
                                 addr308:
                              }
                              loop11:
                              while(true)
                              {
                                 §§push(param1.§-![§);
                                 if(_loc12_ || param1)
                                 {
                                    if(§§pop())
                                    {
                                       loop12:
                                       while(_loc12_ || this)
                                       {
                                          §§push(param1.§-![§);
                                          while(true)
                                          {
                                             §§pop().§`D§ = param1.§`D§;
                                             if(!_loc13_)
                                             {
                                                while(true)
                                                {
                                                   if(param1 != this.§%! §)
                                                   {
                                                      var _loc10_:*;
                                                      §§push((_loc10_ = this).§`#§);
                                                      if(_loc12_ || _loc3_)
                                                      {
                                                         §§push(§§pop() - 1);
                                                      }
                                                      var _loc11_:* = §§pop();
                                                   }
                                                   addr313:
                                                   if(_loc13_ && _loc3_)
                                                   {
                                                      break;
                                                   }
                                                   if(!_loc12_)
                                                   {
                                                      continue loop12;
                                                      if(!(_loc13_ && _loc3_))
                                                      {
                                                         _loc10_.§`#§ = _loc11_;
                                                      }
                                                   }
                                                   if(_loc12_)
                                                   {
                                                      break loop11;
                                                   }
                                                   continue loop15;
                                                }
                                                addr230:
                                             }
                                             §§goto(addr348);
                                          }
                                       }
                                       §§goto(addr308);
                                    }
                                    §§goto(addr230);
                                 }
                                 §§goto(addr279);
                              }
                              while(true)
                              {
                                 this.§%! § = param1.§-![§;
                                 if(_loc12_ || param1)
                                 {
                                    if(false)
                                    {
                                       §§goto(addr259);
                                    }
                                    §§goto(addr313);
                                 }
                                 addr348:
                                 return;
                              }
                              addr259:
                              addr246:
                           }
                           §§goto(addr305);
                        }
                        addr312:
                     }
                  }
                  §§goto(addr246);
               }
               §§goto(addr312);
            }
            §§goto(addr146);
         }
         addr41:
      }
      
      public function §,Y§(param1:b2JointDef) : b2Joint
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§#!M§(param1,null);
         if(!(_loc8_ && param1))
         {
            _loc2_.§`D§ = null;
            if(!(_loc8_ && this))
            {
               _loc2_.§-![§ = this.§-!&§;
               if(!(_loc8_ && param1))
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§-!&§);
                     if(!(_loc8_ && _loc2_))
                     {
                        if(§§pop())
                        {
                           if(_loc9_ || _loc3_)
                           {
                              while(true)
                              {
                                 §§push(this.§-!&§);
                                 addr62:
                                 while(true)
                                 {
                                    §§pop().§`D§ = _loc2_;
                                    if(_loc9_)
                                    {
                                       while(true)
                                       {
                                          this.§-!&§ = _loc2_;
                                          if(!_loc8_)
                                          {
                                             if(false)
                                             {
                                                continue loop0;
                                             }
                                             var _loc6_:*;
                                             §§push((_loc6_ = this).§;6§);
                                             if(!(_loc8_ && _loc2_))
                                             {
                                                §§push(§§pop() + 1);
                                             }
                                             var _loc7_:* = §§pop();
                                             if(_loc9_)
                                             {
                                                _loc6_.§;6§ = _loc7_;
                                             }
                                             if(_loc9_)
                                             {
                                                §§push(_loc2_.§;!S§);
                                                loop8:
                                                while(true)
                                                {
                                                   §§pop().§>!&§ = _loc2_;
                                                   addr312:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_.§;!S§);
                                                      loop26:
                                                      while(true)
                                                      {
                                                         §§pop().§'!4§ = _loc2_.§3D§;
                                                         addr307:
                                                         while(true)
                                                         {
                                                            addr293:
                                                            §§push(_loc2_.§;!S§);
                                                            addr296:
                                                            addr298:
                                                            addr300:
                                                            while(!_loc9_)
                                                            {
                                                               continue loop26;
                                                            }
                                                            §§pop().§4!N§ = null;
                                                            while(true)
                                                            {
                                                               §§push(_loc2_.§;!S§);
                                                               if(!_loc8_)
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     continue loop8;
                                                                  }
                                                                  §§pop().§23§ = _loc2_.§6z§.§-!&§;
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_.§6z§);
                                                                     loop11:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().§-!&§);
                                                                        if(_loc9_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc2_.§6z§);
                                                                                 addr276:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().§-!&§);
                                                                                    addr277:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().§4!N§ = _loc2_.§;!S§;
                                                                                       addr280:
                                                                                       while(true)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr274:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_.§6z§);
                                                                              if(!_loc8_)
                                                                              {
                                                                                 continue loop11;
                                                                              }
                                                                              §§goto(addr276);
                                                                              §§goto(addr280);
                                                                           }
                                                                           continue;
                                                                        }
                                                                        §§goto(addr277);
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr296);
                                                               }
                                                               §§goto(addr298);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr300);
                                          }
                                          break;
                                       }
                                       loop1:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             §§push(_loc2_.§3D§);
                                             if(_loc9_ || _loc2_)
                                             {
                                                §§push(§§pop().§-!&§);
                                                if(!(_loc8_ && this))
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop3:
                                                      while(true)
                                                      {
                                                         §§push(_loc2_.§3D§);
                                                         addr156:
                                                         loop7:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().§-!&§);
                                                            addr157:
                                                            while(true)
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  §§pop().§4!N§ = _loc2_.§"X§;
                                                                  loop6:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc8_)
                                                                     {
                                                                        if(!_loc8_)
                                                                        {
                                                                           if(_loc9_)
                                                                           {
                                                                              addr168:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc2_.§3D§);
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    §§pop().§-!&§ = _loc2_.§"X§;
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       continue loop3;
                                                                                    }
                                                                                    continue loop6;
                                                                                 }
                                                                                 continue loop7;
                                                                                 §§goto(addr168);
                                                                              }
                                                                              while(_loc9_)
                                                                              {
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    continue loop1;
                                                                                 }
                                                                                 §§goto(addr274);
                                                                              }
                                                                              §§goto(addr250);
                                                                              addr195:
                                                                              addr114:
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr307);
                                                                           }
                                                                           §§goto(addr293);
                                                                        }
                                                                        §§goto(addr298);
                                                                     }
                                                                     §§goto(addr195);
                                                                  }
                                                               }
                                                               §§goto(addr277);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr114);
                                                }
                                                §§goto(addr157);
                                             }
                                             §§goto(addr156);
                                          }
                                          var _loc3_:b2Body = param1.§-'§;
                                          var _loc4_:b2Body = param1.§<!L§;
                                          if(!_loc8_)
                                          {
                                             if(param1.collideConnected == false)
                                             {
                                                addr327:
                                                _loc5_ = _loc4_.§!!R§();
                                                addr363:
                                                if(_loc5_)
                                                {
                                                   if(_loc5_.§'!4§ == _loc3_)
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         _loc5_.§4§.§[]§();
                                                         if(_loc9_ || _loc2_)
                                                         {
                                                         }
                                                      }
                                                      §§goto(addr365);
                                                   }
                                                   _loc5_ = _loc5_.§23§;
                                                   §§goto(addr363);
                                                }
                                             }
                                             addr365:
                                             return _loc2_;
                                          }
                                          §§goto(addr327);
                                       }
                                       addr34:
                                    }
                                    break loop0;
                                 }
                              }
                              addr60:
                           }
                           §§goto(addr298);
                        }
                        §§goto(addr34);
                     }
                     §§goto(addr62);
                  }
                  while(true)
                  {
                     §§push(_loc2_.§"X§);
                     if(!(_loc8_ && _loc3_))
                     {
                        if(!_loc8_)
                        {
                           §§pop().§23§ = _loc2_.§3D§.§-!&§;
                           §§goto(addr168);
                        }
                        §§goto(addr248);
                     }
                     §§goto(addr203);
                     §§goto(addr219);
                  }
               }
               §§goto(addr312);
            }
            §§goto(addr250);
         }
         §§goto(addr60);
      }
      
      public function §4!F§(param1:b2Joint) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:b2ContactEdge = null;
         §§push(param1.§+4§);
         if(!_loc9_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc9_ && this))
         {
            §§push(param1.§`D§);
            if(_loc8_ || this)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(param1.§`D§);
                     addr93:
                     while(true)
                     {
                        §§pop().§-![§ = param1.§-![§;
                        addr96:
                        while(true)
                        {
                        }
                     }
                     loop2:
                     while(true)
                     {
                        if(_loc9_ && _loc3_)
                        {
                           continue loop0;
                        }
                        loop3:
                        while(param1 == this.§-!&§)
                        {
                           if(_loc8_ || param1)
                           {
                              if(_loc9_)
                              {
                                 continue loop2;
                              }
                              if(_loc9_)
                              {
                                 break loop2;
                              }
                              this.§-!&§ = param1.§-![§;
                           }
                           while(true)
                           {
                              if(true)
                              {
                                 break loop3;
                              }
                              while(true)
                              {
                                 §§push(param1.§-![§);
                                 if(!_loc9_)
                                 {
                                    if(!§§pop())
                                    {
                                       continue loop3;
                                    }
                                    if(!(_loc8_ || _loc2_))
                                    {
                                       continue loop2;
                                    }
                                    §§push(param1.§-![§);
                                 }
                                 §§pop().§`D§ = param1.§`D§;
                                 continue loop2;
                              }
                           }
                        }
                        var _loc3_:b2Body = param1.§6z§;
                        var _loc4_:b2Body = param1.§3D§;
                        if(!_loc9_)
                        {
                           _loc3_.SetAwake(true);
                           while(true)
                           {
                              _loc4_.SetAwake(true);
                              while(true)
                              {
                                 §§push(param1.§;!S§);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop().§4!N§);
                                    if(!_loc9_)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§push(param1.§;!S§);
                                             addr406:
                                             while(true)
                                             {
                                                §§push(§§pop().§4!N§);
                                                addr407:
                                                while(true)
                                                {
                                                   §§push(param1.§;!S§.§23§);
                                                   addr410:
                                                   while(true)
                                                   {
                                                      §§pop().§23§ = §§pop();
                                                      addr411:
                                                      while(true)
                                                      {
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          addr404:
                                       }
                                       while(true)
                                       {
                                          §§push(param1.§;!S§);
                                          continue loop6;
                                          §§goto(addr411);
                                       }
                                    }
                                    §§goto(addr407);
                                 }
                                 while(_loc8_ || this)
                                 {
                                    §§goto(addr319);
                                 }
                              }
                              if(!(_loc8_ || _loc3_))
                              {
                                 continue;
                              }
                              _loc4_.§-!&§ = param1.§"X§.§23§;
                              §§goto(addr226);
                           }
                        }
                        §§goto(addr267);
                     }
                     §§goto(addr96);
                  }
               }
               §§goto(addr55);
            }
            §§goto(addr93);
         }
         §§goto(addr53);
      }
      
      public function § 8§(param1:b2Controller) : b2Controller
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            param1.§-![§ = this.§3j§;
            while(true)
            {
               param1.§`D§ = null;
               loop1:
               while(!_loc4_)
               {
                  loop2:
                  while(true)
                  {
                     this.§3j§ = param1;
                     while(true)
                     {
                        if(_loc5_)
                        {
                           param1.m_world = this;
                           if(!(_loc5_ || _loc2_))
                           {
                              break;
                           }
                           if(_loc5_ || this)
                           {
                              if(true)
                              {
                                 var _loc2_:*;
                                 §§push((_loc2_ = this).§7!"§);
                                 if(!(_loc4_ && param1))
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc3_:* = §§pop();
                              }
                              continue loop2;
                              if(!(_loc4_ && _loc3_))
                              {
                                 _loc2_.§7!"§ = _loc3_;
                              }
                              break;
                           }
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         return param1;
      }
      
      public function §9g§(param1:b2Controller) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc3_)
         {
            §§push(param1.§`D§);
            if(!(_loc4_ && this))
            {
               if(§§pop())
               {
                  addr95:
                  while(true)
                  {
                     §§push(param1.§`D§);
                     addr97:
                     while(true)
                     {
                        §§pop().§-![§ = param1.§-![§;
                        addr100:
                        while(true)
                        {
                        }
                     }
                  }
                  addr95:
               }
               while(true)
               {
                  §§push(param1.§-![§);
                  if(!(_loc4_ && this))
                  {
                     if(§§pop())
                     {
                        if(_loc5_ || _loc3_)
                        {
                           addr77:
                           param1.§-![§.§`D§ = param1.§`D§;
                           if(!_loc4_)
                           {
                              addr82:
                              if(!_loc4_)
                              {
                                 addr25:
                                 if(this.§3j§ == param1)
                                 {
                                    if(_loc5_)
                                    {
                                       if(_loc5_)
                                       {
                                          this.§3j§ = param1.§-![§;
                                          if(_loc5_ || this)
                                          {
                                          }
                                          break;
                                       }
                                       §§goto(addr100);
                                    }
                                    if(false)
                                    {
                                       continue;
                                    }
                                 }
                                 var _loc2_:*;
                                 §§push((_loc2_ = this).§7!"§);
                                 if(_loc5_ || _loc3_)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 var _loc3_:* = §§pop();
                                 if(_loc5_)
                                 {
                                    _loc2_.§7!"§ = _loc3_;
                                 }
                                 break;
                              }
                              §§goto(addr95);
                              §§goto(addr100);
                           }
                           break;
                        }
                        §§goto(addr82);
                     }
                     §§goto(addr25);
                  }
                  §§goto(addr77);
               }
               return;
            }
            §§goto(addr97);
         }
         §§goto(addr95);
      }
      
      public function §%!'§(param1:b2Controller) : b2Controller
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc3_))
         {
            if(param1.m_world == this)
            {
               loop0:
               while(true)
               {
                  param1.§-![§ = this.§3j§;
                  while(!(_loc4_ && _loc2_))
                  {
                     param1.§`D§ = null;
                     if(_loc4_)
                     {
                        addr143:
                        param1.m_world = this;
                     }
                     if(_loc4_ && param1)
                     {
                        continue loop0;
                     }
                     loop2:
                     while(true)
                     {
                        §§push(this.§3j§);
                        if(_loc5_)
                        {
                           if(§§pop())
                           {
                              if(!(_loc4_ && _loc2_))
                              {
                                 if(!(_loc5_ || _loc2_))
                                 {
                                    break;
                                 }
                                 addr57:
                                 this.§3j§.§`D§ = param1;
                                 while(true)
                                 {
                                 }
                                 addr59:
                              }
                              §§goto(addr143);
                           }
                           loop3:
                           while(true)
                           {
                              this.§3j§ = param1;
                              if(!_loc4_)
                              {
                                 if(!_loc5_)
                                 {
                                    continue;
                                 }
                                 while(true)
                                 {
                                    if(true)
                                    {
                                       var _loc2_:*;
                                       §§push((_loc2_ = this).§7!"§);
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc3_:* = §§pop();
                                    }
                                    continue loop2;
                                    if(_loc5_)
                                    {
                                       _loc2_.§7!"§ = _loc3_;
                                    }
                                    if(_loc5_ || _loc3_)
                                    {
                                       §§goto(addr143);
                                    }
                                    break loop3;
                                 }
                              }
                              break;
                           }
                           §§goto(addr143);
                        }
                        §§goto(addr57);
                     }
                     continue;
                     return param1;
                  }
               }
            }
            throw new Error("Controller can only be a member of one world");
         }
         §§goto(addr33);
      }
      
      public function §1R§(param1:b2Controller) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && _loc2_))
         {
            param1.§#R§();
            if(_loc4_)
            {
               §§push(param1.§-![§);
               if(!_loc5_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(param1.§-![§);
                        addr82:
                        while(true)
                        {
                           §§pop().§`D§ = param1.§`D§;
                           addr85:
                           while(true)
                           {
                           }
                        }
                     }
                     addr80:
                  }
                  loop1:
                  while(true)
                  {
                     §§push(param1.§`D§);
                     if(_loc4_)
                     {
                        if(§§pop())
                        {
                           loop2:
                           while(true)
                           {
                              §§push(param1.§`D§);
                              addr68:
                              while(true)
                              {
                                 §§pop().§-![§ = param1.§-![§;
                                 loop5:
                                 while(true)
                                 {
                                    if(!_loc5_)
                                    {
                                       while(true)
                                       {
                                          if(param1 == this.§3j§)
                                          {
                                             if(_loc4_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      this.§3j§ = param1.§-![§;
                                                      if(_loc4_)
                                                      {
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            if(false)
                                                            {
                                                               continue loop1;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr85);
                                                         }
                                                      }
                                                      §§goto(addr116);
                                                   }
                                                   continue loop2;
                                                }
                                                continue loop5;
                                             }
                                             §§goto(addr116);
                                          }
                                          var _loc2_:*;
                                          §§push((_loc2_ = this).§7!"§);
                                          if(!_loc5_)
                                          {
                                             §§push(§§pop() - 1);
                                          }
                                          var _loc3_:* = §§pop();
                                          if(_loc4_)
                                          {
                                             _loc2_.§7!"§ = _loc3_;
                                          }
                                          addr116:
                                          return;
                                          continue loop5;
                                       }
                                       addr24:
                                    }
                                    §§goto(addr80);
                                 }
                                 §§goto(addr82);
                              }
                           }
                        }
                        §§goto(addr24);
                     }
                     §§goto(addr68);
                  }
               }
               §§goto(addr82);
            }
         }
         §§goto(addr116);
      }
      
      public function §[!7§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §5M§ = param1;
         }
      }
      
      public function §4W§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            § !5§ = param1;
         }
      }
      
      public function §"!A§() : int
      {
         return this.§`#§;
      }
      
      public function §,k§() : int
      {
         return this.§;6§;
      }
      
      public function §"!$§() : int
      {
         return this.§,!^§;
      }
      
      public function §<T§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§@[§ = param1;
         }
      }
      
      public function §1z§() : b2Vec2
      {
         return this.§@[§;
      }
      
      public function §6%§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §+"§(param1:Number, param2:int, param3:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param3)
         {
            §§push(this.§0b§);
            if(_loc6_ || param1)
            {
               §§push(§§pop() & §[=§);
            }
            if(§§pop())
            {
               while(true)
               {
                  this.§-!-§.§!c§();
                  addr90:
                  while(true)
                  {
                     addr52:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§0b§);
                        if(!(_loc5_ && param3))
                        {
                           §§push(§[=§);
                           if(!(_loc5_ && param3))
                           {
                              §§push(~§§pop());
                           }
                           §§push(§§pop() & §§pop());
                        }
                        §§pop().§0b§ = §§pop();
                        addr74:
                        while(true)
                        {
                        }
                     }
                  }
               }
               addr87:
            }
            while(true)
            {
               §§push(this);
               §§push(this.§0b§);
               if(!(_loc5_ && param3))
               {
                  §§push(§§pop() | §4X§);
               }
               §§pop().§0b§ = §§pop();
               if(!(_loc6_ || param2))
               {
                  continue;
               }
               if(!_loc5_)
               {
                  if(!_loc5_)
                  {
                     if(true)
                     {
                        break;
                     }
                  }
                  else
                  {
                     §§goto(addr87);
                  }
                  §§goto(addr52);
               }
            }
            var _loc4_:b2TimeStep;
            (_loc4_ = s_timestep2).§1_§ = param1;
            if(!(_loc5_ && param1))
            {
               _loc4_.§@-§ = param2;
               while(true)
               {
                  _loc4_.§-!B§ = param3;
                  loop3:
                  while(true)
                  {
                     §§push(param1);
                     loop4:
                     while(true)
                     {
                        §§push(0);
                        loop5:
                        while(true)
                        {
                           if(§§pop() <= §§pop())
                           {
                              _loc4_.§<l§ = 0;
                              loop6:
                              while(true)
                              {
                                 loop7:
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    §§push(this.§ x§);
                                    if(!(_loc5_ && param2))
                                    {
                                       §§push(§§pop() * param1);
                                    }
                                    §§pop().§,K§ = §§pop();
                                    loop8:
                                    while(true)
                                    {
                                       _loc4_.§7!^§ = §5M§;
                                       loop9:
                                       while(_loc6_ || param2)
                                       {
                                          this.§-!-§.§super§();
                                          loop10:
                                          for(; _loc6_; if(_loc6_ || this)
                                          {
                                             return;
                                          })
                                          {
                                             §§push(_loc4_.§1_§);
                                             loop11:
                                             while(true)
                                             {
                                                §§push(0);
                                                loop12:
                                                while(true)
                                                {
                                                   if(§§pop() <= §§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§ !5§);
                                                         if(!(_loc5_ && this))
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            if(!(_loc5_ && param1))
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  loop24:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     addr257:
                                                                     loop17:
                                                                     while(true)
                                                                     {
                                                                        if(_loc6_ || this)
                                                                        {
                                                                           §§push(_loc4_.§1_§);
                                                                           while(true)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 break loop17;
                                                                              }
                                                                              §§push(0);
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc6_ || param3))
                                                                                 {
                                                                                    continue loop12;
                                                                                 }
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    continue loop5;
                                                                                 }
                                                                                 §§push(§§pop() > §§pop());
                                                                                 if(!(_loc6_ || this))
                                                                                 {
                                                                                    continue loop24;
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr195:
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              _loc4_.§<l§ = 1 / param1;
                                                                              break loop9;
                                                                           }
                                                                           addr328:
                                                                        }
                                                                        continue loop24;
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                                  addr256:
                                                               }
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc5_ && param1))
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           if(_loc5_ && param3)
                                                                           {
                                                                              while(_loc6_)
                                                                              {
                                                                                 this.§ §(_loc4_);
                                                                                 while(!(_loc5_ && param2))
                                                                                 {
                                                                                    §§goto(addr237);
                                                                                    §§goto(addr177);
                                                                                 }
                                                                                 continue loop9;
                                                                              }
                                                                              continue loop6;
                                                                              addr270:
                                                                           }
                                                                           this.§6b§(_loc4_);
                                                                           loop18:
                                                                           while(true)
                                                                           {
                                                                              addr136:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc4_.§1_§);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    continue loop11;
                                                                                 }
                                                                                 §§push(0);
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    if(§§pop() > §§pop())
                                                                                    {
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          continue loop3;
                                                                                       }
                                                                                       continue loop18;
                                                                                    }
                                                                                    addr109:
                                                                                    addr109:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this);
                                                                                       §§push(this.§0b§);
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          §§push(§4X§);
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             §§push(~§§pop());
                                                                                          }
                                                                                          §§push(§§pop() & §§pop());
                                                                                       }
                                                                                       §§pop().§0b§ = §§pop();
                                                                                       if(_loc6_ || this)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       continue loop18;
                                                                                    }
                                                                                    continue loop10;
                                                                                 }
                                                                                 §§goto(addr198);
                                                                              }
                                                                           }
                                                                           addr236:
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr257);
                                                                        }
                                                                        §§goto(addr195);
                                                                     }
                                                                     §§goto(addr236);
                                                                  }
                                                                  §§goto(addr136);
                                                                  §§goto(addr207);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr256);
                                                      }
                                                      addr237:
                                                   }
                                                   §§goto(addr270);
                                                }
                                             }
                                          }
                                          continue loop8;
                                       }
                                       while(true)
                                       {
                                          continue loop7;
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr328);
                        }
                     }
                  }
                  if(!(_loc6_ || param3))
                  {
                     continue;
                  }
                  §§goto(addr109);
               }
            }
            while(true)
            {
               this.§ x§ = _loc4_.§<l§;
               §§goto(addr160);
            }
         }
         §§goto(addr90);
      }
      
      public function §<p§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Body = this.§%! §;
         while(_loc1_)
         {
            _loc1_.§']§.§7_§();
            if(_loc3_ && _loc3_)
            {
               break;
            }
            _loc1_.§'!$§ = 0;
            if(_loc3_)
            {
               break;
            }
            _loc1_ = _loc1_.§-![§;
         }
      }
      
      public function §![§() : void
      {
         var _loc23_:Boolean = true;
         var _loc24_:Boolean = false;
         var _loc2_:int = 0;
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§@C§ = null;
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
            §§push(this.§1!;§);
            if(!_loc24_)
            {
               if(§§pop() == null)
               {
                  if(_loc23_ || _loc2_)
                  {
                     return;
                  }
                  addr82:
                  §§push(this.§1!;§);
               }
               else
               {
                  §§push(this.§1!;§);
                  if(!_loc24_)
                  {
                     §§pop().§5,§.graphics.clear();
                     §§goto(addr82);
                  }
               }
            }
            §§push(§§pop().§5!h§());
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
            if(_loc23_)
            {
               if(_loc1_ & b2DebugDraw.§4O§)
               {
                  addr134:
                  _loc3_ = this.§%! §;
                  while(_loc3_)
                  {
                     _loc11_ = _loc3_.m_xf;
                     _loc4_ = _loc3_.GetFixtureList();
                     if(!_loc24_)
                     {
                        loop14:
                        for(; _loc4_; _loc4_ = _loc4_.§-![§)
                        {
                           _loc5_ = _loc4_.GetShape();
                           if(_loc23_)
                           {
                              §§push(_loc3_.§5f§());
                              while(true)
                              {
                                 §§push(false);
                                 addr322:
                                 while(§§pop() != §§pop())
                                 {
                                    §§push(_loc3_.§7!_§());
                                    loop17:
                                    while(true)
                                    {
                                       §§push(b2Body.b2_staticBody);
                                       addr296:
                                       while(true)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             if(!(_loc24_ && _loc2_))
                                             {
                                                _loc15_.Set(0.5,0.9,0.5);
                                             }
                                             this.§5!g§(_loc5_,_loc11_,_loc15_);
                                             addr309:
                                             if(_loc24_)
                                             {
                                                §§goto(addr309);
                                             }
                                             break;
                                          }
                                          continue loop17;
                                       }
                                       continue loop14;
                                    }
                                 }
                                 _loc15_.Set(0.5,0.5,0.3);
                                 §§push(_loc3_.IsAwake());
                                 if(!(_loc23_ || this))
                                 {
                                    continue;
                                 }
                                 §§push(false);
                                 if(!_loc23_)
                                 {
                                    §§goto(addr322);
                                 }
                                 if(§§pop() != §§pop())
                                 {
                                    _loc15_.Set(0.9,0.7,0.7);
                                    addr184:
                                    if(!_loc24_)
                                    {
                                       if(_loc23_)
                                       {
                                          if(_loc23_ || _loc1_)
                                          {
                                             this.§5!g§(_loc5_,_loc11_,_loc15_);
                                             if(_loc24_ && _loc3_)
                                             {
                                                §§goto(addr184);
                                             }
                                             if(!_loc24_)
                                             {
                                                if(true)
                                                {
                                                   continue loop14;
                                                }
                                             }
                                             else
                                             {
                                                addr219:
                                                if(_loc23_)
                                                {
                                                   if(_loc23_)
                                                   {
                                                      _loc15_.Set(0.6,0.6,0.6);
                                                      addr228:
                                                      if(_loc23_)
                                                      {
                                                         this.§5!g§(_loc5_,_loc11_,_loc15_);
                                                         addr176:
                                                         continue loop14;
                                                         addr202:
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr309);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr260);
                                                }
                                                §§goto(addr237);
                                             }
                                             §§goto(addr176);
                                          }
                                          §§goto(addr279);
                                       }
                                       §§goto(addr228);
                                    }
                                    §§goto(addr202);
                                 }
                                 §§goto(addr219);
                              }
                           }
                           §§goto(addr328);
                        }
                     }
                     _loc3_ = _loc3_.§-![§;
                  }
               }
               §§push(_loc1_);
               if(_loc23_ || _loc2_)
               {
                  §§push(b2DebugDraw.§?!1§);
                  if(_loc23_)
                  {
                     §§push(§§pop() & §§pop());
                     if(_loc23_ || _loc1_)
                     {
                        if(§§pop())
                        {
                           if(_loc23_)
                           {
                              _loc6_ = this.§-!&§;
                              if(!_loc24_)
                              {
                                 loop0:
                                 while(_loc6_)
                                 {
                                    this.§%!^§(_loc6_);
                                    if(_loc24_ && _loc2_)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       _loc6_ = _loc6_.§-![§;
                                       continue loop0;
                                    }
                                 }
                                 addr398:
                                 §§push(_loc1_);
                                 if(!(_loc24_ && _loc1_))
                                 {
                                    §§push(b2DebugDraw.§0l§);
                                    if(!_loc24_)
                                    {
                                       §§push(§§pop() & §§pop());
                                       if(_loc23_)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc23_ || _loc3_)
                                             {
                                                _loc16_ = this.§3j§;
                                                if(!(_loc24_ && _loc1_))
                                                {
                                                   while(_loc16_)
                                                   {
                                                      _loc16_.§!!d§(this.§1!;§);
                                                      if(!_loc23_)
                                                      {
                                                         break;
                                                      }
                                                      _loc16_ = _loc16_.§-![§;
                                                   }
                                                   addr446:
                                                   §§push(_loc1_);
                                                   if(_loc23_ || _loc1_)
                                                   {
                                                      addr454:
                                                      §§push(b2DebugDraw.§=t§);
                                                      if(_loc23_ || _loc2_)
                                                      {
                                                         §§push(§§pop() & §§pop());
                                                         if(_loc23_)
                                                         {
                                                            addr466:
                                                            if(§§pop())
                                                            {
                                                               if(_loc23_)
                                                               {
                                                                  _loc15_.Set(0.3,0.9,0.9);
                                                                  if(_loc23_)
                                                                  {
                                                                     §§push(this.§-!-§);
                                                                     if(!(_loc24_ && _loc2_))
                                                                     {
                                                                        _loc17_ = §§pop().§4!]§;
                                                                        if(_loc23_ || this)
                                                                        {
                                                                           while(_loc17_)
                                                                           {
                                                                              _loc18_ = _loc17_.§`u§();
                                                                              _loc19_ = _loc17_.§7t§();
                                                                              _loc20_ = _loc18_.§[!@§().§%!7§();
                                                                              _loc21_ = _loc19_.§[!@§().§%!7§();
                                                                              if(!_loc24_)
                                                                              {
                                                                                 this.§1!;§.§ W§(_loc20_,_loc21_,_loc15_);
                                                                              }
                                                                              _loc17_ = _loc17_.§;!B§();
                                                                           }
                                                                           addr529:
                                                                           §§push(_loc1_);
                                                                           if(_loc23_ || _loc1_)
                                                                           {
                                                                              addr537:
                                                                              §§push(b2DebugDraw.§]k§);
                                                                              if(!(_loc24_ && this))
                                                                              {
                                                                                 §§push(§§pop() & §§pop());
                                                                                 if(_loc23_)
                                                                                 {
                                                                                    addr549:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc23_ || _loc2_)
                                                                                       {
                                                                                          addr559:
                                                                                          _loc7_ = this.§-!-§.§<x§;
                                                                                          _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
                                                                                          _loc3_ = this.§%! §;
                                                                                          if(_loc23_ || _loc1_)
                                                                                          {
                                                                                             while(_loc3_)
                                                                                             {
                                                                                                if(_loc3_.§5f§() == false)
                                                                                                {
                                                                                                   if(!(_loc23_ || this))
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   _loc4_ = _loc3_.GetFixtureList();
                                                                                                   if(!_loc24_)
                                                                                                   {
                                                                                                      while(_loc4_)
                                                                                                      {
                                                                                                         _loc22_ = _loc7_.§4!^§(_loc4_.§4!W§);
                                                                                                         if(!(_loc24_ && _loc2_))
                                                                                                         {
                                                                                                            _loc14_[0].Set(_loc22_.§>!7§.x,_loc22_.§>!7§.y);
                                                                                                            loop4:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc14_[1].Set(_loc22_.§=k§.x,_loc22_.§>!7§.y);
                                                                                                               loop5:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc14_[2].Set(_loc22_.§=k§.x,_loc22_.§=k§.y);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     addr645:
                                                                                                                     loop7:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc14_[3].Set(_loc22_.§>!7§.x,_loc22_.§=k§.y);
                                                                                                                        while(_loc23_)
                                                                                                                        {
                                                                                                                           this.§1!;§.§]!1§(_loc14_,4,_loc15_);
                                                                                                                           if(!(_loc24_ && _loc2_))
                                                                                                                           {
                                                                                                                              if(!_loc23_)
                                                                                                                              {
                                                                                                                                 break loop7;
                                                                                                                              }
                                                                                                                              continue loop5;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop4;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         while(false)
                                                                                                         {
                                                                                                            §§goto(addr645);
                                                                                                         }
                                                                                                         _loc4_ = _loc4_.§;!B§();
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                _loc3_ = _loc3_.§;!B§();
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr711);
                                                                                    }
                                                                                    addr709:
                                                                                    §§push(_loc1_ & b2DebugDraw.§<!9§);
                                                                                 }
                                                                                 if(!§§pop())
                                                                                 {
                                                                                 }
                                                                                 §§goto(addr711);
                                                                              }
                                                                           }
                                                                           §§goto(addr709);
                                                                        }
                                                                        §§goto(addr529);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr559);
                                                            }
                                                            §§goto(addr529);
                                                         }
                                                      }
                                                      §§goto(addr549);
                                                   }
                                                   §§goto(addr537);
                                                }
                                                §§goto(addr446);
                                             }
                                             addr711:
                                             _loc3_ = this.§%! §;
                                             if(_loc23_)
                                             {
                                                for(; _loc3_; _loc3_ = _loc3_.§-![§)
                                                {
                                                   (_loc11_ = § !8§).R = _loc3_.m_xf.R;
                                                   if(!(_loc24_ && _loc3_))
                                                   {
                                                      _loc11_.position = _loc3_.§with§();
                                                      if(_loc24_)
                                                      {
                                                         continue;
                                                      }
                                                   }
                                                   this.§1!;§.§7!8§(_loc11_);
                                                }
                                             }
                                             return;
                                          }
                                          §§goto(addr446);
                                       }
                                       §§goto(addr466);
                                    }
                                    §§goto(addr549);
                                 }
                                 §§goto(addr454);
                              }
                              §§goto(addr392);
                           }
                           §§goto(addr559);
                        }
                        §§goto(addr398);
                     }
                     §§goto(addr466);
                  }
               }
               §§goto(addr549);
            }
            §§goto(addr134);
         }
         §§goto(addr82);
      }
      
      public function §,!4§(param1:Function, param2:b2AABB) : void
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
                     if(!(_loc5_ || param2))
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
                           addr98:
                           if(_loc5_ || param2)
                           {
                              §§pop().§§slot[4] = function(param1:*):Boolean
                              {
                                 return callback(broadPhase.GetUserData(param1));
                              };
                              loop10:
                              do
                              {
                                 §§push(§§newactivation());
                                 while(true)
                                 {
                                    if(!_loc4_)
                                    {
                                       continue loop3;
                                    }
                                    addr91:
                                    addr91:
                                    while(true)
                                    {
                                       if(_loc4_ && _loc3_)
                                       {
                                          continue loop0;
                                       }
                                       §§goto(addr98);
                                    }
                                    continue loop5;
                                    addr88:
                                    §§push(§§newactivation());
                                    if(!(_loc5_ || param2))
                                    {
                                       continue;
                                    }
                                    §§pop().§§slot[3].§#c§(WorldQueryWrapper,aabb);
                                    if(!_loc4_)
                                    {
                                       continue loop10;
                                    }
                                    addr120:
                                    addr81:
                                    while(!(_loc4_ && param1))
                                    {
                                       §§goto(addr88);
                                    }
                                    while(true)
                                    {
                                       §§goto(addr91);
                                       §§goto(addr81);
                                    }
                                    addr81:
                                 }
                                 continue loop3;
                              }
                              while(!(_loc5_ || param1));
                              
                              if(_loc5_)
                              {
                                 if(_loc5_)
                                 {
                                    return;
                                 }
                                 continue loop2;
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §#!H§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
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
                        addr220:
                     }
                     §§pop().§§slot[5] = §§pop();
                     while(!(_loc6_ && param1))
                     {
                        §§push(§§newactivation());
                        while(true)
                        {
                           §§pop().§§slot[1] = param1;
                           addr212:
                           while(true)
                           {
                              §§push(§§newactivation());
                              continue loop3;
                           }
                        }
                     }
                     continue loop2;
                  }
                  continue loop1;
               }
            }
            while(!(_loc6_ && this))
            {
               §§pop().§§slot[3] = new b2Transform();
               §§goto(addr184);
               §§goto(addr137);
            }
         }
      }
      
      public function §^B§(param1:Function, param2:b2Vec2) : void
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
                        continue loop3;
                        addr170:
                        if(!(_loc5_ || _loc3_))
                        {
                           continue;
                        }
                        §§push(§§newactivation());
                        loop13:
                        while(true)
                        {
                           §§pop().§§slot[5] = new b2AABB();
                           loop14:
                           while(!_loc4_)
                           {
                              §§push(§§newactivation());
                              loop15:
                              for(; !(_loc4_ && _loc3_); if(!(_loc5_ || param1))
                              {
                                 continue;
                              },§§goto(addr37))
                              {
                                 §§push(§§pop().§§slot[5]);
                                 loop16:
                                 while(true)
                                 {
                                    §§push(§§pop().§>!7§);
                                    §§push(p.x);
                                    if(!(_loc4_ && param1))
                                    {
                                       §§push(b2Settings.b2_linearSlop);
                                       if(!_loc4_)
                                       {
                                          addr129:
                                          §§push(§§pop() - §§pop());
                                          §§push(p.y);
                                          if(_loc5_)
                                          {
                                             §§push(§§pop() - b2Settings.b2_linearSlop);
                                          }
                                       }
                                       §§pop().Set(§§pop(),§§pop());
                                       loop17:
                                       while(_loc5_)
                                       {
                                          §§push(§§newactivation());
                                          while(!_loc4_)
                                          {
                                             §§push(§§pop().§§slot[5]);
                                             if(_loc4_)
                                             {
                                                continue loop16;
                                             }
                                             §§push(§§pop().§=k§);
                                             §§push(p.x);
                                             if(_loc5_ || param1)
                                             {
                                                §§push(b2Settings.b2_linearSlop);
                                                if(_loc5_)
                                                {
                                                   addr71:
                                                   §§push(§§pop() + §§pop());
                                                   §§push(p.y);
                                                   if(_loc5_ || this)
                                                   {
                                                      §§push(§§pop() + b2Settings.b2_linearSlop);
                                                   }
                                                }
                                                §§pop().Set(§§pop(),§§pop());
                                                while(true)
                                                {
                                                   if(_loc4_ && this)
                                                   {
                                                      continue loop17;
                                                   }
                                                   §§goto(addr92);
                                                   addr37:
                                                   if(_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   §§pop().§§slot[3].§#c§(WorldQueryWrapper,aabb);
                                                   if(!_loc4_)
                                                   {
                                                      return;
                                                   }
                                                }
                                                loop7:
                                                while(_loc5_)
                                                {
                                                   §§pop().§§slot[2] = param2;
                                                   while(_loc5_)
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
                                                         addr183:
                                                         while(!_loc4_)
                                                         {
                                                            §§push(§§newactivation());
                                                            break loop15;
                                                         }
                                                         continue loop2;
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      continue loop7;
                                                   }
                                                }
                                                continue loop3;
                                                continue loop17;
                                             }
                                             §§goto(addr71);
                                             §§push(§§newactivation());
                                             if(!_loc4_)
                                             {
                                                continue loop15;
                                             }
                                          }
                                          continue loop13;
                                       }
                                       continue loop14;
                                    }
                                    §§goto(addr129);
                                 }
                              }
                              while(true)
                              {
                                 if(_loc5_)
                                 {
                                    continue loop0;
                                 }
                                 §§goto(addr180);
                                 §§goto(addr95);
                              }
                              addr95:
                              continue loop0;
                           }
                           addr166:
                           while(true)
                           {
                              if(!_loc4_)
                              {
                                 if(!_loc4_)
                                 {
                                    §§goto(addr170);
                                 }
                                 else
                                 {
                                    §§goto(addr192);
                                 }
                              }
                              §§goto(addr183);
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
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§push(null);
                     loop4:
                     while(!_loc6_)
                     {
                        §§pop().§§slot[5] = §§pop();
                        while(true)
                        {
                           §§push(§§newactivation());
                           while(!_loc6_)
                           {
                              if(!_loc5_)
                              {
                                 continue loop0;
                              }
                              §§push(null);
                              if(!(_loc5_ || param1))
                              {
                                 continue loop4;
                              }
                              §§pop().§§slot[6] = §§pop();
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 loop8:
                                 while(true)
                                 {
                                    §§pop().§§slot[1] = param1;
                                    addr161:
                                    while(true)
                                    {
                                       §§push(§§newactivation());
                                       addr154:
                                       while(true)
                                       {
                                          §§pop().§§slot[2] = param2;
                                          loop11:
                                          while(true)
                                          {
                                             §§push(§§newactivation());
                                             addr147:
                                             while(true)
                                             {
                                                §§pop().§§slot[3] = param3;
                                                addr149:
                                                while(_loc5_)
                                                {
                                                   §§push(§§newactivation());
                                                   continue loop8;
                                                }
                                                continue loop11;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 if(!(_loc6_ && param1))
                                 {
                                    return;
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
      }
      
      public function §@!O§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
                     loop4:
                     while(true)
                     {
                        §§push(§§newactivation());
                        continue loop3;
                        addr94:
                        loop6:
                        while(true)
                        {
                           if(!(_loc4_ && _loc3_))
                           {
                              if(!(_loc5_ || this))
                              {
                                 break;
                              }
                              §§push(§§newactivation());
                              continue loop0;
                           }
                           continue loop4;
                           addr53:
                           if(!(_loc5_ || param1))
                           {
                              continue;
                           }
                           this.RayCast(RayCastOneWrapper,point1,point2);
                           addr70:
                           if(!_loc4_)
                           {
                              addr41:
                              §§push(§§newactivation());
                              if(_loc5_)
                              {
                                 return §§pop().§§slot[3];
                              }
                              loop9:
                              while(true)
                              {
                                 if(_loc5_)
                                 {
                                    if(_loc4_)
                                    {
                                       break;
                                       addr51:
                                    }
                                    §§pop().§§slot[4] = function(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number):Number
                                    {
                                       result = param1;
                                       return param4;
                                    };
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          §§goto(addr53);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             continue loop9;
                                          }
                                          addr82:
                                       }
                                       §§goto(addr70);
                                    }
                                    continue loop6;
                                 }
                                 continue loop0;
                              }
                              continue loop3;
                           }
                           §§goto(addr51);
                        }
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §8g§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
                     if(!_loc5_)
                     {
                        break;
                     }
                     §§pop().§§slot[4] = §§pop();
                     loop4:
                     while(true)
                     {
                        §§push(§§newactivation());
                        while(_loc5_)
                        {
                           continue loop0;
                           loop9:
                           while(_loc5_ || this)
                           {
                              §§pop().§§slot[4] = function(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number):Number
                              {
                                 result[result.length] = param1;
                                 return 1;
                              };
                              loop10:
                              while(true)
                              {
                                 if(_loc4_ && _loc3_)
                                 {
                                    while(!_loc4_)
                                    {
                                       §§push(§§newactivation());
                                       continue loop10;
                                    }
                                    continue loop4;
                                    addr124:
                                 }
                                 if(_loc4_ && _loc3_)
                                 {
                                    break;
                                 }
                                 §§push(§§newactivation());
                                 while(_loc5_ || param1)
                                 {
                                    §§push(§§newactivation());
                                    continue loop10;
                                    if(_loc5_)
                                    {
                                       if(!_loc4_)
                                       {
                                          return §§pop().§§slot[3];
                                       }
                                       continue loop9;
                                    }
                                 }
                                 addr55:
                                 while(true)
                                 {
                                    §§pop().§§slot[2] = param2;
                                    addr110:
                                    while(true)
                                    {
                                       continue loop9;
                                    }
                                    §§goto(addr55);
                                 }
                              }
                              continue loop2;
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
      
      public function §>B§() : b2Body
      {
         return this.§%! §;
      }
      
      public function §>N§() : b2Joint
      {
         return this.§-!&§;
      }
      
      public function §!!R§() : b2Contact
      {
         return this.§4!]§;
      }
      
      public function §5Y§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§0b§);
         if(_loc1_)
         {
            §§push(§4X§);
            if(!(_loc2_ && _loc2_))
            {
               addr49:
               §§push(§§pop() & §§pop());
               §§push(0);
            }
            return §§pop() > §§pop();
         }
         §§goto(addr49);
      }
      
      b2internal function § §(param1:b2TimeStep) : void
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:* = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§3j§;
         while(_loc3_)
         {
            _loc3_.§+"§(param1);
            if(!(_loc17_ || _loc3_))
            {
               break;
            }
            _loc3_ = _loc3_.§-![§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§5u§).§#!O§(this.§`#§,this.§,!^§,this.§;6§,null,this.§-!-§.§8!I§,this.§2!T§);
         _loc2_ = this.§%! §;
         if(_loc17_ || _loc2_)
         {
            loop1:
            while(_loc2_)
            {
               _loc2_.§0b§ &= ~b2Body.§[!6§;
               if(!_loc17_)
               {
                  break;
               }
               while(true)
               {
                  _loc2_ = _loc2_.§-![§;
                  continue loop1;
               }
            }
            var _loc5_:b2Contact = this.§4!]§;
            if(_loc17_ || _loc3_)
            {
               loop2:
               while(_loc5_)
               {
                  _loc5_.§0b§ &= ~b2Contact.§[!6§;
                  if(!(_loc17_ || _loc2_))
                  {
                     break;
                  }
                  while(true)
                  {
                     _loc5_ = _loc5_.§-![§;
                     continue loop2;
                  }
               }
               var _loc6_:b2Joint = this.§-!&§;
               if(_loc17_)
               {
                  while(_loc6_)
                  {
                     _loc6_.§ P§ = false;
                     if(!_loc17_)
                     {
                        break;
                     }
                     _loc6_ = _loc6_.§-![§;
                  }
               }
               §§push(this.§`#§);
               if(!_loc18_)
               {
                  §§push(int(§§pop()));
               }
               var _loc7_:* = §§pop();
               var _loc8_:Vector.<b2Body> = this.§%I§;
               var _loc9_:b2Body = this.§%! §;
               if(!_loc18_)
               {
                  loop4:
                  while(true)
                  {
                     if(!_loc9_)
                     {
                        if(!_loc18_)
                        {
                           §§push(0);
                           if(_loc17_)
                           {
                              addr773:
                              _loc11_ = §§pop();
                              if(!_loc18_)
                              {
                                 addr794:
                                 while(true)
                                 {
                                    addr795:
                                    if(_loc11_ < _loc8_.length)
                                    {
                                       if(!_loc8_[_loc11_])
                                       {
                                          if(!_loc17_)
                                          {
                                             continue;
                                          }
                                          addr784:
                                       }
                                       else
                                       {
                                          _loc8_[_loc11_] = null;
                                          if(!_loc18_)
                                          {
                                             addr791:
                                             _loc11_++;
                                             if(_loc17_)
                                             {
                                                continue;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 addr794:
                              }
                              addr798:
                              _loc2_ = this.§%! §;
                              if(_loc17_ || _loc2_)
                              {
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
                                          if(!_loc18_)
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(!_loc18_)
                                             {
                                                §§push(§§pop());
                                                if(!_loc18_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(_loc17_ || _loc3_)
                                                      {
                                                         addr832:
                                                         §§pop();
                                                         if(!_loc18_)
                                                         {
                                                            §§push(_loc2_.§5f§());
                                                            if(!(_loc18_ && param1))
                                                            {
                                                               addr846:
                                                               if(§§pop() == false)
                                                               {
                                                                  if(_loc18_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue;
                                                               }
                                                               if(_loc2_.§7!_§() == b2Body.b2_staticBody)
                                                               {
                                                                  if(_loc18_)
                                                                  {
                                                                     addr883:
                                                                  }
                                                                  else
                                                                  {
                                                                     addr883:
                                                                  }
                                                                  continue;
                                                                  return;
                                                               }
                                                               _loc2_.§2#§();
                                                               if(_loc17_)
                                                               {
                                                                  continue;
                                                               }
                                                               §§goto(addr883);
                                                               §§goto(addr883);
                                                            }
                                                            §§goto(addr846);
                                                         }
                                                         break;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr846);
                                       }
                                       §§goto(addr832);
                                    }
                                    §§goto(addr883);
                                 }
                                 this.§-!-§.§!c§();
                                 §§goto(addr883);
                                 addr876:
                              }
                              while(true)
                              {
                                 _loc2_ = _loc2_.§-![§;
                                 §§goto(addr876);
                              }
                           }
                           §§goto(addr795);
                        }
                        §§goto(addr794);
                     }
                     else
                     {
                        §§push(_loc9_.§0b§);
                        loop5:
                        while(true)
                        {
                           §§push(b2Body.§[!6§);
                           addr267:
                           loop6:
                           while(true)
                           {
                              §§push(§§pop() & §§pop());
                              if(_loc17_)
                              {
                                 if(!§§pop())
                                 {
                                    §§push(_loc9_.IsAwake());
                                    if(_loc17_)
                                    {
                                       §§push(false);
                                       loop7:
                                       while(true)
                                       {
                                          §§push(§§pop() == §§pop());
                                          loop8:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop9:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      addr281:
                                                      while(true)
                                                      {
                                                         addr185:
                                                         while(true)
                                                         {
                                                            §§push(_loc9_.§5f§());
                                                            if(!_loc18_)
                                                            {
                                                               §§push(false);
                                                               if(!(_loc17_ || _loc3_))
                                                               {
                                                                  continue loop9;
                                                               }
                                                               if(_loc18_)
                                                               {
                                                                  continue loop7;
                                                               }
                                                               §§push(§§pop() == §§pop());
                                                            }
                                                            if(!(_loc18_ && _loc2_))
                                                            {
                                                               break;
                                                            }
                                                            continue loop13;
                                                         }
                                                         if(_loc18_ && param1)
                                                         {
                                                            continue loop8;
                                                         }
                                                         continue loop13;
                                                      }
                                                   }
                                                   addr280:
                                                }
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      continue loop5;
                                                   }
                                                   if(_loc18_)
                                                   {
                                                      addr248:
                                                      if(!_loc17_)
                                                      {
                                                         break loop6;
                                                      }
                                                      continue loop4;
                                                   }
                                                   if(!(_loc18_ && _loc3_))
                                                   {
                                                      continue loop4;
                                                   }
                                                   §§goto(addr281);
                                                }
                                                §§goto(addr798);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr280);
                                 }
                                 break;
                              }
                              §§goto(addr773);
                              §§goto(addr773);
                           }
                           continue loop4;
                        }
                     }
                     §§goto(addr773);
                  }
               }
               §§goto(addr794);
            }
            §§goto(addr129);
         }
         §§goto(addr95);
      }
      
      b2internal function §6b§(param1:b2TimeStep) : void
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
         var _loc20_:Number = NaN;
         var _loc21_:b2JointEdge = null;
         var _loc22_:b2Body = null;
         var _loc9_:b2Island;
         (_loc9_ = this.§5u§).§#!O§(this.§`#§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§-!-§.§8!I§,this.§2!T§);
         var _loc10_:Vector.<b2Body> = §;! §;
         _loc2_ = this.§%! §;
         while(_loc2_)
         {
            _loc2_.§0b§ &= ~b2Body.§[!6§;
            if(!(_loc24_ && this))
            {
               _loc2_.m_sweep.§^Q§ = 0;
               if(!(_loc23_ || this))
               {
                  break;
               }
            }
            _loc2_ = _loc2_.§-![§;
         }
         _loc11_ = this.§4!]§;
         if(_loc23_)
         {
            while(_loc11_)
            {
               §§push(_loc11_);
               §§push(_loc11_.§0b§);
               §§push(b2Contact.§"1§ | b2Contact.§[!6§);
               if(_loc23_ || _loc3_)
               {
                  §§push(~§§pop());
               }
               §§pop().§0b§ = §§pop() & §§pop();
               if(!_loc23_)
               {
                  break;
               }
               _loc11_ = _loc11_.§-![§;
            }
         }
         _loc8_ = this.§-!&§;
         if(!_loc24_)
         {
            loop2:
            while(_loc8_)
            {
               _loc8_.§ P§ = false;
               if(!_loc23_)
               {
                  break;
               }
               while(true)
               {
                  _loc8_ = _loc8_.§-![§;
                  continue loop2;
               }
            }
            loop3:
            while(true)
            {
               _loc12_ = null;
               if(!(_loc24_ && param1))
               {
                  _loc13_ = Number(1);
               }
               _loc11_ = this.§4!]§;
               if(!(_loc24_ && _loc3_))
               {
                  loop4:
                  while(true)
                  {
                     if(!_loc11_)
                     {
                        if(!(_loc24_ && param1))
                        {
                           addr994:
                           §§push(_loc12_ == null);
                           if(_loc23_ || param1)
                           {
                              addr1005:
                              if(!§§pop())
                              {
                                 if(!(_loc24_ && this))
                                 {
                                    addr1013:
                                    §§pop();
                                    if(!(_loc24_ && this))
                                    {
                                       addr1039:
                                       if(1 - 100 * Number.MIN_VALUE < _loc13_)
                                       {
                                          break loop3;
                                       }
                                       addr1043:
                                       _loc3_ = _loc12_.§45§;
                                       _loc4_ = _loc12_.§?G§;
                                       _loc5_ = _loc3_.m_body;
                                       _loc6_ = _loc4_.m_body;
                                       if(_loc23_ || _loc2_)
                                       {
                                          §[4§.Set(_loc5_.m_sweep);
                                          while(true)
                                          {
                                             §?;§.Set(_loc6_.m_sweep);
                                             while(true)
                                             {
                                                _loc5_.§8!3§(_loc13_);
                                                while(_loc23_)
                                                {
                                                   addr1188:
                                                   if(_loc24_ && _loc3_)
                                                   {
                                                      continue;
                                                   }
                                                   §§push(_loc12_.§0!E§());
                                                   if(_loc23_ || this)
                                                   {
                                                      §§push(false);
                                                      if(!_loc24_)
                                                      {
                                                         addr1119:
                                                         if(_loc23_ || param1)
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            if(_loc23_ || _loc2_)
                                                            {
                                                               addr1134:
                                                               if(!(_loc24_ && _loc2_))
                                                               {
                                                                  loop27:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        loop28:
                                                                        while(true)
                                                                        {
                                                                           if(_loc23_ || this)
                                                                           {
                                                                              §§push(_loc5_.m_sweep);
                                                                              loop29:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().Set(§[4§);
                                                                                 addr1154:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc24_ && param1))
                                                                                    {
                                                                                       continue loop29;
                                                                                    }
                                                                                    addr1240:
                                                                                    addr1240:
                                                                                    addr1186:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc24_)
                                                                                       {
                                                                                          §§goto(addr1188);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             _loc12_.§do §(this.§-!-§.§8!I§);
                                                                                             break loop28;
                                                                                          }
                                                                                          addr1217:
                                                                                       }
                                                                                    }
                                                                                    if(§§pop() == §§pop())
                                                                                    {
                                                                                       addr1241:
                                                                                       continue loop3;
                                                                                    }
                                                                                    if((_loc14_ = _loc5_).§7!_§() != b2Body.b2_dynamicBody)
                                                                                    {
                                                                                       if(_loc23_ || _loc3_)
                                                                                       {
                                                                                          _loc14_ = _loc6_;
                                                                                          addr1260:
                                                                                          _loc9_.§#R§();
                                                                                          if(_loc23_ || _loc3_)
                                                                                          {
                                                                                             addr1328:
                                                                                             _loc15_ = 0;
                                                                                             addr1329:
                                                                                             §§push(0);
                                                                                             if(_loc23_)
                                                                                             {
                                                                                                if(_loc23_ || param1)
                                                                                                {
                                                                                                   _loc16_ = §§pop();
                                                                                                   if(!(_loc24_ && _loc3_))
                                                                                                   {
                                                                                                      if(_loc24_)
                                                                                                      {
                                                                                                         §§goto(addr1329);
                                                                                                      }
                                                                                                      addr1294:
                                                                                                      _loc10_[_loc15_ + _loc16_++] = _loc14_;
                                                                                                      _loc14_.§0b§ |= b2Body.§[!6§;
                                                                                                      addr1304:
                                                                                                      if(_loc23_ || param1)
                                                                                                      {
                                                                                                         if(!(_loc24_ && _loc2_))
                                                                                                         {
                                                                                                            addr1292:
                                                                                                            if(false)
                                                                                                            {
                                                                                                               §§goto(addr1294);
                                                                                                            }
                                                                                                            addr1784:
                                                                                                            if(_loc16_ > 0)
                                                                                                            {
                                                                                                               _loc2_ = _loc10_[_loc15_++];
                                                                                                               if(_loc23_)
                                                                                                               {
                                                                                                                  §§push(_loc16_);
                                                                                                                  if(_loc23_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - 1);
                                                                                                                  }
                                                                                                                  _loc16_ = §§pop();
                                                                                                                  if(_loc23_ || _loc3_)
                                                                                                                  {
                                                                                                                     addr1364:
                                                                                                                     _loc9_.§^!,§(_loc2_);
                                                                                                                     addr1368:
                                                                                                                     if(_loc2_.IsAwake() == false)
                                                                                                                     {
                                                                                                                        if(_loc23_)
                                                                                                                        {
                                                                                                                           _loc2_.SetAwake(true);
                                                                                                                           if(_loc23_ || _loc3_)
                                                                                                                           {
                                                                                                                              if(!_loc24_)
                                                                                                                              {
                                                                                                                                 if(false)
                                                                                                                                 {
                                                                                                                                    §§goto(addr1364);
                                                                                                                                 }
                                                                                                                                 addr1382:
                                                                                                                                 if(_loc2_.§7!_§() != b2Body.b2_dynamicBody)
                                                                                                                                 {
                                                                                                                                    addr1387:
                                                                                                                                    §§goto(addr1784);
                                                                                                                                 }
                                                                                                                                 _loc7_ = _loc2_.§4!]§;
                                                                                                                                 if(_loc23_)
                                                                                                                                 {
                                                                                                                                    addr1643:
                                                                                                                                    if(!_loc7_)
                                                                                                                                    {
                                                                                                                                       addr1645:
                                                                                                                                       _loc21_ = _loc2_.§-!&§;
                                                                                                                                       if(!_loc24_)
                                                                                                                                       {
                                                                                                                                          addr1782:
                                                                                                                                          if(!_loc21_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr1784);
                                                                                                                                          }
                                                                                                                                          if(_loc9_.§;6§ == _loc9_.§^$§)
                                                                                                                                          {
                                                                                                                                             if(_loc23_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                addr1778:
                                                                                                                                                _loc21_ = _loc21_.§23§;
                                                                                                                                                §§goto(addr1782);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1784);
                                                                                                                                          }
                                                                                                                                          if(_loc21_.§>!&§.§ P§ == true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc24_ && param1))
                                                                                                                                             {
                                                                                                                                                addr1678:
                                                                                                                                                §§goto(addr1778);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1784);
                                                                                                                                          }
                                                                                                                                          if((_loc22_ = _loc21_.§'!4§).§5f§() == false)
                                                                                                                                          {
                                                                                                                                             if(_loc23_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr1778);
                                                                                                                                             }
                                                                                                                                             _loc21_.§>!&§.§ P§ = true;
                                                                                                                                             addr1777:
                                                                                                                                             §§push(_loc22_.§0b§);
                                                                                                                                             if(!_loc24_)
                                                                                                                                             {
                                                                                                                                                §§push(b2Body.§[!6§);
                                                                                                                                                if(_loc23_ || this)
                                                                                                                                                {
                                                                                                                                                   if(§§pop() & §§pop())
                                                                                                                                                   {
                                                                                                                                                      if(!_loc24_)
                                                                                                                                                      {
                                                                                                                                                         addr1761:
                                                                                                                                                         §§goto(addr1778);
                                                                                                                                                      }
                                                                                                                                                      _loc22_.SetAwake(true);
                                                                                                                                                      addr1723:
                                                                                                                                                      _loc10_[_loc15_ + _loc16_] = _loc22_;
                                                                                                                                                      addr1742:
                                                                                                                                                      addr1772:
                                                                                                                                                      if(_loc23_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         addr1716:
                                                                                                                                                         _loc16_++;
                                                                                                                                                         if(!_loc24_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc24_)
                                                                                                                                                            {
                                                                                                                                                               _loc22_.§0b§ |= b2Body.§[!6§;
                                                                                                                                                               if(!_loc24_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc24_)
                                                                                                                                                                  {
                                                                                                                                                                     if(false)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr1716);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1778);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1742);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1716);
                                                                                                                                                            }
                                                                                                                                                            addr1767:
                                                                                                                                                            if(!_loc24_)
                                                                                                                                                            {
                                                                                                                                                               _loc22_.§8!3§(_loc13_);
                                                                                                                                                               §§goto(addr1772);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1777);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1742);
                                                                                                                                                   }
                                                                                                                                                   addr1764:
                                                                                                                                                   §§push(_loc22_.§7!_§());
                                                                                                                                                   §§push(b2Body.b2_staticBody);
                                                                                                                                                }
                                                                                                                                                if(§§pop() != §§pop())
                                                                                                                                                {
                                                                                                                                                   §§goto(addr1767);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1723);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1764);
                                                                                                                                             addr1701:
                                                                                                                                          }
                                                                                                                                          _loc9_.§;!`§(_loc21_.§>!&§);
                                                                                                                                          if(!(_loc24_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             §§goto(addr1701);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1761);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1678);
                                                                                                                                    }
                                                                                                                                    §§push(_loc9_.§,!^§);
                                                                                                                                    if(_loc23_)
                                                                                                                                    {
                                                                                                                                       if(§§pop() == _loc9_.§,<§)
                                                                                                                                       {
                                                                                                                                          addr1528:
                                                                                                                                          §§goto(addr1645);
                                                                                                                                       }
                                                                                                                                       addr1531:
                                                                                                                                       §§push(_loc7_.§4§.§0b§ & b2Contact.§[!6§);
                                                                                                                                    }
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc23_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          addr1639:
                                                                                                                                          _loc7_ = _loc7_.§23§;
                                                                                                                                          §§goto(addr1643);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1645);
                                                                                                                                    }
                                                                                                                                    addr1549:
                                                                                                                                    §§push(_loc7_.§4§.§;>§() == true);
                                                                                                                                    if(!(_loc7_.§4§.§;>§() == true))
                                                                                                                                    {
                                                                                                                                       addr1551:
                                                                                                                                       §§pop();
                                                                                                                                       addr1552:
                                                                                                                                       §§push(_loc7_.§4§);
                                                                                                                                       if(_loc23_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().§0!E§());
                                                                                                                                          if(!_loc24_)
                                                                                                                                          {
                                                                                                                                             §§push(false);
                                                                                                                                             if(_loc23_)
                                                                                                                                             {
                                                                                                                                                addr1496:
                                                                                                                                                §§push(§§pop() == §§pop());
                                                                                                                                                if(!_loc24_)
                                                                                                                                                {
                                                                                                                                                   addr1500:
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                   if(!_loc24_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc24_ && param1))
                                                                                                                                                      {
                                                                                                                                                         if(!§§pop())
                                                                                                                                                         {
                                                                                                                                                            addr1510:
                                                                                                                                                            if(_loc23_ || this)
                                                                                                                                                            {
                                                                                                                                                               §§pop();
                                                                                                                                                               addr1437:
                                                                                                                                                               addr1440:
                                                                                                                                                               §§push(_loc7_.§4§.§?5§());
                                                                                                                                                               if(_loc23_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc23_ || _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(false);
                                                                                                                                                                     if(_loc23_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() == §§pop());
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1500);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1496);
                                                                                                                                                               }
                                                                                                                                                               addr1518:
                                                                                                                                                               if(_loc23_)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc24_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     addr1463:
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc23_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc24_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr1639);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1518);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1645);
                                                                                                                                                                     }
                                                                                                                                                                     _loc9_.§ null§(_loc7_.§4§);
                                                                                                                                                                     if(!(_loc24_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc23_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc7_.§4§);
                                                                                                                                                                           if(!(_loc24_ && _loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc23_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc24_ && _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop().§0b§ = _loc7_.§4§.§0b§ | b2Contact.§[!6§;
                                                                                                                                                                                    if(_loc23_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc24_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(false)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr1437);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push((_loc22_ = _loc7_.§'!4§).§0b§);
                                                                                                                                                                                          if(!(_loc24_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(b2Body.§[!6§);
                                                                                                                                                                                             if(!(_loc24_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(§§pop() & §§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc23_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr1639);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   _loc22_.§0b§ |= b2Body.§[!6§;
                                                                                                                                                                                                   addr1626:
                                                                                                                                                                                                   if(!(_loc24_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1620:
                                                                                                                                                                                                         if(false)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1622:
                                                                                                                                                                                                            _loc16_++;
                                                                                                                                                                                                            addr1624:
                                                                                                                                                                                                            if(_loc23_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr1626);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr1628:
                                                                                                                                                                                                            _loc10_[_loc15_ + _loc16_] = _loc22_;
                                                                                                                                                                                                            §§goto(addr1622);
                                                                                                                                                                                                            addr1638:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1639);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1622);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1624);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr1582:
                                                                                                                                                                                                §§push(_loc22_.§7!_§());
                                                                                                                                                                                                §§push(b2Body.b2_staticBody);
                                                                                                                                                                                             }
                                                                                                                                                                                             if(§§pop() != §§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc23_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc22_.§8!3§(_loc13_);
                                                                                                                                                                                                   if(!(_loc24_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc22_.SetAwake(true);
                                                                                                                                                                                                      §§goto(addr1638);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1620);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1628);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1582);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1552);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1645);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1531);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1552);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1440);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1528);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1645);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1549);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1510);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1551);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1463);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr1549);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1500);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1496);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1549);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1500);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1645);
                                                                                                                              }
                                                                                                                              §§goto(addr1368);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr1387);
                                                                                                                     }
                                                                                                                     §§goto(addr1382);
                                                                                                                     addr1381:
                                                                                                                  }
                                                                                                                  §§goto(addr1387);
                                                                                                               }
                                                                                                               §§goto(addr1381);
                                                                                                            }
                                                                                                            addr1787:
                                                                                                            (_loc17_ = §%v§).§7!^§ = false;
                                                                                                            if(_loc23_)
                                                                                                            {
                                                                                                               §§push(_loc17_);
                                                                                                               §§push(1 - _loc13_);
                                                                                                               if(_loc23_ || _loc2_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * param1.§1_§);
                                                                                                               }
                                                                                                               §§pop().§1_§ = §§pop();
                                                                                                               _loc17_.§<l§ = 1 / _loc17_.§1_§;
                                                                                                               _loc17_.§,K§ = 0;
                                                                                                               _loc17_.§@-§ = param1.§@-§;
                                                                                                               _loc17_.§-!B§ = param1.§-!B§;
                                                                                                               addr1887:
                                                                                                               addr1863:
                                                                                                               addr1858:
                                                                                                               if(!(_loc24_ && _loc3_))
                                                                                                               {
                                                                                                                  addr1819:
                                                                                                                  _loc9_.§6b§(_loc17_);
                                                                                                                  if(_loc23_)
                                                                                                                  {
                                                                                                                     if(!(_loc24_ && param1))
                                                                                                                     {
                                                                                                                        if(!(_loc24_ && this))
                                                                                                                        {
                                                                                                                           §§push(0);
                                                                                                                           if(_loc23_)
                                                                                                                           {
                                                                                                                              _loc18_ = §§pop();
                                                                                                                              if(!(_loc23_ || this))
                                                                                                                              {
                                                                                                                                 continue loop3;
                                                                                                                              }
                                                                                                                              if(_loc23_ || param1)
                                                                                                                              {
                                                                                                                                 if(!_loc24_)
                                                                                                                                 {
                                                                                                                                    if(false)
                                                                                                                                    {
                                                                                                                                       §§goto(addr1819);
                                                                                                                                    }
                                                                                                                                    addr1969:
                                                                                                                                    §§push(_loc18_);
                                                                                                                                    if(!_loc24_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc9_.§`#§);
                                                                                                                                       if(_loc23_)
                                                                                                                                       {
                                                                                                                                          if(§§pop() < §§pop())
                                                                                                                                          {
                                                                                                                                             _loc2_ = _loc9_.§4!#§[_loc18_];
                                                                                                                                             if(!_loc24_)
                                                                                                                                             {
                                                                                                                                                _loc2_.§0b§ &= ~b2Body.§[!6§;
                                                                                                                                                if(_loc23_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   if(_loc2_.IsAwake() == false)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc24_ && this))
                                                                                                                                                      {
                                                                                                                                                         addr1968:
                                                                                                                                                         _loc18_++;
                                                                                                                                                         §§goto(addr1969);
                                                                                                                                                         addr1924:
                                                                                                                                                      }
                                                                                                                                                      addr1932:
                                                                                                                                                      §§goto(addr1968);
                                                                                                                                                   }
                                                                                                                                                   if(_loc2_.§7!_§() != b2Body.b2_dynamicBody)
                                                                                                                                                   {
                                                                                                                                                      if(_loc23_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr1932);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1969);
                                                                                                                                                   }
                                                                                                                                                   _loc2_.§2#§();
                                                                                                                                                   if(!_loc24_)
                                                                                                                                                   {
                                                                                                                                                      _loc7_ = _loc2_.§4!]§;
                                                                                                                                                      if(!_loc24_)
                                                                                                                                                      {
                                                                                                                                                         addr1966:
                                                                                                                                                         if(!_loc7_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr1968);
                                                                                                                                                         }
                                                                                                                                                         _loc7_.§4§.§0b§ &= ~b2Contact.§"1§;
                                                                                                                                                         if(_loc23_ || param1)
                                                                                                                                                         {
                                                                                                                                                            addr1962:
                                                                                                                                                            _loc7_ = _loc7_.§23§;
                                                                                                                                                            §§goto(addr1966);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1968);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1962);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1969);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr1924);
                                                                                                                                          }
                                                                                                                                          if(_loc23_ || this)
                                                                                                                                          {
                                                                                                                                             §§push(0);
                                                                                                                                             if(!_loc24_)
                                                                                                                                             {
                                                                                                                                                _loc18_ = §§pop();
                                                                                                                                                if(_loc24_)
                                                                                                                                                {
                                                                                                                                                   continue loop3;
                                                                                                                                                }
                                                                                                                                                addr2014:
                                                                                                                                                §§push(_loc18_);
                                                                                                                                                if(!(_loc24_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   §§push(_loc9_.§,!^§);
                                                                                                                                                   if(!(_loc24_ && param1))
                                                                                                                                                   {
                                                                                                                                                      if(§§pop() < §§pop())
                                                                                                                                                      {
                                                                                                                                                         _loc11_ = _loc9_.§ !E§[_loc18_];
                                                                                                                                                         §§push(_loc11_);
                                                                                                                                                         §§push(_loc11_.§0b§);
                                                                                                                                                         §§push(b2Contact.§"1§ | b2Contact.§[!6§);
                                                                                                                                                         if(!_loc24_)
                                                                                                                                                         {
                                                                                                                                                            §§push(~§§pop());
                                                                                                                                                         }
                                                                                                                                                         §§pop().§0b§ = §§pop() & §§pop();
                                                                                                                                                         if(_loc23_)
                                                                                                                                                         {
                                                                                                                                                            _loc18_++;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr2014);
                                                                                                                                                      }
                                                                                                                                                      if(_loc23_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         addr2039:
                                                                                                                                                         §§push(0);
                                                                                                                                                         if(_loc24_)
                                                                                                                                                         {
                                                                                                                                                         }
                                                                                                                                                         addr2065:
                                                                                                                                                         if(§§pop() < _loc9_.§;6§)
                                                                                                                                                         {
                                                                                                                                                            (_loc8_ = _loc9_.§7f§[_loc18_]).§ P§ = false;
                                                                                                                                                            if(_loc23_)
                                                                                                                                                            {
                                                                                                                                                               _loc18_++;
                                                                                                                                                            }
                                                                                                                                                            addr2064:
                                                                                                                                                            §§goto(addr2065);
                                                                                                                                                            §§push(_loc18_);
                                                                                                                                                         }
                                                                                                                                                         if(!_loc24_)
                                                                                                                                                         {
                                                                                                                                                            this.§-!-§.§!c§();
                                                                                                                                                         }
                                                                                                                                                         continue loop3;
                                                                                                                                                      }
                                                                                                                                                      addr2050:
                                                                                                                                                      §§goto(addr2064);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr2065);
                                                                                                                                                }
                                                                                                                                                _loc18_ = §§pop();
                                                                                                                                                if(_loc24_ && _loc2_)
                                                                                                                                                {
                                                                                                                                                   continue loop3;
                                                                                                                                                }
                                                                                                                                                §§goto(addr2050);
                                                                                                                                             }
                                                                                                                                             §§goto(addr2065);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr2039);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr1887);
                                                                                                                           }
                                                                                                                           §§goto(addr2039);
                                                                                                                        }
                                                                                                                        §§goto(addr1863);
                                                                                                                     }
                                                                                                                     §§goto(addr1858);
                                                                                                                  }
                                                                                                                  §§goto(addr2039);
                                                                                                               }
                                                                                                               addr1871:
                                                                                                               §§goto(addr1871);
                                                                                                            }
                                                                                                            §§goto(addr2050);
                                                                                                         }
                                                                                                         §§goto(addr1304);
                                                                                                      }
                                                                                                      addr1326:
                                                                                                   }
                                                                                                   §§goto(addr1787);
                                                                                                }
                                                                                                §§goto(addr1328);
                                                                                             }
                                                                                             §§goto(addr1784);
                                                                                          }
                                                                                          §§goto(addr1326);
                                                                                       }
                                                                                       §§goto(addr1292);
                                                                                    }
                                                                                    §§goto(addr1260);
                                                                                 }
                                                                              }
                                                                           }
                                                                           break;
                                                                           while(true)
                                                                           {
                                                                              if(_loc23_ || _loc2_)
                                                                              {
                                                                                 if(!_loc24_)
                                                                                 {
                                                                                    _loc6_.§&I§();
                                                                                    if(!_loc24_)
                                                                                    {
                                                                                       if(_loc24_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(!_loc24_)
                                                                                       {
                                                                                          §§goto(addr1074);
                                                                                       }
                                                                                       §§goto(addr1103);
                                                                                    }
                                                                                    §§goto(addr1241);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              continue loop28;
                                                                           }
                                                                           addr1205:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc12_.§;>§());
                                                                              if(!_loc24_)
                                                                              {
                                                                                 §§push(true);
                                                                                 if(_loc23_ || _loc2_)
                                                                                 {
                                                                                    addr1239:
                                                                                    §§push(§§pop() == §§pop());
                                                                                    if(!(_loc24_ && param1))
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                    }
                                                                                    §§goto(addr1240);
                                                                                    §§push(false);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       continue loop27;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       §§goto(addr1186);
                                                                                    }
                                                                                    §§goto(addr1119);
                                                                                 }
                                                                                 addr1184:
                                                                              }
                                                                              §§goto(addr1239);
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           _loc12_.§0b§ &= ~b2Contact.§"1§;
                                                                           §§goto(addr1205);
                                                                           §§goto(addr1143);
                                                                        }
                                                                        addr1143:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr1239);
                                                                        §§push(_loc12_.§?5§());
                                                                     }
                                                                     §§goto(addr1239);
                                                                  }
                                                               }
                                                               §§goto(addr1185);
                                                            }
                                                            §§goto(addr1239);
                                                         }
                                                         §§goto(addr1184);
                                                      }
                                                      §§goto(addr1240);
                                                   }
                                                   §§goto(addr1134);
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          _loc6_.§8!3§(_loc13_);
                                          §§goto(addr1217);
                                       }
                                    }
                                    break loop3;
                                 }
                              }
                              §§goto(addr1039);
                           }
                           §§goto(addr1013);
                        }
                     }
                     else
                     {
                        §§push(_loc11_.§;>§());
                        if(!_loc24_)
                        {
                           §§push(true);
                           if(_loc23_)
                           {
                              §§push(§§pop() == §§pop());
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(!(_loc24_ && this))
                                 {
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop7:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop8:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   loop9:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      loop10:
                                                      while(true)
                                                      {
                                                         loop11:
                                                         while(true)
                                                         {
                                                            §§push(_loc11_.§=!F§());
                                                            if(!(_loc24_ && this))
                                                            {
                                                               if(!_loc23_)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               if(_loc23_)
                                                               {
                                                                  §§push(false);
                                                                  if(_loc23_ || _loc3_)
                                                                  {
                                                                     if(_loc24_ && _loc3_)
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     §§push(§§pop() == §§pop());
                                                                     if(_loc23_ || param1)
                                                                     {
                                                                        loop12:
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              §§push(1);
                                                                              loop13:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(!_loc24_)
                                                                                 {
                                                                                    _loc19_ = §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc11_.§0b§ & b2Contact.§"1§);
                                                                                       if(_loc24_ && _loc2_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       continue loop13;
                                                                                       addr229:
                                                                                       if(_loc24_ && param1)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(_loc24_ && _loc3_)
                                                                                       {
                                                                                          addr309:
                                                                                          if(_loc23_ || param1)
                                                                                          {
                                                                                             break loop12;
                                                                                          }
                                                                                          continue loop10;
                                                                                       }
                                                                                       §§push(_loc11_.§>&§);
                                                                                       if(!(_loc24_ && this))
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          if(!(_loc24_ && param1))
                                                                                          {
                                                                                             addr260:
                                                                                             _loc19_ = §§pop();
                                                                                             if(!(_loc24_ && param1))
                                                                                             {
                                                                                                if(false)
                                                                                                {
                                                                                                   continue loop11;
                                                                                                }
                                                                                                addr919:
                                                                                                §§push(Number.MIN_VALUE < _loc19_);
                                                                                                if(_loc23_)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   if(_loc23_ || this)
                                                                                                   {
                                                                                                      break loop5;
                                                                                                   }
                                                                                                   §§goto(addr1005);
                                                                                                }
                                                                                                §§goto(addr1039);
                                                                                             }
                                                                                             _loc12_ = _loc11_;
                                                                                             if(_loc23_ || this)
                                                                                             {
                                                                                                §§push(_loc19_);
                                                                                                if(_loc23_)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                                _loc13_ = §§pop();
                                                                                                break loop12;
                                                                                             }
                                                                                             break loop12;
                                                                                          }
                                                                                          §§goto(addr1039);
                                                                                       }
                                                                                       §§goto(addr260);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1039);
                                                                              }
                                                                           }
                                                                           §§goto(addr309);
                                                                        }
                                                                        continue loop4;
                                                                        addr307:
                                                                     }
                                                                     §§goto(addr1013);
                                                                  }
                                                                  break loop5;
                                                               }
                                                               addr370:
                                                               addr370:
                                                               while(true)
                                                               {
                                                                  §§push(false);
                                                                  if(!(_loc24_ && param1))
                                                                  {
                                                                     §§push(§§pop() == §§pop());
                                                                     if(_loc23_)
                                                                     {
                                                                        if(!_loc23_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop7;
                                                                     }
                                                                     §§goto(addr1005);
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  if(_loc23_ || this)
                                                                  {
                                                                     §§goto(addr326);
                                                                     §§push(_loc11_.§0!E§());
                                                                  }
                                                                  §§goto(addr1039);
                                                               }
                                                               addr326:
                                                               §§goto(addr1005);
                                                            }
                                                            break;
                                                         }
                                                         addr963:
                                                         if(!§§pop())
                                                         {
                                                            continue loop4;
                                                         }
                                                         if(!_loc24_)
                                                         {
                                                            §§goto(addr260);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr994);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr307);
                                             }
                                          }
                                          addr346:
                                       }
                                       §§goto(addr370);
                                    }
                                    addr369:
                                 }
                                 break;
                                 if(_loc24_ && _loc3_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr346);
                              }
                              if(§§pop())
                              {
                                 if(!_loc24_)
                                 {
                                    §§pop();
                                    if(!(_loc24_ && this))
                                    {
                                       §§push(_loc19_);
                                       if(!_loc24_)
                                       {
                                          §§push(_loc13_);
                                          if(_loc23_ || this)
                                          {
                                             §§push(§§pop() < §§pop());
                                             if(!(_loc24_ && _loc2_))
                                             {
                                                §§goto(addr963);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr1039);
                                 }
                                 §§goto(addr1013);
                              }
                              §§goto(addr963);
                           }
                           §§goto(addr369);
                        }
                        §§goto(addr370);
                     }
                  }
               }
               §§goto(addr1039);
            }
            return;
         }
         §§goto(addr173);
      }
      
      b2internal function §%!^§(param1:b2Joint) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§3g§();
         var _loc3_:b2Body = param1.§#F§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §-!g§;
         §§push(param1.§#!&§);
         if(_loc15_ || _loc2_)
         {
            var _loc14_:* = §§pop();
            if(!_loc16_)
            {
               §§push(b2Joint.§-A§);
               if(!_loc16_)
               {
                  §§push(_loc14_);
                  if(!_loc16_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc15_ || this)
                        {
                           §§push(0);
                           if(_loc15_ || this)
                           {
                           }
                        }
                        else
                        {
                           addr316:
                           §§push(2);
                           if(_loc15_)
                           {
                              addr329:
                           }
                        }
                        addr335:
                        loop11:
                        switch(§§pop())
                        {
                           case 0:
                              this.§1!;§.§ W§(_loc8_,_loc9_,_loc10_);
                              if(_loc15_ || _loc2_)
                              {
                                 break;
                              }
                              break;
                           case 1:
                              _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§#2§();
                              _loc13_ = _loc11_.§4C§();
                              if(!(_loc16_ && param1))
                              {
                                 addr234:
                                 this.§1!;§.§ W§(_loc12_,_loc8_,_loc10_);
                                 while(true)
                                 {
                                    §§push(this.§1!;§);
                                 }
                                 addr238:
                              }
                              else
                              {
                                 loop2:
                                 while(true)
                                 {
                                    addr147:
                                    loop3:
                                    while(true)
                                    {
                                       §§push(this.§1!;§);
                                       while(true)
                                       {
                                          if(!_loc16_)
                                          {
                                             §§pop().§ W§(_loc8_,_loc9_,_loc10_);
                                             while(true)
                                             {
                                                if(_loc15_)
                                                {
                                                   if(_loc3_ == this.m_groundBody)
                                                   {
                                                      break;
                                                   }
                                                   if(!(_loc16_ && param1))
                                                   {
                                                      continue;
                                                   }
                                                   addr143:
                                                   if(_loc15_)
                                                   {
                                                      if(true)
                                                      {
                                                         break;
                                                      }
                                                      continue loop3;
                                                   }
                                                   continue loop2;
                                                }
                                                addr221:
                                                while(true)
                                                {
                                                   if(_loc15_)
                                                   {
                                                      break loop11;
                                                      addr223:
                                                   }
                                                   §§goto(addr238);
                                                }
                                             }
                                             break loop11;
                                          }
                                          addr202:
                                          if(!(_loc15_ || _loc2_))
                                          {
                                             break;
                                          }
                                          §§pop().§ W§(_loc8_,_loc9_,_loc10_);
                                          §§goto(addr213);
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§pop().§ W§(_loc13_,_loc9_,_loc10_);
                                 §§goto(addr231);
                              }
                              break;
                           case 2:
                              §§goto(addr202);
                           default:
                              §§push(this.§1!;§);
                              if(_loc2_ != this.m_groundBody)
                              {
                                 §§goto(addr176);
                              }
                              §§goto(addr147);
                        }
                        return;
                        addr334:
                     }
                     else
                     {
                        §§push(b2Joint.§[,§);
                        if(_loc15_)
                        {
                           §§push(_loc14_);
                           if(!(_loc16_ && param1))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc15_ || this)
                                 {
                                    addr296:
                                    §§push(1);
                                    if(_loc16_ && this)
                                    {
                                       addr314:
                                       if(§§pop() === _loc14_)
                                       {
                                          §§goto(addr316);
                                       }
                                       else
                                       {
                                          §§push(3);
                                       }
                                    }
                                    else
                                    {
                                       addr304:
                                    }
                                    §§goto(addr334);
                                 }
                                 §§goto(addr316);
                              }
                              else
                              {
                                 §§push(b2Joint.§`!U§);
                                 if(_loc15_ || _loc3_)
                                 {
                                    §§goto(addr314);
                                 }
                              }
                           }
                           §§goto(addr314);
                        }
                     }
                     §§goto(addr329);
                  }
                  §§goto(addr314);
               }
               §§goto(addr304);
            }
            §§goto(addr296);
         }
         §§goto(addr335);
      }
      
      b2internal function §5!g§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         §§push(param1.§#!&§);
         if(_loc15_ || param1)
         {
            var _loc14_:* = §§pop();
            if(_loc15_ || param3)
            {
               §§push(b2Shape.§,-§);
               if(_loc15_ || param1)
               {
                  §§push(_loc14_);
                  if(_loc15_ || this)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc15_ || param3)
                        {
                           §§push(0);
                           if(_loc16_)
                           {
                           }
                        }
                        else
                        {
                           addr277:
                           §§push(2);
                           if(!(_loc16_ && param3))
                           {
                              addr295:
                           }
                        }
                        addr301:
                        loop7:
                        switch(§§pop())
                        {
                           case 0:
                              _loc4_ = param1 as b2CircleShape;
                              _loc5_ = b2Math.§=!!§(param2,_loc4_.§4Z§);
                              if(!(_loc16_ && param2))
                              {
                                 _loc6_ = _loc4_.§#&§;
                              }
                              _loc7_ = param2.R.col1;
                              if(!_loc16_)
                              {
                                 this.§1!;§.§%]§(_loc5_,_loc6_,_loc7_,param3);
                              }
                              break;
                           case 1:
                              §§push((_loc9_ = param1 as b2PolygonShape).§"!f§());
                              if(!(_loc16_ && param1))
                              {
                                 §§push(int(§§pop()));
                              }
                              _loc10_ = §§pop();
                              _loc11_ = _loc9_.§9J§();
                              _loc12_ = new Vector.<b2Vec2>(_loc10_);
                              if(_loc15_)
                              {
                                 §§push(0);
                                 loop0:
                                 while(true)
                                 {
                                    _loc8_ = §§pop();
                                    loop1:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          §§push(_loc8_);
                                          if(!_loc15_)
                                          {
                                             break;
                                          }
                                          if(§§pop() >= _loc10_)
                                          {
                                             if(!_loc16_)
                                             {
                                                if(_loc15_)
                                                {
                                                   this.§1!;§.§>!c§(_loc12_,_loc10_,param3);
                                                   addr130:
                                                   if(true)
                                                   {
                                                      break loop7;
                                                   }
                                                   while(true)
                                                   {
                                                      _loc8_++;
                                                   }
                                                   addr132:
                                                }
                                                loop3:
                                                while(_loc16_)
                                                {
                                                   while(_loc15_ || this)
                                                   {
                                                      while(true)
                                                      {
                                                         §§goto(addr132);
                                                         continue loop3;
                                                      }
                                                   }
                                                   continue loop1;
                                                }
                                                continue;
                                             }
                                             §§goto(addr130);
                                          }
                                          else
                                          {
                                             _loc12_[_loc8_] = b2Math.§=!!§(param2,_loc11_[_loc8_]);
                                          }
                                          §§goto(addr159);
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                              §§goto(addr166);
                           case 2:
                              _loc13_ = param1 as b2EdgeShape;
                              if(_loc15_)
                              {
                                 this.§1!;§.§ W§(b2Math.§=!!§(param2,_loc13_.GetVertex1()),b2Math.§=!!§(param2,_loc13_.GetVertex2()),param3);
                              }
                        }
                        return;
                        addr300:
                     }
                     else
                     {
                        §§push(b2Shape.§"![§);
                        if(!_loc16_)
                        {
                           §§push(_loc14_);
                           if(_loc15_ || param2)
                           {
                              addr254:
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc16_)
                                 {
                                    addr257:
                                    §§push(1);
                                    if(_loc16_ && this)
                                    {
                                       addr275:
                                       if(§§pop() === _loc14_)
                                       {
                                          §§goto(addr277);
                                       }
                                       else
                                       {
                                          §§push(3);
                                       }
                                    }
                                    else
                                    {
                                       addr265:
                                    }
                                    §§goto(addr300);
                                 }
                                 §§goto(addr277);
                              }
                              else
                              {
                                 §§push(b2Shape.§#!D§);
                                 if(_loc15_ || param3)
                                 {
                                    §§goto(addr275);
                                 }
                              }
                              §§goto(addr295);
                           }
                        }
                        §§goto(addr275);
                     }
                     §§goto(addr277);
                  }
                  §§goto(addr254);
               }
               §§goto(addr265);
            }
            §§goto(addr257);
         }
         §§goto(addr301);
      }
   }
}
