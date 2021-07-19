package §3!`§
{
   import §"y§.*;
   import §'F§.*;
   import §+C§.*;
   import §-"&§.*;
   import §6Z§.*;
   import §@0§.b2Controller;
   import §@0§.b2ControllerEdge;
   import §^9§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep;
      
      private static var §;S§:b2Transform;
      
      private static var §"E§:b2Sweep;
      
      private static var §"1§:b2Sweep;
      
      private static var §@",§:b2TimeStep;
      
      private static var §;w§:Vector.<b2Body>;
      
      private static var §^3§:b2Color;
      
      private static var §,!p§:Boolean;
      
      private static var §3Q§:Boolean;
      
      public static const §+!P§:int = 1;
      
      public static const §8"§:int = 2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            s_timestep2 = new b2TimeStep();
            loop0:
            while(true)
            {
               §;S§ = new b2Transform();
               loop1:
               while(true)
               {
                  §"E§ = new b2Sweep();
                  loop2:
                  while(true)
                  {
                     §"1§ = new b2Sweep();
                     while(true)
                     {
                        §@",§ = new b2TimeStep();
                        while(true)
                        {
                           if(!_loc1_)
                           {
                              break;
                              addr96:
                           }
                           §;w§ = new Vector.<b2Body>();
                           while(!_loc2_)
                           {
                              §^3§ = new b2Color(0.5,0.8,0.8);
                              continue loop2;
                           }
                           continue loop0;
                           addr55:
                           if(_loc1_ || _loc2_)
                           {
                              while(true)
                              {
                                 §8"§ = 2;
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    continue loop1;
                                 }
                                 addr46:
                                 while(!(_loc2_ && b2World))
                                 {
                                    if(!_loc2_)
                                    {
                                       §§goto(addr55);
                                    }
                                    else
                                    {
                                       §§goto(addr96);
                                    }
                                 }
                                 continue loop2;
                              }
                              return;
                              addr41:
                              addr72:
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr72);
      }
      
      private var §]8§:Vector.<b2Body>;
      
      b2internal var §,[§:int;
      
      b2internal var §1C§:b2ContactManager;
      
      private var §?!?§:b2ContactSolver;
      
      private var § !7§:b2Island;
      
      b2internal var §>L§:b2Body;
      
      private var §4!Z§:b2Joint;
      
      b2internal var §]J§:b2Contact;
      
      private var §3"'§:int;
      
      b2internal var §<$§:int;
      
      private var §"F§:int;
      
      private var §9"&§:b2Controller;
      
      private var §,!l§:int;
      
      private var §<!O§:b2Vec2;
      
      private var §^!W§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §"$§:b2DestructionListener;
      
      private var §#"+§:b2DebugDraw;
      
      private var §-0§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§]8§ = new Vector.<b2Body>();
            while(true)
            {
               this.§1C§ = new b2ContactManager();
               while(true)
               {
                  this.§?!?§ = new b2ContactSolver();
                  loop2:
                  while(true)
                  {
                     this.§ !7§ = new b2Island();
                     while(true)
                     {
                        super();
                        loop4:
                        while(true)
                        {
                           this.§"$§ = null;
                           loop5:
                           while(true)
                           {
                              this.§#"+§ = null;
                              addr181:
                              while(true)
                              {
                                 this.§>L§ = null;
                                 loop7:
                                 while(true)
                                 {
                                    this.§]J§ = null;
                                    addr169:
                                    while(!_loc4_)
                                    {
                                       this.§4!Z§ = null;
                                       while(true)
                                       {
                                          this.§9"&§ = null;
                                          continue loop7;
                                          addr131:
                                          while(!(_loc4_ && param2))
                                          {
                                             continue loop4;
                                             while(!(_loc4_ && this))
                                             {
                                                continue loop5;
                                             }
                                          }
                                       }
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               if(_loc4_ && this)
               {
                  continue;
               }
               §3Q§ = true;
               while(true)
               {
                  if(_loc5_)
                  {
                     if(!_loc4_)
                     {
                        if(_loc5_)
                        {
                           this.§^!W§ = param2;
                           loop17:
                           while(_loc5_)
                           {
                              this.§<!O§ = param1;
                              loop18:
                              while(_loc5_)
                              {
                                 while(true)
                                 {
                                    this.§-0§ = 0;
                                    do
                                    {
                                       this.§1C§.m_world = this;
                                    }
                                    while(!_loc5_);
                                    
                                    if(_loc5_)
                                    {
                                       if(_loc5_)
                                       {
                                          if(!_loc4_)
                                          {
                                             if(_loc5_)
                                             {
                                                if(true)
                                                {
                                                   var _loc3_:b2BodyDef = new b2BodyDef();
                                                   if(!(_loc4_ && param2))
                                                   {
                                                      this.m_groundBody = this.CreateBody(_loc3_);
                                                   }
                                                }
                                                continue;
                                                return;
                                             }
                                             §§goto(addr100);
                                          }
                                          break;
                                       }
                                       continue loop17;
                                    }
                                    continue loop18;
                                 }
                                 while(true)
                                 {
                                    §,!p§ = true;
                                    §§goto(addr71);
                                 }
                              }
                              §§goto(addr181);
                           }
                           continue;
                        }
                        §§goto(addr169);
                     }
                     break;
                  }
                  §§goto(addr71);
               }
               §§goto(addr95);
            }
         }
         §§goto(addr90);
      }
      
      public function §1!e§(param1:b2DestructionListener) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§"$§ = param1;
         }
      }
      
      public function §5=§(param1:b2ContactFilter) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§1C§.§<"$§ = param1;
         }
      }
      
      public function §,V§(param1:b2ContactListener) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§1C§.§&6§ = param1;
         }
      }
      
      public function §]!y§(param1:b2DebugDraw) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§#"+§ = param1;
         }
      }
      
      public function §8!d§(param1:§`c§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:b2Fixture = null;
         var _loc2_:§`c§ = this.§1C§.§9!V§;
         if(!(_loc5_ && _loc2_))
         {
            this.§1C§.§9!V§ = param1;
         }
         var _loc3_:b2Body = this.§>L§;
         for(; _loc3_; _loc3_ = _loc3_.§0!>§)
         {
            _loc4_ = _loc3_.§'e§;
            if(_loc6_)
            {
               loop1:
               while(_loc4_)
               {
                  _loc4_.§1! § = param1.§]!J§(_loc2_.§25§(_loc4_.§1! §),_loc4_);
                  if(!_loc6_)
                  {
                     break;
                  }
                  while(true)
                  {
                     _loc4_ = _loc4_.§0!>§;
                     continue loop1;
                  }
               }
               continue;
            }
            §§goto(addr71);
         }
      }
      
      public function §`!n§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§1C§.§9!V§.§`!n§();
         }
      }
      
      public function §<!v§() : int
      {
         return this.§1C§.§9!V§.§<!v§();
      }
      
      public function CreateBody(param1:b2BodyDef) : b2Body
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            if(this.§6"+§() == true)
            {
               if(_loc6_)
               {
                  return null;
               }
            }
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         if(_loc6_ || this)
         {
            _loc2_.§0!^§ = null;
            loop0:
            while(true)
            {
               _loc2_.§0!>§ = this.§>L§;
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §§push(this.§>L§);
                     if(!_loc5_)
                     {
                        if(!§§pop())
                        {
                           addr41:
                           this.§>L§ = _loc2_;
                           if(!_loc6_)
                           {
                              break;
                           }
                           if(!_loc5_)
                           {
                              if(true)
                              {
                                 var _loc3_:*;
                                 §§push((_loc3_ = this).§3"'§);
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc4_:* = §§pop();
                              }
                              continue;
                              if(!_loc5_)
                              {
                                 _loc3_.§3"'§ = _loc4_;
                              }
                              break;
                           }
                           continue loop0;
                        }
                        if(_loc5_ && this)
                        {
                           continue loop1;
                        }
                        §§push(this.§>L§);
                     }
                     §§pop().§0!^§ = _loc2_;
                     if(!(_loc6_ || this))
                     {
                        break;
                     }
                     continue loop1;
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public function §-7§(param1:b2Body) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(!(_loc12_ && _loc3_))
         {
            if(this.§6"+§() == true)
            {
               if(!_loc12_)
               {
                  §§goto(addr42);
               }
            }
            var _loc2_:b2JointEdge = param1.§4!Z§;
            while(_loc2_)
            {
               _loc6_ = _loc2_;
               _loc2_ = _loc2_.next;
               if(!(_loc12_ && this))
               {
                  §§push(this.§"$§);
                  if(!_loc12_)
                  {
                     if(§§pop())
                     {
                        if(!_loc13_)
                        {
                           continue;
                        }
                        §§push(this.§"$§);
                     }
                     addr82:
                     this.§=!"§(_loc6_.§`!g§);
                     continue;
                  }
                  §§pop().§,"&§(_loc6_.§`!g§);
                  if(_loc12_ && _loc2_)
                  {
                     continue;
                  }
               }
               §§goto(addr82);
            }
            var _loc3_:b2ControllerEdge = param1.§9"&§;
            if(!_loc12_)
            {
               while(_loc3_)
               {
                  _loc7_ = _loc3_;
                  _loc3_ = _loc3_.§4!m§;
                  if(_loc13_ || _loc2_)
                  {
                     _loc7_.controller.§2!U§(param1);
                  }
               }
            }
            var _loc4_:b2ContactEdge = param1.§]J§;
            if(!(_loc12_ && _loc3_))
            {
               while(_loc4_)
               {
                  _loc8_ = _loc4_;
                  _loc4_ = _loc4_.next;
                  if(_loc13_)
                  {
                     this.§1C§.§5f§(_loc8_.§;%§);
                  }
               }
               if(!_loc12_)
               {
                  param1.§]J§ = null;
               }
            }
            var _loc5_:b2Fixture = param1.§'e§;
            if(!_loc12_)
            {
               loop3:
               while(_loc5_)
               {
                  _loc9_ = _loc5_;
                  _loc5_ = _loc5_.§0!>§;
                  if(!(_loc12_ && this))
                  {
                     §§push(this.§"$§);
                     if(_loc13_)
                     {
                        if(§§pop())
                        {
                           if(_loc13_ || _loc3_)
                           {
                              addr223:
                              this.§"$§.§!9§(_loc9_);
                           }
                           loop4:
                           while(true)
                           {
                              addr202:
                              loop5:
                              while(true)
                              {
                                 _loc9_.§5!k§(this.§1C§.§9!V§);
                                 do
                                 {
                                    _loc9_.§5f§();
                                 }
                                 while(!(_loc13_ || _loc3_));
                                 
                                 if(_loc13_ || _loc3_)
                                 {
                                    while(false)
                                    {
                                       continue loop5;
                                    }
                                    continue loop3;
                                    addr200:
                                 }
                                 continue loop4;
                              }
                           }
                        }
                        §§goto(addr202);
                     }
                     §§goto(addr223);
                  }
                  §§goto(addr200);
               }
               if(!_loc12_)
               {
                  param1.§'e§ = null;
                  if(!_loc12_)
                  {
                     param1.§]! § = 0;
                     loop8:
                     while(true)
                     {
                        §§push(param1.§0!^§);
                        if(_loc13_ || _loc3_)
                        {
                           if(§§pop())
                           {
                              addr314:
                              while(true)
                              {
                                 §§push(param1.§0!^§);
                                 addr316:
                                 while(true)
                                 {
                                    §§pop().§0!>§ = param1.§0!>§;
                                    addr319:
                                    while(true)
                                    {
                                    }
                                 }
                              }
                              addr314:
                           }
                           loop9:
                           while(true)
                           {
                              §§push(param1.§0!>§);
                              if(!(_loc12_ && param1))
                              {
                                 if(!§§pop())
                                 {
                                    while(param1 == this.§>L§)
                                    {
                                       if(!(_loc12_ && _loc2_))
                                       {
                                          addr248:
                                          if(_loc12_ && param1)
                                          {
                                             continue loop8;
                                          }
                                          if(_loc13_ || param1)
                                          {
                                             this.§>L§ = param1.§0!>§;
                                             if(!(_loc13_ || param1))
                                             {
                                                break loop8;
                                             }
                                             addr273:
                                             if(true)
                                             {
                                                break;
                                             }
                                             continue loop9;
                                          }
                                          §§goto(addr319);
                                       }
                                       §§goto(addr273);
                                    }
                                    var _loc10_:*;
                                    §§push((_loc10_ = this).§3"'§);
                                    if(_loc13_ || _loc2_)
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    var _loc11_:* = §§pop();
                                    if(!_loc12_)
                                    {
                                       _loc10_.§3"'§ = _loc11_;
                                    }
                                    break loop8;
                                    addr236:
                                 }
                                 if(_loc12_)
                                 {
                                    continue loop8;
                                 }
                                 if(!_loc12_)
                                 {
                                    §§push(param1.§0!>§);
                                 }
                                 else
                                 {
                                    §§goto(addr314);
                                 }
                                 §§goto(addr319);
                              }
                              §§pop().§0!^§ = param1.§0!^§;
                              continue loop8;
                           }
                        }
                        §§goto(addr316);
                     }
                     return;
                  }
                  while(true)
                  {
                     §§goto(addr236);
                  }
               }
               §§goto(addr314);
            }
            §§goto(addr319);
         }
         addr42:
      }
      
      public function §6`§(param1:b2JointDef) : b2Joint
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§2#§(param1,null);
         if(!(_loc8_ && _loc3_))
         {
            _loc2_.§0!^§ = null;
            if(_loc9_ || _loc2_)
            {
               _loc2_.§0!>§ = this.§4!Z§;
               if(_loc9_)
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§4!Z§);
                     if(!_loc8_)
                     {
                        if(§§pop())
                        {
                           if(_loc9_ || _loc2_)
                           {
                              addr57:
                              this.§4!Z§.§0!^§ = _loc2_;
                              if(!(_loc8_ && param1))
                              {
                                 addr34:
                                 this.§4!Z§ = _loc2_;
                                 if(!_loc8_)
                                 {
                                    if(false)
                                    {
                                       continue;
                                    }
                                    var _loc6_:*;
                                    §§push((_loc6_ = this).§"F§);
                                    if(!(_loc8_ && param1))
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    var _loc7_:* = §§pop();
                                    if(!(_loc8_ && this))
                                    {
                                       _loc6_.§"F§ = _loc7_;
                                    }
                                    if(!(_loc8_ && param1))
                                    {
                                       §§push(_loc2_.§]!%§);
                                       loop9:
                                       while(true)
                                       {
                                          §§pop().§`!g§ = _loc2_;
                                          addr332:
                                          loop1:
                                          while(true)
                                          {
                                             §§push(_loc2_.§]!%§);
                                             loop2:
                                             while(true)
                                             {
                                                if(!(_loc9_ || _loc2_))
                                                {
                                                   continue loop9;
                                                }
                                                §§pop().§-!3§ = _loc2_.§8!F§;
                                                while(true)
                                                {
                                                   §§push(_loc2_.§]!%§);
                                                   addr302:
                                                   addr304:
                                                   addr306:
                                                   while(!_loc9_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   §§pop().§9!b§ = null;
                                                   while(true)
                                                   {
                                                      if(!(_loc9_ || _loc2_))
                                                      {
                                                         continue loop1;
                                                      }
                                                      §§push(_loc2_.§]!%§);
                                                      if(!_loc8_)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr302);
                                                      §§goto(addr304);
                                                   }
                                                   addr298:
                                                   §§pop().next = _loc2_.§[Z§.§4!Z§;
                                                   loop24:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_.§[Z§);
                                                      addr278:
                                                      while(true)
                                                      {
                                                         addr279:
                                                         if(§§pop().§4!Z§)
                                                         {
                                                            break loop0;
                                                         }
                                                         break;
                                                      }
                                                      loop4:
                                                      while(true)
                                                      {
                                                         §§push(_loc2_.§[Z§);
                                                         if(!(_loc8_ && param1))
                                                         {
                                                            if(_loc9_ || _loc2_)
                                                            {
                                                               §§pop().§4!Z§ = _loc2_.§]!%§;
                                                               loop5:
                                                               for(; _loc9_ || _loc2_; if(_loc8_ && _loc3_)
                                                               {
                                                                  continue;
                                                               },§§goto(addr176),§§push(_loc2_.§8!F§))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_.§@!d§);
                                                                     addr242:
                                                                     addr246:
                                                                     while(true)
                                                                     {
                                                                        §§pop().§`!g§ = _loc2_;
                                                                        addr244:
                                                                        if(!_loc8_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr306);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_.§@!d§);
                                                                        loop11:
                                                                        while(!(_loc8_ && param1))
                                                                        {
                                                                           §§pop().§-!3§ = _loc2_.§[Z§;
                                                                           loop12:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_.§@!d§);
                                                                              loop13:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().§9!b§ = null;
                                                                                 loop14:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc2_.§@!d§);
                                                                                    if(!(_loc9_ || param1))
                                                                                    {
                                                                                       continue loop13;
                                                                                    }
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§pop().next = _loc2_.§8!F§.§4!Z§;
                                                                                    loop15:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc9_ || param1))
                                                                                       {
                                                                                          continue loop14;
                                                                                       }
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc2_.§8!F§);
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             §§push(§§pop().§4!Z§);
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            continue loop5;
                                                                                                         }
                                                                                                         while(!_loc8_)
                                                                                                         {
                                                                                                         }
                                                                                                         continue loop15;
                                                                                                         addr190:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc2_.§8!F§);
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            §§pop().§4!Z§ = _loc2_.§@!d§;
                                                                                                            if(_loc9_ || _loc3_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr176:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().§4!Z§);
                                                                                                               addr177:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop().§9!b§ = _loc2_.§@!d§;
                                                                                                               }
                                                                                                            }
                                                                                                            addr176:
                                                                                                         }
                                                                                                         §§goto(addr190);
                                                                                                      }
                                                                                                      continue loop12;
                                                                                                   }
                                                                                                   §§goto(addr279);
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr177);
                                                                                          }
                                                                                          §§goto(addr176);
                                                                                       }
                                                                                       §§pop().§9!b§ = _loc2_.§]!%§;
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          continue loop24;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop4;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr244);
                                                                                 }
                                                                                 continue loop11;
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr242);
                                                                     }
                                                                  }
                                                               }
                                                               break loop0;
                                                            }
                                                            §§goto(addr278);
                                                         }
                                                         addr282:
                                                         while(true)
                                                         {
                                                            §§goto(addr283);
                                                         }
                                                         §§goto(addr288);
                                                      }
                                                   }
                                                }
                                             }
                                             continue loop9;
                                          }
                                       }
                                    }
                                    §§goto(addr246);
                                 }
                                 §§goto(addr332);
                              }
                              break;
                           }
                           §§goto(addr288);
                        }
                        §§goto(addr34);
                     }
                     §§goto(addr57);
                  }
                  while(true)
                  {
                     §§goto(addr282);
                  }
               }
               §§goto(addr298);
            }
            §§goto(addr327);
         }
         §§goto(addr274);
      }
      
      public function §=!"§(param1:b2Joint) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:b2ContactEdge = null;
         §§push(param1.§>!!§);
         if(_loc8_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc8_)
         {
            §§push(param1.§0!^§);
            if(_loc8_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(param1.§0!^§);
                     addr83:
                     while(true)
                     {
                        §§pop().§0!>§ = param1.§0!>§;
                        addr86:
                        while(true)
                        {
                        }
                     }
                     loop2:
                     while(true)
                     {
                        if(_loc9_ && param1)
                        {
                           continue loop0;
                        }
                        §§push(param1.§0!>§);
                        loop4:
                        while(true)
                        {
                           §§pop().§0!^§ = param1.§0!^§;
                           addr75:
                           loop7:
                           while(true)
                           {
                              loop3:
                              for(; param1 == this.§4!Z§; continue loop7)
                              {
                                 if(_loc8_ || this)
                                 {
                                    this.§4!Z§ = param1.§0!>§;
                                 }
                                 if(_loc9_)
                                 {
                                    continue loop7;
                                 }
                                 if(!_loc8_)
                                 {
                                    continue loop2;
                                 }
                                 if(!_loc8_)
                                 {
                                    break loop2;
                                 }
                                 if(true)
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    §§push(param1.§0!>§);
                                    if(_loc8_ || _loc2_)
                                    {
                                       if(§§pop())
                                       {
                                          continue loop2;
                                       }
                                       continue loop3;
                                    }
                                    continue loop4;
                                 }
                              }
                              var _loc3_:b2Body = param1.§[Z§;
                              var _loc4_:b2Body = param1.§8!F§;
                              if(_loc8_ || _loc2_)
                              {
                                 _loc3_.SetAwake(true);
                                 _loc4_.SetAwake(true);
                                 addr396:
                                 addr420:
                                 addr416:
                                 if(param1.§]!%§.§9!b§)
                                 {
                                    addr403:
                                    param1.§]!%§.§9!b§.next = param1.§]!%§.next;
                                    addr397:
                                    if(_loc8_ || _loc3_)
                                    {
                                       addr354:
                                       §§push(param1.§]!%§);
                                       if(!(_loc9_ && _loc3_))
                                       {
                                          §§push(§§pop().next);
                                          if(_loc8_)
                                          {
                                             if(§§pop())
                                             {
                                                addr368:
                                                if(!_loc9_)
                                                {
                                                   addr372:
                                                   §§push(param1.§]!%§);
                                                   if(_loc8_ || param1)
                                                   {
                                                      if(_loc8_ || this)
                                                      {
                                                         addr390:
                                                         §§pop().next.§9!b§ = param1.§]!%§.§9!b§;
                                                         addr391:
                                                         addr387:
                                                         if(param1.§]!%§ == _loc3_.§4!Z§)
                                                         {
                                                            if(!(_loc9_ && _loc3_))
                                                            {
                                                               if(!_loc9_)
                                                               {
                                                                  _loc3_.§4!Z§ = param1.§]!%§.next;
                                                                  addr353:
                                                                  §§push(param1.§]!%§);
                                                                  if(!(_loc9_ && _loc2_))
                                                                  {
                                                                     if(!(_loc9_ && param1))
                                                                     {
                                                                        addr331:
                                                                        §§pop().§9!b§ = null;
                                                                        addr332:
                                                                        §§push(param1.§]!%§);
                                                                        if(!_loc9_)
                                                                        {
                                                                           §§push(null);
                                                                           if(!_loc9_)
                                                                           {
                                                                              §§pop().next = §§pop();
                                                                              addr312:
                                                                              §§push(param1.§@!d§.§9!b§);
                                                                              if(!_loc9_)
                                                                              {
                                                                                 if(!(_loc9_ && this))
                                                                                 {
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          addr293:
                                                                                          §§push(param1.§@!d§.§9!b§);
                                                                                          §§push(param1.§@!d§.next);
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             §§pop().next = §§pop();
                                                                                             addr302:
                                                                                             §§push(param1.§@!d§.next);
                                                                                             if(!(_loc9_ && _loc2_))
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   addr238:
                                                                                                   §§push(param1.§@!d§.next);
                                                                                                   if(_loc8_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(param1.§@!d§.§9!b§);
                                                                                                      if(!(_loc9_ && param1))
                                                                                                      {
                                                                                                         §§pop().§9!b§ = §§pop();
                                                                                                         addr269:
                                                                                                         if(_loc8_ || _loc2_)
                                                                                                         {
                                                                                                            addr183:
                                                                                                            §§push(param1.§@!d§);
                                                                                                            if(_loc8_ || param1)
                                                                                                            {
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  if(_loc8_ || _loc3_)
                                                                                                                  {
                                                                                                                     if(§§pop() == _loc4_.§4!Z§)
                                                                                                                     {
                                                                                                                        if(!(_loc9_ && param1))
                                                                                                                        {
                                                                                                                           if(_loc8_)
                                                                                                                           {
                                                                                                                              _loc4_.§4!Z§ = param1.§@!d§.next;
                                                                                                                              addr216:
                                                                                                                              if(!(_loc9_ && param1))
                                                                                                                              {
                                                                                                                                 if(!_loc9_)
                                                                                                                                 {
                                                                                                                                    addr157:
                                                                                                                                    §§push(param1.§@!d§);
                                                                                                                                    if(_loc8_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       if(_loc8_)
                                                                                                                                       {
                                                                                                                                          addr167:
                                                                                                                                          §§pop().§9!b§ = null;
                                                                                                                                          if(!_loc9_)
                                                                                                                                          {
                                                                                                                                             if(_loc8_)
                                                                                                                                             {
                                                                                                                                                if(_loc8_ || this)
                                                                                                                                                {
                                                                                                                                                   addr128:
                                                                                                                                                   §§push(param1.§@!d§);
                                                                                                                                                   if(!_loc9_)
                                                                                                                                                   {
                                                                                                                                                      §§push(null);
                                                                                                                                                      if(_loc8_)
                                                                                                                                                      {
                                                                                                                                                         §§pop().next = §§pop();
                                                                                                                                                         if(_loc8_)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc9_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc9_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  b2Joint.§5f§(param1,null);
                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc8_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc8_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc8_ || _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              if(false)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr128);
                                                                                                                                                                              }
                                                                                                                                                                              var _loc6_:*;
                                                                                                                                                                              §§push((_loc6_ = this).§"F§);
                                                                                                                                                                              if(!(_loc9_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() - 1);
                                                                                                                                                                              }
                                                                                                                                                                              var _loc7_:* = §§pop();
                                                                                                                                                                              if(_loc8_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc6_.§"F§ = _loc7_;
                                                                                                                                                                              }
                                                                                                                                                                              if(_loc8_ || _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc2_ == false)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr456:
                                                                                                                                                                                    _loc5_ = _loc4_.§9'§();
                                                                                                                                                                                    addr497:
                                                                                                                                                                                    if(_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc5_.§-!3§ == _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc8_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc5_.§;%§.§<t§();
                                                                                                                                                                                             if(_loc8_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr499);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       _loc5_ = _loc5_.next;
                                                                                                                                                                                       §§goto(addr497);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 addr499:
                                                                                                                                                                                 return;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr456);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr397);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr353);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr216);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr456);
                                                                                                                                                                  addr153:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr391);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr302);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr456);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr167);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr157);
                                                                                                                                                }
                                                                                                                                                §§goto(addr238);
                                                                                                                                             }
                                                                                                                                             §§goto(addr269);
                                                                                                                                          }
                                                                                                                                          §§goto(addr456);
                                                                                                                                       }
                                                                                                                                       §§goto(addr238);
                                                                                                                                    }
                                                                                                                                    §§goto(addr183);
                                                                                                                                 }
                                                                                                                                 §§goto(addr332);
                                                                                                                              }
                                                                                                                              §§goto(addr293);
                                                                                                                           }
                                                                                                                           §§goto(addr312);
                                                                                                                        }
                                                                                                                        §§goto(addr216);
                                                                                                                     }
                                                                                                                     §§goto(addr157);
                                                                                                                  }
                                                                                                                  §§goto(addr312);
                                                                                                               }
                                                                                                               §§goto(addr293);
                                                                                                            }
                                                                                                            §§goto(addr302);
                                                                                                         }
                                                                                                         §§goto(addr368);
                                                                                                      }
                                                                                                      §§goto(addr390);
                                                                                                   }
                                                                                                   §§goto(addr387);
                                                                                                }
                                                                                                §§goto(addr183);
                                                                                             }
                                                                                             §§goto(addr238);
                                                                                          }
                                                                                          §§goto(addr403);
                                                                                       }
                                                                                       §§goto(addr302);
                                                                                    }
                                                                                    §§goto(addr396);
                                                                                 }
                                                                                 §§goto(addr403);
                                                                              }
                                                                              §§goto(addr293);
                                                                           }
                                                                           §§goto(addr331);
                                                                        }
                                                                        §§goto(addr353);
                                                                     }
                                                                     §§goto(addr372);
                                                                  }
                                                                  §§goto(addr390);
                                                               }
                                                               §§goto(addr420);
                                                            }
                                                         }
                                                         §§goto(addr353);
                                                      }
                                                      §§goto(addr396);
                                                   }
                                                   §§goto(addr403);
                                                }
                                                §§goto(addr416);
                                             }
                                          }
                                          §§goto(addr390);
                                       }
                                       §§goto(addr372);
                                    }
                                    §§goto(addr456);
                                 }
                                 §§goto(addr354);
                              }
                              §§goto(addr153);
                           }
                        }
                     }
                     §§goto(addr86);
                  }
               }
               §§goto(addr52);
            }
            §§goto(addr83);
         }
         §§goto(addr75);
      }
      
      public function §,s§(param1:b2Controller) : b2Controller
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            param1.§0!>§ = this.§9"&§;
            if(_loc4_)
            {
               param1.§0!^§ = null;
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     this.§9"&§ = param1;
                     loop2:
                     while(true)
                     {
                        param1.m_world = this;
                        if(!_loc5_)
                        {
                           if(_loc5_)
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
                                 §§push((_loc2_ = this).§,!l§);
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc3_:* = §§pop();
                              }
                              continue loop1;
                              if(!_loc5_)
                              {
                                 _loc2_.§,!l§ = _loc3_;
                              }
                              break loop2;
                           }
                        }
                        break;
                     }
                  }
               }
            }
            return param1;
         }
         §§goto(addr29);
      }
      
      public function §@!i§(param1:b2Controller) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            §§push(param1.§0!^§);
            if(!(_loc4_ && _loc2_))
            {
               if(§§pop())
               {
                  addr100:
                  while(true)
                  {
                     §§push(param1.§0!^§);
                     addr102:
                     while(true)
                     {
                        §§pop().§0!>§ = param1.§0!>§;
                        addr105:
                        while(true)
                        {
                        }
                     }
                  }
                  addr100:
               }
               while(true)
               {
                  §§push(param1.§0!>§);
                  if(_loc5_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           if(!(_loc4_ && _loc3_))
                           {
                              addr84:
                              param1.§0!>§.§0!^§ = param1.§0!^§;
                              if(_loc5_)
                              {
                                 addr25:
                                 if(this.§9"&§ == param1)
                                 {
                                    if(!(_loc4_ && this))
                                    {
                                       this.§9"&§ = param1.§0!>§;
                                       if(_loc4_)
                                       {
                                       }
                                       break;
                                    }
                                    if(!(_loc4_ && this))
                                    {
                                       if(false)
                                       {
                                          continue;
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr105);
                                    }
                                 }
                                 var _loc2_:*;
                                 §§push((_loc2_ = this).§,!l§);
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 var _loc3_:* = §§pop();
                                 if(_loc5_ || _loc2_)
                                 {
                                    _loc2_.§,!l§ = _loc3_;
                                 }
                                 break;
                              }
                              break;
                           }
                           §§goto(addr100);
                           §§goto(addr105);
                        }
                        break;
                     }
                     §§goto(addr25);
                  }
                  §§goto(addr84);
               }
               return;
            }
            §§goto(addr102);
         }
         §§goto(addr100);
      }
      
      public function §1!v§(param1:b2Controller) : b2Controller
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            if(param1.m_world == this)
            {
               while(true)
               {
                  param1.§0!>§ = this.§9"&§;
                  if(!(_loc5_ && _loc3_))
                  {
                     param1.§0!^§ = null;
                     if(_loc4_ || param1)
                     {
                        loop1:
                        while(true)
                        {
                           §§push(this.§9"&§);
                           if(_loc4_ || param1)
                           {
                              if(§§pop())
                              {
                                 if(_loc4_)
                                 {
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    if(!(_loc4_ || _loc3_))
                                    {
                                       §§goto(addr105);
                                    }
                                    addr73:
                                    this.§9"&§.§0!^§ = param1;
                                 }
                                 while(true)
                                 {
                                 }
                                 addr75:
                              }
                              while(true)
                              {
                                 this.§9"&§ = param1;
                                 if(_loc5_ && this)
                                 {
                                    break;
                                 }
                                 if(!_loc5_)
                                 {
                                    if(true)
                                    {
                                       var _loc2_:*;
                                       §§push((_loc2_ = this).§,!l§);
                                       if(_loc4_)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc3_:* = §§pop();
                                    }
                                    else
                                    {
                                       addr140:
                                    }
                                    continue loop1;
                                    if(!_loc5_)
                                    {
                                       _loc2_.§,!l§ = _loc3_;
                                    }
                                    if(!_loc5_)
                                    {
                                       break;
                                    }
                                    return param1;
                                 }
                                 §§goto(addr75);
                              }
                              addr137:
                              param1.m_world = this;
                              §§goto(addr140);
                           }
                           §§goto(addr73);
                        }
                        continue;
                     }
                     §§goto(addr140);
                  }
                  §§goto(addr137);
               }
            }
            addr105:
            throw new Error("Controller can only be a member of one world");
         }
         §§goto(addr137);
      }
      
      public function §!T§(param1:b2Controller) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            param1.§,A§();
         }
         loop0:
         while(true)
         {
            §§push(param1.§0!>§);
            if(_loc4_ || this)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(param1.§0!>§);
                     addr94:
                     while(true)
                     {
                        §§pop().§0!^§ = param1.§0!^§;
                        addr97:
                        while(true)
                        {
                        }
                     }
                  }
                  addr92:
               }
               while(true)
               {
                  §§push(param1.§0!^§);
                  if(!_loc5_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc5_ && _loc2_))
                        {
                           if(_loc4_)
                           {
                              addr77:
                              param1.§0!^§.§0!>§ = param1.§0!>§;
                              loop3:
                              while(true)
                              {
                                 addr19:
                                 addr101:
                                 while(param1 == this.§9"&§)
                                 {
                                    if(_loc4_ || this)
                                    {
                                       if(!_loc4_)
                                       {
                                          continue loop3;
                                          continue;
                                       }
                                       if(_loc4_)
                                       {
                                          this.§9"&§ = param1.§0!>§;
                                          if(!_loc5_)
                                          {
                                             continue loop0;
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr97);
                                       }
                                    }
                                    return;
                                 }
                                 var _loc2_:*;
                                 §§push((_loc2_ = this).§,!l§);
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 var _loc3_:* = §§pop();
                                 if(!_loc5_)
                                 {
                                    _loc2_.§,!l§ = _loc3_;
                                 }
                                 §§goto(addr131);
                              }
                              addr80:
                           }
                           else
                           {
                              §§goto(addr92);
                           }
                           §§goto(addr97);
                        }
                        §§goto(addr80);
                     }
                     §§goto(addr19);
                  }
                  §§goto(addr77);
               }
               continue;
               addr50:
            }
            §§goto(addr94);
         }
      }
      
      public function §[§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §,!p§ = param1;
         }
      }
      
      public function §,!6§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §3Q§ = param1;
         }
      }
      
      public function §9!4§() : int
      {
         return this.§3"'§;
      }
      
      public function §4!l§() : int
      {
         return this.§"F§;
      }
      
      public function §2g§() : int
      {
         return this.§<$§;
      }
      
      public function §^!p§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§<!O§ = param1;
         }
      }
      
      public function §,§() : b2Vec2
      {
         return this.§<!O§;
      }
      
      public function §35§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §4!6§(param1:Number, param2:int, param3:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param3))
         {
            §§push(this.§,[§);
            if(!_loc6_)
            {
               §§push(§§pop() & §+!P§);
            }
            if(§§pop())
            {
               loop29:
               while(true)
               {
                  this.§1C§.§>"+§();
                  loop30:
                  while(true)
                  {
                     addr47:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§,[§);
                        if(!_loc6_)
                        {
                           §§push(§+!P§);
                           if(!(_loc6_ && param3))
                           {
                              §§push(~§§pop());
                           }
                           §§push(§§pop() & §§pop());
                        }
                        §§pop().§,[§ = §§pop();
                        addr64:
                        addr68:
                        while(true)
                        {
                           if(!_loc6_)
                           {
                              if(_loc5_)
                              {
                                 break;
                              }
                              continue loop29;
                           }
                           continue loop30;
                        }
                        continue loop30;
                     }
                  }
               }
               addr76:
            }
            while(true)
            {
               §§push(this);
               §§push(this.§,[§);
               if(!(_loc6_ && param1))
               {
                  §§push(§§pop() | §8"§);
               }
               §§pop().§,[§ = §§pop();
               if(!(_loc6_ && param2))
               {
                  if(true)
                  {
                     break;
                  }
                  §§goto(addr47);
               }
               §§goto(addr64);
               §§goto(addr68);
            }
            var _loc4_:b2TimeStep;
            (_loc4_ = s_timestep2).§`!9§ = param1;
            if(!_loc6_)
            {
               _loc4_.§#!Y§ = param2;
               while(true)
               {
                  _loc4_.§5!6§ = param3;
                  while(true)
                  {
                     §§push(param1);
                     while(true)
                     {
                        §§push(0);
                        while(true)
                        {
                           if(§§pop() <= §§pop())
                           {
                              _loc4_.§4!z§ = 0;
                              loop7:
                              while(true)
                              {
                                 loop8:
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    §§push(this.§-0§);
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop() * param1);
                                    }
                                    §§pop().§-k§ = §§pop();
                                    addr290:
                                    while(true)
                                    {
                                       _loc4_.§?j§ = §,!p§;
                                       while(_loc5_ || this)
                                       {
                                          this.§1C§.§-"%§();
                                          continue loop7;
                                          if(!(_loc6_ && param1))
                                          {
                                             return;
                                          }
                                       }
                                       addr317:
                                       while(true)
                                       {
                                          continue loop8;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr302);
         }
         §§goto(addr76);
      }
      
      public function §&",§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Body = this.§>L§;
         while(_loc1_)
         {
            _loc1_.§-[§.§5!H§();
            if(_loc3_ || _loc1_)
            {
               _loc1_.§#!K§ = 0;
               if(_loc2_ && _loc2_)
               {
                  break;
               }
            }
            _loc1_ = _loc1_.§0!>§;
         }
      }
      
      public function §]"$§() : void
      {
         var _loc23_:Boolean = false;
         var _loc24_:Boolean = true;
         var _loc2_:int = 0;
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§`c§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(_loc24_)
         {
            §§push(this.§#"+§);
            if(!_loc23_)
            {
               if(§§pop() == null)
               {
                  if(!_loc23_)
                  {
                     return;
                  }
                  addr76:
                  §§push(this.§#"+§);
                  if(_loc24_)
                  {
                     §§pop().§0C§.graphics.clear();
                     §§push(this.§#"+§);
                  }
               }
               §§goto(addr76);
            }
            §§push(§§pop().§^!L§());
            if(!(_loc23_ && this))
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
            if(!(_loc23_ && this))
            {
               if(_loc1_ & b2DebugDraw.§2!L§)
               {
                  addr145:
                  _loc3_ = this.§>L§;
                  while(_loc3_)
                  {
                     _loc11_ = _loc3_.m_xf;
                     _loc4_ = _loc3_.GetFixtureList();
                     if(!(_loc23_ && this))
                     {
                        loop15:
                        for(; _loc4_; _loc4_ = _loc4_.§0!>§)
                        {
                           _loc5_ = _loc4_.GetShape();
                           if(!(_loc23_ && _loc2_))
                           {
                              §§push(_loc3_.§3!z§());
                              while(true)
                              {
                                 §§push(false);
                                 loop17:
                                 while(true)
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       §§push(_loc3_.§<!A§());
                                       loop18:
                                       while(true)
                                       {
                                          §§push(b2Body.b2_staticBody);
                                          loop19:
                                          while(§§pop() != §§pop())
                                          {
                                             §§push(_loc3_.§<!A§());
                                             if(_loc23_)
                                             {
                                                continue loop18;
                                             }
                                             §§push(b2Body.b2_kinematicBody);
                                             if(_loc23_)
                                             {
                                                continue;
                                             }
                                             if(§§pop() != §§pop())
                                             {
                                                §§push(_loc3_.IsAwake());
                                                if(_loc23_)
                                                {
                                                   break loop17;
                                                }
                                                §§push(false);
                                                if(!(_loc24_ || this))
                                                {
                                                   continue loop17;
                                                }
                                                if(§§pop() == §§pop())
                                                {
                                                   if(_loc24_)
                                                   {
                                                      if(!(_loc23_ && _loc1_))
                                                      {
                                                         addr244:
                                                         _loc15_.Set(0.6,0.6,0.6);
                                                         this.§,!F§(_loc5_,_loc11_,_loc15_);
                                                         addr249:
                                                         if(!_loc23_)
                                                         {
                                                            if(!_loc24_)
                                                            {
                                                               loop20:
                                                               while(true)
                                                               {
                                                                  if(!(_loc23_ && _loc1_))
                                                                  {
                                                                     if(!_loc24_)
                                                                     {
                                                                        break loop19;
                                                                     }
                                                                     if(_loc23_ && _loc1_)
                                                                     {
                                                                        addr334:
                                                                        _loc15_.Set(0.5,0.5,0.3);
                                                                        break;
                                                                     }
                                                                     this.§,!F§(_loc5_,_loc11_,_loc15_);
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc23_ && _loc2_))
                                                                        {
                                                                           if(!_loc24_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop15;
                                                                        }
                                                                        continue loop20;
                                                                     }
                                                                     continue loop15;
                                                                     addr306:
                                                                  }
                                                                  addr322:
                                                                  this.§,!F§(_loc5_,_loc11_,_loc15_);
                                                                  §§goto(addr306);
                                                               }
                                                               this.§,!F§(_loc5_,_loc11_,_loc15_);
                                                               addr329:
                                                               addr339:
                                                            }
                                                            else
                                                            {
                                                               addr199:
                                                            }
                                                            continue loop15;
                                                         }
                                                         §§goto(addr256);
                                                         addr249:
                                                      }
                                                      §§goto(addr329);
                                                   }
                                                   §§goto(addr249);
                                                }
                                                else
                                                {
                                                   _loc15_.Set(0.9,0.7,0.7);
                                                   this.§,!F§(_loc5_,_loc11_,_loc15_);
                                                   addr207:
                                                   if(!(_loc24_ || _loc2_))
                                                   {
                                                      §§goto(addr207);
                                                   }
                                                   if(!_loc23_)
                                                   {
                                                      if(_loc24_)
                                                      {
                                                         if(true)
                                                         {
                                                            continue loop15;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr249);
                                                      }
                                                      §§goto(addr199);
                                                   }
                                                }
                                                §§goto(addr249);
                                             }
                                             §§goto(addr278);
                                          }
                                          if(!_loc23_)
                                          {
                                             _loc15_.Set(0.5,0.9,0.5);
                                             §§goto(addr322);
                                          }
                                          else
                                          {
                                             §§goto(addr339);
                                          }
                                       }
                                    }
                                    §§goto(addr334);
                                 }
                              }
                           }
                           §§goto(addr244);
                        }
                     }
                     _loc3_ = _loc3_.§0!>§;
                  }
               }
               §§push(_loc1_);
               if(_loc24_)
               {
                  §§push(b2DebugDraw.§ !5§);
                  if(_loc24_)
                  {
                     §§push(§§pop() & §§pop());
                     if(_loc24_ || _loc1_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc23_ && _loc3_))
                           {
                              _loc6_ = this.§4!Z§;
                              if(!_loc23_)
                              {
                                 loop0:
                                 while(_loc6_)
                                 {
                                    this.§;;§(_loc6_);
                                    if(!(_loc24_ || this))
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       _loc6_ = _loc6_.§0!>§;
                                       continue loop0;
                                    }
                                 }
                                 addr409:
                                 §§push(_loc1_);
                                 if(_loc24_ || _loc2_)
                                 {
                                    addr417:
                                    §§push(b2DebugDraw.§!!a§);
                                    if(_loc24_)
                                    {
                                       addr421:
                                       §§push(§§pop() & §§pop());
                                       if(!(_loc23_ && _loc1_))
                                       {
                                          addr429:
                                          if(§§pop())
                                          {
                                             if(_loc24_ || _loc1_)
                                             {
                                                addr437:
                                                _loc16_ = this.§9"&§;
                                                if(!(_loc23_ && _loc2_))
                                                {
                                                   loop2:
                                                   while(_loc16_)
                                                   {
                                                      _loc16_.§>"&§(this.§#"+§);
                                                      if(_loc23_ && _loc2_)
                                                      {
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         _loc16_ = _loc16_.§0!>§;
                                                         continue loop2;
                                                      }
                                                   }
                                                   addr467:
                                                   §§push(_loc1_);
                                                   if(!_loc23_)
                                                   {
                                                      §§push(b2DebugDraw.§-!2§);
                                                      if(_loc24_)
                                                      {
                                                         addr474:
                                                         §§push(§§pop() & §§pop());
                                                         if(!_loc23_)
                                                         {
                                                            addr477:
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc23_ && _loc2_))
                                                               {
                                                                  addr485:
                                                                  _loc15_.Set(0.3,0.9,0.9);
                                                                  if(_loc24_)
                                                                  {
                                                                     §§push(this.§1C§);
                                                                     if(_loc24_ || _loc2_)
                                                                     {
                                                                        _loc17_ = §§pop().§]J§;
                                                                        if(!_loc23_)
                                                                        {
                                                                           while(_loc17_)
                                                                           {
                                                                              _loc18_ = _loc17_.§&R§();
                                                                              _loc19_ = _loc17_.§@!,§();
                                                                              _loc20_ = _loc18_.§#!,§().§`!8§();
                                                                              _loc21_ = _loc19_.§#!,§().§`!8§();
                                                                              if(!_loc23_)
                                                                              {
                                                                                 this.§#"+§.§ >§(_loc20_,_loc21_,_loc15_);
                                                                              }
                                                                              _loc17_ = _loc17_.§>X§();
                                                                           }
                                                                           addr540:
                                                                           §§push(_loc1_);
                                                                           if(!_loc23_)
                                                                           {
                                                                              addr543:
                                                                              §§push(b2DebugDraw.§<v§);
                                                                              if(_loc24_ || _loc1_)
                                                                              {
                                                                                 §§goto(addr711);
                                                                              }
                                                                              addr711:
                                                                              §§push(§§pop() & §§pop());
                                                                              if(!(_loc23_ && _loc3_))
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!(_loc23_ && _loc2_))
                                                                                    {
                                                                                       addr570:
                                                                                       _loc7_ = this.§1C§.§9!V§;
                                                                                       _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
                                                                                       _loc3_ = this.§>L§;
                                                                                       if(!_loc23_)
                                                                                       {
                                                                                          while(_loc3_)
                                                                                          {
                                                                                             if(_loc3_.§3!z§() == false)
                                                                                             {
                                                                                                if(!_loc24_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                _loc4_ = _loc3_.GetFixtureList();
                                                                                                if(!(_loc23_ && _loc3_))
                                                                                                {
                                                                                                   loop5:
                                                                                                   for(; _loc4_; _loc4_ = _loc4_.§>X§())
                                                                                                   {
                                                                                                      _loc22_ = _loc7_.§25§(_loc4_.§1! §);
                                                                                                      if(_loc24_ || _loc1_)
                                                                                                      {
                                                                                                         _loc14_[0].Set(_loc22_.§?J§.x,_loc22_.§?J§.y);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc14_[1].Set(_loc22_.§1^§.x,_loc22_.§?J§.y);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc14_[2].Set(_loc22_.§1^§.x,_loc22_.§1^§.y);
                                                                                                               addr669:
                                                                                                               while(!_loc23_)
                                                                                                               {
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr694:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         loop10:
                                                                                                         do
                                                                                                         {
                                                                                                            _loc14_[3].Set(_loc22_.§?J§.x,_loc22_.§1^§.y);
                                                                                                            while(!_loc23_)
                                                                                                            {
                                                                                                               if(_loc24_)
                                                                                                               {
                                                                                                                  this.§#"+§.§;!`§(_loc14_,4,_loc15_);
                                                                                                                  if(_loc24_ || _loc2_)
                                                                                                                  {
                                                                                                                     continue loop10;
                                                                                                                  }
                                                                                                                  continue;
                                                                                                               }
                                                                                                               §§goto(addr694);
                                                                                                            }
                                                                                                            §§goto(addr669);
                                                                                                         }
                                                                                                         while(false);
                                                                                                         
                                                                                                         continue loop5;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             _loc3_ = _loc3_.§>X§();
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr712);
                                                                                 }
                                                                                 addr708:
                                                                                 §§push(_loc1_);
                                                                                 §§push(b2DebugDraw.§"!k§);
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 §§goto(addr712);
                                                                              }
                                                                              addr712:
                                                                              _loc3_ = this.§>L§;
                                                                              if(!_loc23_)
                                                                              {
                                                                                 while(_loc3_)
                                                                                 {
                                                                                    (_loc11_ = §;S§).R = _loc3_.m_xf.R;
                                                                                    if(!_loc23_)
                                                                                    {
                                                                                       _loc11_.position = _loc3_.§#!0§();
                                                                                       if(!_loc23_)
                                                                                       {
                                                                                          this.§#"+§.§@x§(_loc11_);
                                                                                       }
                                                                                    }
                                                                                    _loc3_ = _loc3_.§0!>§;
                                                                                 }
                                                                              }
                                                                              return;
                                                                              §§push(§§pop() & §§pop());
                                                                           }
                                                                           §§goto(addr708);
                                                                        }
                                                                        §§goto(addr540);
                                                                     }
                                                                     §§goto(addr570);
                                                                  }
                                                                  §§goto(addr712);
                                                               }
                                                               §§goto(addr570);
                                                            }
                                                            §§goto(addr540);
                                                         }
                                                      }
                                                      §§goto(addr711);
                                                   }
                                                   §§goto(addr708);
                                                }
                                                §§goto(addr461);
                                             }
                                             §§goto(addr485);
                                          }
                                          §§goto(addr467);
                                       }
                                       §§goto(addr477);
                                    }
                                    §§goto(addr474);
                                 }
                                 §§goto(addr543);
                              }
                              §§goto(addr403);
                           }
                           §§goto(addr437);
                        }
                        §§goto(addr409);
                     }
                     §§goto(addr429);
                  }
                  §§goto(addr421);
               }
               §§goto(addr417);
            }
            §§goto(addr145);
         }
         §§goto(addr76);
      }
      
      public function §@Z§(param1:Function, param2:b2AABB) : void
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
                     if(_loc4_)
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
                                    while(true)
                                    {
                                       §§pop().§§slot[4] = function(param1:*):Boolean
                                       {
                                          return callback(broadPhase.GetUserData(param1));
                                       };
                                       loop10:
                                       while(true)
                                       {
                                          §§push(§§newactivation());
                                          loop11:
                                          while(true)
                                          {
                                             §§pop().§§slot[3] = this.§1C§.§9!V§;
                                             addr93:
                                             while(true)
                                             {
                                                if(_loc5_)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      if(!(_loc4_ && param1))
                                                      {
                                                         continue loop11;
                                                      }
                                                      continue loop6;
                                                   }
                                                   continue loop8;
                                                }
                                                continue loop10;
                                             }
                                             continue loop3;
                                          }
                                       }
                                    }
                                 }
                              }
                              continue loop5;
                           }
                        }
                        addr61:
                        if(_loc5_ || param2)
                        {
                           if(_loc5_ || param1)
                           {
                              return;
                           }
                           continue loop2;
                        }
                     }
                  }
                  continue loop1;
               }
            }
            if(!(_loc5_ || param1))
            {
               continue;
            }
            §§pop().§§slot[3].§ var§(WorldQueryWrapper,aabb);
            if(_loc5_ || param2)
            {
               §§goto(addr61);
            }
            §§goto(addr93);
         }
      }
      
      public function §;q§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
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
                  while(true)
                  {
                     §§push(null);
                     if(_loc5_)
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
                           while(_loc6_)
                           {
                              §§push(§§newactivation());
                              loop7:
                              while(true)
                              {
                                 §§pop().§§slot[2] = param2;
                                 addr193:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    continue loop7;
                                 }
                              }
                           }
                           continue loop2;
                        }
                        if(!(_loc6_ || param3))
                        {
                           continue;
                        }
                        §§goto(addr164);
                        §§push(§§newactivation());
                     }
                     while(!(_loc5_ && param1))
                     {
                        §§pop().§§slot[3] = new b2Transform();
                        §§goto(addr161);
                        §§goto(addr60);
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §"!z§(param1:Function, param2:b2Vec2) : void
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
                     while(true)
                     {
                        §§push(§§newactivation());
                        addr208:
                        while(true)
                        {
                           §§pop().§§slot[1] = param1;
                           addr210:
                           while(true)
                           {
                              §§push(§§newactivation());
                              addr203:
                              while(true)
                              {
                                 §§pop().§§slot[2] = param2;
                                 addr205:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    continue loop3;
                                 }
                              }
                           }
                        }
                        addr143:
                        if(_loc4_ || param2)
                        {
                           if(_loc4_)
                           {
                              §§push(§§newactivation());
                              loop18:
                              while(true)
                              {
                                 if(_loc4_)
                                 {
                                    addr54:
                                    if(_loc4_ || _loc3_)
                                    {
                                       if(!_loc4_)
                                       {
                                          break;
                                       }
                                       addr63:
                                       §§push(§§pop().§§slot[5]);
                                       if(!(_loc5_ && param1))
                                       {
                                          §§push(§§pop().§1^§);
                                          §§push(p.x);
                                          if(!(_loc5_ && param2))
                                          {
                                             §§push(b2Settings.b2_linearSlop);
                                             if(_loc4_)
                                             {
                                                addr87:
                                                §§push(§§pop() + §§pop());
                                                §§push(p.y);
                                                if(!(_loc5_ && this))
                                                {
                                                   addr97:
                                                   §§push(§§pop() + b2Settings.b2_linearSlop);
                                                }
                                                §§pop().Set(§§pop(),§§pop());
                                                while(_loc4_)
                                                {
                                                   continue loop18;
                                                   §§pop().§§slot[3].§ var§(WorldQueryWrapper,aabb);
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      addr42:
                                                      if(_loc4_ || param2)
                                                      {
                                                         return;
                                                      }
                                                      loop17:
                                                      while(true)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               §§goto(addr143);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr210);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(§§newactivation());
                                                               addr116:
                                                               while(!_loc5_)
                                                               {
                                                                  §§push(§§pop().§§slot[5]);
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().§?J§);
                                                                     §§push(p.x);
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§push(b2Settings.b2_linearSlop);
                                                                        if(_loc4_)
                                                                        {
                                                                           addr130:
                                                                           §§push(§§pop() - §§pop());
                                                                           §§push(p.y);
                                                                           if(_loc4_)
                                                                           {
                                                                              addr135:
                                                                              §§push(§§pop() - b2Settings.b2_linearSlop);
                                                                           }
                                                                           §§pop().Set(§§pop(),§§pop());
                                                                           continue loop17;
                                                                        }
                                                                        §§goto(addr135);
                                                                     }
                                                                     §§goto(addr130);
                                                                     §§goto(addr63);
                                                                  }
                                                               }
                                                            }
                                                            addr170:
                                                         }
                                                         §§goto(addr203);
                                                      }
                                                      continue loop2;
                                                   }
                                                }
                                                loop12:
                                                while(!_loc5_)
                                                {
                                                   §§push(§§newactivation());
                                                   while(true)
                                                   {
                                                      if(!(_loc5_ && param1))
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            break;
                                                         }
                                                         if(_loc4_)
                                                         {
                                                            §§pop().§§slot[5] = new b2AABB();
                                                            §§goto(addr170);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr208);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§pop().§§slot[3] = this.§1C§.§9!V§;
                                                            continue loop12;
                                                         }
                                                         addr173:
                                                      }
                                                      §§goto(addr54);
                                                   }
                                                   continue loop3;
                                                }
                                                while(!(_loc5_ && _loc3_))
                                                {
                                                   §§goto(addr173);
                                                   §§push(§§newactivation());
                                                }
                                                §§goto(addr205);
                                                addr193:
                                             }
                                             §§goto(addr97);
                                          }
                                          §§goto(addr87);
                                       }
                                       §§goto(addr119);
                                    }
                                    §§goto(addr155);
                                 }
                                 §§goto(addr116);
                              }
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
                  for(; _loc6_; while(_loc6_ || param2)
                  {
                     §§goto(addr187);
                  })
                  {
                     §§push(null);
                     while(!(_loc5_ && param3))
                     {
                        §§pop().§§slot[5] = §§pop();
                        while(true)
                        {
                           §§push(§§newactivation());
                           continue loop3;
                        }
                        §§push(null);
                        if(_loc5_ && this)
                        {
                           continue;
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
                              loop9:
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 loop10:
                                 for(; !_loc5_; while(_loc6_ || param3)
                                 {
                                    §§pop().§§slot[3] = param3;
                                    §§goto(addr165);
                                 })
                                 {
                                    §§pop().§§slot[2] = param2;
                                    while(true)
                                    {
                                       §§push(§§newactivation());
                                       continue loop10;
                                       addr76:
                                       if(!(_loc6_ || param1))
                                       {
                                          continue;
                                       }
                                       if(!(_loc6_ || param2))
                                       {
                                          continue loop2;
                                       }
                                       addr90:
                                       §§push(§§newactivation());
                                       if(!(_loc5_ && param2))
                                       {
                                          addr35:
                                          if(!(_loc5_ && param3))
                                          {
                                             §§pop().§§slot[4].RayCast(RayCastWrapper,input);
                                             if(_loc5_)
                                             {
                                                while(true)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         §§goto(addr76);
                                                      }
                                                      loop17:
                                                      while(true)
                                                      {
                                                         if(_loc6_ || param3)
                                                         {
                                                            continue loop7;
                                                         }
                                                         loop15:
                                                         while(!_loc5_)
                                                         {
                                                            §§push(§§newactivation());
                                                            loop16:
                                                            while(!_loc5_)
                                                            {
                                                               §§pop().§§slot[4] = this.§1C§.§9!V§;
                                                               continue loop17;
                                                               while(!(_loc5_ && this))
                                                               {
                                                                  §§pop().§§slot[5] = new b2RayCastOutput();
                                                                  while(_loc6_ || param1)
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     while(true)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                        continue loop10;
                                                                        §§goto(addr90);
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     break loop16;
                                                                     §§goto(addr114);
                                                                  }
                                                                  addr114:
                                                                  §§goto(addr35);
                                                               }
                                                            }
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
                                                                  return param1.§]!4§;
                                                               };
                                                               continue loop15;
                                                            }
                                                         }
                                                         continue loop9;
                                                      }
                                                      continue loop7;
                                                   }
                                                   §§goto(addr114);
                                                }
                                                continue loop2;
                                                addr72:
                                             }
                                             if(_loc6_)
                                             {
                                                return;
                                             }
                                             §§goto(addr222);
                                          }
                                          §§goto(addr93);
                                       }
                                       §§goto(addr55);
                                    }
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public function §6g§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
                     while(true)
                     {
                        §§push(§§newactivation());
                        continue loop0;
                        addr57:
                        if(!(_loc4_ && this))
                        {
                           addr74:
                           §§push(§§newactivation());
                           if(_loc4_ && _loc3_)
                           {
                              loop9:
                              while(true)
                              {
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§pop().§§slot[4] = function(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number):Number
                                    {
                                       result = param1;
                                       return param4;
                                    };
                                    loop10:
                                    while(!(_loc4_ && _loc3_))
                                    {
                                       this.RayCast(RayCastOneWrapper,point1,point2);
                                       if(!_loc5_)
                                       {
                                          continue;
                                       }
                                       if(!_loc4_)
                                       {
                                          §§goto(addr57);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(§§newactivation());
                                             addr97:
                                             while(true)
                                             {
                                                §§pop().§§slot[2] = param2;
                                                break loop10;
                                             }
                                          }
                                          addr118:
                                       }
                                    }
                                    while(_loc5_ || param1)
                                    {
                                       §§push(§§newactivation());
                                       continue loop9;
                                    }
                                    continue loop2;
                                 }
                                 §§goto(addr97);
                              }
                              continue;
                           }
                           if(!_loc4_)
                           {
                              continue loop3;
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
      
      public function §=!i§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
                        for(; !_loc5_; loop7:
                        while(_loc4_ || this)
                        {
                           §§pop().§§slot[2] = param2;
                           continue loop4;
                           loop9:
                           while(true)
                           {
                              if(_loc4_ || _loc3_)
                              {
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 §§pop().§§slot[4] = function(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number):Number
                                 {
                                    result[result.length] = param1;
                                    return 1;
                                 };
                                 loop10:
                                 while(!_loc5_)
                                 {
                                    §§push(§§newactivation());
                                    do
                                    {
                                       §§pop().§§slot[3] = new Vector.<b2Fixture>();
                                       §§push(§§newactivation());
                                       while(true)
                                       {
                                          if(!(_loc4_ || this))
                                          {
                                             continue loop10;
                                          }
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                          this.RayCast(RayCastAllWrapper,point1,point2);
                                          if(_loc5_ && this)
                                          {
                                             continue;
                                          }
                                          §§goto(addr47);
                                       }
                                       §§goto(addr125);
                                       continue loop10;
                                    }
                                    while(_loc5_);
                                    
                                    if(!_loc5_)
                                    {
                                       return §§pop().§§slot[3];
                                    }
                                    continue loop9;
                                 }
                                 continue loop4;
                              }
                              continue loop7;
                           }
                           continue loop0;
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
                        while(true)
                        {
                           if(_loc5_ && param2)
                           {
                              continue loop4;
                           }
                           if(!(_loc4_ || _loc3_))
                           {
                              break;
                           }
                           §§goto(addr78);
                           §§push(§§newactivation());
                        }
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §`K§() : b2Body
      {
         return this.§>L§;
      }
      
      public function GetJointList() : b2Joint
      {
         return this.§4!Z§;
      }
      
      public function §9'§() : b2Contact
      {
         return this.§]J§;
      }
      
      public function §6"+§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§,[§);
         if(!(_loc1_ && this))
         {
            §§push(§8"§);
            if(!_loc1_)
            {
               addr50:
               §§push(§§pop() & §§pop());
               §§push(0);
            }
            return §§pop() > §§pop();
         }
         §§goto(addr50);
      }
      
      b2internal function §=^§(param1:b2TimeStep) : void
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:* = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§9"&§;
         while(_loc3_)
         {
            _loc3_.§4!6§(param1);
            if(_loc18_)
            {
               break;
            }
            _loc3_ = _loc3_.§0!>§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§ !7§).§",§(this.§3"'§,this.§<$§,this.§"F§,null,this.§1C§.§&6§,this.§?!?§);
         _loc2_ = this.§>L§;
         if(_loc17_ || _loc3_)
         {
            while(_loc2_)
            {
               _loc2_.§,[§ &= ~b2Body.§24§;
               if(_loc18_)
               {
                  break;
               }
               _loc2_ = _loc2_.§0!>§;
            }
         }
         var _loc5_:b2Contact = this.§]J§;
         if(_loc17_)
         {
            loop2:
            while(_loc5_)
            {
               _loc5_.§,[§ &= ~b2Contact.§24§;
               if(_loc18_)
               {
                  break;
               }
               while(true)
               {
                  _loc5_ = _loc5_.§0!>§;
                  continue loop2;
               }
            }
            var _loc6_:b2Joint = this.§4!Z§;
            if(!_loc18_)
            {
               while(_loc6_)
               {
                  _loc6_.§><§ = false;
                  if(_loc18_)
                  {
                     break;
                  }
                  _loc6_ = _loc6_.§0!>§;
               }
            }
            §§push(this.§3"'§);
            if(_loc17_)
            {
               §§push(int(§§pop()));
            }
            var _loc7_:* = §§pop();
            var _loc8_:Vector.<b2Body> = this.§]8§;
            var _loc9_:b2Body = this.§>L§;
            if(_loc17_)
            {
               loop4:
               while(true)
               {
                  if(!_loc9_)
                  {
                     if(_loc17_ || param1)
                     {
                        addr715:
                        §§push(0);
                        if(_loc17_)
                        {
                           addr718:
                           _loc11_ = §§pop();
                           if(!_loc18_)
                           {
                              addr739:
                              while(true)
                              {
                              }
                              addr739:
                           }
                           addr743:
                           _loc2_ = this.§>L§;
                           if(_loc17_ || _loc2_)
                           {
                              addr821:
                              if(_loc2_)
                              {
                                 §§push(_loc2_.IsAwake());
                                 if(_loc17_ || param1)
                                 {
                                    §§push(false);
                                    if(_loc17_)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(_loc17_ || param1)
                                       {
                                          addr776:
                                          §§push(§§pop());
                                          if(_loc17_)
                                          {
                                             addr779:
                                             if(!§§pop())
                                             {
                                                if(!_loc18_)
                                                {
                                                   §§pop();
                                                   if(_loc17_)
                                                   {
                                                      §§push(_loc2_.§3!z§());
                                                      if(_loc18_ && _loc3_)
                                                      {
                                                      }
                                                      §§goto(addr796);
                                                   }
                                                   §§goto(addr807);
                                                }
                                                §§push(false);
                                             }
                                             §§goto(addr796);
                                          }
                                          §§push(§§pop() == §§pop());
                                       }
                                       addr796:
                                       if(§§pop())
                                       {
                                          if(_loc17_)
                                          {
                                             addr817:
                                             _loc2_ = _loc2_.§0!>§;
                                             §§goto(addr821);
                                          }
                                          addr807:
                                          §§goto(addr817);
                                       }
                                       if(_loc2_.§<!A§() == b2Body.b2_staticBody)
                                       {
                                          if(_loc17_)
                                          {
                                             §§goto(addr807);
                                          }
                                          addr840:
                                          this.§1C§.§>"+§();
                                          §§goto(addr843);
                                       }
                                       _loc2_.§[!r§();
                                       if(!(_loc18_ && this))
                                       {
                                          §§goto(addr817);
                                       }
                                       addr843:
                                       return;
                                    }
                                    §§goto(addr779);
                                 }
                                 §§goto(addr776);
                              }
                              if(_loc18_ && param1)
                              {
                              }
                              §§goto(addr840);
                           }
                           §§goto(addr807);
                           addr729:
                        }
                        if(§§pop() < _loc8_.length)
                        {
                           if(!_loc8_[_loc11_])
                           {
                              if(!_loc17_)
                              {
                                 §§goto(addr739);
                              }
                              §§goto(addr729);
                           }
                           _loc8_[_loc11_] = null;
                           if(!_loc18_)
                           {
                              while(true)
                              {
                                 _loc11_++;
                                 if(!_loc18_)
                                 {
                                    §§goto(addr739);
                                 }
                              }
                              addr736:
                           }
                        }
                     }
                     §§goto(addr743);
                  }
                  else
                  {
                     §§push(_loc9_.§,[§);
                     loop5:
                     while(true)
                     {
                        §§push(b2Body.§24§);
                        addr243:
                        while(true)
                        {
                           §§push(§§pop() & §§pop());
                           if(!(_loc18_ && _loc3_))
                           {
                              if(§§pop())
                              {
                                 if(_loc17_ || param1)
                                 {
                                    continue loop4;
                                 }
                              }
                              else
                              {
                                 §§push(_loc9_.IsAwake());
                                 if(_loc17_ || _loc2_)
                                 {
                                    §§push(false);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(_loc17_ || this)
                                       {
                                          §§push(§§pop());
                                          loop8:
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
                                                      addr165:
                                                      while(true)
                                                      {
                                                         §§push(_loc9_.§3!z§());
                                                         if(!_loc17_)
                                                         {
                                                            break;
                                                         }
                                                         if(_loc17_ || _loc2_)
                                                         {
                                                            §§push(false);
                                                            if(_loc17_)
                                                            {
                                                               continue loop7;
                                                            }
                                                            continue loop8;
                                                         }
                                                         continue loop13;
                                                      }
                                                   }
                                                }
                                                addr280:
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                }
                                                addr188:
                                             }
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   continue loop5;
                                                }
                                                if(_loc17_ || _loc2_)
                                                {
                                                   break;
                                                }
                                                §§goto(addr715);
                                             }
                                             continue loop4;
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr280);
                              }
                              §§goto(addr743);
                           }
                        }
                     }
                  }
                  §§goto(addr718);
               }
            }
            §§goto(addr736);
         }
         §§goto(addr114);
      }
      
      b2internal function §+Q§(param1:b2TimeStep) : void
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
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:b2JointEdge = null;
         var _loc22_:b2Body = null;
         var _loc9_:b2Island;
         (_loc9_ = this.§ !7§).§",§(this.§3"'§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§1C§.§&6§,this.§?!?§);
         var _loc10_:Vector.<b2Body> = §;w§;
         _loc2_ = this.§>L§;
         while(_loc2_)
         {
            _loc2_.§,[§ &= ~b2Body.§24§;
            if(!_loc23_)
            {
               break;
            }
            _loc2_.m_sweep.§+%§ = 0;
            if(_loc24_ && param1)
            {
               break;
            }
            _loc2_ = _loc2_.§0!>§;
         }
         _loc11_ = this.§]J§;
         if(!(_loc24_ && this))
         {
            while(_loc11_)
            {
               §§push(_loc11_);
               §§push(_loc11_.§,[§);
               §§push(b2Contact.§,"-§ | b2Contact.§24§);
               if(_loc23_)
               {
                  §§push(~§§pop());
               }
               §§pop().§,[§ = §§pop() & §§pop();
               if(!_loc24_)
               {
                  _loc11_.§!S§ = 1;
                  if(!_loc23_)
                  {
                     break;
                  }
               }
               _loc11_ = _loc11_.§0!>§;
            }
         }
         _loc8_ = this.§4!Z§;
         if(!(_loc24_ && param1))
         {
            loop2:
            while(_loc8_)
            {
               _loc8_.§><§ = false;
               if(!_loc23_)
               {
                  break;
               }
               while(true)
               {
                  _loc8_ = _loc8_.§0!>§;
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
               _loc11_ = this.§]J§;
               if(!_loc24_)
               {
                  loop4:
                  while(true)
                  {
                     if(!_loc11_)
                     {
                        if(_loc23_ || _loc2_)
                        {
                           addr954:
                           §§push(_loc12_ == null);
                           if(!(_loc24_ && _loc3_))
                           {
                              addr964:
                              if(!§§pop())
                              {
                                 if(!_loc24_)
                                 {
                                    §§pop();
                                    if(!_loc24_)
                                    {
                                       addr979:
                                       if(1 - 100 * Number.MIN_VALUE >= _loc13_)
                                       {
                                          addr983:
                                          _loc3_ = _loc12_.§]R§;
                                          _loc4_ = _loc12_.§7!&§;
                                          _loc5_ = _loc3_.m_body;
                                          _loc6_ = _loc4_.m_body;
                                          if(_loc23_ || _loc3_)
                                          {
                                             §"E§.Set(_loc5_.m_sweep);
                                             §"1§.Set(_loc6_.m_sweep);
                                             _loc5_.§#!§(_loc13_);
                                             addr1185:
                                             if(!_loc24_)
                                             {
                                                _loc6_.§#!§(_loc13_);
                                                if(!(_loc24_ && _loc3_))
                                                {
                                                   if(_loc23_)
                                                   {
                                                      _loc12_.§3v§(this.§1C§.§&6§);
                                                      _loc12_.§,[§ &= ~b2Contact.§,"-§;
                                                      addr1137:
                                                      if(_loc23_ || _loc2_)
                                                      {
                                                         if(!(_loc24_ && _loc2_))
                                                         {
                                                            §§push(_loc12_.§'5§());
                                                            if(!_loc24_)
                                                            {
                                                               addr1107:
                                                               §§push(§§pop() == true);
                                                               if(!_loc24_)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc23_ || this)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        addr1119:
                                                                        §§pop();
                                                                        addr1120:
                                                                        if(_loc23_ || _loc2_)
                                                                        {
                                                                           §§push(_loc12_.§'9§());
                                                                           if(!(_loc24_ && _loc2_))
                                                                           {
                                                                              if(_loc23_ || param1)
                                                                              {
                                                                                 §§push(false);
                                                                                 if(!(_loc24_ && _loc2_))
                                                                                 {
                                                                                    if(_loc23_ || _loc3_)
                                                                                    {
                                                                                       §§push(§§pop() == §§pop());
                                                                                       if(!_loc24_)
                                                                                       {
                                                                                          addr1088:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc23_ || _loc3_)
                                                                                             {
                                                                                                addr1098:
                                                                                                _loc5_.m_sweep.Set(§"E§);
                                                                                                addr1100:
                                                                                                §§push(_loc6_.m_sweep);
                                                                                                if(_loc23_)
                                                                                                {
                                                                                                   §§pop().Set(§"1§);
                                                                                                   if(_loc23_ || _loc3_)
                                                                                                   {
                                                                                                      addr1023:
                                                                                                      _loc5_.§-F§();
                                                                                                      _loc6_.§-F§();
                                                                                                      addr1026:
                                                                                                      if(_loc23_)
                                                                                                      {
                                                                                                         if(!(_loc24_ && this))
                                                                                                         {
                                                                                                            if(!_loc24_)
                                                                                                            {
                                                                                                               if(!_loc24_)
                                                                                                               {
                                                                                                                  if(false)
                                                                                                                  {
                                                                                                                     §§goto(addr1023);
                                                                                                                  }
                                                                                                                  continue loop3;
                                                                                                               }
                                                                                                               §§goto(addr1120);
                                                                                                            }
                                                                                                            §§goto(addr1100);
                                                                                                         }
                                                                                                         §§goto(addr1026);
                                                                                                      }
                                                                                                      addr1196:
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                   §§goto(addr1196);
                                                                                                }
                                                                                                §§goto(addr1098);
                                                                                             }
                                                                                             §§goto(addr1196);
                                                                                          }
                                                                                          addr1194:
                                                                                          if(_loc12_.§0&§() == false)
                                                                                          {
                                                                                             §§goto(addr1196);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             if((_loc14_ = _loc5_).§<!A§() != b2Body.b2_dynamicBody)
                                                                                             {
                                                                                                if(!_loc24_)
                                                                                                {
                                                                                                   _loc14_ = _loc6_;
                                                                                                   addr1210:
                                                                                                   _loc9_.§,A§();
                                                                                                   if(_loc23_)
                                                                                                   {
                                                                                                      §§push(0);
                                                                                                      if(!(_loc24_ && this))
                                                                                                      {
                                                                                                         _loc15_ = §§pop();
                                                                                                         addr1274:
                                                                                                         §§push(0);
                                                                                                         if(_loc23_)
                                                                                                         {
                                                                                                            _loc16_ = §§pop();
                                                                                                            addr1239:
                                                                                                            _loc10_[_loc15_ + _loc16_++] = _loc14_;
                                                                                                            addr1264:
                                                                                                            if(!(_loc24_ && _loc3_))
                                                                                                            {
                                                                                                               if(_loc23_)
                                                                                                               {
                                                                                                                  _loc14_.§,[§ |= b2Body.§24§;
                                                                                                                  if(_loc23_ || _loc2_)
                                                                                                                  {
                                                                                                                     if(_loc23_ || _loc2_)
                                                                                                                     {
                                                                                                                        if(false)
                                                                                                                        {
                                                                                                                           §§goto(addr1239);
                                                                                                                        }
                                                                                                                        addr1739:
                                                                                                                        if(_loc16_ > 0)
                                                                                                                        {
                                                                                                                           _loc2_ = _loc10_[_loc15_++];
                                                                                                                           if(!_loc24_)
                                                                                                                           {
                                                                                                                              §§push(_loc16_);
                                                                                                                              if(!_loc24_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - 1);
                                                                                                                              }
                                                                                                                              _loc16_ = §§pop();
                                                                                                                              addr1307:
                                                                                                                              _loc9_.§<",§(_loc2_);
                                                                                                                              addr1326:
                                                                                                                              if(!(_loc24_ && this))
                                                                                                                              {
                                                                                                                                 if(_loc23_)
                                                                                                                                 {
                                                                                                                                    if(_loc2_.IsAwake() == false)
                                                                                                                                    {
                                                                                                                                       if(!_loc24_)
                                                                                                                                       {
                                                                                                                                          addr1295:
                                                                                                                                          _loc2_.SetAwake(true);
                                                                                                                                          if(_loc23_ || param1)
                                                                                                                                          {
                                                                                                                                             if(false)
                                                                                                                                             {
                                                                                                                                                §§goto(addr1307);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr1332:
                                                                                                                                          §§goto(addr1739);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1332);
                                                                                                                                    }
                                                                                                                                    if(_loc2_.§<!A§() != b2Body.b2_dynamicBody)
                                                                                                                                    {
                                                                                                                                       §§goto(addr1332);
                                                                                                                                    }
                                                                                                                                    _loc7_ = _loc2_.§]J§;
                                                                                                                                    if(!_loc24_)
                                                                                                                                    {
                                                                                                                                       addr1593:
                                                                                                                                       if(!_loc7_)
                                                                                                                                       {
                                                                                                                                          addr1595:
                                                                                                                                          _loc21_ = _loc2_.§4!Z§;
                                                                                                                                          if(_loc23_ || param1)
                                                                                                                                          {
                                                                                                                                             addr1737:
                                                                                                                                             if(!_loc21_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr1739);
                                                                                                                                             }
                                                                                                                                             if(_loc9_.§"F§ == _loc9_.§&!t§)
                                                                                                                                             {
                                                                                                                                                if(_loc23_)
                                                                                                                                                {
                                                                                                                                                   addr1733:
                                                                                                                                                   _loc21_ = _loc21_.next;
                                                                                                                                                   §§goto(addr1737);
                                                                                                                                                }
                                                                                                                                                addr1623:
                                                                                                                                                §§goto(addr1733);
                                                                                                                                             }
                                                                                                                                             if(_loc21_.§`!g§.§><§ == true)
                                                                                                                                             {
                                                                                                                                                if(!_loc24_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr1623);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1739);
                                                                                                                                             }
                                                                                                                                             if((_loc22_ = _loc21_.§-!3§).§3!z§() == false)
                                                                                                                                             {
                                                                                                                                                if(!_loc24_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr1733);
                                                                                                                                                }
                                                                                                                                                _loc22_.§,[§ |= b2Body.§24§;
                                                                                                                                                addr1672:
                                                                                                                                                if(!_loc24_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc24_ && this))
                                                                                                                                                   {
                                                                                                                                                      if(false)
                                                                                                                                                      {
                                                                                                                                                         addr1666:
                                                                                                                                                         _loc16_++;
                                                                                                                                                         addr1668:
                                                                                                                                                         if(_loc23_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc24_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr1672);
                                                                                                                                                            }
                                                                                                                                                            _loc22_.SetAwake(true);
                                                                                                                                                            addr1673:
                                                                                                                                                            _loc10_[_loc15_ + _loc16_] = _loc22_;
                                                                                                                                                            addr1727:
                                                                                                                                                            addr1694:
                                                                                                                                                         }
                                                                                                                                                         if(!_loc24_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc23_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               addr1689:
                                                                                                                                                               §§goto(addr1666);
                                                                                                                                                            }
                                                                                                                                                            addr1716:
                                                                                                                                                            if(_loc23_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr1733);
                                                                                                                                                            }
                                                                                                                                                            §§push(_loc22_.§,[§);
                                                                                                                                                            if(!(_loc24_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               §§push(b2Body.§24§);
                                                                                                                                                               if(!(_loc24_ && _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop() & §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr1716);
                                                                                                                                                                  }
                                                                                                                                                                  addr1721:
                                                                                                                                                                  §§push(_loc22_.§<!A§());
                                                                                                                                                                  §§push(b2Body.b2_staticBody);
                                                                                                                                                               }
                                                                                                                                                               if(§§pop() != §§pop())
                                                                                                                                                               {
                                                                                                                                                                  addr1724:
                                                                                                                                                                  _loc22_.§#!§(_loc13_);
                                                                                                                                                                  §§goto(addr1727);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1673);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1721);
                                                                                                                                                            addr1732:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1724);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1733);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1694);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1668);
                                                                                                                                             }
                                                                                                                                             _loc9_.§]!C§(_loc21_.§`!g§);
                                                                                                                                             if(_loc23_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                _loc21_.§`!g§.§><§ = true;
                                                                                                                                                §§goto(addr1732);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1689);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1739);
                                                                                                                                       }
                                                                                                                                       §§push(_loc9_.§<$§);
                                                                                                                                       if(!_loc24_)
                                                                                                                                       {
                                                                                                                                          if(§§pop() == _loc9_.§!q§)
                                                                                                                                          {
                                                                                                                                             addr1478:
                                                                                                                                             §§goto(addr1595);
                                                                                                                                          }
                                                                                                                                          addr1499:
                                                                                                                                          §§push(_loc7_.§;%§);
                                                                                                                                          if(!(_loc24_ && param1))
                                                                                                                                          {
                                                                                                                                             addr1492:
                                                                                                                                             if(§§pop().§,[§ & b2Contact.§24§)
                                                                                                                                             {
                                                                                                                                                addr1589:
                                                                                                                                                _loc7_ = _loc7_.next;
                                                                                                                                                §§goto(addr1593);
                                                                                                                                                addr1493:
                                                                                                                                             }
                                                                                                                                             §§push(_loc7_.§;%§);
                                                                                                                                          }
                                                                                                                                          §§push(§§pop().§'5§() == true);
                                                                                                                                          if(!(§§pop().§'5§() == true))
                                                                                                                                          {
                                                                                                                                             addr1501:
                                                                                                                                             §§pop();
                                                                                                                                             addr1502:
                                                                                                                                             §§push(_loc7_.§;%§);
                                                                                                                                             if(_loc23_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().§'9§());
                                                                                                                                                if(_loc23_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc24_)
                                                                                                                                                   {
                                                                                                                                                      §§push(false);
                                                                                                                                                      if(!(_loc24_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         if(_loc23_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc24_)
                                                                                                                                                            {
                                                                                                                                                               addr1464:
                                                                                                                                                               §§push(§§pop() == §§pop());
                                                                                                                                                               if(!(§§pop() == §§pop()))
                                                                                                                                                               {
                                                                                                                                                                  addr1465:
                                                                                                                                                                  if(_loc23_)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop();
                                                                                                                                                                     addr1379:
                                                                                                                                                                     addr1468:
                                                                                                                                                                     §§push(_loc7_.§;%§);
                                                                                                                                                                     if(!_loc24_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().§0&§());
                                                                                                                                                                        if(_loc23_ || _loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc23_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc24_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(false);
                                                                                                                                                                                 if(!(_loc24_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1410:
                                                                                                                                                                                    §§push(§§pop() == §§pop());
                                                                                                                                                                                    if(!(_loc24_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1417:
                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1419:
                                                                                                                                                                                          §§goto(addr1589);
                                                                                                                                                                                       }
                                                                                                                                                                                       _loc9_.§@!#§(_loc7_.§;%§);
                                                                                                                                                                                       addr1424:
                                                                                                                                                                                       if(!(_loc24_ && _loc2_))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc23_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc7_.§;%§);
                                                                                                                                                                                             if(_loc23_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop().§,[§ = _loc7_.§;%§.§,[§ | b2Contact.§24§;
                                                                                                                                                                                                if(_loc23_ || _loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc24_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc23_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc24_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc24_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(false)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr1379);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push((_loc22_ = _loc7_.§-!3§).§,[§);
                                                                                                                                                                                                               if(_loc23_ || _loc2_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(b2Body.§24§);
                                                                                                                                                                                                                  if(_loc23_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(§§pop() & §§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr1589);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        _loc22_.SetAwake(true);
                                                                                                                                                                                                                        addr1578:
                                                                                                                                                                                                                        _loc10_[_loc15_ + _loc16_] = _loc22_;
                                                                                                                                                                                                                        addr1574:
                                                                                                                                                                                                                        _loc16_++;
                                                                                                                                                                                                                        _loc22_.§,[§ |= b2Body.§24§;
                                                                                                                                                                                                                        addr1588:
                                                                                                                                                                                                                        addr1584:
                                                                                                                                                                                                                        if(_loc23_ || param1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc24_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc23_ || this)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(false)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr1574);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1589);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1588);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1584);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr1576:
                                                                                                                                                                                                                        §§goto(addr1576);
                                                                                                                                                                                                                        addr1547:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr1532:
                                                                                                                                                                                                                     §§push(_loc22_.§<!A§());
                                                                                                                                                                                                                     §§push(b2Body.b2_staticBody);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(§§pop() != §§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc23_ || _loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc22_.§#!§(_loc13_);
                                                                                                                                                                                                                        if(_loc23_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr1547);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1574);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1578);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1532);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1478);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1468);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1419);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1424);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1595);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1379);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1493);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1502);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1499);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1464);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1465);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1410);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1502);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1501);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1417);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1499);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1464);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1499);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1464);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1499);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1464);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1492);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1419);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1326);
                                                                                                                              }
                                                                                                                              §§goto(addr1332);
                                                                                                                           }
                                                                                                                           §§goto(addr1295);
                                                                                                                        }
                                                                                                                        addr1742:
                                                                                                                        (_loc17_ = §@",§).§?j§ = false;
                                                                                                                        if(_loc23_ || param1)
                                                                                                                        {
                                                                                                                           §§push(_loc17_);
                                                                                                                           §§push(1 - _loc13_);
                                                                                                                           if(!_loc24_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * param1.§`!9§);
                                                                                                                           }
                                                                                                                           §§pop().§`!9§ = §§pop();
                                                                                                                           _loc17_.§4!z§ = 1 / _loc17_.§`!9§;
                                                                                                                           _loc17_.§-k§ = 1;
                                                                                                                           addr1847:
                                                                                                                           addr1836:
                                                                                                                           if(_loc23_ || param1)
                                                                                                                           {
                                                                                                                              _loc17_.§#!Y§ = param1.§#!Y§;
                                                                                                                              if(!(_loc24_ && this))
                                                                                                                              {
                                                                                                                                 if(_loc23_ || this)
                                                                                                                                 {
                                                                                                                                    if(!(_loc23_ || this))
                                                                                                                                    {
                                                                                                                                       §§goto(addr1847);
                                                                                                                                    }
                                                                                                                                    _loc17_.§5!6§ = param1.§5!6§;
                                                                                                                                    if(_loc23_)
                                                                                                                                    {
                                                                                                                                       addr1777:
                                                                                                                                       _loc9_.§+Q§(_loc17_);
                                                                                                                                       addr1781:
                                                                                                                                       §§push(0);
                                                                                                                                       if(!(_loc24_ && param1))
                                                                                                                                       {
                                                                                                                                          _loc18_ = §§pop();
                                                                                                                                          if(!(_loc24_ && param1))
                                                                                                                                          {
                                                                                                                                             if(!_loc24_)
                                                                                                                                             {
                                                                                                                                                if(false)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr1777);
                                                                                                                                                }
                                                                                                                                                addr1939:
                                                                                                                                                §§push(_loc18_);
                                                                                                                                                if(!(_loc24_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   §§push(_loc9_.§3"'§);
                                                                                                                                                   if(_loc23_ || param1)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop() < §§pop())
                                                                                                                                                      {
                                                                                                                                                         _loc2_ = _loc9_.§0p§[_loc18_];
                                                                                                                                                         if(!(_loc24_ && _loc2_))
                                                                                                                                                         {
                                                                                                                                                            _loc2_.§,[§ &= ~b2Body.§24§;
                                                                                                                                                            if(!(_loc24_ && param1))
                                                                                                                                                            {
                                                                                                                                                               if(_loc2_.IsAwake() == false)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc23_)
                                                                                                                                                                  {
                                                                                                                                                                     addr1938:
                                                                                                                                                                     _loc18_++;
                                                                                                                                                                     addr1884:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1939);
                                                                                                                                                               }
                                                                                                                                                               if(_loc2_.§<!A§() != b2Body.b2_dynamicBody)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc24_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     addr1897:
                                                                                                                                                                     §§goto(addr1938);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1939);
                                                                                                                                                               }
                                                                                                                                                               _loc2_.§[!r§();
                                                                                                                                                               if(_loc23_)
                                                                                                                                                               {
                                                                                                                                                                  _loc7_ = _loc2_.§]J§;
                                                                                                                                                                  if(_loc23_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     addr1936:
                                                                                                                                                                     if(!_loc7_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr1938);
                                                                                                                                                                     }
                                                                                                                                                                     _loc7_.§;%§.§,[§ &= ~b2Contact.§,"-§;
                                                                                                                                                                     if(_loc23_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        _loc7_ = _loc7_.next;
                                                                                                                                                                        §§goto(addr1936);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1938);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1939);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1884);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1897);
                                                                                                                                                      }
                                                                                                                                                      if(_loc23_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         §§push(0);
                                                                                                                                                         if(_loc23_ || param1)
                                                                                                                                                         {
                                                                                                                                                            addr1972:
                                                                                                                                                            _loc18_ = §§pop();
                                                                                                                                                            if(!_loc24_)
                                                                                                                                                            {
                                                                                                                                                               addr2004:
                                                                                                                                                               §§push(_loc18_);
                                                                                                                                                               if(!(_loc24_ && this))
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc9_.§<$§);
                                                                                                                                                                  if(!(_loc24_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     addr2021:
                                                                                                                                                                     if(§§pop() < §§pop())
                                                                                                                                                                     {
                                                                                                                                                                        _loc11_ = _loc9_.§7!K§[_loc18_];
                                                                                                                                                                        §§push(_loc11_);
                                                                                                                                                                        §§push(_loc11_.§,[§);
                                                                                                                                                                        §§push(b2Contact.§,"-§ | b2Contact.§24§);
                                                                                                                                                                        if(_loc23_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(~§§pop());
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().§,[§ = §§pop() & §§pop();
                                                                                                                                                                        if(!_loc24_)
                                                                                                                                                                        {
                                                                                                                                                                           _loc18_++;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr2004);
                                                                                                                                                                     }
                                                                                                                                                                     if(!(_loc23_ || this))
                                                                                                                                                                     {
                                                                                                                                                                        continue loop3;
                                                                                                                                                                     }
                                                                                                                                                                     addr2029:
                                                                                                                                                                     §§push(0);
                                                                                                                                                                     if(!(_loc24_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        addr2037:
                                                                                                                                                                        _loc18_ = §§pop();
                                                                                                                                                                        addr2080:
                                                                                                                                                                        if(!(_loc24_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           addr2060:
                                                                                                                                                                           §§push(_loc18_);
                                                                                                                                                                           §§push(_loc9_.§"F§);
                                                                                                                                                                           addr2045:
                                                                                                                                                                        }
                                                                                                                                                                        this.§1C§.§>"+§();
                                                                                                                                                                        continue loop3;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr2060);
                                                                                                                                                                  }
                                                                                                                                                                  if(§§pop() < §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     (_loc8_ = _loc9_.§6w§[_loc18_]).§><§ = false;
                                                                                                                                                                     if(!_loc24_)
                                                                                                                                                                     {
                                                                                                                                                                        _loc18_++;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr2060);
                                                                                                                                                                  }
                                                                                                                                                                  if(!(_loc23_ || param1))
                                                                                                                                                                  {
                                                                                                                                                                     continue loop3;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr2080);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr2037);
                                                                                                                                                               addr1975:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr2029);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr2060);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr2029);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr2021);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1972);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1781);
                                                                                                                                          }
                                                                                                                                          §§goto(addr2037);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1972);
                                                                                                                                    }
                                                                                                                                    §§goto(addr2029);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1836);
                                                                                                                              }
                                                                                                                              §§goto(addr2045);
                                                                                                                           }
                                                                                                                           §§goto(addr1975);
                                                                                                                        }
                                                                                                                        §§goto(addr2029);
                                                                                                                     }
                                                                                                                     §§goto(addr1264);
                                                                                                                  }
                                                                                                                  §§goto(addr1742);
                                                                                                                  addr1258:
                                                                                                               }
                                                                                                               §§goto(addr1274);
                                                                                                            }
                                                                                                            §§goto(addr1742);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr1739);
                                                                                                   }
                                                                                                   §§goto(addr1742);
                                                                                                }
                                                                                                §§goto(addr1258);
                                                                                             }
                                                                                             §§goto(addr1210);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr1194);
                                                                                    }
                                                                                    §§goto(addr1107);
                                                                                 }
                                                                                 §§goto(addr1194);
                                                                              }
                                                                              §§goto(addr1119);
                                                                           }
                                                                           §§goto(addr1088);
                                                                        }
                                                                        §§goto(addr1137);
                                                                     }
                                                                     §§goto(addr1087);
                                                                  }
                                                                  §§goto(addr1088);
                                                               }
                                                            }
                                                            §§goto(addr1088);
                                                         }
                                                         §§goto(addr1185);
                                                      }
                                                      addr1158:
                                                      §§goto(addr1158);
                                                   }
                                                   §§goto(addr1185);
                                                }
                                                §§goto(addr1196);
                                             }
                                             addr1190:
                                             §§goto(addr1190);
                                          }
                                          §§goto(addr1023);
                                       }
                                    }
                                    return;
                                 }
                              }
                           }
                        }
                        §§goto(addr979);
                     }
                     else
                     {
                        §§push(_loc11_.§'5§());
                        loop5:
                        while(true)
                        {
                           §§push(true);
                           if(!_loc24_)
                           {
                              §§push(§§pop() == §§pop());
                              if(!(_loc24_ && _loc3_))
                              {
                                 §§push(§§pop());
                                 loop6:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       continue;
                                    }
                                    if(!(_loc24_ && this))
                                    {
                                       §§pop();
                                       if(!_loc24_)
                                       {
                                          while(true)
                                          {
                                             §§push(_loc11_.§'9§());
                                             if(!(_loc24_ && param1))
                                             {
                                                §§push(false);
                                                if(_loc23_)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc23_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   addr885:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc23_)
                                                      {
                                                         break loop6;
                                                      }
                                                      break loop5;
                                                   }
                                                }
                                                break loop5;
                                             }
                                             §§goto(addr979);
                                          }
                                          addr373:
                                       }
                                       §§goto(addr979);
                                    }
                                    while(true)
                                    {
                                       §§pop();
                                       if(!(_loc24_ && param1))
                                       {
                                          addr899:
                                          §§push(_loc19_);
                                          if(!(_loc24_ && _loc2_))
                                          {
                                             §§push(_loc13_);
                                             if(!_loc24_)
                                             {
                                                §§push(§§pop() < §§pop());
                                                if(!(_loc24_ && _loc2_))
                                                {
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         continue loop4;
                                                      }
                                                      if(_loc23_ || this)
                                                      {
                                                         addr926:
                                                         _loc12_ = _loc11_;
                                                         if(!(_loc24_ && param1))
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
                                                      §§goto(addr979);
                                                   }
                                                   addr918:
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr979);
                                    }
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc23_)
                                       {
                                          §§goto(addr891);
                                       }
                                       else
                                       {
                                          §§goto(addr964);
                                       }
                                    }
                                    §§goto(addr918);
                                 }
                              }
                              §§goto(addr964);
                           }
                           break;
                        }
                        §§goto(addr964);
                     }
                  }
               }
               §§goto(addr373);
            }
         }
         §§goto(addr178);
      }
      
      b2internal function §;;§(param1:b2Joint) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§[d§();
         var _loc3_:b2Body = param1.§#E§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §^3§;
         §§push(param1.§6m§);
         if(_loc16_)
         {
            var _loc14_:* = §§pop();
            if(!_loc15_)
            {
               §§push(b2Joint.§'G§);
               if(!(_loc15_ && _loc2_))
               {
                  §§push(_loc14_);
                  if(_loc16_ || _loc3_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc15_ && this))
                        {
                           §§push(0);
                           if(_loc15_)
                           {
                              addr300:
                           }
                        }
                        else
                        {
                           addr307:
                           §§push(2);
                           if(_loc15_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(b2Joint.§[!0§);
                        if(_loc16_ || _loc2_)
                        {
                           §§push(_loc14_);
                           if(_loc16_ || _loc2_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc15_)
                                 {
                                    addr292:
                                    §§push(1);
                                    if(_loc16_ || _loc3_)
                                    {
                                       §§goto(addr300);
                                    }
                                    else
                                    {
                                       addr305:
                                       if(§§pop() !== _loc14_)
                                       {
                                       }
                                       §§goto(addr325);
                                    }
                                 }
                                 §§goto(addr307);
                              }
                              else
                              {
                                 §§push(b2Joint.§6!+§);
                                 if(!_loc15_)
                                 {
                                    §§goto(addr305);
                                 }
                              }
                           }
                           §§goto(addr305);
                        }
                     }
                     addr325:
                     §§goto(addr326);
                  }
                  §§goto(addr305);
               }
               §§goto(addr300);
            }
            §§goto(addr292);
         }
         addr326:
         loop6:
         switch(3)
         {
            case 0:
               this.§#"+§.§ >§(_loc8_,_loc9_,_loc10_);
               if(_loc16_ || this)
               {
                  break;
               }
               break;
            case 1:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§?!@§();
               _loc13_ = _loc11_.§ !j§();
               if(_loc16_)
               {
                  addr230:
                  this.§#"+§.§ >§(_loc12_,_loc8_,_loc10_);
                  addr234:
                  §§push(this.§#"+§);
               }
               else
               {
                  loop2:
                  while(true)
                  {
                     addr165:
                     loop3:
                     while(true)
                     {
                        §§push(this.§#"+§);
                        addr168:
                        addr211:
                        while(true)
                        {
                           if(!_loc16_)
                           {
                              addr207:
                              §§pop().§ >§(_loc8_,_loc9_,_loc10_);
                              break;
                           }
                           if(!_loc15_)
                           {
                              §§pop().§ >§(_loc8_,_loc9_,_loc10_);
                              while(true)
                              {
                                 if(_loc16_)
                                 {
                                    if(_loc3_ != this.m_groundBody)
                                    {
                                       if(!(_loc15_ && _loc3_))
                                       {
                                          if(_loc16_)
                                          {
                                             continue loop2;
                                          }
                                          continue;
                                       }
                                       addr146:
                                       if(_loc15_ && this)
                                       {
                                          break loop6;
                                       }
                                       addr219:
                                       if(true)
                                       {
                                          break;
                                       }
                                       continue loop3;
                                       addr219:
                                    }
                                    break;
                                 }
                                 §§goto(addr234);
                                 §§goto(addr219);
                              }
                              break loop6;
                           }
                        }
                        break loop6;
                     }
                  }
               }
               §§pop().§ >§(_loc13_,_loc9_,_loc10_);
               §§goto(addr227);
            case 2:
               §§goto(addr207);
            default:
               §§push(this.§#"+§);
               if(_loc2_ != this.m_groundBody)
               {
                  §§goto(addr186);
               }
               §§goto(addr165);
         }
      }
      
      b2internal function §,!F§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         §§push(param1.§6m§);
         if(_loc16_)
         {
            var _loc14_:* = §§pop();
            if(!_loc15_)
            {
               §§push(b2Shape.§9_§);
               if(!(_loc15_ && param2))
               {
                  §§push(_loc14_);
                  if(!_loc15_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc16_)
                        {
                           addr234:
                           §§push(0);
                           if(!(_loc15_ && param3))
                           {
                              addr297:
                              loop3:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc4_ = param1 as b2CircleShape;
                                    _loc5_ = b2Math.§!v§(param2,_loc4_.§4b§);
                                    if(!(_loc15_ && param1))
                                    {
                                       _loc6_ = _loc4_.§,!;§;
                                    }
                                    _loc7_ = param2.R.col1;
                                    if(_loc16_)
                                    {
                                       this.§#"+§.§=!]§(_loc5_,_loc6_,_loc7_,param3);
                                    }
                                    break;
                                 case 1:
                                    §§push((_loc9_ = param1 as b2PolygonShape).§@c§());
                                    if(!_loc15_)
                                    {
                                       §§push(int(§§pop()));
                                    }
                                    _loc10_ = §§pop();
                                    _loc11_ = _loc9_.§%Y§();
                                    _loc12_ = new Vector.<b2Vec2>(_loc10_);
                                    if(!_loc15_)
                                    {
                                       §§push(0);
                                       while(true)
                                       {
                                          _loc8_ = §§pop();
                                          loop2:
                                          while(true)
                                          {
                                             §§push(_loc8_);
                                             if(!(_loc16_ || param3))
                                             {
                                                break;
                                             }
                                             if(§§pop() >= _loc10_)
                                             {
                                                if(_loc16_ || param3)
                                                {
                                                   if(_loc15_ && param3)
                                                   {
                                                      continue;
                                                   }
                                                   this.§#"+§.§6T§(_loc12_,_loc10_,param3);
                                                }
                                                if(!(_loc15_ && param3))
                                                {
                                                   if(_loc16_)
                                                   {
                                                      if(true)
                                                      {
                                                         break loop3;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         continue loop2;
                                                      }
                                                      addr180:
                                                   }
                                                }
                                                else
                                                {
                                                   addr177:
                                                }
                                                _loc8_++;
                                                continue;
                                             }
                                             _loc12_[_loc8_] = b2Math.§!v§(param2,_loc11_[_loc8_]);
                                             §§goto(addr177);
                                          }
                                       }
                                    }
                                    §§goto(addr180);
                                 case 2:
                                    _loc13_ = param1 as b2EdgeShape;
                                    if(_loc16_ || param1)
                                    {
                                       this.§#"+§.§ >§(b2Math.§!v§(param2,_loc13_.GetVertex1()),b2Math.§!v§(param2,_loc13_.GetVertex2()),param3);
                                    }
                              }
                              return;
                              addr296:
                              addr242:
                           }
                           else
                           {
                              addr271:
                              if(§§pop() === _loc14_)
                              {
                                 addr273:
                                 §§push(2);
                                 if(_loc16_ || param1)
                                 {
                                 }
                                 §§goto(addr296);
                              }
                              else
                              {
                                 §§goto(addr296);
                                 §§push(3);
                              }
                              §§goto(addr296);
                           }
                        }
                        else
                        {
                           addr253:
                           §§push(1);
                           if(_loc16_ || param3)
                           {
                           }
                        }
                        §§goto(addr296);
                     }
                     else
                     {
                        §§push(b2Shape.§2e§);
                        if(_loc16_)
                        {
                           §§push(_loc14_);
                           if(!_loc15_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc16_)
                                 {
                                    §§goto(addr253);
                                 }
                                 else
                                 {
                                    §§goto(addr273);
                                 }
                              }
                              else
                              {
                                 §§push(b2Shape.§[!Q§);
                                 if(_loc16_ || param2)
                                 {
                                    §§goto(addr271);
                                 }
                              }
                              §§goto(addr291);
                           }
                           §§goto(addr271);
                        }
                     }
                     §§goto(addr296);
                  }
                  §§goto(addr271);
               }
               §§goto(addr242);
            }
            §§goto(addr234);
         }
         §§goto(addr297);
      }
   }
}
