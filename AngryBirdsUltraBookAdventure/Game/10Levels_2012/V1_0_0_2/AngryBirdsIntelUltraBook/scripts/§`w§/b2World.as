package §`w§
{
   import §!!R§.b2Controller;
   import §!!R§.b2ControllerEdge;
   import §2!+§.*;
   import §7!u§.*;
   import §72§.*;
   import §9!"§.*;
   import §>H§.*;
   import §break§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep;
      
      private static var §9!X§:b2Transform;
      
      private static var §9,§:b2Sweep;
      
      private static var §8!E§:b2Sweep;
      
      private static var §?!V§:b2TimeStep;
      
      private static var §4!a§:Vector.<b2Body>;
      
      private static var §;!H§:b2Color;
      
      private static var §-!&§:Boolean;
      
      private static var §+!E§:Boolean;
      
      public static const §?!;§:int = 1;
      
      public static const §&!U§:int = 2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            s_timestep2 = new b2TimeStep();
            while(true)
            {
               §9!X§ = new b2Transform();
               while(true)
               {
                  §9,§ = new b2Sweep();
                  loop2:
                  while(true)
                  {
                     §8!E§ = new b2Sweep();
                     loop3:
                     while(true)
                     {
                        §?!V§ = new b2TimeStep();
                        while(true)
                        {
                           §4!a§ = new Vector.<b2Body>();
                           addr77:
                           while(_loc1_)
                           {
                              continue loop2;
                           }
                           continue loop3;
                           addr52:
                           if(!(_loc1_ || _loc1_))
                           {
                              continue;
                           }
                           §?!;§ = 1;
                           loop7:
                           while(!(_loc2_ && _loc1_))
                           {
                              while(true)
                              {
                                 §&!U§ = 2;
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 continue loop7;
                              }
                              return;
                           }
                           while(_loc1_)
                           {
                              §§goto(addr52);
                              §§goto(addr34);
                           }
                           addr34:
                           §§goto(addr77);
                        }
                     }
                  }
               }
               if(!(_loc1_ || _loc1_))
               {
                  continue;
               }
               §;!H§ = new b2Color(0.5,0.8,0.8);
               §§goto(addr50);
            }
         }
         §§goto(addr41);
      }
      
      private var § o§:Vector.<b2Body>;
      
      b2internal var §;!R§:int;
      
      b2internal var §`!n§:b2ContactManager;
      
      private var §;!V§:b2ContactSolver;
      
      private var §'!C§:b2Island;
      
      b2internal var §"!Z§:b2Body;
      
      private var §"O§:b2Joint;
      
      b2internal var §]3§:b2Contact;
      
      private var §[r§:int;
      
      b2internal var §0V§:int;
      
      private var §&!o§:int;
      
      private var §-_§:b2Controller;
      
      private var § !>§:int;
      
      private var §>!?§:b2Vec2;
      
      private var §1!7§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §1;§:b2DestructionListener;
      
      private var §%N§:b2DebugDraw;
      
      private var §8z§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            this.§ o§ = new Vector.<b2Body>();
            while(true)
            {
               this.§`!n§ = new b2ContactManager();
               while(_loc5_ || this)
               {
                  this.§;!V§ = new b2ContactSolver();
                  loop2:
                  while(true)
                  {
                     this.§'!C§ = new b2Island();
                     loop3:
                     while(true)
                     {
                        super();
                        loop4:
                        while(true)
                        {
                           this.§1;§ = null;
                           loop5:
                           while(true)
                           {
                              this.§%N§ = null;
                              loop6:
                              while(true)
                              {
                                 this.§"!Z§ = null;
                                 while(true)
                                 {
                                    this.§]3§ = null;
                                    addr194:
                                    loop15:
                                    for(; !(_loc4_ && _loc3_); addr63:,if(!(_loc5_ || param1))
                                    {
                                       continue;
                                    },if(_loc5_)
                                    {
                                       loop20:
                                       while(true)
                                       {
                                          this.§8z§ = 0;
                                          addr40:
                                          while(true)
                                          {
                                             if(_loc5_ || _loc3_)
                                             {
                                                continue loop6;
                                             }
                                             addr77:
                                             addr146:
                                             while(_loc5_)
                                             {
                                                this.§>!?§ = param1;
                                                break loop20;
                                             }
                                             while(true)
                                             {
                                                this.§ !>§ = 0;
                                                §§goto(addr127);
                                             }
                                          }
                                          continue loop6;
                                          addr32:
                                          if(!_loc4_)
                                          {
                                             if(true)
                                             {
                                                var _loc3_:b2BodyDef = new b2BodyDef();
                                                if(_loc5_)
                                                {
                                                   this.m_groundBody = this.§04§(_loc3_);
                                                }
                                             }
                                             continue;
                                             return;
                                          }
                                          break;
                                       }
                                       while(!_loc4_)
                                       {
                                          §§goto(addr63);
                                       }
                                       §§goto(addr84);
                                    },§§goto(addr194))
                                    {
                                       §+!E§ = true;
                                       while(_loc5_)
                                       {
                                          addr86:
                                          if(_loc5_ || param1)
                                          {
                                             continue loop2;
                                          }
                                          addr151:
                                          while(!_loc4_)
                                          {
                                             continue loop5;
                                             §§goto(addr86);
                                          }
                                          §§goto(addr189);
                                       }
                                       while(!(_loc4_ && param1))
                                       {
                                          if(!(_loc4_ && param2))
                                          {
                                             §-!&§ = true;
                                             continue loop15;
                                          }
                                          continue loop4;
                                       }
                                       while(true)
                                       {
                                          this.§0V§ = 0;
                                          §§goto(addr151);
                                          §§goto(addr127);
                                       }
                                       addr127:
                                    }
                                    while(true)
                                    {
                                       this.§"O§ = null;
                                       addr189:
                                       while(true)
                                       {
                                          this.§-_§ = null;
                                          continue loop4;
                                       }
                                    }
                                 }
                                 if(!(_loc5_ || param2))
                                 {
                                    continue;
                                 }
                                 if(!_loc5_)
                                 {
                                    continue loop3;
                                 }
                                 this.§`!n§.m_world = this;
                                 if(_loc5_)
                                 {
                                    §§goto(addr32);
                                 }
                                 §§goto(addr40);
                              }
                           }
                        }
                     }
                  }
                  if(!(_loc5_ || _loc3_))
                  {
                     continue;
                  }
                  this.§[r§ = 0;
                  §§goto(addr165);
               }
            }
         }
         §§goto(addr100);
      }
      
      public function native(param1:b2DestructionListener) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§1;§ = param1;
         }
      }
      
      public function §9!8§(param1:b2ContactFilter) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§`!n§.§2!1§ = param1;
         }
      }
      
      public function §[-§(param1:b2ContactListener) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§`!n§.§7Q§ = param1;
         }
      }
      
      public function §4`§(param1:b2DebugDraw) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§%N§ = param1;
         }
      }
      
      public function final(param1:§<X§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:b2Fixture = null;
         var _loc2_:§<X§ = this.§`!n§.§<Z§;
         if(_loc6_)
         {
            this.§`!n§.§<Z§ = param1;
         }
         var _loc3_:b2Body = this.§"!Z§;
         for(; _loc3_; _loc3_ = _loc3_.§3=§)
         {
            _loc4_ = _loc3_.§92§;
            if(_loc6_)
            {
               loop1:
               while(_loc4_)
               {
                  _loc4_.§!!o§ = param1.§0!S§(_loc2_.§^!Q§(_loc4_.§!!o§),_loc4_);
                  if(!(_loc6_ || param1))
                  {
                     break;
                  }
                  while(true)
                  {
                     _loc4_ = _loc4_.§3=§;
                     continue loop1;
                  }
               }
               continue;
            }
            §§goto(addr81);
         }
      }
      
      public function §##§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§`!n§.§<Z§.§##§();
         }
      }
      
      public function §]y§() : int
      {
         return this.§`!n§.§<Z§.§]y§();
      }
      
      public function §04§(param1:b2BodyDef) : b2Body
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && _loc3_))
         {
            if(this.§3C§() == true)
            {
               if(!_loc6_)
               {
                  §§goto(addr29);
               }
            }
            var _loc2_:b2Body = new b2Body(param1,this);
            if(!_loc6_)
            {
               _loc2_.§-!I§ = null;
               while(true)
               {
                  _loc2_.§3=§ = this.§"!Z§;
               }
               addr116:
            }
            while(true)
            {
               addr77:
               while(true)
               {
                  §§push(this.§"!Z§);
                  if(_loc5_ || this)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§push(this.§"!Z§);
                           addr90:
                           while(true)
                           {
                              §§pop().§-!I§ = _loc2_;
                              if(_loc5_)
                              {
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    this.§"!Z§ = _loc2_;
                                    if(!(_loc5_ || _loc3_))
                                    {
                                       break;
                                    }
                                    continue loop3;
                                 }
                              }
                              §§goto(addr142);
                           }
                           §§goto(addr116);
                        }
                     }
                     §§goto(addr40);
                  }
                  §§goto(addr90);
               }
               if(_loc5_ || _loc3_)
               {
                  if(false)
                  {
                     §§goto(addr77);
                  }
                  var _loc3_:*;
                  §§push((_loc3_ = this).§[r§);
                  if(_loc5_ || this)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc4_:* = §§pop();
                  if(!(_loc6_ && _loc2_))
                  {
                     _loc3_.§[r§ = _loc4_;
                  }
                  addr142:
                  return _loc2_;
               }
            }
         }
         addr29:
         return null;
      }
      
      public function §2R§(param1:b2Body) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(!_loc12_)
         {
            if(this.§3C§() == true)
            {
               if(_loc13_ || _loc2_)
               {
                  §§goto(addr42);
               }
            }
            var _loc2_:b2JointEdge = param1.§"O§;
            while(_loc2_)
            {
               _loc6_ = _loc2_;
               _loc2_ = _loc2_.§-!3§;
               if(!_loc13_)
               {
                  continue;
               }
               §§push(this.§1;§);
               if(_loc13_)
               {
                  if(§§pop())
                  {
                     if(_loc12_)
                     {
                        continue;
                     }
                     addr67:
                     this.§1;§.§@%§(_loc6_.§2B§);
                     if(_loc12_)
                     {
                        continue;
                     }
                  }
                  this.§5!l§(_loc6_.§2B§);
                  continue;
               }
               §§goto(addr67);
            }
            var _loc3_:b2ControllerEdge = param1.§-_§;
            if(!_loc12_)
            {
               while(_loc3_)
               {
                  _loc7_ = _loc3_;
                  _loc3_ = _loc3_.§?J§;
                  if(_loc13_)
                  {
                     _loc7_.§?!]§.§"!B§(param1);
                  }
               }
            }
            var _loc4_:b2ContactEdge = param1.§]3§;
            if(!_loc12_)
            {
               while(_loc4_)
               {
                  _loc8_ = _loc4_;
                  _loc4_ = _loc4_.§-!3§;
                  if(!_loc12_)
                  {
                     this.§`!n§.§[M§(_loc8_.§+2§);
                  }
               }
               if(!_loc12_)
               {
                  addr127:
                  param1.§]3§ = null;
               }
               var _loc5_:b2Fixture = param1.§92§;
               if(!_loc12_)
               {
                  loop3:
                  while(_loc5_)
                  {
                     _loc9_ = _loc5_;
                     _loc5_ = _loc5_.§3=§;
                     if(_loc13_)
                     {
                        §§push(this.§1;§);
                        if(_loc13_ || _loc2_)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§push(this.§1;§);
                                 addr193:
                                 while(true)
                                 {
                                    §§pop().§ !X§(_loc9_);
                                    addr195:
                                    while(true)
                                    {
                                    }
                                 }
                              }
                              addr191:
                           }
                           loop5:
                           while(true)
                           {
                              _loc9_.§!O§(this.§`!n§.§<Z§);
                              while(true)
                              {
                                 if(!_loc12_)
                                 {
                                    _loc9_.§[M§();
                                    if(!_loc12_)
                                    {
                                       if(!(_loc13_ || this))
                                       {
                                          break;
                                          addr170:
                                       }
                                       while(false)
                                       {
                                          continue loop5;
                                       }
                                       continue loop3;
                                    }
                                    continue;
                                 }
                                 §§goto(addr191);
                              }
                              §§goto(addr195);
                           }
                        }
                        §§goto(addr193);
                     }
                     §§goto(addr170);
                  }
                  if(_loc13_ || _loc2_)
                  {
                     param1.§92§ = null;
                     if(_loc13_ || this)
                     {
                        param1.§+q§ = 0;
                     }
                     loop10:
                     while(true)
                     {
                        §§push(param1.§-!I§);
                        if(!_loc12_)
                        {
                           if(§§pop())
                           {
                              if(!_loc12_)
                              {
                                 param1.§-!I§.§3=§ = param1.§3=§;
                                 addr264:
                                 if(_loc13_)
                                 {
                                    addr242:
                                    while(true)
                                    {
                                       §§push(param1.§3=§);
                                       if(_loc13_)
                                       {
                                          if(§§pop())
                                          {
                                             addr248:
                                             while(true)
                                             {
                                                §§push(param1.§3=§);
                                                addr250:
                                                while(true)
                                                {
                                                   §§pop().§-!I§ = param1.§-!I§;
                                                   addr253:
                                                   while(true)
                                                   {
                                                   }
                                                }
                                             }
                                             addr248:
                                          }
                                          for(; param1 == this.§"!Z§; §§goto(addr253))
                                          {
                                             if(!_loc12_)
                                             {
                                                if(_loc12_)
                                                {
                                                   continue;
                                                }
                                                if(_loc13_)
                                                {
                                                   this.§"!Z§ = param1.§3=§;
                                                   if(!_loc13_)
                                                   {
                                                      §§goto(addr304);
                                                   }
                                                   addr304:
                                                   addr304:
                                                   continue loop10;
                                                }
                                                §§goto(addr248);
                                             }
                                             addr304:
                                             return;
                                          }
                                          addr284:
                                          var _loc10_:*;
                                          §§push((_loc10_ = this).§[r§);
                                          if(!_loc12_)
                                          {
                                             §§push(§§pop() - 1);
                                          }
                                          var _loc11_:* = §§pop();
                                          if(!(_loc12_ && param1))
                                          {
                                             _loc10_.§[r§ = _loc11_;
                                          }
                                          §§goto(addr304);
                                       }
                                       §§goto(addr250);
                                    }
                                    continue;
                                    addr242:
                                 }
                              }
                              §§goto(addr304);
                           }
                           §§goto(addr242);
                        }
                        §§goto(addr264);
                     }
                  }
                  while(true)
                  {
                     if(false)
                     {
                        §§goto(addr242);
                     }
                     §§goto(addr284);
                  }
               }
               §§goto(addr248);
            }
            §§goto(addr127);
         }
         addr42:
      }
      
      public function §00§(param1:b2JointDef) : b2Joint
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§`4§(param1,null);
         if(!_loc8_)
         {
            _loc2_.§-!I§ = null;
            loop0:
            while(true)
            {
               _loc2_.§3=§ = this.§"O§;
               if(!(_loc8_ && this))
               {
                  while(true)
                  {
                     §§push(this.§"O§);
                     if(!(_loc8_ && this))
                     {
                        if(§§pop())
                        {
                           if(_loc9_ || this)
                           {
                              addr57:
                              this.§"O§.§-!I§ = _loc2_;
                              if(_loc8_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           loop4:
                           while(true)
                           {
                              §§push(_loc2_.§#7§);
                              addr297:
                              addr317:
                              while(!(_loc8_ && _loc2_))
                              {
                                 §§pop().§;+§ = null;
                                 continue loop4;
                              }
                              while(!_loc8_)
                              {
                                 §§pop().§,H§ = _loc2_.§0!w§;
                                 continue loop4;
                                 §§goto(addr297);
                              }
                              addr325:
                              while(true)
                              {
                                 §§pop().§2B§ = _loc2_;
                              }
                           }
                        }
                        else
                        {
                           addr29:
                           this.§"O§ = _loc2_;
                           if(!_loc8_)
                           {
                              if(false)
                              {
                                 continue;
                              }
                              var _loc6_:*;
                              §§push((_loc6_ = this).§&!o§);
                              if(!(_loc8_ && _loc2_))
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc7_:* = §§pop();
                              if(!_loc8_)
                              {
                                 _loc6_.§&!o§ = _loc7_;
                              }
                              if(_loc9_)
                              {
                                 §§goto(addr325);
                                 §§push(_loc2_.§#7§);
                              }
                              loop29:
                              while(true)
                              {
                                 §§push(_loc2_.§3G§);
                                 loop17:
                                 while(true)
                                 {
                                    §§pop().§,H§ = _loc2_.§6!G§;
                                    loop18:
                                    while(!(_loc8_ && _loc2_))
                                    {
                                       §§push(_loc2_.§3G§);
                                       loop19:
                                       for(; _loc9_ || _loc3_; §§push(_loc2_.§3G§),if(!_loc9_)
                                       {
                                          continue;
                                       },if(!_loc9_)
                                       {
                                          continue loop17;
                                       },§§pop().§-!3§ = _loc2_.§0!w§.§"O§,loop21:
                                       while(true)
                                       {
                                          loop22:
                                          while(true)
                                          {
                                             §§push(_loc2_.§0!w§);
                                             if(_loc9_)
                                             {
                                                §§push(§§pop().§"O§);
                                                if(!(_loc8_ && _loc3_))
                                                {
                                                   if(_loc9_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_.§0!w§);
                                                                     addr157:
                                                                     loop26:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().§"O§);
                                                                        addr158:
                                                                        while(_loc9_ || param1)
                                                                        {
                                                                           §§pop().§;+§ = _loc2_.§3G§;
                                                                           loop23:
                                                                           while(_loc9_ || _loc3_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc2_.§0!w§);
                                                                                 if(!(_loc8_ && _loc2_))
                                                                                 {
                                                                                    §§pop().§"O§ = _loc2_.§3G§;
                                                                                    if(_loc9_ || this)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue loop23;
                                                                                 }
                                                                                 continue loop26;
                                                                              }
                                                                              if(!_loc9_)
                                                                              {
                                                                                 continue loop21;
                                                                              }
                                                                              if(false)
                                                                              {
                                                                                 continue loop22;
                                                                              }
                                                                              var _loc3_:b2Body = param1.§3x§;
                                                                              var _loc4_:b2Body = param1.§8P§;
                                                                              if(_loc9_)
                                                                              {
                                                                                 if(param1.collideConnected == false)
                                                                                 {
                                                                                    addr342:
                                                                                    _loc5_ = _loc4_.§"x§();
                                                                                    addr383:
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       if(_loc5_.§,H§ == _loc3_)
                                                                                       {
                                                                                          if(!(_loc8_ && _loc2_))
                                                                                          {
                                                                                             _loc5_.§+2§.§=!<§();
                                                                                             if(_loc9_ || _loc3_)
                                                                                             {
                                                                                             }
                                                                                             §§goto(addr385);
                                                                                          }
                                                                                       }
                                                                                       _loc5_ = _loc5_.§-!3§;
                                                                                       §§goto(addr383);
                                                                                    }
                                                                                 }
                                                                                 addr385:
                                                                                 return _loc2_;
                                                                              }
                                                                              §§goto(addr342);
                                                                           }
                                                                           continue loop18;
                                                                        }
                                                                        §§goto(addr274);
                                                                     }
                                                                  }
                                                                  addr155:
                                                               }
                                                               §§goto(addr306);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr210);
                                                            }
                                                         }
                                                         §§goto(addr168);
                                                      }
                                                      §§goto(addr109);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr158);
                                             }
                                             §§goto(addr157);
                                          }
                                          §§goto(addr280);
                                       })
                                       {
                                          §§pop().§;+§ = null;
                                          while(!_loc8_)
                                          {
                                             continue loop19;
                                          }
                                          while(!(_loc8_ && _loc3_))
                                          {
                                             §§push(_loc2_.§3G§);
                                             break loop19;
                                          }
                                          loop12:
                                          while(true)
                                          {
                                             addr247:
                                             addr273:
                                             loop13:
                                             while(true)
                                             {
                                                §§push(_loc2_.§6!G§);
                                                if(_loc9_ || _loc3_)
                                                {
                                                   if(_loc9_)
                                                   {
                                                      §§pop().§"O§ = _loc2_.§#7§;
                                                      §§goto(addr262);
                                                   }
                                                   break;
                                                }
                                                addr279:
                                                while(true)
                                                {
                                                   §§push(§§pop().§"O§);
                                                   addr280:
                                                   while(true)
                                                   {
                                                      §§pop().§;+§ = _loc2_.§#7§;
                                                      continue loop12;
                                                   }
                                                   continue loop13;
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(§§pop().§"O§);
                                                addr274:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         break loop0;
                                                      }
                                                      continue loop12;
                                                   }
                                                   §§goto(addr247);
                                                }
                                             }
                                          }
                                          addr262:
                                       }
                                       while(true)
                                       {
                                          §§pop().§2B§ = _loc2_;
                                          break loop18;
                                          §§goto(addr201);
                                       }
                                       addr201:
                                    }
                                    addr232:
                                    addr293:
                                    while(_loc9_ || _loc2_)
                                    {
                                       if(!(_loc8_ && this))
                                       {
                                          continue loop29;
                                       }
                                       addr327:
                                       while(true)
                                       {
                                          §§goto(addr317);
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr273);
                                       §§goto(addr232);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr327);
                     }
                     §§goto(addr57);
                  }
                  while(true)
                  {
                     §§push(_loc2_.§#7§);
                     if(!_loc8_)
                     {
                        §§pop().§-!3§ = _loc2_.§6!G§.§"O§;
                        §§goto(addr293);
                     }
                     §§goto(addr297);
                  }
               }
               break;
            }
            while(true)
            {
               §§goto(addr279);
            }
         }
         §§goto(addr155);
      }
      
      public function §5!l§(param1:b2Joint) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:b2ContactEdge = null;
         §§push(param1.§0e§);
         if(_loc8_ || _loc2_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc8_ || param1)
         {
            §§push(param1.§-!I§);
            if(_loc8_ || _loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(param1.§-!I§);
                     addr108:
                     while(true)
                     {
                        §§pop().§3=§ = param1.§3=§;
                        addr111:
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
                        while(true)
                        {
                           §§push(param1.§3=§);
                           loop4:
                           while(true)
                           {
                              §§pop().§-!I§ = param1.§-!I§;
                              loop5:
                              while(true)
                              {
                                 loop3:
                                 for(; param1 == this.§"O§; continue loop5)
                                 {
                                    if(!(_loc9_ && this))
                                    {
                                       if(_loc8_ || this)
                                       {
                                          continue loop2;
                                       }
                                       continue loop5;
                                    }
                                    addr68:
                                    if(!(_loc8_ || param1))
                                    {
                                       break loop2;
                                    }
                                    if(true)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       §§push(param1.§3=§);
                                       if(_loc8_)
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
                                 var _loc3_:b2Body = param1.§6!G§;
                                 var _loc4_:b2Body = param1.§0!w§;
                                 if(_loc8_)
                                 {
                                    _loc3_.SetAwake(true);
                                    if(_loc8_ || _loc3_)
                                    {
                                       _loc4_.SetAwake(true);
                                       addr409:
                                       if(param1.§#7§.§;+§)
                                       {
                                          addr401:
                                          param1.§#7§.§;+§.§-!3§ = param1.§#7§.§-!3§;
                                          addr395:
                                          if(_loc8_)
                                          {
                                             addr376:
                                             §§push(param1.§#7§);
                                             if(!_loc9_)
                                             {
                                                §§push(§§pop().§-!3§);
                                                if(_loc8_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      addr388:
                                                      param1.§#7§.§-!3§.§;+§ = param1.§#7§.§;+§;
                                                      addr382:
                                                      addr385:
                                                      addr384:
                                                   }
                                                   addr364:
                                                   if(param1.§#7§ == _loc3_.§"O§)
                                                   {
                                                      addr367:
                                                      _loc3_.§"O§ = param1.§#7§.§-!3§;
                                                   }
                                                   §§push(param1.§#7§);
                                                   if(!_loc9_)
                                                   {
                                                      if(_loc8_ || param1)
                                                      {
                                                         addr359:
                                                         §§pop().§;+§ = null;
                                                         addr360:
                                                         §§push(param1.§#7§);
                                                         if(!_loc9_)
                                                         {
                                                            if(!(_loc9_ && _loc3_))
                                                            {
                                                               if(_loc8_ || _loc2_)
                                                               {
                                                                  §§push(null);
                                                                  if(_loc8_)
                                                                  {
                                                                     §§pop().§-!3§ = §§pop();
                                                                     addr343:
                                                                     if(_loc8_)
                                                                     {
                                                                        addr281:
                                                                        §§push(param1.§3G§.§;+§);
                                                                        if(_loc8_)
                                                                        {
                                                                           if(!(_loc9_ && _loc3_))
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 addr292:
                                                                                 if(_loc8_ || _loc3_)
                                                                                 {
                                                                                    addr301:
                                                                                    §§push(param1.§3G§.§;+§);
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       §§push(param1.§3G§.§-!3§);
                                                                                       if(!(_loc9_ && _loc2_))
                                                                                       {
                                                                                          §§pop().§-!3§ = §§pop();
                                                                                          addr315:
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                addr245:
                                                                                                §§push(param1.§3G§);
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   §§push(§§pop().§-!3§);
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         addr254:
                                                                                                         §§push(param1.§3G§.§-!3§);
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            §§push(param1.§3G§.§;+§);
                                                                                                            if(_loc8_ || param1)
                                                                                                            {
                                                                                                               §§pop().§;+§ = §§pop();
                                                                                                               addr270:
                                                                                                               if(_loc8_ || _loc2_)
                                                                                                               {
                                                                                                                  addr205:
                                                                                                                  §§push(param1.§3G§);
                                                                                                                  if(_loc8_ || _loc3_)
                                                                                                                  {
                                                                                                                     if(§§pop() == _loc4_.§"O§)
                                                                                                                     {
                                                                                                                        if(_loc8_ || param1)
                                                                                                                        {
                                                                                                                           _loc4_.§"O§ = param1.§3G§.§-!3§;
                                                                                                                           addr237:
                                                                                                                           if(_loc8_ || param1)
                                                                                                                           {
                                                                                                                              addr173:
                                                                                                                              §§push(param1.§3G§);
                                                                                                                              if(!(_loc9_ && param1))
                                                                                                                              {
                                                                                                                                 if(!_loc9_)
                                                                                                                                 {
                                                                                                                                    addr183:
                                                                                                                                    §§pop().§;+§ = null;
                                                                                                                                    if(_loc8_)
                                                                                                                                    {
                                                                                                                                       if(_loc8_)
                                                                                                                                       {
                                                                                                                                          if(_loc8_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc9_ && param1))
                                                                                                                                             {
                                                                                                                                                if(_loc8_)
                                                                                                                                                {
                                                                                                                                                   if(_loc8_)
                                                                                                                                                   {
                                                                                                                                                      addr144:
                                                                                                                                                      §§push(param1.§3G§);
                                                                                                                                                      if(_loc8_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc8_)
                                                                                                                                                         {
                                                                                                                                                            §§push(null);
                                                                                                                                                            if(_loc8_)
                                                                                                                                                            {
                                                                                                                                                               §§pop().§-!3§ = §§pop();
                                                                                                                                                               addr160:
                                                                                                                                                               if(_loc8_)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc9_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     b2Joint.§[M§(param1,null);
                                                                                                                                                                     if(_loc8_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc9_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           if(false)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr144);
                                                                                                                                                                           }
                                                                                                                                                                           var _loc6_:*;
                                                                                                                                                                           §§push((_loc6_ = this).§&!o§);
                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() - 1);
                                                                                                                                                                           }
                                                                                                                                                                           var _loc7_:* = §§pop();
                                                                                                                                                                           if(_loc8_)
                                                                                                                                                                           {
                                                                                                                                                                              _loc6_.§&!o§ = _loc7_;
                                                                                                                                                                           }
                                                                                                                                                                           if(!(_loc9_ && _loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr443);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr456);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr160);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr443);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr254);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr237);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr183);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr205);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr173);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr382);
                                                                                                                                             }
                                                                                                                                             §§goto(addr360);
                                                                                                                                          }
                                                                                                                                          §§goto(addr343);
                                                                                                                                       }
                                                                                                                                       §§goto(addr270);
                                                                                                                                    }
                                                                                                                                    §§goto(addr456);
                                                                                                                                 }
                                                                                                                                 §§goto(addr301);
                                                                                                                              }
                                                                                                                              §§goto(addr254);
                                                                                                                           }
                                                                                                                           §§goto(addr292);
                                                                                                                        }
                                                                                                                        §§goto(addr443);
                                                                                                                     }
                                                                                                                     §§goto(addr173);
                                                                                                                  }
                                                                                                                  §§goto(addr281);
                                                                                                               }
                                                                                                               §§goto(addr315);
                                                                                                            }
                                                                                                            §§goto(addr388);
                                                                                                         }
                                                                                                         §§goto(addr385);
                                                                                                      }
                                                                                                      §§goto(addr205);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr254);
                                                                                             }
                                                                                             §§goto(addr409);
                                                                                          }
                                                                                          §§goto(addr395);
                                                                                       }
                                                                                       §§goto(addr401);
                                                                                    }
                                                                                    §§goto(addr409);
                                                                                 }
                                                                                 §§goto(addr367);
                                                                              }
                                                                              §§goto(addr245);
                                                                           }
                                                                           §§goto(addr401);
                                                                        }
                                                                        §§goto(addr301);
                                                                     }
                                                                     §§goto(addr367);
                                                                  }
                                                                  §§goto(addr359);
                                                               }
                                                               §§goto(addr376);
                                                            }
                                                         }
                                                         §§goto(addr364);
                                                      }
                                                      §§goto(addr401);
                                                   }
                                                   §§goto(addr384);
                                                }
                                                §§goto(addr388);
                                             }
                                             §§goto(addr409);
                                          }
                                          §§goto(addr456);
                                       }
                                       §§goto(addr376);
                                       addr420:
                                    }
                                    addr443:
                                    if(_loc2_ == false)
                                    {
                                       addr456:
                                       _loc5_ = _loc4_.§"x§();
                                       addr482:
                                       if(_loc5_)
                                       {
                                          if(_loc5_.§,H§ == _loc3_)
                                          {
                                             if(_loc8_ || param1)
                                             {
                                                _loc5_.§+2§.§=!<§();
                                                if(_loc9_)
                                                {
                                                }
                                             }
                                             §§goto(addr484);
                                          }
                                          _loc5_ = _loc5_.§-!3§;
                                          §§goto(addr482);
                                       }
                                    }
                                    addr484:
                                    return;
                                 }
                                 §§goto(addr420);
                              }
                           }
                        }
                     }
                     §§goto(addr111);
                  }
               }
               §§goto(addr77);
            }
            §§goto(addr108);
         }
         §§goto(addr90);
      }
      
      public function §6!<§(param1:b2Controller) : b2Controller
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc3_)
         {
            param1.§3=§ = this.§-_§;
            loop0:
            while(true)
            {
               param1.§-!I§ = null;
               if(!_loc4_)
               {
                  while(true)
                  {
                     addr38:
                     while(true)
                     {
                        this.§-_§ = param1;
                        if(!(_loc5_ || this))
                        {
                           break loop0;
                        }
                        continue loop0;
                     }
                  }
                  addr83:
               }
               break;
            }
            return param1;
         }
         §§goto(addr83);
      }
      
      public function §%!@§(param1:b2Controller) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(param1.§-!I§);
            if(!_loc5_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(param1.§-!I§);
                     addr101:
                     while(true)
                     {
                        §§pop().§3=§ = param1.§3=§;
                        addr104:
                        while(true)
                        {
                        }
                     }
                     addr40:
                     if(!(_loc4_ || param1))
                     {
                        continue;
                     }
                     loop8:
                     while(true)
                     {
                        this.§-_§ = param1.§3=§;
                        if(!_loc5_)
                        {
                           loop9:
                           while(true)
                           {
                              if(_loc4_)
                              {
                                 if(false)
                                 {
                                    while(true)
                                    {
                                       §§push(param1.§3=§);
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                §§push(param1.§3=§);
                                                addr80:
                                                while(true)
                                                {
                                                   §§pop().§-!I§ = param1.§-!I§;
                                                   addr93:
                                                   while(true)
                                                   {
                                                   }
                                                }
                                                addr31:
                                                if(!(_loc4_ || this))
                                                {
                                                   continue;
                                                }
                                                if(_loc4_)
                                                {
                                                   §§goto(addr40);
                                                }
                                                else
                                                {
                                                   §§goto(addr104);
                                                }
                                             }
                                          }
                                          while(this.§-_§ == param1)
                                          {
                                             if(!(_loc4_ || param1))
                                             {
                                                continue loop9;
                                             }
                                             §§goto(addr31);
                                             §§goto(addr93);
                                          }
                                          addr105:
                                          var _loc2_:*;
                                          §§push((_loc2_ = this).§ !>§);
                                          if(!_loc5_)
                                          {
                                             §§push(§§pop() - 1);
                                          }
                                          var _loc3_:* = §§pop();
                                          if(_loc4_)
                                          {
                                             _loc2_.§ !>§ = _loc3_;
                                          }
                                          break loop8;
                                       }
                                       §§goto(addr80);
                                    }
                                    addr67:
                                 }
                                 §§goto(addr105);
                              }
                              §§goto(addr93);
                           }
                        }
                        break;
                     }
                     return;
                     addr57:
                  }
               }
               §§goto(addr67);
            }
            §§goto(addr101);
         }
         §§goto(addr57);
      }
      
      public function §9!h§(param1:b2Controller) : b2Controller
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(param1.m_world != this)
            {
               if(!(_loc5_ && param1))
               {
                  throw new Error("Controller can only be a member of one world");
               }
               loop0:
               while(true)
               {
                  addr60:
                  if(_loc5_ && param1)
                  {
                     continue;
                  }
                  loop3:
                  while(true)
                  {
                     §§push(this.§-_§);
                     if(!_loc5_)
                     {
                        if(§§pop())
                        {
                           loop4:
                           for(; !_loc5_; if(!(_loc4_ || _loc2_))
                           {
                              continue;
                           },if(false)
                           {
                              continue loop3;
                           },var _loc2_:*,§§push((_loc2_ = this).§ !>§),if(_loc4_ || _loc2_)
                           {
                              §§push(§§pop() + 1);
                           },var _loc3_:* = §§pop(),if(_loc4_ || _loc3_)
                           {
                              _loc2_.§ !>§ = _loc3_;
                           },if(_loc4_ || _loc2_)
                           {
                              §§goto(addr142);
                           },§§goto(addr145))
                           {
                              §§push(this.§-_§);
                              while(true)
                              {
                                 §§pop().§-!I§ = param1;
                                 if(!_loc5_)
                                 {
                                    while(true)
                                    {
                                       this.§-_§ = param1;
                                       if(_loc5_)
                                       {
                                          break;
                                       }
                                       continue loop4;
                                    }
                                    addr19:
                                 }
                                 else
                                 {
                                    addr142:
                                    param1.m_world = this;
                                 }
                                 §§goto(addr145);
                              }
                           }
                           while(true)
                           {
                              param1.§-!I§ = null;
                              if(_loc4_ || _loc2_)
                              {
                                 §§goto(addr60);
                              }
                              else
                              {
                                 §§goto(addr142);
                              }
                           }
                           continue loop0;
                           addr83:
                        }
                        §§goto(addr19);
                     }
                     §§goto(addr44);
                  }
               }
               addr99:
            }
            while(true)
            {
               param1.§3=§ = this.§-_§;
               §§goto(addr83);
               §§goto(addr99);
            }
         }
         addr145:
         return param1;
      }
      
      public function §]B§(param1:b2Controller) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            param1.§49§();
            loop0:
            while(true)
            {
               §§push(param1.§3=§);
               if(!_loc5_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(param1.§3=§);
                        addr119:
                        while(true)
                        {
                           §§pop().§-!I§ = param1.§-!I§;
                           addr122:
                           while(true)
                           {
                           }
                        }
                        addr88:
                        if(!(_loc4_ || param1))
                        {
                           continue;
                        }
                        addr97:
                        param1.§-!I§.§3=§ = param1.§3=§;
                        while(true)
                        {
                           addr24:
                           addr126:
                           while(param1 == this.§-_§)
                           {
                              if(!(_loc4_ || param1))
                              {
                                 return;
                              }
                              addr141:
                              addr141:
                              continue loop0;
                           }
                           var _loc2_:*;
                           §§push((_loc2_ = this).§ !>§);
                           if(!_loc5_)
                           {
                              §§push(§§pop() - 1);
                           }
                           var _loc3_:* = §§pop();
                           if(!_loc5_)
                           {
                              _loc2_.§ !>§ = _loc3_;
                           }
                           §§goto(addr141);
                        }
                        addr100:
                     }
                  }
                  while(true)
                  {
                     §§push(param1.§-!I§);
                     if(!_loc5_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc5_ && _loc2_))
                           {
                              if(!(_loc5_ && this))
                              {
                                 §§goto(addr88);
                              }
                              §§goto(addr122);
                           }
                           §§goto(addr100);
                        }
                        §§goto(addr24);
                     }
                     §§goto(addr97);
                  }
                  addr68:
               }
               §§goto(addr119);
            }
         }
         §§goto(addr66);
      }
      
      public function §;#§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §-!&§ = param1;
         }
      }
      
      public function §,[§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §+!E§ = param1;
         }
      }
      
      public function §]b§() : int
      {
         return this.§[r§;
      }
      
      public function § !3§() : int
      {
         return this.§&!o§;
      }
      
      public function §],§() : int
      {
         return this.§0V§;
      }
      
      public function §<!2§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§>!?§ = param1;
         }
      }
      
      public function §5B§() : b2Vec2
      {
         return this.§>!?§;
      }
      
      public function §@w§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §#$§(param1:Number, param2:int, param3:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
            §§push(this.§;!R§);
            if(!_loc6_)
            {
               §§push(§§pop() & §?!;§);
            }
            if(§§pop())
            {
               addr76:
               while(true)
               {
                  this.§`!n§.§0a§();
                  addr79:
                  loop2:
                  while(true)
                  {
                     addr44:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§;!R§);
                        if(_loc5_ || param1)
                        {
                           §§push(§?!;§);
                           if(!(_loc6_ && param2))
                           {
                              §§push(~§§pop());
                           }
                           §§push(§§pop() & §§pop());
                        }
                        §§pop().§;!R§ = §§pop();
                        addr66:
                        addr68:
                        while(!_loc5_)
                        {
                           continue loop2;
                        }
                        continue loop2;
                     }
                  }
               }
               addr76:
            }
            while(true)
            {
               §§push(this);
               §§push(this.§;!R§);
               if(!_loc6_)
               {
                  §§push(§§pop() | §&!U§);
               }
               §§pop().§;!R§ = §§pop();
               if(!(_loc6_ && param3))
               {
                  if(!_loc6_)
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr44);
                  }
                  else
                  {
                     §§goto(addr76);
                  }
               }
               §§goto(addr66);
               §§goto(addr68);
            }
            var _loc4_:b2TimeStep;
            (_loc4_ = s_timestep2).§^Z§ = param1;
            if(_loc5_)
            {
               _loc4_.§>!,§ = param2;
               loop4:
               while(true)
               {
                  _loc4_.§44§ = param3;
                  loop5:
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
                              _loc4_.§[!%§ = 0;
                              loop8:
                              while(true)
                              {
                                 loop9:
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    §§push(this.§8z§);
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop() * param1);
                                    }
                                    §§pop().§87§ = §§pop();
                                    loop10:
                                    while(true)
                                    {
                                       _loc4_.§[8§ = §-!&§;
                                       while(true)
                                       {
                                          this.§`!n§.§`!"§();
                                          loop12:
                                          while(!(_loc6_ && this))
                                          {
                                             §§push(_loc4_.§^Z§);
                                             loop13:
                                             while(true)
                                             {
                                                §§push(0);
                                                loop14:
                                                while(_loc5_)
                                                {
                                                   if(§§pop() > §§pop())
                                                   {
                                                      loop15:
                                                      while(_loc5_)
                                                      {
                                                         this.§3!=§(_loc4_);
                                                         while(_loc5_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               continue loop8;
                                                            }
                                                            if(!(_loc6_ && param3))
                                                            {
                                                               return;
                                                            }
                                                         }
                                                         continue loop10;
                                                         loop21:
                                                         while(true)
                                                         {
                                                            if(!(_loc6_ && param1))
                                                            {
                                                               if(_loc5_ || param1)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     §§push(_loc4_.§^Z§);
                                                                     continue loop13;
                                                                  }
                                                                  addr292:
                                                                  while(true)
                                                                  {
                                                                     _loc4_.§[!%§ = 1 / param1;
                                                                     break loop21;
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            continue loop15;
                                                         }
                                                         while(true)
                                                         {
                                                            continue loop9;
                                                         }
                                                      }
                                                      continue loop4;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§+!E§);
                                                      loop18:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         loop19:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        this.§0P§(_loc4_);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                     }
                                                                     addr203:
                                                                  }
                                                                  addr134:
                                                                  loop26:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc4_.§^Z§);
                                                                     if(_loc6_ && param1)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(_loc6_)
                                                                     {
                                                                        continue loop6;
                                                                     }
                                                                     §§push(0);
                                                                     if(_loc6_)
                                                                     {
                                                                        while(_loc5_)
                                                                        {
                                                                           §§push(§§pop() > §§pop());
                                                                           if(_loc5_)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 continue loop18;
                                                                              }
                                                                              continue loop19;
                                                                           }
                                                                           addr209:
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                           }
                                                                        }
                                                                        continue loop14;
                                                                        addr180:
                                                                     }
                                                                     if(§§pop() > §§pop())
                                                                     {
                                                                        while(_loc5_)
                                                                        {
                                                                           this.§8z§ = _loc4_.§[!%§;
                                                                           while(true)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr210);
                                                                           }
                                                                           if(_loc6_ && this)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(_loc6_)
                                                                           {
                                                                              continue loop26;
                                                                           }
                                                                           §§goto(addr126);
                                                                        }
                                                                        continue loop12;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(this);
                                                                        §§push(this.§;!R§);
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(§&!U§);
                                                                           if(_loc5_ || param2)
                                                                           {
                                                                              §§push(~§§pop());
                                                                           }
                                                                           §§push(§§pop() & §§pop());
                                                                        }
                                                                        §§pop().§;!R§ = §§pop();
                                                                        if(!(_loc6_ && param3))
                                                                        {
                                                                           §§goto(addr117);
                                                                        }
                                                                        §§goto(addr166);
                                                                     }
                                                                     §§goto(addr210);
                                                                  }
                                                                  continue loop13;
                                                               }
                                                               continue loop5;
                                                               addr194:
                                                            }
                                                            §§goto(addr209);
                                                         }
                                                      }
                                                   }
                                                }
                                                continue loop7;
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
               }
            }
            §§goto(addr292);
         }
         §§goto(addr76);
      }
      
      public function §45§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Body = this.§"!Z§;
         while(_loc1_)
         {
            _loc1_.§84§.§`!5§();
            if(_loc2_ && _loc3_)
            {
               break;
            }
            _loc1_.§3!T§ = 0;
            if(!(_loc3_ || _loc3_))
            {
               break;
            }
            _loc1_ = _loc1_.§3=§;
         }
      }
      
      public function §?!J§() : void
      {
         var _loc23_:Boolean = false;
         var _loc24_:Boolean = true;
         var _loc2_:int = 0;
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§<X§ = null;
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
            §§push(this.§%N§);
            if(!(_loc23_ && _loc1_))
            {
               if(§§pop() == null)
               {
                  if(_loc24_)
                  {
                     §§goto(addr73);
                  }
               }
               §§push(this.§%N§);
               if(!(_loc23_ && _loc2_))
               {
                  §§pop().§%C§.graphics.clear();
                  §§push(this.§%N§);
               }
            }
            §§push(§§pop().§3F§());
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
               if(_loc1_ & b2DebugDraw.§;!s§)
               {
                  addr145:
                  _loc3_ = this.§"!Z§;
                  while(_loc3_)
                  {
                     _loc11_ = _loc3_.m_xf;
                     _loc4_ = _loc3_.§=!e§();
                     if(_loc24_ || _loc2_)
                     {
                        loop12:
                        for(; _loc4_; _loc4_ = _loc4_.§3=§)
                        {
                           _loc5_ = _loc4_.GetShape();
                           if(_loc24_)
                           {
                              §§push(_loc3_.§8!f§());
                              loop13:
                              while(true)
                              {
                                 §§push(false);
                                 addr338:
                                 loop14:
                                 while(§§pop() != §§pop())
                                 {
                                    §§push(_loc3_.§2!r§());
                                    loop15:
                                    while(true)
                                    {
                                       §§push(b2Body.b2_staticBody);
                                       while(§§pop() != §§pop())
                                       {
                                          §§push(_loc3_.§2!r§());
                                          if(_loc24_)
                                          {
                                             §§push(b2Body.b2_kinematicBody);
                                             if(_loc24_ || _loc3_)
                                             {
                                                if(§§pop() == §§pop())
                                                {
                                                   addr285:
                                                   if(_loc24_)
                                                   {
                                                      if(_loc24_ || this)
                                                      {
                                                         _loc15_.Set(0.5,0.5,0.9);
                                                         addr299:
                                                         if(!(_loc23_ && _loc3_))
                                                         {
                                                            this.§>A§(_loc5_,_loc11_,_loc15_);
                                                            addr260:
                                                            if(!(_loc24_ || _loc1_))
                                                            {
                                                               break loop14;
                                                            }
                                                            continue loop12;
                                                         }
                                                         this.§>A§(_loc5_,_loc11_,_loc15_);
                                                         continue loop12;
                                                         addr334:
                                                         addr344:
                                                      }
                                                      addr327:
                                                      this.§>A§(_loc5_,_loc11_,_loc15_);
                                                   }
                                                   continue loop12;
                                                }
                                                continue loop13;
                                             }
                                             continue;
                                          }
                                          continue loop15;
                                       }
                                       addr322:
                                       _loc15_.Set(0.5,0.9,0.5);
                                       §§goto(addr327);
                                    }
                                 }
                                 _loc15_.Set(0.5,0.5,0.3);
                              }
                           }
                           §§goto(addr344);
                        }
                     }
                     _loc3_ = _loc3_.§3=§;
                  }
               }
               §§push(_loc1_);
               if(!_loc23_)
               {
                  §§push(b2DebugDraw.§5!9§);
                  if(!_loc23_)
                  {
                     §§push(§§pop() & §§pop());
                     if(!(_loc23_ && _loc1_))
                     {
                        if(§§pop())
                        {
                           if(_loc24_ || _loc3_)
                           {
                              _loc6_ = this.§"O§;
                              if(_loc24_)
                              {
                                 while(_loc6_)
                                 {
                                    this.§?!B§(_loc6_);
                                    if(!(_loc24_ || _loc3_))
                                    {
                                       break;
                                    }
                                    _loc6_ = _loc6_.§3=§;
                                 }
                                 addr414:
                                 §§push(_loc1_);
                                 if(!(_loc23_ && _loc3_))
                                 {
                                    §§push(b2DebugDraw.§%!n§);
                                    if(!_loc23_)
                                    {
                                       addr426:
                                       §§push(§§pop() & §§pop());
                                       if(!_loc23_)
                                       {
                                          addr429:
                                          if(§§pop())
                                          {
                                             if(!_loc23_)
                                             {
                                                _loc16_ = this.§-_§;
                                                if(_loc24_ || _loc1_)
                                                {
                                                   while(_loc16_)
                                                   {
                                                      _loc16_.§#!n§(this.§%N§);
                                                      if(!_loc24_)
                                                      {
                                                         break;
                                                      }
                                                      _loc16_ = _loc16_.§3=§;
                                                   }
                                                   addr457:
                                                   §§push(_loc1_);
                                                   if(_loc24_)
                                                   {
                                                      §§push(b2DebugDraw.§!-§);
                                                      if(_loc24_ || this)
                                                      {
                                                         §§push(§§pop() & §§pop());
                                                         if(_loc24_)
                                                         {
                                                            addr472:
                                                            if(§§pop())
                                                            {
                                                               if(_loc24_)
                                                               {
                                                                  §§goto(addr475);
                                                               }
                                                               §§goto(addr487);
                                                            }
                                                            §§goto(addr530);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr696);
                                                }
                                                §§goto(addr457);
                                             }
                                             addr475:
                                             _loc15_.Set(0.3,0.9,0.9);
                                             if(_loc24_ || _loc2_)
                                             {
                                                addr487:
                                                §§push(this.§`!n§);
                                                if(_loc24_)
                                                {
                                                   _loc17_ = §§pop().§]3§;
                                                   if(!_loc23_)
                                                   {
                                                      while(_loc17_)
                                                      {
                                                         _loc18_ = _loc17_.§?!l§();
                                                         _loc19_ = _loc17_.§0+§();
                                                         _loc20_ = _loc18_.§=g§().§;!A§();
                                                         _loc21_ = _loc19_.§=g§().§;!A§();
                                                         if(!_loc23_)
                                                         {
                                                            this.§%N§.§32§(_loc20_,_loc21_,_loc15_);
                                                         }
                                                         _loc17_ = _loc17_.§+!N§();
                                                      }
                                                      §§goto(addr530);
                                                   }
                                                   addr530:
                                                   §§push(_loc1_);
                                                   if(!(_loc23_ && _loc3_))
                                                   {
                                                      addr538:
                                                      §§push(b2DebugDraw.§<9§);
                                                      if(!_loc23_)
                                                      {
                                                         addr542:
                                                         §§push(§§pop() & §§pop());
                                                         if(_loc24_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc24_)
                                                               {
                                                                  addr550:
                                                                  _loc7_ = this.§`!n§.§<Z§;
                                                                  _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
                                                                  _loc3_ = this.§"!Z§;
                                                                  if(_loc24_)
                                                                  {
                                                                     while(_loc3_)
                                                                     {
                                                                        if(_loc3_.§8!f§() == false)
                                                                        {
                                                                           if(_loc23_ && _loc3_)
                                                                           {
                                                                              break;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           _loc4_ = _loc3_.§=!e§();
                                                                           if(_loc24_)
                                                                           {
                                                                              loop2:
                                                                              for(; _loc4_; _loc4_ = _loc4_.§+!N§())
                                                                              {
                                                                                 _loc22_ = _loc7_.§^!Q§(_loc4_.§!!o§);
                                                                                 if(!(_loc23_ && _loc2_))
                                                                                 {
                                                                                    _loc14_[0].Set(_loc22_.§>!6§.x,_loc22_.§>!6§.y);
                                                                                    while(true)
                                                                                    {
                                                                                       _loc14_[1].Set(_loc22_.§8!X§.x,_loc22_.§>!6§.y);
                                                                                       while(_loc24_)
                                                                                       {
                                                                                          _loc14_[2].Set(_loc22_.§8!X§.x,_loc22_.§8!X§.y);
                                                                                          addr622:
                                                                                          if(!(_loc24_ || _loc1_))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          if(true)
                                                                                          {
                                                                                             continue loop2;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             _loc14_[3].Set(_loc22_.§>!6§.x,_loc22_.§8!X§.y);
                                                                                             do
                                                                                             {
                                                                                                this.§%N§.§6!j§(_loc14_,4,_loc15_);
                                                                                             }
                                                                                             while(_loc23_ && _loc1_);
                                                                                             
                                                                                             if(!_loc24_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr622);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr631);
                                                                                          }
                                                                                          addr631:
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr654);
                                                                              }
                                                                           }
                                                                        }
                                                                        _loc3_ = _loc3_.§+!N§();
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr697);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr696);
                                                   }
                                                   addr696:
                                                   if(!(_loc1_ & b2DebugDraw.§;!o§))
                                                   {
                                                   }
                                                   §§goto(addr697);
                                                }
                                                §§goto(addr550);
                                             }
                                             addr697:
                                             _loc3_ = this.§"!Z§;
                                             if(_loc24_ || _loc2_)
                                             {
                                                while(_loc3_)
                                                {
                                                   (_loc11_ = §9!X§).R = _loc3_.m_xf.R;
                                                   if(!(_loc23_ && this))
                                                   {
                                                      _loc11_.position = _loc3_.§[!S§();
                                                      if(!(_loc23_ && _loc1_))
                                                      {
                                                         this.§%N§.§ 0§(_loc11_);
                                                      }
                                                   }
                                                   _loc3_ = _loc3_.§3=§;
                                                }
                                             }
                                             return;
                                          }
                                          §§goto(addr457);
                                       }
                                       §§goto(addr472);
                                    }
                                    §§goto(addr542);
                                 }
                                 §§goto(addr696);
                              }
                              §§goto(addr414);
                           }
                           §§goto(addr550);
                        }
                        §§goto(addr414);
                     }
                     §§goto(addr429);
                  }
                  §§goto(addr426);
               }
               §§goto(addr538);
            }
            §§goto(addr145);
         }
         addr73:
      }
      
      public function §?B§(param1:Function, param2:b2AABB) : void
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
                     if(!_loc4_)
                     {
                        break;
                     }
                     §§pop().§§slot[4] = §§pop();
                     loop4:
                     while(true)
                     {
                        §§push(§§newactivation());
                        while(!_loc5_)
                        {
                           continue loop0;
                           while(_loc4_ || param1)
                           {
                              §§pop().§§slot[4] = function(param1:*):Boolean
                              {
                                 return callback(broadPhase.GetUserData(param1));
                              };
                              continue loop4;
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
      
      public function §>#§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
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
                     if(!(_loc5_ || param2))
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
                              loop7:
                              while(true)
                              {
                                 §§pop().§§slot[2] = param2;
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    while(true)
                                    {
                                       §§pop().§§slot[3] = param3;
                                       addr214:
                                       addr118:
                                       while(true)
                                       {
                                          §§push(§§newactivation());
                                          continue loop3;
                                       }
                                       if(_loc5_ || param3)
                                       {
                                          §§pop().§§slot[4] = this.§`!n§.§<Z§;
                                          loop22:
                                          for(; !(_loc6_ && param1); if(_loc6_ && param2)
                                          {
                                             continue;
                                          },if(_loc5_)
                                          {
                                             §§goto(addr89);
                                          },§§goto(addr214))
                                          {
                                             if(_loc5_)
                                             {
                                                addr139:
                                                if(!(_loc6_ && param3))
                                                {
                                                   if(!(_loc6_ && param2))
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         §§push(§§newactivation());
                                                         while(_loc5_)
                                                         {
                                                            §§pop().§§slot[6] = new b2AABB();
                                                            loop24:
                                                            while(true)
                                                            {
                                                               §§push(§§newactivation());
                                                               loop25:
                                                               while(true)
                                                               {
                                                                  if(_loc5_ || param2)
                                                                  {
                                                                     addr63:
                                                                     if(_loc5_ || this)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        §§pop().§§slot[2].ComputeAABB(aabb,transform);
                                                                        while(true)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              continue loop22;
                                                                           }
                                                                           continue loop24;
                                                                           addr38:
                                                                           §§pop().§§slot[4].§@!1§(WorldQueryWrapper,aabb);
                                                                           if(_loc5_ || param1)
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 return;
                                                                              }
                                                                              break loop25;
                                                                           }
                                                                        }
                                                                        §§goto(addr214);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr168:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().§§slot[3]);
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§pop().§5!_§();
                                                                              break loop25;
                                                                           }
                                                                           break;
                                                                           §§goto(addr63);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(§§pop() == null)
                                                                           {
                                                                              while(!_loc6_)
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 continue loop0;
                                                                              }
                                                                              continue loop2;
                                                                              addr170:
                                                                           }
                                                                           addr99:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§newactivation());
                                                                              break loop25;
                                                                           }
                                                                        }
                                                                        addr168:
                                                                        addr158:
                                                                     }
                                                                  }
                                                                  addr101:
                                                                  while(!(_loc6_ && param3))
                                                                  {
                                                                     §§goto(addr118);
                                                                     continue loop25;
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr99);
                                                               }
                                                            }
                                                            if(!(_loc5_ || param1))
                                                            {
                                                               continue;
                                                            }
                                                            if(!_loc6_)
                                                            {
                                                               §§goto(addr38);
                                                            }
                                                            else
                                                            {
                                                               while(_loc5_)
                                                               {
                                                                  §§push(§§pop().§§slot[3]);
                                                               }
                                                               continue loop5;
                                                               addr165:
                                                            }
                                                            §§goto(addr168);
                                                         }
                                                         continue loop3;
                                                      }
                                                      continue loop6;
                                                   }
                                                   continue loop8;
                                                }
                                                addr199:
                                                while(true)
                                                {
                                                   §§goto(addr165);
                                                   §§goto(addr139);
                                                }
                                                §§goto(addr168);
                                             }
                                             §§goto(addr170);
                                          }
                                          while(!_loc6_)
                                          {
                                             §§goto(addr158);
                                             §§push(§§newactivation());
                                             §§goto(addr130);
                                          }
                                          addr130:
                                          continue loop4;
                                          addr184:
                                       }
                                    }
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
      
      public function §1v§(param1:Function, param2:b2Vec2) : void
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
                     if(!(_loc4_ || this))
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
                           while(true)
                           {
                              §§push(§§newactivation());
                              loop7:
                              while(true)
                              {
                                 if(!_loc4_)
                                 {
                                    continue loop5;
                                 }
                                 if(_loc5_)
                                 {
                                    break;
                                 }
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
                                       loop10:
                                       while(true)
                                       {
                                          §§push(§§newactivation());
                                          while(true)
                                          {
                                             §§pop().§§slot[3] = this.§`!n§.§<Z§;
                                             addr186:
                                             while(true)
                                             {
                                                if(!(_loc5_ && param2))
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      break;
                                                      addr149:
                                                   }
                                                   §§push(§§newactivation());
                                                   while(true)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      continue loop7;
                                                   }
                                                   continue loop3;
                                                }
                                                continue loop10;
                                             }
                                             continue loop2;
                                             loop18:
                                             for(; !(_loc5_ && param1); while(true)
                                             {
                                                §§push(§§newactivation());
                                                if(_loc4_ || param1)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      continue;
                                                   }
                                                   addr96:
                                                   while(!_loc5_)
                                                   {
                                                      §§goto(addr99);
                                                      §§push(§§pop().§§slot[5]);
                                                   }
                                                   continue loop9;
                                                }
                                                continue loop18;
                                             },§§goto(addr149))
                                             {
                                                §§push(§§pop().§§slot[5]);
                                                if(_loc4_)
                                                {
                                                   §§push(§§pop().§8!X§);
                                                   §§push(p.x);
                                                   if(!_loc5_)
                                                   {
                                                      §§push(b2Settings.b2_linearSlop);
                                                      if(_loc4_)
                                                      {
                                                         addr84:
                                                         §§push(§§pop() + §§pop());
                                                         §§push(p.y);
                                                         if(_loc4_)
                                                         {
                                                            addr89:
                                                            §§push(§§pop() + b2Settings.b2_linearSlop);
                                                         }
                                                         §§pop().Set(§§pop(),§§pop());
                                                         continue;
                                                      }
                                                      §§goto(addr89);
                                                   }
                                                   §§goto(addr84);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§§pop().§>!6§);
                                                      §§push(p.x);
                                                      if(!_loc5_)
                                                      {
                                                         §§push(b2Settings.b2_linearSlop);
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            addr125:
                                                            §§push(§§pop() - §§pop());
                                                            §§push(p.y);
                                                            if(!(_loc5_ && param1))
                                                            {
                                                               addr135:
                                                               §§push(§§pop() - b2Settings.b2_linearSlop);
                                                            }
                                                            §§pop().Set(§§pop(),§§pop());
                                                            while(_loc4_ || param2)
                                                            {
                                                               §§push(§§newactivation());
                                                               continue loop18;
                                                               if(_loc4_ || _loc3_)
                                                               {
                                                                  addr53:
                                                                  if(!(_loc5_ && param1))
                                                                  {
                                                                     return;
                                                                  }
                                                                  continue loop8;
                                                               }
                                                            }
                                                            §§goto(addr186);
                                                         }
                                                         §§goto(addr135);
                                                      }
                                                      §§goto(addr125);
                                                   }
                                                   addr99:
                                                }
                                             }
                                          }
                                       }
                                    }
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
               addr211:
               while(true)
               {
                  §§push(§§newactivation());
                  addr203:
                  while(true)
                  {
                     §§push(null);
                     loop4:
                     while(true)
                     {
                        §§pop().§§slot[5] = §§pop();
                        addr206:
                        while(true)
                        {
                           §§push(§§newactivation());
                           loop6:
                           while(true)
                           {
                              §§push(null);
                              if(_loc6_ && param2)
                              {
                                 break;
                              }
                              if(!_loc5_)
                              {
                                 continue loop1;
                              }
                              §§pop().§§slot[6] = §§pop();
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 continue loop6;
                              }
                           }
                           continue loop4;
                        }
                     }
                  }
               }
            }
            if(!(_loc5_ || this))
            {
               continue;
            }
            §§pop().§§slot[1] = param1;
            loop9:
            while(_loc5_)
            {
               §§push(§§newactivation());
               loop10:
               while(true)
               {
                  §§pop().§§slot[2] = param2;
                  addr154:
                  while(true)
                  {
                     §§push(§§newactivation());
                     loop12:
                     while(true)
                     {
                        §§pop().§§slot[3] = param3;
                        loop13:
                        while(_loc5_)
                        {
                           §§push(§§newactivation());
                           while(_loc5_)
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
                                 return param1.§&y§;
                              };
                              while(_loc5_)
                              {
                                 §§push(§§newactivation());
                                 while(true)
                                 {
                                    if(_loc5_)
                                    {
                                       if(_loc5_)
                                       {
                                          §§pop().§§slot[4] = this.§`!n§.§<Z§;
                                          while(true)
                                          {
                                             if(!(_loc6_ && param3))
                                             {
                                                if(!(_loc5_ || param3))
                                                {
                                                   break;
                                                }
                                                §§push(§§newactivation());
                                                continue loop10;
                                             }
                                             continue loop13;
                                          }
                                          §§goto(addr211);
                                          addr118:
                                       }
                                       break;
                                    }
                                    continue loop12;
                                 }
                                 §§goto(addr157);
                              }
                              continue loop9;
                           }
                           §§goto(addr203);
                        }
                        §§goto(addr206);
                     }
                  }
               }
            }
            §§goto(addr200);
         }
      }
      
      public function §=!L§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            addr133:
            while(true)
            {
               §§pop().§§slot[3] = §§pop();
               addr135:
               while(true)
               {
                  §§push(§§newactivation());
                  continue loop0;
               }
            }
         }
      }
      
      public function §%!0§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
                     while(true)
                     {
                        §§push(§§newactivation());
                        continue loop0;
                     }
                     addr97:
                     if(!(_loc5_ || param2))
                     {
                        continue;
                     }
                     §§pop().§§slot[4] = function(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number):Number
                     {
                        result[result.length] = param1;
                        return 1;
                     };
                     loop10:
                     while(true)
                     {
                        §§push(§§newactivation());
                        while(true)
                        {
                           if(_loc5_)
                           {
                              §§pop().§§slot[3] = new Vector.<b2Fixture>();
                              continue loop10;
                           }
                           loop9:
                           while(true)
                           {
                              if(_loc5_ || param2)
                              {
                                 if(!_loc5_)
                                 {
                                    continue loop0;
                                 }
                                 §§goto(addr97);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §§pop().§§slot[2] = param2;
                                    addr112:
                                    while(!(_loc4_ && this))
                                    {
                                       §§push(§§newactivation());
                                       continue loop9;
                                    }
                                    continue loop2;
                                 }
                                 addr110:
                              }
                           }
                           §§push(§§newactivation());
                           addr53:
                           continue loop3;
                           if(!(_loc4_ && param1))
                           {
                              return §§pop().§§slot[3];
                           }
                        }
                        addr141:
                        while(true)
                        {
                           §§goto(addr110);
                           addr46:
                           §§push(§§newactivation());
                           if(!(_loc5_ || param1))
                           {
                              continue;
                           }
                           §§goto(addr53);
                        }
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §7!"§() : b2Body
      {
         return this.§"!Z§;
      }
      
      public function §+!<§() : b2Joint
      {
         return this.§"O§;
      }
      
      public function §"x§() : b2Contact
      {
         return this.§]3§;
      }
      
      public function §3C§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§;!R§);
         if(!_loc2_)
         {
            §§push(§&!U§);
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
      
      b2internal function §3!=§(param1:b2TimeStep) : void
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:* = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§-_§;
         while(_loc3_)
         {
            _loc3_.§#$§(param1);
            if(!(_loc18_ || param1))
            {
               break;
            }
            _loc3_ = _loc3_.§3=§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§'!C§).§%%§(this.§[r§,this.§0V§,this.§&!o§,null,this.§`!n§.§7Q§,this.§;!V§);
         _loc2_ = this.§"!Z§;
         if(!_loc17_)
         {
            while(_loc2_)
            {
               _loc2_.§;!R§ &= ~b2Body.§#!`§;
               if(_loc17_ && _loc3_)
               {
                  break;
               }
               _loc2_ = _loc2_.§3=§;
            }
         }
         var _loc5_:b2Contact = this.§]3§;
         if(_loc18_ || param1)
         {
            loop2:
            while(_loc5_)
            {
               _loc5_.§;!R§ &= ~b2Contact.§#!`§;
               if(_loc17_)
               {
                  break;
               }
               while(true)
               {
                  _loc5_ = _loc5_.§3=§;
                  continue loop2;
               }
            }
            var _loc6_:b2Joint = this.§"O§;
            if(_loc18_ || _loc3_)
            {
               loop3:
               while(_loc6_)
               {
                  _loc6_.§,![§ = false;
                  if(!_loc18_)
                  {
                     break;
                  }
                  while(true)
                  {
                     _loc6_ = _loc6_.§3=§;
                     continue loop3;
                  }
               }
               §§push(this.§[r§);
               if(!(_loc17_ && _loc2_))
               {
                  §§push(int(§§pop()));
               }
               var _loc7_:* = §§pop();
               var _loc8_:Vector.<b2Body> = this.§ o§;
               var _loc9_:b2Body = this.§"!Z§;
               if(_loc18_)
               {
                  loop4:
                  while(true)
                  {
                     if(!_loc9_)
                     {
                        if(_loc18_ || this)
                        {
                           addr786:
                           §§push(0);
                           if(!(_loc17_ && this))
                           {
                              addr794:
                              _loc11_ = §§pop();
                              if(!_loc17_)
                              {
                                 while(true)
                                 {
                                 }
                                 addr829:
                                 _loc2_ = this.§"!Z§;
                                 if(_loc18_)
                                 {
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          if(_loc18_ || param1)
                                          {
                                          }
                                          break;
                                       }
                                       §§push(_loc2_.IsAwake());
                                       if(!_loc17_)
                                       {
                                          §§push(false);
                                          if(!(_loc17_ && _loc2_))
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(!_loc17_)
                                             {
                                                §§push(§§pop());
                                                if(_loc18_ || _loc3_)
                                                {
                                                   addr860:
                                                   if(!§§pop())
                                                   {
                                                      if(_loc18_)
                                                      {
                                                         §§pop();
                                                         if(!_loc18_)
                                                         {
                                                            addr916:
                                                            this.§`!n§.§0a§();
                                                            break;
                                                         }
                                                         §§push(_loc2_.§8!f§());
                                                         if(!_loc17_)
                                                         {
                                                            addr871:
                                                            §§push(§§pop() == false);
                                                         }
                                                      }
                                                   }
                                                   if(§§pop())
                                                   {
                                                      if(_loc17_)
                                                      {
                                                      }
                                                   }
                                                   else if(_loc2_.§2!r§() == b2Body.b2_staticBody)
                                                   {
                                                      if(_loc17_)
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      _loc2_.§-!6§();
                                                      if(_loc17_ && param1)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   continue;
                                                }
                                             }
                                             §§goto(addr871);
                                          }
                                          §§goto(addr860);
                                       }
                                       §§goto(addr871);
                                       §§goto(addr916);
                                    }
                                 }
                                 return;
                                 addr825:
                              }
                              while(true)
                              {
                                 _loc11_++;
                                 if(_loc18_ || this)
                                 {
                                    §§goto(addr825);
                                 }
                                 §§goto(addr829);
                              }
                              addr817:
                           }
                           if(§§pop() < _loc8_.length)
                           {
                              if(!_loc8_[_loc11_])
                              {
                                 if(_loc17_ && _loc2_)
                                 {
                                    §§goto(addr829);
                                 }
                                 addr810:
                                 §§goto(addr829);
                              }
                              _loc8_[_loc11_] = null;
                              if(_loc18_)
                              {
                                 §§goto(addr817);
                              }
                           }
                        }
                        §§goto(addr829);
                     }
                     else
                     {
                        §§push(_loc9_.§;!R§);
                        loop5:
                        while(true)
                        {
                           §§push(b2Body.§#!`§);
                           addr264:
                           while(true)
                           {
                              §§push(§§pop() & §§pop());
                              if(!_loc17_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc18_ || _loc3_)
                                    {
                                       continue loop4;
                                    }
                                    §§goto(addr786);
                                 }
                                 else
                                 {
                                    §§push(_loc9_.IsAwake());
                                    loop7:
                                    while(true)
                                    {
                                       §§push(false);
                                       if(!(_loc17_ && _loc3_))
                                       {
                                          §§push(§§pop() == §§pop());
                                          while(true)
                                          {
                                             §§push(§§pop());
                                          }
                                          addr287:
                                       }
                                       addr288:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             loop10:
                                             while(true)
                                             {
                                                §§pop();
                                                if(_loc18_)
                                                {
                                                   do
                                                   {
                                                      §§push(_loc9_.§8!f§());
                                                      if(_loc18_ || _loc3_)
                                                      {
                                                         continue loop7;
                                                      }
                                                      addr217:
                                                      if(!_loc18_)
                                                      {
                                                         continue loop10;
                                                      }
                                                   }
                                                   while(_loc18_);
                                                   
                                                   §§goto(addr287);
                                                   addr191:
                                                }
                                                else
                                                {
                                                   §§goto(addr786);
                                                }
                                             }
                                             §§goto(addr786);
                                          }
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc17_)
                                                {
                                                   break;
                                                }
                                                continue loop4;
                                             }
                                             continue loop5;
                                          }
                                          §§goto(addr810);
                                       }
                                    }
                                 }
                                 §§goto(addr810);
                              }
                              break;
                           }
                           §§goto(addr794);
                        }
                     }
                     §§goto(addr810);
                  }
               }
               §§goto(addr794);
            }
            §§goto(addr149);
         }
         §§goto(addr125);
      }
      
      b2internal function §0P§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§'!C§).§%%§(this.§[r§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§`!n§.§7Q§,this.§;!V§);
         var _loc10_:Vector.<b2Body> = §4!a§;
         _loc2_ = this.§"!Z§;
         while(_loc2_)
         {
            _loc2_.§;!R§ &= ~b2Body.§#!`§;
            if(!_loc23_)
            {
               _loc2_.m_sweep.§3J§ = 0;
               if(_loc23_ && param1)
               {
                  break;
               }
            }
            _loc2_ = _loc2_.§3=§;
         }
         _loc11_ = this.§]3§;
         if(!_loc23_)
         {
            loop1:
            while(_loc11_)
            {
               §§push(_loc11_);
               §§push(_loc11_.§;!R§);
               §§push(b2Contact.§;,§ | b2Contact.§#!`§);
               if(_loc24_)
               {
                  §§push(~§§pop());
               }
               §§pop().§;!R§ = §§pop() & §§pop();
               if(!(_loc24_ || _loc2_))
               {
                  break;
               }
               while(true)
               {
                  _loc11_ = _loc11_.§3=§;
                  continue loop1;
               }
            }
            _loc8_ = this.§"O§;
            if(!(_loc23_ && this))
            {
               loop2:
               while(_loc8_)
               {
                  _loc8_.§,![§ = false;
                  if(_loc23_)
                  {
                     break;
                  }
                  while(true)
                  {
                     _loc8_ = _loc8_.§3=§;
                     continue loop2;
                  }
               }
               loop3:
               while(true)
               {
                  _loc12_ = null;
                  if(!(_loc23_ && param1))
                  {
                     _loc13_ = Number(1);
                  }
                  _loc11_ = this.§]3§;
                  if(!_loc23_)
                  {
                     loop4:
                     while(true)
                     {
                        if(!_loc11_)
                        {
                           if(!_loc23_)
                           {
                              addr920:
                              §§push(_loc12_ == null);
                              if(!(_loc23_ && _loc2_))
                              {
                                 addr931:
                                 if(!§§pop())
                                 {
                                    if(!(_loc23_ && param1))
                                    {
                                       addr939:
                                       §§pop();
                                       if(!(_loc23_ && this))
                                       {
                                          addr947:
                                          §§push(1 - 100 * Number.MIN_VALUE < _loc13_);
                                       }
                                       break loop3;
                                    }
                                 }
                              }
                              if(§§pop())
                              {
                                 break loop3;
                              }
                              addr959:
                              _loc3_ = _loc12_.§50§;
                              _loc4_ = _loc12_.§'z§;
                              _loc5_ = _loc3_.m_body;
                              _loc6_ = _loc4_.m_body;
                              if(!(_loc23_ && this))
                              {
                                 §9,§.Set(_loc5_.m_sweep);
                                 §8!E§.Set(_loc6_.m_sweep);
                                 _loc5_.§]!W§(_loc13_);
                                 addr1143:
                                 addr1151:
                                 if(_loc24_)
                                 {
                                    _loc6_.§]!W§(_loc13_);
                                    _loc12_.§6!^§(this.§`!n§.§7Q§);
                                    addr1138:
                                    if(!_loc23_)
                                    {
                                       _loc12_.§;!R§ &= ~b2Contact.§;,§;
                                       addr1124:
                                       §§push(_loc12_.§2r§());
                                       if(_loc24_ || this)
                                       {
                                          §§push(true);
                                          if(_loc24_)
                                          {
                                             addr1104:
                                             §§push(§§pop() == §§pop());
                                             §§push(§§pop() == §§pop());
                                             if(!(_loc23_ && _loc2_))
                                             {
                                                addr1112:
                                                if(!§§pop())
                                                {
                                                   addr1113:
                                                   §§pop();
                                                   addr1114:
                                                   §§push(_loc12_.§&Y§());
                                                   if(_loc24_ || _loc3_)
                                                   {
                                                      if(!(_loc23_ && param1))
                                                      {
                                                         §§push(false);
                                                         if(!_loc23_)
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            if(!(_loc23_ && _loc2_))
                                                            {
                                                               addr1077:
                                                               if(!_loc23_)
                                                               {
                                                                  addr1079:
                                                                  if(§§pop())
                                                                  {
                                                                     if(!_loc23_)
                                                                     {
                                                                        if(_loc24_)
                                                                        {
                                                                           addr1087:
                                                                           _loc5_.m_sweep.Set(§9,§);
                                                                           addr1089:
                                                                           §§push(_loc6_.m_sweep);
                                                                           if(_loc24_ || _loc3_)
                                                                           {
                                                                              §§pop().Set(§8!E§);
                                                                              addr1046:
                                                                              if(!_loc23_)
                                                                              {
                                                                                 addr1019:
                                                                                 _loc5_.§0!y§();
                                                                                 if(!(_loc23_ && _loc2_))
                                                                                 {
                                                                                    if(_loc24_)
                                                                                    {
                                                                                       if(!_loc23_)
                                                                                       {
                                                                                          _loc6_.§0!y§();
                                                                                          if(!(_loc23_ && _loc3_))
                                                                                          {
                                                                                             if(_loc24_ || param1)
                                                                                             {
                                                                                                if(!_loc23_)
                                                                                                {
                                                                                                   if(_loc24_ || _loc2_)
                                                                                                   {
                                                                                                      if(false)
                                                                                                      {
                                                                                                         §§goto(addr1019);
                                                                                                      }
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                   §§goto(addr1143);
                                                                                                }
                                                                                                §§goto(addr1046);
                                                                                             }
                                                                                             §§goto(addr1019);
                                                                                          }
                                                                                          addr1162:
                                                                                          continue loop3;
                                                                                          addr1033:
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr1138);
                                                                                 }
                                                                                 §§goto(addr1114);
                                                                              }
                                                                              §§goto(addr1089);
                                                                           }
                                                                           §§goto(addr1087);
                                                                        }
                                                                        §§goto(addr1124);
                                                                     }
                                                                     §§goto(addr1087);
                                                                  }
                                                                  §§push(_loc12_.§!u§());
                                                               }
                                                               §§goto(addr1104);
                                                            }
                                                            addr1161:
                                                            if(§§pop() == false)
                                                            {
                                                               §§goto(addr1162);
                                                            }
                                                            else
                                                            {
                                                               if((_loc14_ = _loc5_).§2!r§() != b2Body.b2_dynamicBody)
                                                               {
                                                                  if(_loc24_)
                                                                  {
                                                                     _loc14_ = _loc6_;
                                                                     addr1176:
                                                                     _loc9_.§49§();
                                                                     if(_loc24_ || param1)
                                                                     {
                                                                        addr1227:
                                                                        _loc15_ = 0;
                                                                        if(!(_loc23_ && this))
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc24_)
                                                                           {
                                                                              if(!(_loc24_ || this))
                                                                              {
                                                                                 §§goto(addr1227);
                                                                              }
                                                                              _loc16_ = §§pop();
                                                                              addr1200:
                                                                              _loc10_[_loc15_ + _loc16_++] = _loc14_;
                                                                              if(!_loc23_)
                                                                              {
                                                                                 _loc14_.§;!R§ |= b2Body.§#!`§;
                                                                                 if(_loc24_)
                                                                                 {
                                                                                    if(_loc24_)
                                                                                    {
                                                                                       addr1198:
                                                                                       if(false)
                                                                                       {
                                                                                          §§goto(addr1200);
                                                                                       }
                                                                                       addr1695:
                                                                                       if(_loc16_ > 0)
                                                                                       {
                                                                                          _loc2_ = _loc10_[_loc15_++];
                                                                                          if(_loc24_)
                                                                                          {
                                                                                             §§push(_loc16_);
                                                                                             if(_loc24_ || this)
                                                                                             {
                                                                                                §§push(§§pop() - 1);
                                                                                             }
                                                                                             _loc16_ = §§pop();
                                                                                             addr1270:
                                                                                             _loc9_.§'!=§(_loc2_);
                                                                                             if(!(_loc23_ && _loc2_))
                                                                                             {
                                                                                                if(_loc2_.IsAwake() == false)
                                                                                                {
                                                                                                   if(_loc24_)
                                                                                                   {
                                                                                                      addr1256:
                                                                                                      _loc2_.SetAwake(true);
                                                                                                      if(_loc24_)
                                                                                                      {
                                                                                                         if(_loc24_ || this)
                                                                                                         {
                                                                                                            if(false)
                                                                                                            {
                                                                                                               §§goto(addr1270);
                                                                                                            }
                                                                                                            addr1293:
                                                                                                            if(_loc2_.§2!r§() != b2Body.b2_dynamicBody)
                                                                                                            {
                                                                                                               addr1298:
                                                                                                               §§goto(addr1695);
                                                                                                            }
                                                                                                            _loc7_ = _loc2_.§]3§;
                                                                                                            if(_loc24_)
                                                                                                            {
                                                                                                               addr1544:
                                                                                                               if(!_loc7_)
                                                                                                               {
                                                                                                                  addr1546:
                                                                                                                  _loc21_ = _loc2_.§"O§;
                                                                                                                  if(_loc24_)
                                                                                                                  {
                                                                                                                     addr1693:
                                                                                                                     if(!_loc21_)
                                                                                                                     {
                                                                                                                        §§goto(addr1695);
                                                                                                                     }
                                                                                                                     if(_loc9_.§&!o§ == _loc9_.§ !r§)
                                                                                                                     {
                                                                                                                        if(_loc24_)
                                                                                                                        {
                                                                                                                           addr1689:
                                                                                                                           _loc21_ = _loc21_.§-!3§;
                                                                                                                           §§goto(addr1693);
                                                                                                                           addr1561:
                                                                                                                        }
                                                                                                                        addr1569:
                                                                                                                        §§goto(addr1689);
                                                                                                                     }
                                                                                                                     if(_loc21_.§2B§.§,![§ == true)
                                                                                                                     {
                                                                                                                        if(!_loc23_)
                                                                                                                        {
                                                                                                                           §§goto(addr1569);
                                                                                                                        }
                                                                                                                        §§goto(addr1695);
                                                                                                                     }
                                                                                                                     if((_loc22_ = _loc21_.§,H§).§8!f§() == false)
                                                                                                                     {
                                                                                                                        if(_loc24_)
                                                                                                                        {
                                                                                                                           §§goto(addr1689);
                                                                                                                        }
                                                                                                                        addr1674:
                                                                                                                        §§goto(addr1689);
                                                                                                                     }
                                                                                                                     _loc9_.§>!l§(_loc21_.§2B§);
                                                                                                                     if(_loc24_ || param1)
                                                                                                                     {
                                                                                                                        _loc21_.§2B§.§,![§ = true;
                                                                                                                        addr1688:
                                                                                                                        §§push(_loc22_.§;!R§);
                                                                                                                        if(!(_loc23_ && _loc3_))
                                                                                                                        {
                                                                                                                           §§push(b2Body.§#!`§);
                                                                                                                           if(!(_loc23_ && param1))
                                                                                                                           {
                                                                                                                              if(§§pop() & §§pop())
                                                                                                                              {
                                                                                                                                 if(!(_loc23_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    §§goto(addr1674);
                                                                                                                                 }
                                                                                                                                 addr1680:
                                                                                                                                 _loc22_.§]!W§(_loc13_);
                                                                                                                                 _loc22_.SetAwake(true);
                                                                                                                                 addr1683:
                                                                                                                                 if(!_loc23_)
                                                                                                                                 {
                                                                                                                                    addr1631:
                                                                                                                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                                                                                                                    addr1614:
                                                                                                                                    _loc16_++;
                                                                                                                                    addr1638:
                                                                                                                                    if(_loc24_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc23_ && param1))
                                                                                                                                       {
                                                                                                                                          _loc22_.§;!R§ |= b2Body.§#!`§;
                                                                                                                                          if(!_loc23_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc23_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                if(_loc24_)
                                                                                                                                                {
                                                                                                                                                   if(false)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr1614);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1689);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1688);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1638);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1614);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr1683);
                                                                                                                                    addr1645:
                                                                                                                                 }
                                                                                                                                 §§goto(addr1680);
                                                                                                                              }
                                                                                                                              addr1677:
                                                                                                                              §§push(_loc22_.§2!r§());
                                                                                                                              §§push(b2Body.b2_staticBody);
                                                                                                                           }
                                                                                                                           if(§§pop() != §§pop())
                                                                                                                           {
                                                                                                                              §§goto(addr1680);
                                                                                                                           }
                                                                                                                           §§goto(addr1631);
                                                                                                                        }
                                                                                                                        §§goto(addr1677);
                                                                                                                     }
                                                                                                                     §§goto(addr1645);
                                                                                                                  }
                                                                                                                  §§goto(addr1561);
                                                                                                               }
                                                                                                               §§push(_loc9_.§0V§);
                                                                                                               if(!(_loc23_ && _loc2_))
                                                                                                               {
                                                                                                                  if(§§pop() == _loc9_.§?!m§)
                                                                                                                  {
                                                                                                                     addr1439:
                                                                                                                     §§goto(addr1546);
                                                                                                                  }
                                                                                                                  addr1442:
                                                                                                                  §§push(_loc7_.§+2§.§;!R§ & b2Contact.§#!`§);
                                                                                                               }
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  addr1540:
                                                                                                                  _loc7_ = _loc7_.§-!3§;
                                                                                                                  §§goto(addr1544);
                                                                                                                  addr1447:
                                                                                                               }
                                                                                                               addr1451:
                                                                                                               §§push(_loc7_.§+2§.§2r§());
                                                                                                               §§push(true);
                                                                                                               if(_loc24_ || param1)
                                                                                                               {
                                                                                                                  addr1460:
                                                                                                                  §§push(§§pop() == §§pop());
                                                                                                                  §§push(§§pop() == §§pop());
                                                                                                               }
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  addr1462:
                                                                                                                  §§pop();
                                                                                                                  addr1463:
                                                                                                                  §§push(_loc7_.§+2§);
                                                                                                                  if(_loc24_ || _loc2_)
                                                                                                                  {
                                                                                                                     addr1402:
                                                                                                                     §§push(§§pop().§&Y§());
                                                                                                                     if(_loc24_)
                                                                                                                     {
                                                                                                                        addr1401:
                                                                                                                        §§push(§§pop() == false);
                                                                                                                     }
                                                                                                                     if(_loc24_)
                                                                                                                     {
                                                                                                                        addr1406:
                                                                                                                        §§push(§§pop());
                                                                                                                        if(!(_loc23_ && _loc2_))
                                                                                                                        {
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              addr1414:
                                                                                                                              if(!(_loc23_ && _loc2_))
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 addr1422:
                                                                                                                                 if(!_loc23_)
                                                                                                                                 {
                                                                                                                                    addr1347:
                                                                                                                                    §§push(_loc7_.§+2§.§!u§());
                                                                                                                                    if(!(_loc23_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       if(!_loc23_)
                                                                                                                                       {
                                                                                                                                          §§push(false);
                                                                                                                                          if(_loc24_)
                                                                                                                                          {
                                                                                                                                             if(_loc24_)
                                                                                                                                             {
                                                                                                                                                addr1366:
                                                                                                                                                §§push(§§pop() == §§pop());
                                                                                                                                                if(!_loc23_)
                                                                                                                                                {
                                                                                                                                                   if(_loc24_)
                                                                                                                                                   {
                                                                                                                                                      addr1370:
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc23_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr1540);
                                                                                                                                                         }
                                                                                                                                                         addr1384:
                                                                                                                                                         if(!_loc23_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc7_.§+2§);
                                                                                                                                                            if(!_loc23_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc23_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc24_)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().§;!R§ = _loc7_.§+2§.§;!R§ | b2Contact.§#!`§;
                                                                                                                                                                     if(_loc24_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc24_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc24_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc24_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 if(false)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr1347);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push((_loc22_ = _loc7_.§,H§).§;!R§);
                                                                                                                                                                                 if(_loc24_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(b2Body.§#!`§);
                                                                                                                                                                                    if(!_loc23_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop() & §§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc24_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr1540);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1498:
                                                                                                                                                                                          _loc22_.§]!W§(_loc13_);
                                                                                                                                                                                          if(!_loc23_)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc22_.SetAwake(true);
                                                                                                                                                                                             addr1527:
                                                                                                                                                                                             _loc10_[_loc15_ + _loc16_] = _loc22_;
                                                                                                                                                                                             addr1533:
                                                                                                                                                                                             if(!_loc23_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1523:
                                                                                                                                                                                                _loc16_++;
                                                                                                                                                                                                _loc22_.§;!R§ |= b2Body.§#!`§;
                                                                                                                                                                                                if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc24_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1521:
                                                                                                                                                                                                      if(false)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr1523);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1540);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1533);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr1525:
                                                                                                                                                                                                §§goto(addr1525);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr1539:
                                                                                                                                                                                             §§goto(addr1539);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1523);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr1493:
                                                                                                                                                                                       §§push(_loc22_.§2!r§());
                                                                                                                                                                                       §§push(b2Body.b2_staticBody);
                                                                                                                                                                                    }
                                                                                                                                                                                    if(§§pop() != §§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc24_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr1498);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1521);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1527);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1493);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1447);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1463);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1384);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1546);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1442);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1463);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1347);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1422);
                                                                                                                                                      }
                                                                                                                                                      _loc9_.§<!V§(_loc7_.§+2§);
                                                                                                                                                      §§goto(addr1384);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1451);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1402);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1401);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1406);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1414);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1366);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1439);
                                                                                                                              }
                                                                                                                              §§goto(addr1460);
                                                                                                                           }
                                                                                                                           §§goto(addr1370);
                                                                                                                        }
                                                                                                                        §§goto(addr1451);
                                                                                                                     }
                                                                                                                     §§goto(addr1462);
                                                                                                                  }
                                                                                                                  §§goto(addr1451);
                                                                                                               }
                                                                                                               §§goto(addr1406);
                                                                                                            }
                                                                                                            §§goto(addr1540);
                                                                                                         }
                                                                                                         §§goto(addr1270);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr1298);
                                                                                                }
                                                                                                §§goto(addr1293);
                                                                                             }
                                                                                             addr1292:
                                                                                             §§goto(addr1292);
                                                                                          }
                                                                                          §§goto(addr1256);
                                                                                       }
                                                                                       addr1698:
                                                                                       (_loc17_ = §?!V§).§[8§ = false;
                                                                                       if(_loc23_ && _loc3_)
                                                                                       {
                                                                                          continue loop3;
                                                                                       }
                                                                                       §§push(_loc17_);
                                                                                       §§push(1 - _loc13_);
                                                                                       if(!_loc23_)
                                                                                       {
                                                                                          §§push(§§pop() * param1.§^Z§);
                                                                                       }
                                                                                       §§pop().§^Z§ = §§pop();
                                                                                       if(_loc24_ || this)
                                                                                       {
                                                                                          _loc17_.§[!%§ = 1 / _loc17_.§^Z§;
                                                                                          if(!_loc23_)
                                                                                          {
                                                                                             _loc17_.§87§ = 0;
                                                                                             _loc17_.§>!,§ = param1.§>!,§;
                                                                                             addr1760:
                                                                                             if(!_loc24_)
                                                                                             {
                                                                                                continue loop3;
                                                                                             }
                                                                                             _loc17_.§44§ = param1.§44§;
                                                                                             if(_loc24_)
                                                                                             {
                                                                                                addr1728:
                                                                                                _loc9_.§0P§(_loc17_);
                                                                                                if(!(_loc23_ && this))
                                                                                                {
                                                                                                   §§push(0);
                                                                                                   if(!_loc23_)
                                                                                                   {
                                                                                                      _loc18_ = §§pop();
                                                                                                      if(_loc24_ || _loc2_)
                                                                                                      {
                                                                                                         if(!_loc23_)
                                                                                                         {
                                                                                                            if(false)
                                                                                                            {
                                                                                                               §§goto(addr1728);
                                                                                                            }
                                                                                                            addr1875:
                                                                                                            §§push(_loc18_);
                                                                                                            if(_loc24_ || _loc3_)
                                                                                                            {
                                                                                                               §§push(_loc9_.§[r§);
                                                                                                               if(_loc24_ || _loc2_)
                                                                                                               {
                                                                                                                  if(§§pop() < §§pop())
                                                                                                                  {
                                                                                                                     _loc2_ = _loc9_.§-!l§[_loc18_];
                                                                                                                     if(_loc24_ || param1)
                                                                                                                     {
                                                                                                                        _loc2_.§;!R§ &= ~b2Body.§#!`§;
                                                                                                                        if(!_loc23_)
                                                                                                                        {
                                                                                                                           if(_loc2_.IsAwake() == false)
                                                                                                                           {
                                                                                                                              if(_loc24_ || this)
                                                                                                                              {
                                                                                                                                 addr1874:
                                                                                                                                 _loc18_++;
                                                                                                                                 addr1825:
                                                                                                                              }
                                                                                                                              §§goto(addr1875);
                                                                                                                           }
                                                                                                                           if(_loc2_.§2!r§() != b2Body.b2_dynamicBody)
                                                                                                                           {
                                                                                                                              if(_loc24_)
                                                                                                                              {
                                                                                                                                 addr1833:
                                                                                                                                 §§goto(addr1874);
                                                                                                                              }
                                                                                                                              §§goto(addr1875);
                                                                                                                           }
                                                                                                                           _loc2_.§-!6§();
                                                                                                                           if(!(_loc23_ && param1))
                                                                                                                           {
                                                                                                                              _loc7_ = _loc2_.§]3§;
                                                                                                                              if(_loc24_)
                                                                                                                              {
                                                                                                                                 addr1872:
                                                                                                                                 if(!_loc7_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr1874);
                                                                                                                                 }
                                                                                                                                 _loc7_.§+2§.§;!R§ &= ~b2Contact.§;,§;
                                                                                                                                 if(_loc24_ || this)
                                                                                                                                 {
                                                                                                                                    addr1868:
                                                                                                                                    _loc7_ = _loc7_.§-!3§;
                                                                                                                                    §§goto(addr1872);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1874);
                                                                                                                              }
                                                                                                                              §§goto(addr1868);
                                                                                                                           }
                                                                                                                           §§goto(addr1875);
                                                                                                                        }
                                                                                                                        §§goto(addr1825);
                                                                                                                     }
                                                                                                                     §§goto(addr1833);
                                                                                                                  }
                                                                                                                  if(!_loc23_)
                                                                                                                  {
                                                                                                                     addr1895:
                                                                                                                     §§push(0);
                                                                                                                     if(!(_loc23_ && _loc3_))
                                                                                                                     {
                                                                                                                        _loc18_ = §§pop();
                                                                                                                        if(!(_loc23_ && param1))
                                                                                                                        {
                                                                                                                           addr1940:
                                                                                                                           §§push(_loc18_);
                                                                                                                           if(!(_loc23_ && _loc3_))
                                                                                                                           {
                                                                                                                              §§push(_loc9_.§0V§);
                                                                                                                              if(_loc24_ || this)
                                                                                                                              {
                                                                                                                                 addr1957:
                                                                                                                                 if(§§pop() < §§pop())
                                                                                                                                 {
                                                                                                                                    _loc11_ = _loc9_.§+G§[_loc18_];
                                                                                                                                    §§push(_loc11_);
                                                                                                                                    §§push(_loc11_.§;!R§);
                                                                                                                                    §§push(b2Contact.§;,§ | b2Contact.§#!`§);
                                                                                                                                    if(_loc24_)
                                                                                                                                    {
                                                                                                                                       §§push(~§§pop());
                                                                                                                                    }
                                                                                                                                    §§pop().§;!R§ = §§pop() & §§pop();
                                                                                                                                    if(_loc24_ || param1)
                                                                                                                                    {
                                                                                                                                       _loc18_++;
                                                                                                                                    }
                                                                                                                                    §§goto(addr1940);
                                                                                                                                 }
                                                                                                                                 if(_loc24_)
                                                                                                                                 {
                                                                                                                                    §§push(0);
                                                                                                                                    if(_loc24_)
                                                                                                                                    {
                                                                                                                                       addr1963:
                                                                                                                                       _loc18_ = §§pop();
                                                                                                                                       if(!(_loc24_ || this))
                                                                                                                                       {
                                                                                                                                          continue loop3;
                                                                                                                                       }
                                                                                                                                       addr1996:
                                                                                                                                       §§push(_loc18_);
                                                                                                                                       §§push(_loc9_.§&!o§);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1996);
                                                                                                                                 }
                                                                                                                                 addr2001:
                                                                                                                                 this.§`!n§.§0a§();
                                                                                                                                 continue loop3;
                                                                                                                              }
                                                                                                                              if(§§pop() < §§pop())
                                                                                                                              {
                                                                                                                                 (_loc8_ = _loc9_.§-!0§[_loc18_]).§,![§ = false;
                                                                                                                                 if(_loc24_)
                                                                                                                                 {
                                                                                                                                    _loc18_++;
                                                                                                                                 }
                                                                                                                                 §§goto(addr1996);
                                                                                                                              }
                                                                                                                              if(_loc23_)
                                                                                                                              {
                                                                                                                                 continue loop3;
                                                                                                                              }
                                                                                                                              §§goto(addr2001);
                                                                                                                           }
                                                                                                                           §§goto(addr1963);
                                                                                                                        }
                                                                                                                        §§goto(addr2001);
                                                                                                                     }
                                                                                                                     §§goto(addr1996);
                                                                                                                  }
                                                                                                                  §§goto(addr2001);
                                                                                                               }
                                                                                                               §§goto(addr1957);
                                                                                                            }
                                                                                                            §§goto(addr1996);
                                                                                                         }
                                                                                                         §§goto(addr1760);
                                                                                                      }
                                                                                                      §§goto(addr1957);
                                                                                                   }
                                                                                                   §§goto(addr1963);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr1895);
                                                                                    }
                                                                                    §§goto(addr1200);
                                                                                 }
                                                                                 §§goto(addr1698);
                                                                              }
                                                                              addr1225:
                                                                              §§goto(addr1225);
                                                                           }
                                                                           §§goto(addr1695);
                                                                        }
                                                                        §§goto(addr1698);
                                                                     }
                                                                     §§goto(addr1198);
                                                                  }
                                                                  §§goto(addr1200);
                                                               }
                                                               §§goto(addr1176);
                                                            }
                                                         }
                                                         §§goto(addr1161);
                                                      }
                                                      §§goto(addr1113);
                                                   }
                                                   §§goto(addr1077);
                                                }
                                                §§goto(addr1079);
                                             }
                                             §§goto(addr1161);
                                          }
                                          §§goto(addr1112);
                                       }
                                       §§goto(addr1104);
                                    }
                                    §§goto(addr1151);
                                 }
                                 addr1156:
                                 §§goto(addr1156);
                              }
                              §§goto(addr1033);
                           }
                           break loop3;
                        }
                        §§push(_loc11_.§2r§());
                        loop5:
                        while(true)
                        {
                           §§push(true);
                           if(_loc24_ || param1)
                           {
                              §§push(§§pop() == §§pop());
                              if(_loc24_)
                              {
                                 §§push(§§pop());
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          if(!(_loc23_ && param1))
                                          {
                                             §§push(_loc11_.§&Y§());
                                             loop8:
                                             while(true)
                                             {
                                                §§push(false);
                                                if(!_loc23_)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(!(_loc23_ && this))
                                                   {
                                                      loop13:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc24_)
                                                         {
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  if(_loc24_)
                                                                  {
                                                                     §§pop();
                                                                     if(!_loc23_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc11_.§else§());
                                                                           if(!_loc24_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop8;
                                                                        }
                                                                        §§goto(addr939);
                                                                        addr254:
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr894:
                                                                     if(!§§pop())
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     if(!_loc23_)
                                                                     {
                                                                        addr897:
                                                                        _loc12_ = _loc11_;
                                                                        if(_loc24_)
                                                                        {
                                                                           §§push(_loc19_);
                                                                           if(_loc24_ || _loc2_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           _loc13_ = §§pop();
                                                                        }
                                                                        continue loop4;
                                                                     }
                                                                  }
                                                                  §§goto(addr947);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc24_ || _loc2_)
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        §§goto(addr947);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(1);
                                                                        loop11:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           while(true)
                                                                           {
                                                                              _loc19_ = §§pop();
                                                                              if(!(_loc23_ && param1))
                                                                              {
                                                                                 §§push(_loc11_.§;!R§ & b2Contact.§;,§);
                                                                                 if(!(_loc23_ && this))
                                                                                 {
                                                                                    if(!_loc24_)
                                                                                    {
                                                                                       continue loop11;
                                                                                    }
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!(_loc23_ && this))
                                                                                       {
                                                                                          §§push(_loc11_.§7!W§);
                                                                                          if(_loc24_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             if(_loc24_ || _loc3_)
                                                                                             {
                                                                                                if(_loc23_ && param1)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                _loc19_ = §§pop();
                                                                                                if(!(_loc23_ && _loc2_))
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      §§goto(addr254);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr855:
                                                                                                      §§push(Number.MIN_VALUE < _loc19_);
                                                                                                      if(_loc24_ || _loc2_)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         if(_loc24_ || this)
                                                                                                         {
                                                                                                            break loop13;
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr931);
                                                                                                   }
                                                                                                }
                                                                                                §§push(_loc19_);
                                                                                                if(_loc23_)
                                                                                                {
                                                                                                }
                                                                                                §§goto(addr947);
                                                                                             }
                                                                                             §§push(_loc13_);
                                                                                             if(_loc24_)
                                                                                             {
                                                                                                §§push(§§pop() < §§pop());
                                                                                                if(_loc24_ || param1)
                                                                                                {
                                                                                                   §§goto(addr894);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr939);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr947);
                                                                                       }
                                                                                       break loop11;
                                                                                    }
                                                                                    §§push(_loc11_.§50§);
                                                                                    if(!(_loc23_ && param1))
                                                                                    {
                                                                                       _loc3_ = §§pop();
                                                                                       _loc4_ = _loc11_.§'z§;
                                                                                       _loc5_ = _loc3_.m_body;
                                                                                       _loc6_ = _loc4_.m_body;
                                                                                       if(!(_loc23_ && _loc3_))
                                                                                       {
                                                                                          addr852:
                                                                                          §§push(_loc5_.§2!r§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false);
                                                                                          if(_loc5_.§2!r§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false)
                                                                                          {
                                                                                             addr843:
                                                                                             §§pop();
                                                                                             addr844:
                                                                                             §§push(_loc6_.§2!r§());
                                                                                             if(!_loc23_)
                                                                                             {
                                                                                                §§push(b2Body.b2_dynamicBody);
                                                                                                if(!_loc23_)
                                                                                                {
                                                                                                   addr817:
                                                                                                   §§push(§§pop() == §§pop());
                                                                                                   if(!_loc23_)
                                                                                                   {
                                                                                                      addr820:
                                                                                                      §§push(!§§pop());
                                                                                                      if(_loc24_ || _loc3_)
                                                                                                      {
                                                                                                         if(_loc24_)
                                                                                                         {
                                                                                                            if(!_loc23_)
                                                                                                            {
                                                                                                               addr832:
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  addr833:
                                                                                                                  §§pop();
                                                                                                                  addr834:
                                                                                                                  §§push(_loc6_.IsAwake() == false);
                                                                                                                  if(_loc24_)
                                                                                                                  {
                                                                                                                     if(!_loc23_)
                                                                                                                     {
                                                                                                                        addr798:
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           addr805:
                                                                                                                           _loc20_ = Number(_loc5_.m_sweep.§3J§);
                                                                                                                           addr806:
                                                                                                                           addr804:
                                                                                                                           addr803:
                                                                                                                           if(_loc5_.m_sweep.§3J§ < _loc6_.m_sweep.§3J§)
                                                                                                                           {
                                                                                                                              addr776:
                                                                                                                              §§push(_loc6_.m_sweep);
                                                                                                                              if(_loc24_ || _loc3_)
                                                                                                                              {
                                                                                                                                 addr784:
                                                                                                                                 §§push(Number(§§pop().§3J§));
                                                                                                                                 if(!_loc23_)
                                                                                                                                 {
                                                                                                                                    _loc20_ = §§pop();
                                                                                                                                    addr764:
                                                                                                                                    _loc5_.m_sweep.§]!W§(_loc20_);
                                                                                                                                    addr677:
                                                                                                                                    _loc19_ = Number(_loc11_.§0_§(_loc5_.m_sweep,_loc6_.m_sweep));
                                                                                                                                    addr765:
                                                                                                                                    addr669:
                                                                                                                                    addr763:
                                                                                                                                    addr788:
                                                                                                                                    addr676:
                                                                                                                                    if(_loc24_)
                                                                                                                                    {
                                                                                                                                       §§push(b2Settings);
                                                                                                                                       if(_loc24_)
                                                                                                                                       {
                                                                                                                                          §§push(0);
                                                                                                                                          if(!(_loc23_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() <= _loc19_);
                                                                                                                                             if(!_loc23_)
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   if(!(_loc23_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      addr661:
                                                                                                                                                      §§pop();
                                                                                                                                                      §§push(_loc19_ <= 1);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§pop().b2Assert(§§pop());
                                                                                                                                                addr666:
                                                                                                                                                if(_loc24_)
                                                                                                                                                {
                                                                                                                                                   addr580:
                                                                                                                                                   §§push(_loc19_);
                                                                                                                                                   §§push(0);
                                                                                                                                                   if(_loc24_ || param1)
                                                                                                                                                   {
                                                                                                                                                      addr589:
                                                                                                                                                      §§push(§§pop() > §§pop());
                                                                                                                                                      if(!(_loc23_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         if(_loc24_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc23_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop());
                                                                                                                                                               if(!_loc23_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc24_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc24_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc23_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc23_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 addr627:
                                                                                                                                                                                 if(_loc24_ || _loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop();
                                                                                                                                                                                    addr635:
                                                                                                                                                                                    §§push(_loc19_);
                                                                                                                                                                                    if(!_loc23_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(1);
                                                                                                                                                                                       if(_loc24_ || _loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() < §§pop());
                                                                                                                                                                                          if(!(_loc23_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc23_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc24_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr478:
                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr480:
                                                                                                                                                                                                      §§push(1);
                                                                                                                                                                                                      if(_loc24_ || param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() - _loc19_);
                                                                                                                                                                                                         if(!_loc23_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc24_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc20_);
                                                                                                                                                                                                               if(!_loc23_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc24_ || _loc2_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                     if(_loc24_ || _loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc24_ || _loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc19_);
                                                                                                                                                                                                                           if(!_loc23_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr522:
                                                                                                                                                                                                                              if(!(_loc23_ && this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr532:
                                                                                                                                                                                                                                    if(_loc24_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                       if(_loc24_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr537:
                                                                                                                                                                                                                                          if(!_loc23_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc23_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr549:
                                                                                                                                                                                                                                                   §§push(_loc19_ = §§pop());
                                                                                                                                                                                                                                                   if(!(_loc23_ && param1))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr557:
                                                                                                                                                                                                                                                      if(§§pop() > 1)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr559:
                                                                                                                                                                                                                                                         if(_loc24_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc23_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc23_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr567:
                                                                                                                                                                                                                                                                  §§push(Number(1));
                                                                                                                                                                                                                                                                  if(!_loc23_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     _loc19_ = §§pop();
                                                                                                                                                                                                                                                                     addr570:
                                                                                                                                                                                                                                                                     if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr432:
                                                                                                                                                                                                                                                                        _loc11_.§7!W§ = _loc19_;
                                                                                                                                                                                                                                                                        if(_loc24_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc24_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!_loc23_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc24_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc24_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          _loc11_.§;!R§ |= b2Contact.§;,§;
                                                                                                                                                                                                                                                                                          if(_loc24_ || _loc3_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc24_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc24_ || _loc3_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc24_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(false)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§goto(addr432);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr855);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr765);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr759:
                                                                                                                                                                                                                                                                                                   §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                                                                   if(_loc24_ || param1)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc23_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!(_loc23_ && param1))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(_loc20_);
                                                                                                                                                                                                                                                                                                               if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§pop().§]!W§(§§pop());
                                                                                                                                                                                                                                                                                                                  addr716:
                                                                                                                                                                                                                                                                                                                  §§goto(addr669);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr764);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr776);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr763);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr723:
                                                                                                                                                                                                                                                                                                      §§push(§§pop().§3J§);
                                                                                                                                                                                                                                                                                                      §§push(_loc5_.m_sweep);
                                                                                                                                                                                                                                                                                                      if(_loc24_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr728:
                                                                                                                                                                                                                                                                                                         if(§§pop() < §§pop().§3J§)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr729:
                                                                                                                                                                                                                                                                                                            if(!_loc23_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr733:
                                                                                                                                                                                                                                                                                                               §§push(_loc5_.m_sweep);
                                                                                                                                                                                                                                                                                                               if(_loc24_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr736:
                                                                                                                                                                                                                                                                                                                  §§push(§§pop().§3J§);
                                                                                                                                                                                                                                                                                                                  if(!(_loc23_ && this))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr744:
                                                                                                                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                     if(!(_loc23_ && param1))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           _loc20_ = §§pop();
                                                                                                                                                                                                                                                                                                                           §§goto(addr759);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr805);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr784);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr805);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr788);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr764);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr805);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr733);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr666);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr559);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr432);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr834);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr800:
                                                                                                                                                                                                                                                                                    continue loop4;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr716);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr764);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr480);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr570);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr844);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr805);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr854);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr776);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr635);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr432);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr567);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr723);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr736);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr580);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr567);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr677);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr537);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr728);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr549);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr744);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr532);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr580);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr522);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr676);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr557);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr567);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr432);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr820);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr589);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr627);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr557);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr834);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr478);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr852);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr839);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr852);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr832);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr834);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr852);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr843);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr834);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr805);
                                                                                                                                                }
                                                                                                                                                §§goto(addr806);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr661);
                                                                                                                                    }
                                                                                                                                    §§goto(addr729);
                                                                                                                                 }
                                                                                                                                 §§goto(addr804);
                                                                                                                              }
                                                                                                                              §§goto(addr803);
                                                                                                                           }
                                                                                                                           §§goto(addr723);
                                                                                                                           §§push(_loc6_.m_sweep);
                                                                                                                        }
                                                                                                                        §§goto(addr800);
                                                                                                                     }
                                                                                                                     §§goto(addr817);
                                                                                                                  }
                                                                                                                  §§goto(addr833);
                                                                                                               }
                                                                                                               §§goto(addr798);
                                                                                                            }
                                                                                                            §§goto(addr852);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr853);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr852);
                                                                                          }
                                                                                          §§goto(addr798);
                                                                                       }
                                                                                       §§goto(addr853);
                                                                                    }
                                                                                    §§goto(addr959);
                                                                                    §§goto(addr855);
                                                                                 }
                                                                                 §§goto(addr947);
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr920);
                                                                        }
                                                                        §§goto(addr897);
                                                                     }
                                                                  }
                                                                  §§goto(addr920);
                                                                  addr293:
                                                               }
                                                               §§goto(addr920);
                                                            }
                                                            addr332:
                                                         }
                                                         break;
                                                      }
                                                      addr874:
                                                      if(§§pop())
                                                      {
                                                         if(!_loc23_)
                                                         {
                                                            addr877:
                                                            §§pop();
                                                            if(_loc24_)
                                                            {
                                                               §§goto(addr880);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr920);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr894);
                                                      addr328:
                                                   }
                                                   §§goto(addr931);
                                                }
                                                §§goto(addr332);
                                             }
                                          }
                                          §§goto(addr897);
                                       }
                                       addr356:
                                    }
                                    §§goto(addr328);
                                    if(!(_loc24_ || _loc2_))
                                    {
                                       continue;
                                    }
                                    §§push(§§pop() == §§pop());
                                    if(_loc24_)
                                    {
                                       if(_loc24_ || this)
                                       {
                                          continue loop5;
                                       }
                                       §§goto(addr356);
                                    }
                                    §§goto(addr877);
                                 }
                              }
                              §§goto(addr920);
                           }
                           §§goto(addr874);
                        }
                        §§goto(addr947);
                     }
                  }
                  break;
               }
               return;
            }
            §§goto(addr174);
         }
         §§goto(addr150);
      }
      
      b2internal function §?!B§(param1:b2Joint) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§@!F§();
         var _loc3_:b2Body = param1.§<!J§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §;!H§;
         §§push(param1.§+!?§);
         if(_loc15_)
         {
            var _loc14_:* = §§pop();
            if(!_loc16_)
            {
               §§push(b2Joint.§09§);
               if(!(_loc16_ && _loc2_))
               {
                  §§push(_loc14_);
                  if(_loc15_ || param1)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc15_ || _loc2_)
                        {
                           addr257:
                           §§push(0);
                           if(!(_loc15_ || _loc3_))
                           {
                              addr270:
                              §§push(_loc14_);
                              if(_loc15_)
                              {
                                 addr273:
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc15_)
                                    {
                                       addr276:
                                       §§push(1);
                                       if(_loc15_ || this)
                                       {
                                          addr315:
                                          loop9:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                this.§%N§.§32§(_loc8_,_loc9_,_loc10_);
                                                if(_loc15_)
                                                {
                                                   break;
                                                }
                                                break;
                                             case 1:
                                                _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§,!?§();
                                                _loc13_ = _loc11_.§=!§();
                                                if(!_loc16_)
                                                {
                                                   §§push(this.§%N§);
                                                }
                                                else
                                                {
                                                   loop0:
                                                   while(true)
                                                   {
                                                      §§push(this.§%N§);
                                                      loop1:
                                                      while(true)
                                                      {
                                                         if(_loc15_)
                                                         {
                                                            §§pop().§32§(_loc6_,_loc8_,_loc10_);
                                                            loop2:
                                                            while(_loc15_)
                                                            {
                                                               loop5:
                                                               while(true)
                                                               {
                                                                  §§push(this.§%N§);
                                                                  while(!(_loc16_ && param1))
                                                                  {
                                                                     if(_loc15_ || _loc2_)
                                                                     {
                                                                        §§pop().§32§(_loc8_,_loc9_,_loc10_);
                                                                        while(true)
                                                                        {
                                                                           if(!_loc16_)
                                                                           {
                                                                              if(_loc15_ || _loc2_)
                                                                              {
                                                                                 if(_loc3_ != this.m_groundBody)
                                                                                 {
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    addr110:
                                                                                    if(_loc16_)
                                                                                    {
                                                                                       continue loop2;
                                                                                    }
                                                                                    if(!_loc15_)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    if(!(_loc15_ || _loc3_))
                                                                                    {
                                                                                       break loop9;
                                                                                       addr208:
                                                                                    }
                                                                                    if(false)
                                                                                    {
                                                                                       continue loop5;
                                                                                    }
                                                                                 }
                                                                                 break loop9;
                                                                              }
                                                                              break loop1;
                                                                           }
                                                                        }
                                                                        break loop9;
                                                                     }
                                                                     addr187:
                                                                     if(!_loc15_)
                                                                     {
                                                                        break loop5;
                                                                     }
                                                                     §§pop().§32§(_loc8_,_loc9_,_loc10_);
                                                                     break loop9;
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!(_loc16_ && _loc3_))
                                                                  {
                                                                     addr204:
                                                                     §§pop().§32§(_loc12_,_loc13_,_loc10_);
                                                                     §§goto(addr208);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr212:
                                                                     while(true)
                                                                     {
                                                                        §§pop().§32§(_loc13_,_loc9_,_loc10_);
                                                                        break loop2;
                                                                     }
                                                                     addr212:
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr197);
                                                               §§goto(addr212);
                                                            }
                                                            §§goto(addr204);
                                                         }
                                                      }
                                                      addr223:
                                                      §§goto(addr212);
                                                   }
                                                   addr171:
                                                }
                                                §§pop().§32§(_loc12_,_loc8_,_loc10_);
                                                §§goto(addr223);
                                             case 2:
                                                §§goto(addr187);
                                             default:
                                                §§push(this.§%N§);
                                                if(_loc2_ != this.m_groundBody)
                                                {
                                                   §§goto(addr171);
                                                }
                                                §§goto(addr123);
                                          }
                                          return;
                                          addr314:
                                          addr294:
                                       }
                                    }
                                    else
                                    {
                                       addr301:
                                       §§push(2);
                                       if(_loc15_ || param1)
                                       {
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(b2Joint.§#F§);
                                    if(!_loc16_)
                                    {
                                       §§push(_loc14_);
                                    }
                                 }
                                 §§goto(addr314);
                              }
                              if(§§pop() === §§pop())
                              {
                                 §§goto(addr301);
                              }
                              else
                              {
                                 §§push(3);
                              }
                           }
                           §§goto(addr314);
                        }
                        §§goto(addr276);
                     }
                     else
                     {
                        §§push(b2Joint.§+!L§);
                        if(_loc15_)
                        {
                           §§goto(addr270);
                        }
                     }
                     §§goto(addr294);
                  }
                  §§goto(addr273);
               }
               §§goto(addr270);
            }
            §§goto(addr257);
         }
         §§goto(addr315);
      }
      
      b2internal function §>A§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         §§push(param1.§+!?§);
         if(!_loc16_)
         {
            var _loc14_:* = §§pop();
            if(!_loc16_)
            {
               §§push(b2Shape.§=! §);
               if(_loc15_ || param1)
               {
                  §§push(_loc14_);
                  if(_loc15_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc16_ && param3))
                        {
                           §§push(0);
                           if(!(_loc15_ || this))
                           {
                              addr295:
                           }
                        }
                        else
                        {
                           addr292:
                           §§push(2);
                           if(_loc15_)
                           {
                              §§goto(addr295);
                           }
                        }
                        addr301:
                        loop6:
                        switch(§§pop())
                        {
                           case 0:
                              _loc4_ = param1 as b2CircleShape;
                              _loc5_ = b2Math.§'!6§(param2,_loc4_.§]x§);
                              if(_loc15_)
                              {
                                 _loc6_ = _loc4_.§9!A§;
                              }
                              _loc7_ = param2.R.col1;
                              if(!_loc16_)
                              {
                                 this.§%N§.§%u§(_loc5_,_loc6_,_loc7_,param3);
                              }
                              break;
                           case 1:
                              §§push((_loc9_ = param1 as b2PolygonShape).§6+§());
                              if(!(_loc16_ && param3))
                              {
                                 §§push(int(§§pop()));
                              }
                              _loc10_ = §§pop();
                              _loc11_ = _loc9_.§ A§();
                              _loc12_ = new Vector.<b2Vec2>(_loc10_);
                              if(_loc15_ || param2)
                              {
                                 §§push(0);
                                 while(true)
                                 {
                                    _loc8_ = §§pop();
                                 }
                                 addr173:
                              }
                              loop1:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(_loc8_);
                                    if(_loc16_)
                                    {
                                       break;
                                    }
                                    if(§§pop() >= _loc10_)
                                    {
                                       if(_loc15_ || this)
                                       {
                                          if(!_loc16_)
                                          {
                                             this.§%N§.§`u§(_loc12_,_loc10_,param3);
                                             addr135:
                                             if(true)
                                             {
                                                break loop6;
                                             }
                                             while(true)
                                             {
                                                _loc8_++;
                                             }
                                             addr147:
                                          }
                                          loop3:
                                          for(; !_loc15_; §§goto(addr147))
                                          {
                                             while(true)
                                             {
                                                continue loop3;
                                             }
                                          }
                                          if(!(_loc16_ && this))
                                          {
                                             continue;
                                          }
                                          continue loop1;
                                       }
                                       §§goto(addr135);
                                    }
                                    else
                                    {
                                       _loc12_[_loc8_] = b2Math.§'!6§(param2,_loc11_[_loc8_]);
                                    }
                                    §§goto(addr171);
                                 }
                                 §§goto(addr173);
                              }
                              break;
                           case 2:
                              _loc13_ = param1 as b2EdgeShape;
                              if(_loc15_ || param3)
                              {
                                 this.§%N§.§32§(b2Math.§'!6§(param2,_loc13_.GetVertex1()),b2Math.§'!6§(param2,_loc13_.GetVertex2()),param3);
                              }
                        }
                        return;
                        addr300:
                     }
                     else
                     {
                        §§push(b2Shape.§6!t§);
                        if(_loc15_ || this)
                        {
                           §§push(_loc14_);
                           if(!_loc16_)
                           {
                              addr254:
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc16_ && param2))
                                 {
                                    addr262:
                                    §§push(1);
                                    if(!(_loc15_ || param1))
                                    {
                                       §§goto(addr295);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr292);
                                 }
                              }
                              else
                              {
                                 §§push(b2Shape.§=Q§);
                                 if(!(_loc16_ && this))
                                 {
                                    addr291:
                                    if(§§pop() === _loc14_)
                                    {
                                       §§goto(addr292);
                                    }
                                    else
                                    {
                                       §§push(3);
                                    }
                                 }
                              }
                              §§goto(addr300);
                           }
                        }
                        §§goto(addr291);
                     }
                     §§goto(addr292);
                  }
                  §§goto(addr254);
               }
               §§goto(addr295);
            }
            §§goto(addr262);
         }
         §§goto(addr301);
      }
   }
}
