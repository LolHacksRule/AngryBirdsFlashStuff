package §@!"§
{
   import §!!R§.§4#§;
   import §%!B§.§5L§;
   import §%8§.§%!S§;
   import §%8§.§4"+§;
   import §%8§.§89§;
   import §%8§.§@-§;
   import §%8§.§[_§;
   import §%8§.§]!o§;
   import §%8§.§^f§;
   import §'!&§.§!x§;
   import §0N§.§ !A§;
   import §0N§.§,!A§;
   import §0N§.§-C§;
   import §0N§.§5D§;
   import §0N§.§8![§;
   import §23§.b2Contact;
   import §2`§.§5E§;
   import §2`§.§;!Q§;
   import §3!J§.§4!2§;
   import §3!J§.§8!l§;
   import §3!J§.Sprite;
   import §4!i§.§0]§;
   import §=!4§.Texture;
   import §@!E§.b2Vec2;
   import §@V§.§#=§;
   import §@V§.§52§;
   import §@V§.§9h§;
   import §@h§.b2JointEdge;
   import §@h§.b2PrismaticJoint;
   import §@h§.b2RevoluteJoint;
   import §[!Z§.§>D§;
   import §`2§.§"w§;
   import §`2§.§3[§;
   import §`2§.§`""§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §<!l§ implements §`!m§
   {
      
      private static const §@+§:Boolean = false;
      
      public static const §,J§:int = 1000000000;
      
      public static const §^a§:int = -1;
      
      public static const §0"+§:int = -2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §@+§ = false;
            while(true)
            {
               §,J§ = 1000000000;
               loop2:
               while(_loc1_ || §<!l§)
               {
                  §0"+§ = -2;
                  if(!_loc2_)
                  {
                     addr39:
                     if(_loc2_)
                     {
                        while(true)
                        {
                           §^a§ = -1;
                           continue loop2;
                           §§goto(addr39);
                        }
                        addr68:
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      protected var §-"2§:Vector.<§#!v§>;
      
      protected var §82§:Vector.<§+!z§>;
      
      protected var §53§:Vector.<§3[§>;
      
      protected var §-L§:§0]§;
      
      private var §7!,§:int = 1000000000;
      
      public var §!`§:§#=§;
      
      protected var § !k§:Vector.<§=q§>;
      
      protected var §0%§:§3!J§.Sprite;
      
      protected var §&!b§:§3!J§.Sprite;
      
      protected var §1!f§:§3!J§.Sprite;
      
      protected var §]3§:§3!J§.Sprite;
      
      protected var §+"#§:§3!J§.Sprite;
      
      protected var §^!6§:Vector.<Texture>;
      
      protected var §>]§:Vector.<§5D§>;
      
      protected var §9!V§:int = 1;
      
      protected var §]!P§:Vector.<§ !A§>;
      
      protected var §2;§:int = 0;
      
      private var §[a§:int = 0;
      
      private var §09§:int = 0;
      
      private var §]1§:§,!A§;
      
      private var §6!j§:§^"2§;
      
      private var §]!n§:Boolean = true;
      
      private var §8C§:Boolean = true;
      
      private var §<!%§:§4#§;
      
      private var §]x§:Boolean = false;
      
      public function §<!l§(param1:§#=§, param2:§5L§, param3:§3!J§.Sprite, param4:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         if(_loc8_ || param2)
         {
            this.§-"2§ = new Vector.<§#!v§>();
            loop0:
            while(true)
            {
               this.§82§ = new Vector.<§+!z§>();
               loop1:
               while(true)
               {
                  this.§53§ = new Vector.<§3[§>();
                  loop2:
                  while(true)
                  {
                     this.§-L§ = new §0]§();
                     while(true)
                     {
                        this.§ !k§ = new Vector.<§=q§>();
                        loop4:
                        while(!(_loc7_ && param3))
                        {
                           this.§^!6§ = new Vector.<Texture>();
                           while(true)
                           {
                              this.§]!P§ = new Vector.<§ !A§>();
                              loop6:
                              while(true)
                              {
                                 this.§]1§ = new §,!A§();
                                 loop7:
                                 while(true)
                                 {
                                    super();
                                    loop8:
                                    while(true)
                                    {
                                       this.§!`§ = param1;
                                       loop9:
                                       while(true)
                                       {
                                          this.§0%§ = param3;
                                          loop10:
                                          while(true)
                                          {
                                             §§push(this.§0%§);
                                             while(true)
                                             {
                                                §§pop().§6!U§ = false;
                                                addr272:
                                                addr181:
                                                while(true)
                                                {
                                                   this.§8C§ = true;
                                                   continue loop7;
                                                }
                                                if(!(_loc8_ || param1))
                                                {
                                                   continue;
                                                }
                                                §§pop().addChild(this.§1!f§);
                                                loop21:
                                                while(!_loc7_)
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   if(!param2.§7!H§)
                                                   {
                                                      loop28:
                                                      while(true)
                                                      {
                                                         this.§85§(param2);
                                                         if(_loc8_)
                                                         {
                                                            if(_loc7_ && param2)
                                                            {
                                                               while(_loc8_)
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                                  continue loop8;
                                                               }
                                                               while(!_loc7_)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               continue loop7;
                                                               addr208:
                                                               addr145:
                                                            }
                                                            if(_loc7_)
                                                            {
                                                               continue loop21;
                                                            }
                                                            if(_loc8_)
                                                            {
                                                               return;
                                                            }
                                                            addr235:
                                                            while(true)
                                                            {
                                                               this.§1!f§ = new §3!J§.Sprite();
                                                            }
                                                         }
                                                         else
                                                         {
                                                            loop27:
                                                            while(true)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(_loc8_ || this)
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                        addr202:
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§0%§);
                                                                           if(_loc8_)
                                                                           {
                                                                              §§goto(addr181);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§pop().addChild(this.§&!b§);
                                                                                 continue loop20;
                                                                              }
                                                                              addr199:
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop2;
                                                                     addr104:
                                                                  }
                                                                  if(_loc7_ && param1)
                                                                  {
                                                                     break;
                                                                  }
                                                                  addr71:
                                                                  if(!(_loc7_ && param2))
                                                                  {
                                                                     continue loop28;
                                                                  }
                                                                  addr240:
                                                                  while(_loc8_ || this)
                                                                  {
                                                                     continue loop10;
                                                                     §§goto(addr71);
                                                                  }
                                                                  §§goto(addr272);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        this.§&w§(param4,_loc5_,_loc6_,0,§<!l§.§^a§);
                                                                        continue loop27;
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                                  addr97:
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            this.§+"#§ = new §3!J§.Sprite();
                                                            break loop21;
                                                            §§goto(addr64);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr104);
                                                }
                                                while(true)
                                                {
                                                   this.§]3§ = new §3!J§.Sprite();
                                                   §§goto(addr208);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              if(!(_loc8_ || this))
                              {
                                 continue;
                              }
                              if(!_loc8_)
                              {
                                 continue loop0;
                              }
                              §§push(0 + §9h§.§3" §);
                              if(_loc8_)
                              {
                                 if(_loc8_)
                                 {
                                    addr89:
                                    §§push(Number(§§pop()));
                                    if(_loc8_ || param2)
                                    {
                                       _loc6_ = §§pop();
                                       §§goto(addr97);
                                    }
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       §§goto(addr89);
                                    }
                                    addr143:
                                 }
                                 while(true)
                                 {
                                    _loc5_ = §§pop();
                                    §§goto(addr145);
                                 }
                                 addr144:
                              }
                              §§goto(addr89);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr202);
      }
      
      public function get §<!5§() : §3!J§.Sprite
      {
         return this.§+"#§;
      }
      
      public function get §,""§() : §3!J§.Sprite
      {
         return this.§1!f§;
      }
      
      public function get §]![§() : §3!J§.Sprite
      {
         return this.§]3§;
      }
      
      public function get §&!h§() : §3!J§.Sprite
      {
         return this.§0%§;
      }
      
      public function get activeObject() : §@_§
      {
         return this.§6!j§;
      }
      
      public function get objectCount() : int
      {
         return this.§-"2§.length;
      }
      
      public function set §8x§(param1:§4#§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(param1 != this.§<!%§)
            {
               loop0:
               while(true)
               {
                  this.§<!%§ = param1;
                  loop1:
                  while(true)
                  {
                     §§push(this.§]x§);
                     if(_loc2_ || _loc2_)
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc2_ || _loc2_)
                        {
                           if(!§§pop())
                           {
                              loop2:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc2_)
                                    {
                                       if(!_loc2_)
                                       {
                                          continue loop0;
                                       }
                                       while(true)
                                       {
                                          §§push(this.§<!%§);
                                          addr64:
                                          while(true)
                                          {
                                             §§pop().levelStarted();
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       if(_loc2_ || this)
                                       {
                                          break loop2;
                                       }
                                       continue loop1;
                                    }
                                 }
                                 §§push(Boolean(§§pop()));
                                 addr38:
                                 break;
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    continue;
                                 }
                                 addr93:
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop0;
                                 }
                                 addr93:
                              }
                              §§goto(addr24);
                           }
                        }
                     }
                     §§goto(addr93);
                  }
               }
            }
            addr24:
            return;
         }
         §§goto(addr62);
      }
      
      public function §"!Y§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!this.§]x§)
            {
               do
               {
                  this.§]x§ = true;
                  while(true)
                  {
                     §§push(this.§<!%§);
                     if(!(_loc2_ && _loc1_))
                     {
                        if(!§§pop())
                        {
                           return;
                        }
                        addr19:
                        if(_loc1_)
                        {
                           addr48:
                           this.§<!%§.levelStarted();
                        }
                        if(!(_loc2_ && _loc1_))
                        {
                           break;
                        }
                        continue;
                     }
                     §§goto(addr48);
                  }
               }
               while(_loc2_ && this);
               
               addr73:
            }
            §§goto(addr19);
         }
         §§goto(addr73);
      }
      
      public function §+"%§(param1:String) : §@-§
      {
         return this.§!`§.levelItemManager.§1!e§(param1);
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = false;
         if(!_loc4_)
         {
            §§push(this.§6!j§);
            if(_loc5_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr70);
            }
            §§push(§§pop().activateSpecialPower(this,param1,param2));
            if(_loc5_ || param2)
            {
               §§push(Boolean(§§pop()));
               if(!_loc4_)
               {
                  _loc3_ = §§pop();
                  §§goto(addr70);
               }
            }
            §§goto(addr70);
         }
         addr70:
         if(!(_loc4_ && param2))
         {
            §§push(this.§6!j§);
         }
         return _loc3_;
      }
      
      protected function §85§(param1:§5L§) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:§,!A§ = null;
         var _loc4_:* = NaN;
         var _loc5_:§@-§ = null;
         var _loc6_:§-C§ = null;
         var _loc2_:* = 0;
         if(_loc7_)
         {
            _loc2_ = 0;
         }
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!_loc8_)
            {
               §§push(param1.objectCount);
               if(_loc7_)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(_loc7_)
                     {
                        this.§%2§();
                        if(_loc7_ || _loc2_)
                        {
                           this.§3"!§(true);
                           if(_loc7_)
                           {
                              while(true)
                              {
                                 this.§>]§ = new Vector.<§5D§>();
                                 addr130:
                                 while(true)
                                 {
                                    §§push(0);
                                    if(!_loc8_)
                                    {
                                       break loop0;
                                    }
                                    break;
                                 }
                                 loop5:
                                 while(true)
                                 {
                                    §§push(param1.§7!f§);
                                    addr165:
                                    while(true)
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          _loc6_ = param1.§-"1§(_loc2_);
                                          if(_loc7_)
                                          {
                                             this.§@!t§(_loc6_);
                                             if(_loc8_)
                                             {
                                                continue loop5;
                                             }
                                          }
                                          _loc2_++;
                                          continue loop5;
                                       }
                                    }
                                 }
                              }
                              addr123:
                           }
                           §§goto(addr166);
                        }
                        while(false)
                        {
                           §§goto(addr123);
                        }
                        §§goto(addr162);
                        addr121:
                     }
                     §§goto(addr130);
                  }
                  else
                  {
                     _loc3_ = param1.getObject(_loc2_);
                     if(_loc7_)
                     {
                        _loc4_ = Number(1);
                     }
                     if(_loc5_ = this.§!`§.levelItemManager.§1!e§(_loc3_.type))
                     {
                        if(_loc7_)
                        {
                           §§push(_loc5_.scale);
                           if(_loc7_)
                           {
                              §§push(Number(§§pop()));
                           }
                           _loc4_ = §§pop();
                           if(_loc7_ || _loc2_)
                           {
                              this.§?"%§(_loc3_,_loc3_.id,false,false,false,_loc4_);
                              addr70:
                              if(!_loc7_)
                              {
                                 continue;
                              }
                           }
                           _loc2_++;
                        }
                        continue;
                     }
                     §§goto(addr70);
                  }
               }
               §§goto(addr165);
            }
            break;
         }
         while(true)
         {
            _loc2_ = §§pop();
            if(_loc7_)
            {
               if(!_loc8_)
               {
                  §§goto(addr121);
               }
               §§goto(addr130);
            }
            addr166:
            return;
         }
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Texture = null;
         loop0:
         while(true)
         {
            if(this.§-"2§.length > 0)
            {
               this.§;a§(0,false,true);
               continue;
            }
            loop1:
            while(true)
            {
               while(true)
               {
                  if(this.§53§.length <= 0)
                  {
                     loop3:
                     while(_loc3_)
                     {
                        this.§-"2§ = null;
                        while(!_loc2_)
                        {
                           this.§82§ = null;
                           loop5:
                           while(true)
                           {
                              this.§53§ = null;
                              loop6:
                              for(; _loc3_ || _loc3_; while(true)
                              {
                                 if(!(_loc3_ || _loc2_))
                                 {
                                    continue loop6;
                                 }
                                 §§goto(addr133);
                              })
                              {
                                 this.§-L§ = null;
                                 loop7:
                                 while(true)
                                 {
                                    this.§]!P§ = null;
                                    loop8:
                                    while(true)
                                    {
                                       §§push(this.§0%§);
                                       if(!_loc2_)
                                       {
                                          if(§§pop())
                                          {
                                             continue loop5;
                                          }
                                          addr133:
                                          loop10:
                                          while(true)
                                          {
                                             this.§&!b§ = null;
                                             if(!_loc2_)
                                             {
                                                this.§1!f§ = null;
                                                while(true)
                                                {
                                                   §§push(this.§+"#§);
                                                   if(_loc2_)
                                                   {
                                                      break;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         continue;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§push(this.§]3§);
                                                         if(_loc3_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc2_ && _loc3_))
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     §§push(this.§]3§);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(!_loc2_)
                                                                        {
                                                                           this.§0%§ = null;
                                                                           continue loop10;
                                                                        }
                                                                        continue loop7;
                                                                     }
                                                                     addr168:
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            addr232:
                                                            addr256:
                                                            if(this.§^!6§.length > 0)
                                                            {
                                                               _loc1_ = this.§^!6§.pop();
                                                               if(!_loc2_)
                                                               {
                                                                  this.§!`§.§]!z§.§ f§(_loc1_);
                                                               }
                                                               §§goto(addr256);
                                                            }
                                                            break;
                                                         }
                                                         §§pop().dispose();
                                                         if(!(_loc3_ || this))
                                                         {
                                                            break;
                                                         }
                                                         if(_loc3_ || this)
                                                         {
                                                            addr65:
                                                            if(!(_loc2_ && _loc2_))
                                                            {
                                                               continue loop8;
                                                            }
                                                            continue loop5;
                                                         }
                                                         addr84:
                                                         while(true)
                                                         {
                                                            continue loop12;
                                                         }
                                                      }
                                                      addr33:
                                                   }
                                                }
                                                §§pop().dispose();
                                                if(!(_loc2_ && this))
                                                {
                                                   if(_loc2_ && _loc1_)
                                                   {
                                                      continue;
                                                   }
                                                   this.§+"#§ = null;
                                                   §§goto(addr84);
                                                }
                                             }
                                             addr261:
                                             return;
                                          }
                                          continue loop6;
                                       }
                                       addr167:
                                       while(true)
                                       {
                                          §§pop().dispose();
                                       }
                                       §§goto(addr168);
                                    }
                                 }
                              }
                              continue loop3;
                           }
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
                  this.§3V§(0);
                  §§goto(addr223);
               }
            }
         }
      }
      
      private function §3"!§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§&!b§.visible = param1;
         }
      }
      
      private function §%2§() : void
      {
         var _loc24_:Boolean = false;
         var _loc25_:Boolean = true;
         var _loc3_:§#!v§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:§@_§ = null;
         var _loc6_:§[_§ = null;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:int = 0;
         var _loc14_:* = 0;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:BitmapData = null;
         var _loc18_:Number = NaN;
         var _loc19_:BitmapData = null;
         var _loc20_:Texture = null;
         var _loc21_:§4!2§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§@_§> = new Vector.<§@_§>();
         for each(_loc3_ in this.§-"2§)
         {
            §§push(Boolean(_loc5_ = _loc3_ as §@_§));
            if(!_loc24_)
            {
               if(§§pop())
               {
                  if(_loc25_)
                  {
                     addr98:
                     §§pop();
                     if(_loc25_)
                     {
                        §§push(_loc5_.§]^§());
                        if(!(_loc24_ && _loc3_))
                        {
                           addr111:
                           if(!§§pop())
                           {
                              continue;
                           }
                           if(!(_loc24_ && _loc1_))
                           {
                              _loc2_.push(_loc5_);
                           }
                        }
                        §§goto(addr111);
                     }
                     _loc6_ = _loc5_.levelItem.shape;
                     if(_loc25_)
                     {
                        §§push(Math.max(_loc6_.§=!q§(),_loc6_.§%!r§()) / §#=§.§^!2§);
                        if(!(_loc24_ && _loc1_))
                        {
                           §§push(§§pop() * Math.sqrt(2));
                           if(_loc25_ || _loc3_)
                           {
                              addr156:
                              §§push(Number(§§pop()));
                           }
                           _loc7_ = §§pop();
                           addr158:
                           _loc4_ = new Rectangle(_loc3_.sprite.x - _loc7_ / 2,_loc3_.sprite.y - _loc7_ / 2,_loc7_,_loc7_);
                           if(_loc25_ || _loc2_)
                           {
                              if(_loc1_ != null)
                              {
                                 _loc1_ = _loc1_.union(_loc4_);
                                 continue;
                              }
                           }
                           _loc1_ = new Rectangle(_loc4_.x,_loc4_.y,_loc4_.width,_loc4_.height);
                           continue;
                        }
                        §§goto(addr156);
                     }
                     §§goto(addr158);
                  }
               }
               §§goto(addr111);
            }
            §§goto(addr98);
         }
         if(!_loc24_)
         {
            if(_loc1_)
            {
               loop1:
               while(true)
               {
                  §§push(this.§!`§);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop().camera);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop().§%h§);
                        loop4:
                        while(true)
                        {
                           §§push(§#=§.§^!2§);
                           loop5:
                           while(true)
                           {
                              §§push(§§pop() / §§pop());
                              loop6:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 loop7:
                                 while(true)
                                 {
                                    _loc8_ = §§pop();
                                    addr649:
                                    loop8:
                                    while(true)
                                    {
                                       §§push(this.§!`§);
                                       if(_loc24_)
                                       {
                                          continue loop2;
                                       }
                                       §§push(§§pop().camera);
                                       if(!_loc25_)
                                       {
                                          continue loop3;
                                       }
                                       §§push(§§pop().§!v§);
                                       loop9:
                                       while(true)
                                       {
                                          §§push(§#=§.§^!2§);
                                          loop10:
                                          while(true)
                                          {
                                             §§push(§§pop() / §§pop());
                                             if(!_loc24_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             loop11:
                                             while(true)
                                             {
                                                _loc9_ = §§pop();
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(_loc8_);
                                                   loop13:
                                                   while(!_loc24_)
                                                   {
                                                      §§push(_loc9_);
                                                      loop14:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §§push(2);
                                                            loop16:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() / §§pop());
                                                               if(!_loc24_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  _loc10_ = §§pop();
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc9_);
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc8_);
                                                                        loop20:
                                                                        while(!_loc24_)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           loop21:
                                                                           while(true)
                                                                           {
                                                                              §§push(2);
                                                                              if(_loc24_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(§§pop() / §§pop());
                                                                              loop22:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 loop23:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc11_ = §§pop();
                                                                                    loop24:
                                                                                    while(_loc25_)
                                                                                    {
                                                                                       §§push(_loc10_);
                                                                                       loop25:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc11_);
                                                                                          loop26:
                                                                                          while(!(_loc24_ && _loc2_))
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             while(!_loc24_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                loop28:
                                                                                                while(_loc25_ || _loc1_)
                                                                                                {
                                                                                                   _loc8_ = §§pop();
                                                                                                   loop29:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc10_);
                                                                                                      if(!(_loc24_ && _loc2_))
                                                                                                      {
                                                                                                         continue loop21;
                                                                                                      }
                                                                                                      loop32:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc24_)
                                                                                                         {
                                                                                                            continue loop19;
                                                                                                         }
                                                                                                         if(!_loc25_)
                                                                                                         {
                                                                                                            continue loop15;
                                                                                                         }
                                                                                                         if(!_loc25_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         _loc9_ = §§pop();
                                                                                                         loop33:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc1_.left = Math.max(_loc1_.left,_loc8_) - 4;
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc25_)
                                                                                                               {
                                                                                                                  continue loop12;
                                                                                                               }
                                                                                                               if(_loc24_ && _loc1_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               _loc1_.right = Math.min(_loc1_.right,_loc9_) + 4;
                                                                                                               loop35:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc1_.left >= _loc1_.right - 1)
                                                                                                                  {
                                                                                                                     §§goto(addr485);
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(1);
                                                                                                                     addr457:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        addr458:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc25_)
                                                                                                                           {
                                                                                                                              if(!(_loc24_ && _loc1_))
                                                                                                                              {
                                                                                                                                 continue loop25;
                                                                                                                              }
                                                                                                                              continue loop28;
                                                                                                                              continue loop28;
                                                                                                                           }
                                                                                                                           addr557:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc25_)
                                                                                                                              {
                                                                                                                                 if(!_loc25_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 continue loop32;
                                                                                                                              }
                                                                                                                              continue loop17;
                                                                                                                           }
                                                                                                                           continue loop13;
                                                                                                                        }
                                                                                                                        continue loop23;
                                                                                                                     }
                                                                                                                     addr486:
                                                                                                                  }
                                                                                                                  addr437:
                                                                                                                  if(!(_loc24_ && _loc1_))
                                                                                                                  {
                                                                                                                     _loc1_.right /= 1.05;
                                                                                                                     addr427:
                                                                                                                     if(!_loc24_)
                                                                                                                     {
                                                                                                                        _loc1_.bottom /= 1.05;
                                                                                                                        loop50:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc24_)
                                                                                                                           {
                                                                                                                              addr412:
                                                                                                                              if(!(_loc24_ && _loc2_))
                                                                                                                              {
                                                                                                                                 §§push(_loc12_);
                                                                                                                                 if(!(_loc25_ || _loc3_))
                                                                                                                                 {
                                                                                                                                    continue loop32;
                                                                                                                                 }
                                                                                                                                 if(!_loc24_)
                                                                                                                                 {
                                                                                                                                    addr345:
                                                                                                                                    §§push(1.05);
                                                                                                                                    if(_loc25_ || this)
                                                                                                                                    {
                                                                                                                                       if(_loc25_ || _loc1_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() / §§pop());
                                                                                                                                          if(_loc25_)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                          }
                                                                                                                                          continue loop32;
                                                                                                                                       }
                                                                                                                                       continue loop26;
                                                                                                                                    }
                                                                                                                                    addr542:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc25_ || _loc1_)
                                                                                                                                       {
                                                                                                                                          continue loop14;
                                                                                                                                       }
                                                                                                                                       continue loop20;
                                                                                                                                       §§goto(addr345);
                                                                                                                                    }
                                                                                                                                    continue loop14;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    do
                                                                                                                                    {
                                                                                                                                       §§push(_loc1_.width > 2048);
                                                                                                                                       if(_loc25_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          if(!§§pop())
                                                                                                                                          {
                                                                                                                                             loop51:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§pop();
                                                                                                                                                addr331:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc25_)
                                                                                                                                                   {
                                                                                                                                                      continue loop51;
                                                                                                                                                   }
                                                                                                                                                   continue loop1;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr330:
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                _loc1_.left /= 1.05;
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             if(_loc24_)
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc25_ || _loc1_))
                                                                                                                                                   {
                                                                                                                                                      continue loop50;
                                                                                                                                                   }
                                                                                                                                                   if(_loc25_)
                                                                                                                                                   {
                                                                                                                                                      §§push(int(_loc1_.height));
                                                                                                                                                      loop44:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc14_ = §§pop();
                                                                                                                                                         addr274:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            addr238:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(int(_loc1_.left));
                                                                                                                                                               continue loop44;
                                                                                                                                                            }
                                                                                                                                                            continue loop29;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr437);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr427);
                                                                                                                                                }
                                                                                                                                                continue loop50;
                                                                                                                                             }
                                                                                                                                             if(!(_loc24_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                continue loop33;
                                                                                                                                             }
                                                                                                                                             §§goto(addr486);
                                                                                                                                             §§goto(addr457);
                                                                                                                                             §§goto(addr333);
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc1_.top /= 1.05;
                                                                                                                                             §§goto(addr437);
                                                                                                                                          }
                                                                                                                                          continue loop35;
                                                                                                                                          addr454:
                                                                                                                                       }
                                                                                                                                       §§goto(addr330);
                                                                                                                                    }
                                                                                                                                    while(!_loc24_);
                                                                                                                                    
                                                                                                                                    continue loop24;
                                                                                                                                    §§goto(addr412);
                                                                                                                                 }
                                                                                                                                 addr477:
                                                                                                                              }
                                                                                                                              §§goto(addr458);
                                                                                                                           }
                                                                                                                           §§goto(addr454);
                                                                                                                        }
                                                                                                                        continue loop32;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue;
                                                                                                                  addr485:
                                                                                                                  return;
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop8;
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop9;
                                                                                                   }
                                                                                                   continue loop11;
                                                                                                }
                                                                                                continue loop6;
                                                                                                if(!(_loc25_ || _loc2_))
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                if(!_loc25_)
                                                                                                {
                                                                                                   continue loop22;
                                                                                                }
                                                                                                _loc12_ = §§pop();
                                                                                                §§goto(addr391);
                                                                                             }
                                                                                             continue loop4;
                                                                                          }
                                                                                          continue loop10;
                                                                                       }
                                                                                    }
                                                                                    continue loop18;
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop16;
                                                                        }
                                                                        continue loop5;
                                                                     }
                                                                  }
                                                               }
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
            }
            §§goto(addr791);
         }
         §§goto(addr649);
      }
      
      private function §5^§(param1:Vector.<§@_§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc7_:§@_§ = null;
         var _loc11_:* = NaN;
         var _loc12_:§[_§ = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         loop0:
         for each(_loc7_ in param1)
         {
            if(!_loc16_)
            {
               _loc10_.identity();
               if(_loc15_ || param1)
               {
                  addr67:
                  §§push(param6);
                  if(!_loc16_)
                  {
                     §§push(Number(§§pop()));
                  }
                  _loc11_ = §§pop();
               }
               §§push((_loc12_ = _loc7_.levelItem.shape) is §]!o§);
               if(!_loc16_)
               {
                  if(§§pop())
                  {
                     if(_loc15_)
                     {
                        this.§[K§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§`p§(),param6,_loc11_,param4,param5);
                        if(_loc15_)
                        {
                           continue;
                        }
                        addr215:
                     }
                     else
                     {
                        loop2:
                        while((_loc12_ as §4"+§).§1t§.length != 4)
                        {
                           if((_loc12_ as §4"+§).§1t§.length == 3)
                           {
                              while(true)
                              {
                                 if(_loc16_)
                                 {
                                    continue loop2;
                                 }
                                 this.§+g§(_loc12_ as §4"+§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§`p§(),param6,_loc11_,param4,param5);
                                 if(_loc16_ && this)
                                 {
                                    break loop2;
                                 }
                                 §§goto(addr215);
                              }
                              addr106:
                              continue loop0;
                              addr187:
                           }
                           §§goto(addr106);
                        }
                        this.§[K§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§`p§(),param6,_loc11_,param4,param5);
                        addr246:
                        addr221:
                     }
                     §§goto(addr106);
                  }
                  else
                  {
                     §§push(_loc12_ is §4"+§);
                     while(!§§pop())
                     {
                        §§push(_loc12_ is §%!S§);
                        if(_loc16_ && param2)
                        {
                           continue;
                        }
                        addr119:
                        if(!§§pop())
                        {
                           continue loop0;
                        }
                        if(!(_loc16_ && param2))
                        {
                           if(!(_loc16_ && param3))
                           {
                              if(!(_loc16_ && this))
                              {
                                 if(_loc15_ || this)
                                 {
                                    this.§'M§(_loc12_ as §%!S§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,param6,_loc11_,param4,param5);
                                    addr175:
                                    if(true)
                                    {
                                       continue loop0;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr246);
                                 }
                                 §§goto(addr246);
                              }
                              else
                              {
                                 §§goto(addr187);
                              }
                           }
                           §§goto(addr208);
                        }
                        §§goto(addr175);
                     }
                  }
                  §§goto(addr221);
               }
               §§goto(addr119);
            }
            §§goto(addr67);
         }
         if(!(_loc16_ && this))
         {
            _loc9_.dispose();
         }
         return _loc8_;
      }
      
      protected function §[K§(param1:§[_§, param2:BitmapData, param3:BitmapData, param4:Matrix, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         §§push(param1.§=!q§());
         if(!(_loc14_ && param2))
         {
            §§push(§#=§.§^!2§);
            if(!_loc14_)
            {
               addr48:
               §§push(§§pop() / §§pop());
               if(!(_loc14_ && param3))
               {
                  §§push(param9);
               }
               var _loc12_:* = §§pop();
               §§push(param1.§%!r§());
               if(!(_loc14_ && param2))
               {
                  §§push(§#=§.§^!2§);
                  if(_loc15_)
                  {
                     addr90:
                     §§push(§§pop() / §§pop());
                     if(_loc15_ || param3)
                     {
                        §§push(param9);
                     }
                     var _loc13_:* = §§pop();
                     if(!(_loc14_ && param3))
                     {
                        param4.scale(_loc12_,_loc13_);
                        loop0:
                        while(true)
                        {
                           param4.translate(-_loc12_ / 2,-_loc13_ / 2);
                           while(true)
                           {
                              param4.rotate(param7);
                              continue loop0;
                              addr131:
                              if(_loc15_ || param3)
                              {
                                 param2.draw(param3,param4);
                                 addr138:
                                 if(!(_loc14_ && param1))
                                 {
                                    return;
                                    addr129:
                                 }
                                 while(_loc15_)
                                 {
                                    §§goto(addr131);
                                    §§goto(addr138);
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        param4.translate(param5 * param8 - param10,param6 * param8 - param11);
                        §§goto(addr129);
                     }
                  }
                  §§push(§§pop() * §§pop());
                  if(_loc15_ || param2)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               §§goto(addr90);
            }
            §§push(§§pop() * §§pop());
            if(!(_loc14_ && param1))
            {
               §§push(Number(§§pop()));
            }
         }
         §§goto(addr48);
      }
      
      protected function §+g§(param1:§4"+§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc14_:b2Vec2 = null;
         var _loc11_:flash.display.Sprite;
         (_loc11_ = new flash.display.Sprite()).graphics.beginFill(16777215);
         var _loc12_:Vector.<Number> = new Vector.<Number>();
         var _loc13_:int = 0;
         while(_loc13_ < param1.§1t§.length)
         {
            _loc14_ = param1.§1t§[_loc13_];
            if(_loc15_)
            {
               _loc12_.push(_loc14_.x / §#=§.§^!2§ * param8,_loc14_.y / §#=§.§^!2§ * param8);
               if(_loc16_ && param1)
               {
                  continue;
               }
            }
            _loc13_++;
         }
         if(!_loc16_)
         {
            _loc11_.graphics.drawTriangles(_loc12_);
            if(_loc15_)
            {
               _loc11_.graphics.endFill();
               while(true)
               {
                  param3.rotate(param6);
                  while(_loc15_ || param1)
                  {
                     param3.translate(param4 * param7 - param9,param5 * param7 - param10);
                     loop3:
                     while(true)
                     {
                        addr115:
                        while(true)
                        {
                           param2.draw(_loc11_,param3);
                           continue loop3;
                        }
                     }
                  }
               }
            }
            §§goto(addr120);
         }
         §§goto(addr113);
      }
      
      protected function §'M§(param1:§%!S§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         §§push(param1.radius);
         if(!(_loc14_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:*;
         §§push(_loc10_ = §§pop());
         if(!(_loc14_ && this))
         {
            §§push(§#=§.§^!2§);
            if(_loc13_ || param3)
            {
               addr56:
               §§push(§§pop() / §§pop());
               if(_loc13_ || this)
               {
                  §§push(param7);
               }
               var _loc11_:Number = §§pop();
               var _loc12_:flash.display.Sprite;
               (_loc12_ = new flash.display.Sprite()).graphics.beginFill(16777215);
               if(!(_loc14_ && this))
               {
                  _loc12_.graphics.drawCircle(_loc11_,_loc11_,_loc11_);
               }
               loop0:
               while(true)
               {
                  _loc12_.graphics.endFill();
                  loop1:
                  while(true)
                  {
                     param3.translate(param4 * param6 - param8 - _loc11_,param5 * param6 - param9 - _loc11_);
                     loop2:
                     while(true)
                     {
                        addr99:
                        while(true)
                        {
                           param2.draw(_loc12_,param3);
                           addr104:
                           while(!_loc14_)
                           {
                              continue loop1;
                           }
                           continue loop2;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            §§push(§§pop() * §§pop());
            if(_loc14_)
            {
            }
         }
         §§goto(addr56);
      }
      
      protected function §;!V§() : String
      {
         return this.§!`§.background.§4V§();
      }
      
      protected function §1g§() : Number
      {
         return 1;
      }
      
      private function §!!C§(param1:Rectangle, param2:BitmapData, param3:Number) : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc6_:BitmapData = null;
         var _loc7_:Matrix = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         var _loc14_:* = 0;
         var _loc15_:int = 0;
         §§push(this.§;!V§());
         if(_loc17_ || this)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         var _loc5_:§5E§;
         if(_loc5_ = this.§!`§.§<x§.§5!X§(_loc4_))
         {
            _loc6_ = new BitmapData(_loc5_.bitmapData.width * param3,_loc5_.bitmapData.height * param3);
            (_loc7_ = new Matrix()).scale(param3,param3);
            if(!_loc16_)
            {
               _loc6_.draw(_loc5_.bitmapData,_loc7_,null,null,null,true);
               loop0:
               while(true)
               {
                  §§push(int(_loc6_.width));
                  loop1:
                  while(true)
                  {
                     _loc8_ = §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(int(_loc6_.height));
                        loop3:
                        while(true)
                        {
                           _loc9_ = §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(param1.top / _loc9_);
                              loop5:
                              while(true)
                              {
                                 §§push(int(§§pop()));
                                 loop6:
                                 while(_loc17_)
                                 {
                                    _loc10_ = §§pop();
                                    loop7:
                                    for(; _loc17_; while(_loc17_ || param2)
                                    {
                                       §§goto(addr300);
                                       §§push(param1.left / _loc8_);
                                    })
                                    {
                                       if(param1.top < 0)
                                       {
                                          while(true)
                                          {
                                             §§push(_loc10_);
                                             addr354:
                                             while(true)
                                             {
                                                §§push(§§pop() - 1);
                                                addr355:
                                                while(true)
                                                {
                                                   _loc10_ = §§pop();
                                                   addr356:
                                                   while(!_loc16_)
                                                   {
                                                   }
                                                   continue loop2;
                                                }
                                             }
                                          }
                                          addr353:
                                       }
                                       while(true)
                                       {
                                          §§push(param1.bottom / _loc9_);
                                          loop13:
                                          while(true)
                                          {
                                             §§push(int(§§pop()));
                                             loop14:
                                             while(_loc17_ || param3)
                                             {
                                                §§push(§§pop());
                                                while(true)
                                                {
                                                   _loc11_ = §§pop();
                                                   continue loop1;
                                                   loop27:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc16_ && this)
                                                      {
                                                         break;
                                                      }
                                                      _loc13_ = §§pop();
                                                      if(!_loc16_)
                                                      {
                                                         if(!_loc17_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         §§push(§§pop() + 1);
                                                      }
                                                      loop28:
                                                      while(_loc17_)
                                                      {
                                                         _loc13_ = §§pop();
                                                         loop29:
                                                         while(true)
                                                         {
                                                            if(_loc17_ || param3)
                                                            {
                                                               §§push(_loc12_);
                                                               if(!(_loc16_ && this))
                                                               {
                                                                  if(!_loc16_)
                                                                  {
                                                                     addr187:
                                                                     §§push(int(§§pop()));
                                                                     if(!_loc17_)
                                                                     {
                                                                        continue loop28;
                                                                     }
                                                                     if(_loc16_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     addr191:
                                                                     if(!_loc16_)
                                                                     {
                                                                        addr203:
                                                                        if(_loc17_ || param3)
                                                                        {
                                                                           if(_loc16_)
                                                                           {
                                                                              continue loop14;
                                                                           }
                                                                           _loc14_ = §§pop();
                                                                           if(!_loc17_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(_loc17_)
                                                                           {
                                                                              addr84:
                                                                              §§push(_loc14_);
                                                                              if(_loc17_ || param1)
                                                                              {
                                                                                 if(_loc17_)
                                                                                 {
                                                                                    §§push(_loc13_);
                                                                                    if(_loc17_ || param3)
                                                                                    {
                                                                                       if(§§pop() >= §§pop())
                                                                                       {
                                                                                          if(!(_loc16_ && param1))
                                                                                          {
                                                                                             if(_loc17_ || param3)
                                                                                             {
                                                                                                if(_loc17_)
                                                                                                {
                                                                                                   _loc6_.dispose();
                                                                                                   addr122:
                                                                                                   if(_loc17_ || param3)
                                                                                                   {
                                                                                                      if(false)
                                                                                                      {
                                                                                                         addr131:
                                                                                                         §§push(_loc15_);
                                                                                                         if(_loc17_)
                                                                                                         {
                                                                                                            addr136:
                                                                                                            if(§§pop() >= _loc11_)
                                                                                                            {
                                                                                                               addr137:
                                                                                                               _loc14_++;
                                                                                                               addr138:
                                                                                                               §§goto(addr84);
                                                                                                            }
                                                                                                            param2.copyPixels(_loc6_,_loc6_.rect,new Point(_loc14_ * _loc8_,_loc15_ * _loc9_));
                                                                                                            addr160:
                                                                                                            if(!(_loc16_ && param2))
                                                                                                            {
                                                                                                               _loc15_++;
                                                                                                               addr141:
                                                                                                               if(_loc17_)
                                                                                                               {
                                                                                                                  §§goto(addr131);
                                                                                                               }
                                                                                                               §§goto(addr160);
                                                                                                            }
                                                                                                            §§goto(addr131);
                                                                                                            addr174:
                                                                                                         }
                                                                                                         addr173:
                                                                                                         _loc15_ = §§pop();
                                                                                                         addr172:
                                                                                                         §§goto(addr174);
                                                                                                      }
                                                                                                      §§goto(addr403);
                                                                                                   }
                                                                                                   §§goto(addr138);
                                                                                                }
                                                                                                §§goto(addr141);
                                                                                             }
                                                                                             §§goto(addr137);
                                                                                          }
                                                                                          §§goto(addr122);
                                                                                       }
                                                                                       §§goto(addr172);
                                                                                       §§push(_loc10_);
                                                                                    }
                                                                                    §§goto(addr136);
                                                                                 }
                                                                                 §§goto(addr173);
                                                                              }
                                                                              §§goto(addr131);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(!_loc16_)
                                                                              {
                                                                                 if(!(_loc16_ && param3))
                                                                                 {
                                                                                    addr218:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param1.right / _loc8_);
                                                                                       if(_loc17_ || param2)
                                                                                       {
                                                                                          §§push(int(§§pop()));
                                                                                          break loop29;
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    while(_loc17_)
                                                                                    {
                                                                                       continue loop5;
                                                                                       §§goto(addr218);
                                                                                    }
                                                                                    addr218:
                                                                                    continue loop13;
                                                                                    addr300:
                                                                                 }
                                                                                 continue loop4;
                                                                              }
                                                                              addr285:
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              _loc11_ = §§pop();
                                                                              continue loop7;
                                                                              §§goto(addr203);
                                                                           }
                                                                           addr339:
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           _loc12_ = §§pop();
                                                                           §§goto(addr191);
                                                                        }
                                                                        addr310:
                                                                     }
                                                                     loop21:
                                                                     while(true)
                                                                     {
                                                                        if(_loc16_)
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        if(!_loc16_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(param1.left < 0)
                                                                              {
                                                                                 while(_loc17_ || this)
                                                                                 {
                                                                                    §§push(_loc12_);
                                                                                    if(!(_loc16_ && param2))
                                                                                    {
                                                                                       if(!(_loc17_ || param1))
                                                                                       {
                                                                                          break loop21;
                                                                                       }
                                                                                       §§push(§§pop() - 1);
                                                                                       while(true)
                                                                                       {
                                                                                          _loc12_ = §§pop();
                                                                                          §§goto(addr285);
                                                                                       }
                                                                                       addr284:
                                                                                    }
                                                                                    §§goto(addr284);
                                                                                 }
                                                                                 §§goto(addr356);
                                                                                 addr261:
                                                                              }
                                                                              §§goto(addr218);
                                                                           }
                                                                           addr315:
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr353);
                                                                        }
                                                                     }
                                                                     §§goto(addr355);
                                                                  }
                                                                  §§goto(addr284);
                                                               }
                                                               §§goto(addr187);
                                                            }
                                                            §§goto(addr261);
                                                         }
                                                         continue loop27;
                                                      }
                                                      continue loop6;
                                                   }
                                                }
                                             }
                                             §§goto(addr354);
                                          }
                                       }
                                    }
                                    continue loop0;
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr315);
         }
         addr403:
      }
      
      protected function addObjectBird(param1:§,!A§, param2:§3!J§.Sprite, param3:§;!Q§, param4:§@-§, param5:Number = 1.0, param6:Boolean = true) : §^"2§
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc11_:§^"2§ = null;
         §§push(param1.type);
         if(_loc13_)
         {
            §§push(§§pop());
         }
         var _loc7_:* = §§pop();
         §§push(param1.x);
         if(!_loc14_)
         {
            §§push(Number(§§pop()));
         }
         var _loc8_:* = §§pop();
         §§push(param1.y);
         if(!(_loc14_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(param1.angle);
         if(!_loc14_)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         var _loc12_:* = _loc7_;
         if(_loc13_ || param2)
         {
            if("BIRD_BLACK" === _loc12_)
            {
               if(!(_loc14_ && this))
               {
                  §§push(0);
                  if(!_loc13_)
                  {
                     addr356:
                  }
               }
               else
               {
                  addr269:
                  §§push(1);
                  if(_loc14_ && param3)
                  {
                     addr305:
                  }
               }
            }
            else if("BIRD_BLUE" === _loc12_)
            {
               if(_loc13_ || param1)
               {
                  §§goto(addr269);
               }
               else
               {
                  addr330:
                  §§push(5);
                  if(!_loc14_)
                  {
                     addr333:
                  }
               }
            }
            else if("BIRD_GREEN" === _loc12_)
            {
               if(_loc13_)
               {
                  §§push(2);
                  if(_loc14_ && param3)
                  {
                     §§goto(addr333);
                  }
               }
               else
               {
                  addr339:
                  §§push(6);
                  if(!_loc14_)
                  {
                     addr342:
                  }
                  else
                  {
                     addr392:
                  }
               }
            }
            else if("BIRD_WHITE" === _loc12_)
            {
               if(!_loc14_)
               {
                  §§push(3);
                  if(_loc13_ || this)
                  {
                     §§goto(addr305);
                  }
                  else
                  {
                     §§goto(addr356);
                  }
               }
               else
               {
                  §§goto(addr330);
               }
            }
            else if("BIRD_YELLOW" === _loc12_)
            {
               if(!_loc14_)
               {
                  addr311:
                  §§push(4);
                  if(_loc13_ || param3)
                  {
                  }
                  §§goto(addr397);
               }
               else
               {
                  §§goto(addr339);
               }
            }
            else if("BIRD_RED" === _loc12_)
            {
               if(!(_loc14_ && this))
               {
                  §§goto(addr330);
               }
               else
               {
                  §§goto(addr339);
               }
            }
            else
            {
               if("BIRD_REDBIG" === _loc12_)
               {
                  if(!_loc14_)
                  {
                     §§goto(addr339);
                  }
               }
               else if("BIRD_ORANGE" === _loc12_)
               {
                  if(_loc13_ || param2)
                  {
                     §§push(7);
                     if(!_loc14_)
                     {
                        §§goto(addr356);
                     }
                     else
                     {
                        addr370:
                        §§goto(addr397);
                     }
                  }
               }
               else if("BIRD_SARDINE" === _loc12_)
               {
                  if(_loc13_ || param2)
                  {
                     §§push(8);
                     if(!_loc14_)
                     {
                        §§goto(addr370);
                     }
                  }
               }
               else if("BIRD_MIGHTY_EAGLE" !== _loc12_)
               {
                  addr397:
                  switch(§§pop())
                  {
                     case 0:
                        _loc11_ = new §'!R§(param2,param3,this.§!`§.§>!&§.§^d§,param4,param1,param5,param6);
                        break;
                     case 1:
                        _loc11_ = new §!r§(param2,param3,this.§!`§.§>!&§.§^d§,param4,param1,param5,param6);
                        break;
                     case 2:
                        _loc11_ = new § "+§(param2,param3,this.§!`§.§>!&§.§^d§,param4,param1,param5,param6);
                        break;
                     case 3:
                        _loc11_ = new §=1§(param2,param3,this.§!`§.§>!&§.§^d§,param4,param1,param5,param6);
                        break;
                     case 4:
                        _loc11_ = new §21§(param2,param3,this.§!`§.§>!&§.§^d§,param4,param1,param5,param6);
                        break;
                     case 5:
                        _loc11_ = new §3i§(param2,param3,this.§!`§.§>!&§.§^d§,param4,param1,param5,param6);
                        break;
                     case 6:
                        _loc11_ = new §>"7§(param2,param3,this.§!`§.§>!&§.§^d§,param4,param1,param5,param6);
                        break;
                     case 7:
                        _loc11_ = new §45§(param2,param3,this.§!`§.§>!&§.§^d§,param4,param1,param5,param6);
                        break;
                     case 8:
                        _loc11_ = new §>S§(param2,param3,this.§!`§.§>!&§.§^d§,param4,param1,param5,param6);
                        break;
                     case 9:
                        _loc11_ = new §[!J§(param2,param3,this.§!`§.§>!&§.§^d§,param4,param1,param5,param6);
                        break;
                     default:
                        _loc11_ = new §^"2§(param2,param3,this.§!`§.§>!&§.§^d§,param4,param1,param5,param6);
                  }
                  return _loc11_;
                  §§push(10);
               }
               §§goto(addr397);
               if(_loc13_ || param2)
               {
                  §§goto(addr392);
               }
            }
            §§goto(addr397);
         }
         §§goto(addr311);
      }
      
      public function hasBirds() : Boolean
      {
         return this.§2;§ > 0;
      }
      
      protected function §1!W§(param1:§,!A§, param2:§3!J§.Sprite, param3:§;!Q§, param4:§@-§, param5:Number = 1.0) : §7k§
      {
         return new §7k§(param2,param3,this.§!`§.§>!&§.§^d§,param4,param1,param5);
      }
      
      public function §&w§(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0, param10:Boolean = false) : §#!v§
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         if(_loc11_ || param1)
         {
            §§push(this.§]1§);
            loop0:
            while(true)
            {
               §§pop().type = param1;
               addr155:
               while(true)
               {
                  §§push(this.§]1§);
                  addr148:
                  while(true)
                  {
                     §§push(param2);
                     addr149:
                     addr50:
                     while(true)
                     {
                        §§pop().x = §§pop();
                     }
                     if(!(_loc12_ && param1))
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr150);
      }
      
      public function §+"5§(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Number = 0.0, param7:Number = 0.0, param8:Number = 1.0, param9:Boolean = false) : §#!v§
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(!(_loc11_ && param1))
         {
            §§push(this.§]1§);
            loop0:
            while(true)
            {
               §§pop().type = param1;
               loop1:
               while(true)
               {
                  §§push(this.§]1§);
                  loop2:
                  while(true)
                  {
                     §§push(param2);
                     loop3:
                     while(true)
                     {
                        §§pop().x = §§pop();
                        loop4:
                        while(!(_loc11_ && param1))
                        {
                           §§push(this.§]1§);
                           loop5:
                           while(true)
                           {
                              §§push(param3);
                              loop6:
                              while(true)
                              {
                                 §§pop().y = §§pop();
                                 loop7:
                                 while(_loc10_ || this)
                                 {
                                    §§push(this.§]1§);
                                    loop8:
                                    for(; _loc10_; while(!(_loc11_ && param3))
                                    {
                                       §§goto(addr97);
                                       §§push(param6);
                                       §§goto(addr114);
                                    })
                                    {
                                       §§push(param4);
                                       while(_loc10_ || this)
                                       {
                                          §§pop().angle = §§pop();
                                          while(!(_loc11_ && param3))
                                          {
                                             if(_loc11_ && this)
                                             {
                                                continue loop6;
                                             }
                                             §§pop().§4!Y§ = §§pop();
                                             while(!_loc11_)
                                             {
                                                §§push(this.§]1§);
                                                if(_loc10_ || this)
                                                {
                                                   if(_loc10_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   continue loop2;
                                                }
                                                continue loop8;
                                                §§pop().§]5§ = §§pop();
                                                if(_loc11_ && this)
                                                {
                                                   continue;
                                                }
                                                if(!(_loc10_ || this))
                                                {
                                                   continue loop7;
                                                }
                                                return this.§?"%§(this.§]1§,param5,false,false,false,param8,param9);
                                                addr75:
                                             }
                                             while(true)
                                             {
                                                §§push(this.§]1§);
                                                continue loop8;
                                             }
                                             §§goto(addr75);
                                          }
                                       }
                                       continue loop3;
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
               }
            }
         }
         §§goto(addr129);
      }
      
      protected function §?"%§(param1:§,!A§, param2:int, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true, param6:Number = 1.0, param7:Boolean = false) : §#!v§
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc8_:§3!J§.Sprite = new §3!J§.Sprite();
         var _loc9_:§#!v§;
         if((_loc9_ = this.§^!#§(param1,param2,_loc8_,param5,param6)) == null)
         {
            if(_loc12_ || param2)
            {
               return null;
            }
            while(true)
            {
               this.§1!f§.§#!a§(_loc8_);
               addr314:
               loop7:
               while(true)
               {
                  loop8:
                  while(true)
                  {
                     §§push(param3);
                     loop9:
                     while(true)
                     {
                        if(!(_loc13_ && param1))
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 if(_loc13_ && this)
                                 {
                                    break loop9;
                                 }
                                 addr278:
                                 this.§!`§.§2!;§(_loc9_);
                                 while(true)
                                 {
                                    §§goto(addr278);
                                 }
                              }
                              addr271:
                           }
                           while(true)
                           {
                              §§push(param4);
                              loop10:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc12_ || param2)
                                 {
                                    addr248:
                                    §§push(§§pop());
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop11:
                                          while(true)
                                          {
                                             if(!(_loc12_ || param3))
                                             {
                                                continue loop9;
                                             }
                                             while(true)
                                             {
                                                §§pop();
                                                loop3:
                                                while(true)
                                                {
                                                   if(!_loc13_)
                                                   {
                                                      §§push(_loc9_ is §^"2§);
                                                      if(!_loc13_)
                                                      {
                                                         if(_loc12_ || param1)
                                                         {
                                                            loop4:
                                                            while(§§pop())
                                                            {
                                                               if(_loc12_ || param3)
                                                               {
                                                                  if(!(_loc12_ || param2))
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  if(!_loc13_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.§6!j§ = §^"2§(_loc9_);
                                                                     }
                                                                     addr230:
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr282);
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!_loc13_)
                                                                  {
                                                                     addr237:
                                                                     break loop4;
                                                                  }
                                                                  continue loop7;
                                                               }
                                                            }
                                                            return _loc9_;
                                                            addr212:
                                                         }
                                                         continue loop10;
                                                      }
                                                      continue loop11;
                                                   }
                                                   §§goto(addr271);
                                                   §§goto(addr278);
                                                }
                                                continue loop11;
                                             }
                                          }
                                          addr250:
                                       }
                                       §§goto(addr212);
                                    }
                                    addr249:
                                 }
                                 §§goto(addr250);
                              }
                           }
                        }
                     }
                     addr290:
                     while(true)
                     {
                        continue loop8;
                     }
                  }
               }
            }
            addr310:
         }
         else
         {
            §§push(_loc9_ is §@_§);
            if(_loc12_)
            {
               §§push(§§pop());
               if(!(_loc13_ && param3))
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        if(_loc12_ || param1)
                        {
                           while(true)
                           {
                              §§push((_loc9_ as §@_§).§]^§());
                              if(_loc12_)
                              {
                                 §§push(Boolean(§§pop()));
                                 while(true)
                                 {
                                    loop17:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc13_)
                                          {
                                             §§push(_loc8_);
                                             §§push(this.§]!n§);
                                             if(!_loc13_)
                                             {
                                                §§push(!§§pop());
                                             }
                                             §§pop().visible = §§pop();
                                             loop18:
                                             while(true)
                                             {
                                                addr44:
                                                while(true)
                                                {
                                                   §§push(_loc9_ is §^"2§);
                                                   if(!(_loc13_ && param3))
                                                   {
                                                      continue loop17;
                                                   }
                                                   addr80:
                                                   §§pop();
                                                   if(!(_loc13_ && param3))
                                                   {
                                                      continue loop18;
                                                   }
                                                   §§goto(addr237);
                                                }
                                                continue loop17;
                                             }
                                          }
                                          §§goto(addr290);
                                       }
                                       §§goto(addr44);
                                    }
                                 }
                                 addr105:
                              }
                              break;
                           }
                           §§goto(addr257);
                        }
                        break;
                        if(!(_loc12_ || this))
                        {
                           continue;
                        }
                        §§push(§§pop());
                        if(!_loc13_)
                        {
                           if(§§pop())
                           {
                              if(!(_loc13_ && this))
                              {
                                 §§goto(addr80);
                              }
                              §§goto(addr248);
                           }
                           §§goto(addr158);
                        }
                        §§goto(addr249);
                     }
                     §§goto(addr230);
                  }
                  §§goto(addr105);
               }
               §§goto(addr248);
            }
         }
         §§goto(addr292);
      }
      
      private function §^!#§(param1:§,!A§, param2:int, param3:§3!J§.Sprite, param4:Boolean = true, param5:Number = 1.0) : §#!v§
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc7_:§@_§ = null;
         if(_loc10_)
         {
            §§push(param2);
            if(_loc10_)
            {
               §§push(§0"+§);
               if(_loc10_ || this)
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc10_)
                     {
                        §§push(this.§7!,§);
                        if(!_loc11_)
                        {
                           addr39:
                           §§push(int(§§pop()));
                           if(!_loc11_)
                           {
                              param2 = §§pop();
                              if(!(_loc11_ && param1))
                              {
                                 addr50:
                                 var _loc8_:*;
                                 §§push((_loc8_ = this).§7!,§);
                                 if(!(_loc11_ && param3))
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc9_:* = §§pop();
                                 if(_loc10_ || param1)
                                 {
                                    _loc8_.§7!,§ = _loc9_;
                                 }
                                 if(!_loc11_)
                                 {
                                    addr109:
                                    var _loc6_:§#!v§;
                                    if((_loc6_ = this.§-!&§(param1,param3,param4,param5)) is §^"2§)
                                    {
                                       if(!(_loc11_ && param3))
                                       {
                                          §§push((_loc8_ = this).§09§);
                                          if(!(_loc11_ && this))
                                          {
                                             §§push(§§pop() + 1);
                                          }
                                          _loc9_ = §§pop();
                                          if(!_loc11_)
                                          {
                                             _loc8_.§09§ = _loc9_;
                                          }
                                          if(!_loc11_)
                                          {
                                             addr160:
                                             if(_loc6_)
                                             {
                                                addr162:
                                                _loc7_ = _loc6_ as §@_§;
                                                if(_loc10_)
                                                {
                                                   §§push(_loc6_ is §3[§);
                                                   loop0:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         loop10:
                                                         while(true)
                                                         {
                                                            this.§53§.push(_loc6_);
                                                            loop8:
                                                            while(true)
                                                            {
                                                               addr170:
                                                               loop9:
                                                               while(true)
                                                               {
                                                                  §§push(this.§<!%§);
                                                                  if(!(_loc11_ && param2))
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(!(_loc11_ && this))
                                                                        {
                                                                           if(_loc10_)
                                                                           {
                                                                              if(!_loc11_)
                                                                              {
                                                                                 addr194:
                                                                                 this.§<!%§.§<!r§(_loc6_);
                                                                                 addr196:
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(!(_loc11_ && param1))
                                                                                    {
                                                                                       if(true)
                                                                                       {
                                                                                          addr289:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr289:
                                                                                       }
                                                                                       continue loop0;
                                                                                       return _loc6_;
                                                                                    }
                                                                                    continue loop10;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc11_ && this))
                                                                                    {
                                                                                       continue loop9;
                                                                                    }
                                                                                    continue loop8;
                                                                                 }
                                                                                 addr239:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 this.§-L§[param1.instanceName] = _loc6_;
                                                                                 addr260:
                                                                                 loop11:
                                                                                 while(true)
                                                                                 {
                                                                                    addr247:
                                                                                    while(true)
                                                                                    {
                                                                                       this.§-"2§.push(_loc6_);
                                                                                       continue loop11;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr269:
                                                                           }
                                                                           else
                                                                           {
                                                                              while(!(_loc11_ && param1))
                                                                              {
                                                                                 if(_loc10_ || param3)
                                                                                 {
                                                                                    this.§82§.push(_loc6_);
                                                                                    §§goto(addr239);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr260);
                                                                                 }
                                                                              }
                                                                              addr221:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                        }
                                                                        §§goto(addr196);
                                                                     }
                                                                     §§goto(addr289);
                                                                  }
                                                                  §§goto(addr194);
                                                               }
                                                               addr266:
                                                               while(true)
                                                               {
                                                                  _loc7_.§=G§(param2);
                                                                  §§goto(addr269);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      else if(_loc7_)
                                                      {
                                                         §§goto(addr266);
                                                      }
                                                      §§goto(addr247);
                                                   }
                                                }
                                                §§goto(addr260);
                                             }
                                             §§goto(addr289);
                                          }
                                       }
                                       §§goto(addr162);
                                    }
                                    §§goto(addr160);
                                 }
                                 else
                                 {
                                    §§goto(addr101);
                                 }
                              }
                              §§goto(addr109);
                           }
                           else
                           {
                              addr79:
                              if(§§pop() >= §,J§)
                              {
                                 if(!_loc11_)
                                 {
                                    throw new Error("Invalid object id: " + param2 + ". Has to be less than " + §,J§);
                                 }
                              }
                           }
                           if(this.§,!]§(param2))
                           {
                              if(!_loc11_)
                              {
                                 addr101:
                                 throw new Error("Object with id: " + param2 + " already added!");
                              }
                           }
                        }
                        §§goto(addr79);
                     }
                     §§goto(addr109);
                  }
                  else
                  {
                     §§push(param2);
                  }
               }
               §§goto(addr79);
            }
            §§goto(addr39);
         }
         §§goto(addr50);
      }
      
      protected function §`"3§() : String
      {
         return "INGAME_TEXTURE_SAND_1";
      }
      
      protected function §>!v§(param1:§,!A§, param2:§3!J§.Sprite, param3:§;!Q§, param4:§@-§, param5:int, param6:Number = 1.0) : §#!v§
      {
         return new §7@§(param2,param3,this.§!`§.§>!&§.§^d§,param4,param1,param6,param5);
      }
      
      protected function §<,§(param1:§,!A§, param2:§3!J§.Sprite, param3:§;!Q§, param4:§@-§, param5:int, param6:Number = 1.0) : §#!v§
      {
         return new §#+§(param2,param3,this.§!`§.§>!&§.§^d§,param4,param1,param6,param5);
      }
      
      protected function §-!&§(param1:§,!A§, param2:§3!J§.Sprite, param3:Boolean = true, param4:Number = 1.0) : §#!v§
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc5_:§@-§;
         if(!(_loc5_ = this.§!`§.levelItemManager.§1!e§(param1.type)))
         {
            if(!(_loc9_ && this))
            {
               return null;
            }
         }
         §§push(_loc5_.itemName);
         if(!(_loc9_ && param2))
         {
            §§push(§§pop());
         }
         var _loc6_:*;
         §§push(_loc6_ = §§pop());
         if(_loc10_ || this)
         {
            if(§§pop().substr(0,13) == "BLOCK_STATIC_")
            {
               if(_loc10_)
               {
                  §§push(this.§`"3§());
                  if(!(_loc9_ && this))
                  {
                     addr71:
                     §§push(§§pop());
                  }
                  _loc6_ = §§pop();
               }
            }
            var _loc7_:§;!Q§ = this.§!`§.§13§.§6"%§(_loc6_);
            var _loc8_:§#!v§ = null;
            if(!_loc9_)
            {
               §§push(param1.type);
               if(_loc10_)
               {
                  if(§§pop().indexOf("BIRD") == 0)
                  {
                     if(!(_loc9_ && param2))
                     {
                        _loc8_ = this.addObjectBird(param1,param2,_loc7_,_loc5_,param4,param3);
                     }
                     else
                     {
                        addr230:
                        _loc8_ = this.§<,§(param1,param2,_loc7_,_loc5_,§=q§.§'!`§,param4);
                        addr259:
                     }
                  }
                  else
                  {
                     §§push(_loc5_.itemType);
                     if(!_loc9_)
                     {
                        §§push(§@-§.§[$§);
                        if(_loc10_)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(!(_loc9_ && param1))
                              {
                                 _loc8_ = this.§1!W§(param1,param2,_loc7_,_loc5_,param4);
                                 §§goto(addr283);
                              }
                              else
                              {
                                 addr213:
                                 _loc8_ = this.§>!v§(param1,param2,_loc7_,_loc5_,§=q§.§^2§,param4);
                                 §§goto(addr259);
                              }
                           }
                           else
                           {
                              §§push(_loc5_.itemType);
                              if(_loc10_ || param3)
                              {
                                 addr156:
                                 §§push(§@-§.§=6§);
                                 if(!(_loc9_ && this))
                                 {
                                    addr165:
                                    §§push(§§pop() == §§pop());
                                    if(!_loc9_)
                                    {
                                       if(!§§pop())
                                       {
                                          if(!(_loc9_ && this))
                                          {
                                             addr177:
                                             §§pop();
                                             if(!(_loc9_ && param1))
                                             {
                                                §§goto(addr190);
                                             }
                                             §§push(_loc5_.itemName);
                                             if(_loc10_ || param2)
                                             {
                                                if(§§pop().indexOf("TNT") >= 0)
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      §§goto(addr213);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr230);
                                                   }
                                                }
                                                else
                                                {
                                                   addr227:
                                                   if(_loc5_.itemName == §=1§.§+R§)
                                                   {
                                                      §§goto(addr230);
                                                   }
                                                   else
                                                   {
                                                      _loc8_ = new §4!X§(param2,_loc7_,this.§!`§.§>!&§.§^d§,_loc5_,param1,param4,_loc5_.particleJSONId,_loc5_.particleVariationCount);
                                                   }
                                                   §§goto(addr230);
                                                }
                                                §§goto(addr230);
                                             }
                                             §§goto(addr227);
                                          }
                                       }
                                       §§goto(addr190);
                                    }
                                    §§goto(addr177);
                                 }
                                 §§goto(addr190);
                              }
                              addr190:
                              if(_loc5_.itemType == §@-§.§0?§)
                              {
                                 if(_loc10_ || param2)
                                 {
                                 }
                                 §§goto(addr230);
                              }
                              else
                              {
                                 _loc8_ = new §@_§(param2,_loc7_,this.§!`§.§>!&§.§^d§,_loc5_,param1,param4);
                                 §§goto(addr283);
                              }
                           }
                           §§goto(addr283);
                        }
                        §§goto(addr165);
                     }
                     §§goto(addr156);
                  }
                  addr283:
                  return _loc8_;
               }
               §§goto(addr227);
            }
            §§goto(addr230);
         }
         §§goto(addr71);
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean, param4:Number, param5:Number, param6:int) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && this))
         {
            this.§!`§.addScore(param1,§52§.§^Y§,param3,param4,param5,param6);
         }
      }
      
      public function §9!@§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         if(!(_loc16_ && param1))
         {
            this.§!`§.particles.§9!@§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         }
      }
      
      public function §=9§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         if(!(_loc18_ && param3))
         {
            this.§!`§.particles.§=9§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
         }
      }
      
      protected function §3"'§(param1:§@_§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:§5D§ = null;
         var _loc5_:§5D§ = null;
         var _loc6_:§#!v§ = null;
         var _loc7_:§#!v§ = null;
         §§push(param1.id);
         if(!(_loc9_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:* = int(this.§>]§.length - 1);
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§>]§[_loc3_];
            if(_loc8_)
            {
               §§push(this.§>]§[_loc3_].id1 == _loc2_);
               if(!(_loc9_ && param1))
               {
                  if(!§§pop())
                  {
                     if(_loc8_)
                     {
                        §§pop();
                        if(!_loc8_)
                        {
                           continue;
                        }
                        §§push(this.§>]§[_loc3_].id2 == _loc2_);
                     }
                  }
               }
               if(§§pop())
               {
                  if(_loc8_ || this)
                  {
                     addr91:
                     §§push(_loc4_.§7!Q§);
                     if(!(_loc9_ && this))
                     {
                        if(§§pop())
                        {
                           if(_loc9_)
                           {
                              continue;
                           }
                           addr115:
                           _loc6_ = _loc4_.§7!Q§.§>!y§().GetUserData() as §#!v§;
                           _loc7_ = _loc4_.§7!Q§.§5!0§().GetUserData() as §#!v§;
                           if(!(_loc9_ && _loc3_))
                           {
                              if(_loc6_)
                              {
                                 if(_loc8_)
                                 {
                                    _loc6_.§8"0§(_loc7_);
                                    if(!_loc8_)
                                    {
                                    }
                                    addr154:
                                    _loc7_.§8"0§(_loc6_);
                                    addr157:
                                    _loc5_ = this.§>]§.pop();
                                    if(!(_loc9_ && param1))
                                    {
                                       if(_loc3_ < this.§>]§.length)
                                       {
                                          if(!(_loc9_ && param1))
                                          {
                                             this.§>]§[_loc3_] = _loc5_;
                                             if(_loc9_)
                                             {
                                             }
                                             addr191:
                                             §§push(_loc3_);
                                             if(!(_loc9_ && this))
                                             {
                                                §§push(§§pop() - 1);
                                             }
                                             _loc3_ = §§pop();
                                             continue;
                                          }
                                          §§goto(addr191);
                                       }
                                       this.§;b§(_loc4_);
                                    }
                                    §§goto(addr191);
                                 }
                                 §§goto(addr157);
                              }
                              if(_loc7_)
                              {
                                 if(_loc8_ || this)
                                 {
                                 }
                              }
                              §§goto(addr157);
                           }
                        }
                        §§goto(addr154);
                     }
                  }
                  §§goto(addr115);
               }
               §§goto(addr191);
            }
            §§goto(addr91);
         }
      }
      
      protected function §@!t§(param1:§-C§) : §5D§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(param1.id1);
         if(!(_loc8_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(param1.id2);
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:§5D§ = §5D§.§@!t§(param1);
         if(_loc7_ || _loc3_)
         {
            this.§>]§.push(_loc4_);
         }
         var _loc5_:§#!v§ = this.§,!]§(_loc2_);
         var _loc6_:§#!v§ = this.§,!]§(_loc3_);
         if(!_loc8_)
         {
            §§push(Boolean(_loc5_));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr172:
                     while(true)
                     {
                        §§push(Boolean(_loc6_));
                        if(_loc8_ && _loc2_)
                        {
                           break;
                        }
                        if(_loc8_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               loop3:
               while(§§pop())
               {
                  while(true)
                  {
                     if(_loc4_.type == §-C§.§-!R§)
                     {
                        this.§]!P§.push(new § !A§(_loc2_,_loc3_,_loc4_.annihilationTime,param1.§#!j§));
                        loop5:
                        for(; !_loc8_; while(true)
                        {
                           _loc5_.§#$§(_loc6_);
                           do
                           {
                              _loc6_.§#$§(_loc5_);
                           }
                           while(!(_loc7_ || _loc2_));
                           
                           if(!(_loc8_ && _loc3_))
                           {
                              break;
                           }
                           continue loop5;
                        },addr102:,if(!_loc8_)
                        {
                           addr99:
                           if(!_loc7_)
                           {
                              while(true)
                              {
                                 _loc4_.§7!Q§ = this.§!`§.§>!&§.§^d§.§>!g§(_loc4_.§5",§(_loc5_,_loc6_));
                                 addr164:
                                 while(true)
                                 {
                                    if(_loc7_)
                                    {
                                       §§goto(addr102);
                                    }
                                    else
                                    {
                                       §§goto(addr172);
                                    }
                                 }
                                 §§goto(addr99);
                              }
                              addr143:
                           }
                           break loop3;
                        },§§goto(addr164))
                        {
                           while(true)
                           {
                              continue loop5;
                           }
                        }
                        continue;
                     }
                     §§goto(addr143);
                  }
               }
               return _loc4_;
            }
         }
         §§goto(addr123);
      }
      
      protected function §;b§(param1:§5D§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1.§7!Q§)
            {
               while(true)
               {
                  this.§!`§.§>!&§.§^d§.§!U§(param1.§7!Q§);
                  addr92:
                  while(true)
                  {
                  }
               }
               addr85:
            }
            for(; param1.§ !B§; §§goto(addr92))
            {
               if(_loc2_ || param1)
               {
                  §§push(this.§1!f§);
                  if(_loc2_)
                  {
                     §§push(param1.§ !B§);
                     if(_loc2_ || this)
                     {
                        if(!§§pop().contains(§§pop()))
                        {
                           break;
                        }
                        if(!_loc3_)
                        {
                           if(_loc2_)
                           {
                              addr65:
                              §§push(this.§1!f§);
                              §§push(param1.§ !B§);
                           }
                           else
                           {
                              §§goto(addr85);
                           }
                        }
                        addr69:
                        if(!_loc3_)
                        {
                           addr71:
                           break;
                        }
                        continue;
                     }
                     §§pop().removeChild(§§pop(),true);
                     §§goto(addr69);
                  }
                  §§goto(addr65);
               }
               §§goto(addr69);
            }
            return;
         }
         §§goto(addr71);
      }
      
      public function §<!Q§(param1:int, param2:Number, param3:Number, param4:int = -1) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§ !k§.push(§=q§.§7",§(param1,param2,param3));
         }
         do
         {
            this.§&<§(param1);
         }
         while(!(_loc6_ || param3));
         
      }
      
      protected function §&<§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §>D§.§9!q§("TntExplosions","ChannelExplosions");
         }
      }
      
      public function §2"!§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            this.§ !k§.push(§=q§.§4!A§(param1,param2,param3,param4,param5,param6));
            do
            {
               §>D§.§9!q§("TntExplosions","ChannelExplosions");
            }
            while(_loc8_ && param1);
            
         }
      }
      
      public function §3!K§(param1:Number, param2:Number, param3:Number, param4:b2Vec2) : b2Vec2
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            if(!param4)
            {
               if(_loc6_)
               {
                  addr33:
                  param4 = new b2Vec2();
                  addr47:
                  param4.SetV(this.§!`§.§>!&§.§^d§.§2§());
               }
               return param4;
            }
            §§goto(addr47);
         }
         §§goto(addr33);
      }
      
      public function get §4U§() : Number
      {
         return this.§!`§.§4U§;
      }
      
      public function §?!_§(param1:Number, param2:Number) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§@_§ = null;
         var _loc3_:int = this.§-"2§.length - 1;
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc6_ && param1))
            {
               if(§§pop() < 0)
               {
                  break;
               }
               §§push(Boolean(_loc4_ = this.§-"2§[_loc3_] as §@_§));
               if(_loc5_ || this)
               {
                  if(§§pop())
                  {
                     if(!_loc6_)
                     {
                        §§pop();
                        if(_loc5_)
                        {
                           addr66:
                           if(_loc4_.isInCoordinates(param1,param2))
                           {
                              if(_loc5_ || _loc3_)
                              {
                                 §§push(_loc3_);
                                 if(!(_loc6_ && param2))
                                 {
                                    return §§pop();
                                 }
                              }
                              else
                              {
                                 addr90:
                                 §§push(_loc3_);
                                 if(_loc6_)
                                 {
                                    continue;
                                 }
                              }
                              §§push(§§pop() - 1);
                              continue;
                           }
                        }
                        §§goto(addr90);
                     }
                  }
               }
               §§goto(addr66);
            }
            break;
         }
         return §§pop();
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §@_§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§@_§ = null;
         var _loc3_:* = int(this.§-"2§.length - 1);
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§-"2§[_loc3_] as §@_§)
            {
               if(!_loc5_)
               {
                  if(_loc4_.isInCoordinates(param1,param2))
                  {
                     if(!_loc5_)
                     {
                        return _loc4_;
                     }
                  }
               }
            }
            §§push(_loc3_);
            if(!(_loc5_ && this))
            {
               §§push(§§pop() - 1);
            }
            _loc3_ = §§pop();
         }
         return null;
      }
      
      public function §+s§(param1:Number, param2:Number) : Vector.<§@_§>
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§@_§ = null;
         var _loc3_:Vector.<§@_§> = new Vector.<§@_§>();
         var _loc4_:* = int(this.§-"2§.length - 1);
         while(_loc4_ >= 0)
         {
            §§push(Boolean(_loc5_ = this.§-"2§[_loc4_] as §@_§));
            if(_loc7_ || this)
            {
               if(§§pop())
               {
                  if(_loc7_ || _loc3_)
                  {
                     §§pop();
                     if(!(_loc7_ || param2))
                     {
                        continue;
                     }
                     §§push(Boolean(_loc5_.isInCoordinates(param1,param2)));
                  }
               }
            }
            if(§§pop())
            {
               if(_loc6_)
               {
                  continue;
               }
               _loc3_.push(_loc5_);
               if(!(_loc7_ || _loc3_))
               {
                  continue;
               }
            }
            §§push(_loc4_);
            if(!_loc6_)
            {
               §§push(§§pop() - 1);
            }
            _loc4_ = §§pop();
         }
         return _loc3_;
      }
      
      public function getObject(param1:int) : §#!v§
      {
         return this.§-"2§[param1];
      }
      
      public function §,!]§(param1:int) : §@_§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§#!v§ = null;
         var _loc3_:§@_§ = null;
         var _loc4_:int = 0;
         var _loc5_:* = this.§-"2§;
         while(true)
         {
            for each(_loc2_ in _loc5_)
            {
               _loc3_ = _loc2_ as §@_§;
               if(_loc6_)
               {
                  §§push(Boolean(_loc3_));
                  if(_loc6_ || _loc3_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc7_ && _loc3_))
                        {
                           addr70:
                           §§pop();
                           if(!_loc6_)
                           {
                              continue;
                           }
                           §§push(_loc3_.id == param1);
                        }
                     }
                     if(§§pop())
                     {
                        if(!_loc7_)
                        {
                           break;
                        }
                     }
                     continue;
                  }
                  §§goto(addr70);
               }
               break;
            }
            return null;
         }
         return _loc3_;
      }
      
      public function §'-§(param1:String) : §@_§
      {
         return this.§-L§[param1];
      }
      
      public function §&!N§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = int(this.§-"2§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc4_);
            while(true)
            {
               §§push(0);
               loop2:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     while(true)
                     {
                        this.§[!;§(param1);
                        while(true)
                        {
                           if(!_loc5_)
                           {
                              §§push(int(this.§53§.length - 1));
                              loop5:
                              while(_loc6_ || param1)
                              {
                                 _loc4_ = §§pop();
                                 loop6:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       if(!(_loc6_ || param3))
                                       {
                                          while(true)
                                          {
                                             if(_loc5_)
                                             {
                                                continue loop5;
                                             }
                                             if(_loc5_ && this)
                                             {
                                                break;
                                             }
                                             §§goto(addr80);
                                          }
                                       }
                                       §§push(0);
                                       addr159:
                                       if(_loc5_)
                                       {
                                          break;
                                       }
                                       if(§§pop() >= §§pop())
                                       {
                                          this.§53§[_loc4_].render(param1,param2,param3);
                                          while(true)
                                          {
                                             §§push(_loc4_);
                                             if(_loc6_ || this)
                                             {
                                                if(!(_loc6_ || this))
                                                {
                                                   break;
                                                }
                                                §§push(§§pop() - 1);
                                             }
                                          }
                                       }
                                       if(_loc5_ && param2)
                                       {
                                          while(!(_loc6_ || param3))
                                          {
                                             _loc4_ = §§pop();
                                          }
                                          continue loop6;
                                       }
                                       if(_loc6_ || param1)
                                       {
                                          return;
                                       }
                                       continue loop0;
                                       addr119:
                                    }
                                    continue loop2;
                                 }
                              }
                              _loc4_ = §§pop();
                              continue loop0;
                           }
                           addr182:
                           §§push(_loc4_);
                           §§goto(addr159);
                        }
                     }
                  }
                  else
                  {
                     this.§-"2§[_loc4_].render(param1,param2,param3);
                  }
                  §§goto(addr182);
               }
            }
         }
      }
      
      protected function §-!,§(param1:Number, param2:Number) : Number
      {
         return 1 / param1;
      }
      
      protected function §5@§(param1:Number, param2:Number, param3:§@_§) : §!x§
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         §§push(param3.§!!I§().GetPosition().x - param1);
         if(_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(param3.§!!I§().GetPosition().y - param2);
         if(_loc9_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         var _loc7_:§!x§;
         (_loc7_ = new §!x§()).§2!7§ = _loc6_;
         if(!_loc8_)
         {
            _loc7_.§@"6§ = new Point(param3.§!!I§().GetPosition().x,param3.§!!I§().GetPosition().y);
         }
         return _loc7_;
      }
      
      protected function §`F§(param1:§@_§, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            param1.applyDamage(param2,this,null,param3);
         }
      }
      
      protected function §!t§(param1:§@_§) : Boolean
      {
         return false;
      }
      
      protected function §@!a§() : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc1_:§=q§ = null;
         var _loc2_:* = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§#!v§ = null;
         var _loc7_:§@_§ = null;
         var _loc8_:§!x§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Point = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         if(_loc17_)
         {
            if(!this.§8C§)
            {
               if(_loc17_ || _loc2_)
               {
                  return;
               }
            }
         }
         while(this.§ !k§.length > 0)
         {
            _loc1_ = this.§ !k§.shift();
            if(!(_loc16_ && _loc1_))
            {
               §§push(_loc1_.§#!m§);
               loop1:
               while(true)
               {
                  §§push(Number(§§pop()));
                  addr158:
                  while(true)
                  {
                     _loc2_ = §§pop();
                     addr159:
                     while(true)
                     {
                        §§push(_loc1_.x);
                        continue loop1;
                     }
                  }
               }
            }
            §§goto(addr154);
         }
      }
      
      protected function §!!X§(param1:§=q§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:* = NaN;
         if(!_loc10_)
         {
            this.§!`§.particles.§9!@§(this.§]!5§(param1.type),§"w§.§,§,§`""§.§%!9§,param2,param3,600,"",§`""§.§2"4§,0,0,0,0,1,20,true);
         }
         var _loc5_:* = 30;
         loop0:
         while(true)
         {
            §§push(_loc5_);
            if(_loc9_ || this)
            {
               if(_loc9_ || this)
               {
                  §§push(150);
                  if(!_loc10_)
                  {
                     if(_loc9_ || param2)
                     {
                        if(§§pop() >= §§pop())
                        {
                           if(!(_loc9_ || param2))
                           {
                              continue;
                           }
                           if(!(_loc10_ && param1))
                           {
                              if(_loc9_)
                              {
                                 break;
                              }
                              loop1:
                              while(true)
                              {
                                 §§push(_loc5_);
                                 addr203:
                                 while(true)
                                 {
                                    §§push(180);
                                    addr204:
                                    while(true)
                                    {
                                       §§push(§§pop() / Math.PI);
                                       if(_loc9_ || param3)
                                       {
                                          §§push(§§pop() / §§pop());
                                          if(_loc9_ || this)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          loop11:
                                          while(!(_loc10_ && param2))
                                          {
                                             _loc8_ = §§pop();
                                             while(_loc10_ && param1)
                                             {
                                                while(true)
                                                {
                                                   §§push(1250);
                                                   addr241:
                                                   while(true)
                                                   {
                                                      §§push(Math.random() * 750);
                                                      addr245:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         break loop11;
                                                      }
                                                   }
                                                }
                                             }
                                             §§push(this.§!`§.particles);
                                             §§push(§`""§.§?E§);
                                             §§push(§"w§.§,§);
                                             §§push(§`""§.§@b§);
                                             §§push(param2);
                                             §§push(param3);
                                             §§push(_loc7_);
                                             §§push("");
                                             §§push(§`""§.§2"4§);
                                             §§push(_loc6_);
                                             if(_loc9_ || param1)
                                             {
                                                §§push(§§pop() * Math.cos(_loc8_));
                                             }
                                             §§push(_loc6_);
                                             if(_loc9_ || param2)
                                             {
                                                §§push(-§§pop());
                                                if(!(_loc10_ && param3))
                                                {
                                                   §§push(§§pop() * Math.sin(_loc8_));
                                                }
                                             }
                                             §§pop().§9!@§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),20,0);
                                             loop2:
                                             while(true)
                                             {
                                                if(!(_loc10_ && param2))
                                                {
                                                   §§push(_loc5_);
                                                   if(!_loc10_)
                                                   {
                                                      if(!_loc10_)
                                                      {
                                                         §§push(5);
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc10_ && param2)
                                                            {
                                                               continue loop11;
                                                            }
                                                            if(_loc10_ && param2)
                                                            {
                                                               continue loop1;
                                                            }
                                                            if(!_loc10_)
                                                            {
                                                               if(!(_loc10_ && param3))
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  break loop2;
                                                               }
                                                               addr285:
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               _loc6_ = §§pop();
                                                               §§goto(addr287);
                                                            }
                                                         }
                                                         addr105:
                                                      }
                                                      §§goto(addr241);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr231);
                                                §§goto(addr287);
                                                §§goto(addr238);
                                             }
                                             addr231:
                                             addr238:
                                             _loc5_ = §§pop();
                                             continue loop0;
                                          }
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                             continue loop1;
                                          }
                                       }
                                       §§goto(addr245);
                                    }
                                 }
                              }
                           }
                           §§goto(addr193);
                        }
                        else
                        {
                           §§push(0.75);
                           if(_loc9_ || param1)
                           {
                              §§push(param4);
                              if(!_loc10_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc10_ && param1))
                                 {
                                    addr280:
                                    §§push(Math.random() * param4);
                                 }
                              }
                              §§goto(addr285);
                              §§push(§§pop() + §§pop());
                           }
                           §§goto(addr280);
                        }
                     }
                     §§goto(addr204);
                  }
                  §§goto(addr105);
               }
               §§goto(addr203);
            }
            §§goto(addr130);
         }
      }
      
      protected function §]!5§(param1:int) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(_loc4_ || _loc2_)
         {
         }
         switch(§§pop())
         {
         }
         return §`""§.§#i§;
      }
      
      public function §8" §(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§@_§ = null;
         var _loc2_:§#!v§ = null;
         var _loc3_:* = int(this.§-"2§.length - 1);
         loop0:
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§-"2§[_loc3_];
            if(_loc5_)
            {
               if(_loc2_.removeOnNextUpdate)
               {
                  if(_loc6_)
                  {
                     continue;
                  }
                  this.§;a§(_loc3_,true);
                  if(_loc6_ && _loc3_)
                  {
                     continue;
                  }
               }
               else
               {
                  this.§+Q§(_loc2_,param1);
                  if(!(_loc5_ || _loc2_))
                  {
                     continue;
                  }
                  addr66:
                  _loc4_ = _loc2_ as §@_§;
                  if(_loc5_ || _loc2_)
                  {
                     §§push(this.objectIsOutOfBounds(_loc2_));
                     loop1:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           §§push(Boolean(_loc4_));
                           if(!(_loc6_ && param1))
                           {
                              if(§§pop())
                              {
                                 continue;
                              }
                              addr196:
                              loop2:
                              while(§§pop())
                              {
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    if(_loc5_ || _loc2_)
                                    {
                                       while(true)
                                       {
                                          _loc4_.§8!U§(§89§.§6K§);
                                          addr145:
                                          do
                                          {
                                             this.§;a§(_loc3_,false);
                                          }
                                          while(!(_loc5_ || _loc2_));
                                          
                                          if(_loc5_)
                                          {
                                             if(_loc5_ || _loc2_)
                                             {
                                                if(_loc5_)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      addr189:
                                                      if(_loc4_)
                                                      {
                                                         addr191:
                                                         _loc4_.§8!U§(§89§.§6K§);
                                                      }
                                                      §§push(this);
                                                      §§push(_loc3_);
                                                      §§push(_loc4_ is §^"2§);
                                                      if(_loc5_ || this)
                                                      {
                                                         §§push(!§§pop());
                                                      }
                                                      §§pop().§;a§(§§pop(),§§pop());
                                                      break loop2;
                                                      addr184:
                                                   }
                                                   if(true)
                                                   {
                                                      break loop2;
                                                   }
                                                   loop4:
                                                   while(true)
                                                   {
                                                      §§push(_loc4_.isReadyToBeRemoved(param1));
                                                      if(_loc5_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      if(!_loc6_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop1;
                                                      addr168:
                                                      while(true)
                                                      {
                                                         continue loop4;
                                                      }
                                                   }
                                                   continue loop2;
                                                   addr106:
                                                }
                                             }
                                             §§goto(addr191);
                                          }
                                          else
                                          {
                                             §§goto(addr168);
                                          }
                                       }
                                       addr141:
                                    }
                                    §§goto(addr184);
                                 }
                                 §§goto(addr145);
                              }
                              §§push(_loc3_);
                              if(_loc5_)
                              {
                                 §§push(§§pop() - 1);
                              }
                              _loc3_ = §§pop();
                              continue loop0;
                           }
                           continue;
                        }
                        §§goto(addr189);
                     }
                  }
                  §§goto(addr141);
               }
               §§goto(addr196);
            }
            §§goto(addr66);
         }
         if(_loc5_)
         {
            this.§#;§(param1);
            if(_loc5_)
            {
               this.§@!a§();
               loop8:
               while(true)
               {
                  §§push(this.§<!%§);
                  if(_loc5_ || param1)
                  {
                     if(!§§pop())
                     {
                        §§goto(addr212);
                     }
                     if(!_loc5_)
                     {
                        continue;
                     }
                     while(true)
                     {
                        §§push(this.§<!%§);
                     }
                  }
                  while(true)
                  {
                     §§pop().update(param1);
                     continue loop8;
                  }
               }
               addr212:
               return;
            }
         }
         §§goto(addr229);
      }
      
      protected function §+Q§(param1:§#!v§, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            param1.update(param2,this);
         }
      }
      
      protected function §[!;§(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§3[§ = null;
         var _loc3_:int = this.§53§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§53§[_loc3_];
            if(!(_loc5_ && this))
            {
               if(!_loc2_.removeOnNextUpdate)
               {
                  _loc2_.update(param1,this);
                  loop1:
                  while(true)
                  {
                     if(!_loc5_)
                     {
                        continue;
                     }
                     addr104:
                     while(true)
                     {
                        addr78:
                        while(true)
                        {
                           continue loop1;
                        }
                     }
                  }
               }
               while(true)
               {
                  this.§3V§(_loc3_);
                  §§goto(addr104);
               }
            }
            §§goto(addr76);
         }
      }
      
      protected function §#;§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§9t§(param1);
         }
         do
         {
            this.§`O§();
         }
         while(_loc2_ && this);
         
      }
      
      protected function §9t§(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§ !A§ = null;
         var _loc4_:§#!v§ = null;
         var _loc2_:* = int(this.§]!P§.length - 1);
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§]!P§[_loc2_];
            if(_loc6_)
            {
               §§push(_loc3_.§^5§);
               if(!(_loc5_ && _loc3_))
               {
                  if(§§pop())
                  {
                     if(_loc6_ || _loc3_)
                     {
                        §§push(_loc3_.update(param1));
                        if(!(_loc5_ && _loc2_))
                        {
                           addr76:
                           if(!§§pop())
                           {
                              if(!_loc6_)
                              {
                                 continue;
                              }
                              addr79:
                              §§push(_loc3_.§'&§);
                           }
                           addr127:
                           §§push(_loc2_);
                           if(_loc6_ || _loc3_)
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc2_ = §§pop();
                           continue;
                        }
                        if(!§§pop())
                        {
                           if(!_loc6_)
                           {
                              continue;
                           }
                           addr84:
                           §§push(this.§,!]§(_loc3_.objectId1));
                           if(_loc6_)
                           {
                              _loc4_ = §§pop();
                              if(_loc6_ || param1)
                              {
                                 this.removeObject(_loc4_,true);
                                 addr103:
                                 §§push(this.§,!]§(_loc3_.objectId2));
                              }
                              §§goto(addr103);
                           }
                           _loc4_ = §§pop();
                           if(_loc6_)
                           {
                              this.removeObject(_loc4_,true);
                              if(_loc5_ && param1)
                              {
                              }
                              §§goto(addr127);
                           }
                           this.§]!P§.splice(_loc2_,1);
                           §§goto(addr127);
                        }
                        §§goto(addr103);
                     }
                     §§goto(addr84);
                  }
                  §§goto(addr127);
               }
               §§goto(addr76);
            }
            §§goto(addr79);
         }
      }
      
      private function override(param1:§5D§) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc2_:§@_§ = param1.debug_object_1;
         var _loc3_:§@_§ = param1.debug_object_2;
         if(!_loc11_)
         {
            if(!_loc2_)
            {
               if(_loc10_ || this)
               {
                  addr35:
                  §§push(this.§,!]§(param1.id1));
                  if(_loc10_)
                  {
                     _loc2_ = §§pop();
                     if(!_loc11_)
                     {
                        param1.debug_object_1 = _loc2_;
                        addr48:
                        if(!_loc3_)
                        {
                           addr54:
                           _loc3_ = this.§,!]§(param1.id2);
                           if(!_loc11_)
                           {
                              param1.debug_object_2 = _loc3_;
                           }
                        }
                        var _loc4_:Number = _loc2_.sprite.x;
                        var _loc5_:Number = _loc2_.sprite.y;
                        var _loc6_:Number = _loc3_.sprite.x;
                        var _loc7_:Number = _loc3_.sprite.y;
                        var _loc8_:Number = Math.sqrt((_loc6_ - _loc4_) * (_loc6_ - _loc4_) + (_loc7_ - _loc5_) * (_loc7_ - _loc5_));
                        var _loc9_:Number = Math.atan2(_loc7_ - _loc5_,_loc6_ - _loc4_);
                        if(!(_loc11_ && _loc2_))
                        {
                           §§push(param1.§ !B§);
                           loop0:
                           while(true)
                           {
                              if(§§pop() == null)
                              {
                                 loop1:
                                 while(true)
                                 {
                                    param1.§ !B§ = new §8!l§(4,4,4294901760);
                                    loop2:
                                    while(true)
                                    {
                                       this.§1!f§.addChild(param1.§ !B§);
                                       addr233:
                                       while(true)
                                       {
                                          loop11:
                                          while(!(_loc11_ && _loc2_))
                                          {
                                             §§push(param1.§ !B§);
                                             loop12:
                                             while(true)
                                             {
                                                §§push(_loc8_);
                                                addr188:
                                                addr223:
                                                while(!(_loc11_ && _loc2_))
                                                {
                                                   §§pop().width = §§pop();
                                                   continue loop12;
                                                }
                                                loop6:
                                                while(true)
                                                {
                                                   §§pop().x = §§pop();
                                                   loop7:
                                                   while(!_loc11_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(param1.§ !B§);
                                                         addr200:
                                                         while(_loc10_)
                                                         {
                                                            §§push(_loc5_);
                                                            while(true)
                                                            {
                                                               §§pop().y = §§pop();
                                                               continue loop11;
                                                            }
                                                            if(_loc11_ && _loc3_)
                                                            {
                                                               continue;
                                                            }
                                                            §§push(_loc9_);
                                                            if(_loc11_ && _loc3_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            if(_loc10_)
                                                            {
                                                               addr154:
                                                               §§pop().rotation = §§pop();
                                                               if(_loc10_ || this)
                                                               {
                                                                  if(!(_loc11_ && _loc2_))
                                                                  {
                                                                     if(_loc10_ || param1)
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     continue loop7;
                                                                  }
                                                                  continue loop11;
                                                               }
                                                               continue loop12;
                                                            }
                                                            §§goto(addr203);
                                                         }
                                                         continue loop0;
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
                              while(true)
                              {
                                 §§push(param1.§ !B§);
                                 continue loop0;
                                 §§goto(addr233);
                              }
                           }
                        }
                        §§goto(addr226);
                     }
                     §§goto(addr48);
                  }
               }
               §§goto(addr54);
            }
            §§goto(addr48);
         }
         §§goto(addr35);
      }
      
      protected function §5S§(param1:Number, param2:Number, param3:Number) : Number
      {
         return 0.01;
      }
      
      private function §`O§() : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc1_:§5D§ = null;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         loop0:
         for each(_loc1_ in this.§>]§)
         {
            if(!_loc10_)
            {
               §§push(§@+§);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        this.override(_loc1_);
                        addr608:
                        while(true)
                        {
                        }
                     }
                     addr605:
                  }
                  while(true)
                  {
                     §§push(Boolean(_loc1_.§`!]§));
                     loop5:
                     while(true)
                     {
                        §§push(§§pop());
                        loop6:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 addr592:
                                 while(true)
                                 {
                                    §§push(Boolean(_loc1_.§,i§));
                                 }
                              }
                              addr591:
                           }
                           while(true)
                           {
                              loop10:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop11:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             continue loop0;
                                          }
                                          loop16:
                                          while(true)
                                          {
                                             if(!_loc10_)
                                             {
                                                §§push(Number(_loc1_.lowerLimit));
                                                loop17:
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                   loop18:
                                                   while(true)
                                                   {
                                                      §§push(Number(_loc1_.upperLimit));
                                                      loop19:
                                                      while(true)
                                                      {
                                                         _loc3_ = §§pop();
                                                         while(_loc11_ || _loc1_)
                                                         {
                                                            if(_loc1_.type == §-C§.§0g§)
                                                            {
                                                               if(_loc11_)
                                                               {
                                                                  addr529:
                                                                  §§push(Number((_loc1_.§7!Q§ as b2PrismaticJoint).§%!-§()));
                                                                  continue loop19;
                                                               }
                                                               addr538:
                                                               while(!_loc10_)
                                                               {
                                                                  §§push((_loc1_.§7!Q§ as b2PrismaticJoint).§>g§());
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     while(true)
                                                                     {
                                                                        _loc5_ = §§pop();
                                                                        addr515:
                                                                        §§push(this.§5S§(_loc3_,_loc2_,_loc5_));
                                                                        loop51:
                                                                        while(!_loc10_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(_loc11_)
                                                                           {
                                                                              _loc6_ = §§pop();
                                                                              addr482:
                                                                              §§push(_loc5_ > 0);
                                                                              loop52:
                                                                              while(true)
                                                                              {
                                                                                 addr484:
                                                                                 §§push(§§pop());
                                                                                 if(_loc10_ && _loc1_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       addr493:
                                                                                       §§push(_loc4_);
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          continue loop19;
                                                                                       }
                                                                                       §§push(_loc3_);
                                                                                       addr435:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc6_);
                                                                                          addr459:
                                                                                          do
                                                                                          {
                                                                                             §§push(§§pop() >= §§pop() - §§pop());
                                                                                          }
                                                                                          while(_loc11_);
                                                                                          
                                                                                          addr398:
                                                                                          continue loop10;
                                                                                          if(!(_loc10_ && this))
                                                                                          {
                                                                                             §§push(_loc6_);
                                                                                             if(!(_loc10_ && _loc1_))
                                                                                             {
                                                                                                addr414:
                                                                                                §§push(§§pop() <= §§pop() + §§pop());
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr459);
                                                                                             }
                                                                                             addr416:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                addr417:
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   addr421:
                                                                                                   §§push(_loc1_.§7!Q§ as b2PrismaticJoint);
                                                                                                   §§push(_loc5_);
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      §§push(-§§pop());
                                                                                                   }
                                                                                                   §§pop().§2",§(§§pop());
                                                                                                   addr428:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Boolean(_loc1_.§4!r§));
                                                                                                      continue loop1;
                                                                                                   }
                                                                                                   addr584:
                                                                                                }
                                                                                             }
                                                                                             addr415:
                                                                                             continue loop0;
                                                                                             addr415:
                                                                                          }
                                                                                       }
                                                                                       addr435:
                                                                                       if(!(_loc11_ || _loc2_))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§push(§§pop());
                                                                                       if(_loc10_ && _loc3_)
                                                                                       {
                                                                                          continue loop11;
                                                                                       }
                                                                                       if(§§pop())
                                                                                       {
                                                                                          addr451:
                                                                                          §§pop();
                                                                                          §§push(_loc4_);
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             continue loop51;
                                                                                          }
                                                                                          §§goto(addr398);
                                                                                          §§push(_loc2_);
                                                                                          addr452:
                                                                                       }
                                                                                       §§goto(addr415);
                                                                                    }
                                                                                 }
                                                                                 while(!§§pop())
                                                                                 {
                                                                                    continue loop52;
                                                                                 }
                                                                                 §§goto(addr415);
                                                                              }
                                                                              continue loop6;
                                                                              addr506:
                                                                           }
                                                                           continue loop17;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               continue loop16;
                                                               addr538:
                                                            }
                                                            else
                                                            {
                                                               if(_loc1_.type != §-C§.§6`§)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               loop21:
                                                               for(; _loc11_; if(_loc10_ && _loc2_)
                                                               {
                                                                  continue;
                                                               },if(!_loc11_)
                                                               {
                                                                  continue loop18;
                                                               },§§push(_loc7_),if(_loc11_ || _loc1_)
                                                               {
                                                                  §§goto(addr57);
                                                               },§§goto(addr145))
                                                               {
                                                                  §§push(_loc1_.§7!Q§);
                                                                  loop22:
                                                                  for(; _loc11_ || _loc3_; while(_loc11_ || _loc1_)
                                                                  {
                                                                     §§push((§§pop() as b2RevoluteJoint).§>g§());
                                                                     if(!(_loc10_ && this))
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     §§goto(addr302);
                                                                     §§goto(addr114);
                                                                  })
                                                                  {
                                                                     if(!(_loc10_ && _loc1_))
                                                                     {
                                                                        if(!(_loc10_ && this))
                                                                        {
                                                                           §§push((§§pop() as b2RevoluteJoint).§"!4§());
                                                                           loop23:
                                                                           while(_loc11_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              while(true)
                                                                              {
                                                                                 _loc7_ = §§pop();
                                                                                 addr385:
                                                                                 while(_loc11_ || _loc2_)
                                                                                 {
                                                                                    §§push(_loc1_.§7!Q§);
                                                                                    continue loop22;
                                                                                 }
                                                                                 addr68:
                                                                                 §§goto(addr474);
                                                                                 if(_loc10_ && _loc1_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    continue loop23;
                                                                                 }
                                                                                 §§push(_loc2_);
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    §§push(§§pop() <= §§pop());
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             if(!(_loc10_ && _loc1_))
                                                                                             {
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   loop42:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      if(!(_loc10_ && _loc1_))
                                                                                                      {
                                                                                                         if(_loc11_ || _loc2_)
                                                                                                         {
                                                                                                            if(!_loc10_)
                                                                                                            {
                                                                                                               addr114:
                                                                                                               §§push(_loc1_.§7!Q§);
                                                                                                               if(!(_loc10_ && _loc1_))
                                                                                                               {
                                                                                                                  §§push(§§pop() as b2RevoluteJoint);
                                                                                                                  §§push(_loc5_);
                                                                                                                  if(!(_loc10_ && this))
                                                                                                                  {
                                                                                                                     §§push(-§§pop());
                                                                                                                  }
                                                                                                                  §§pop().§2",§(§§pop());
                                                                                                                  addr135:
                                                                                                                  if(_loc11_)
                                                                                                                  {
                                                                                                                     if(!_loc10_)
                                                                                                                     {
                                                                                                                        if(_loc11_)
                                                                                                                        {
                                                                                                                           if(true)
                                                                                                                           {
                                                                                                                              continue loop0;
                                                                                                                           }
                                                                                                                           loop46:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc5_);
                                                                                                                              addr145:
                                                                                                                              while(_loc11_ || _loc1_)
                                                                                                                              {
                                                                                                                                 addr152:
                                                                                                                                 §§push(0);
                                                                                                                                 if(_loc11_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    if(!_loc10_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() < §§pop());
                                                                                                                                       if(!_loc10_)
                                                                                                                                       {
                                                                                                                                          if(!_loc10_)
                                                                                                                                          {
                                                                                                                                             if(!_loc10_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc10_ && this))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                   if(_loc11_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      addr184:
                                                                                                                                                      if(_loc11_ || _loc1_)
                                                                                                                                                      {
                                                                                                                                                         if(!§§pop())
                                                                                                                                                         {
                                                                                                                                                            continue loop42;
                                                                                                                                                         }
                                                                                                                                                         while(!(_loc11_ || _loc3_))
                                                                                                                                                         {
                                                                                                                                                            while(!(_loc10_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               if(_loc10_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop1;
                                                                                                                                                               }
                                                                                                                                                               §§pop();
                                                                                                                                                               while(!(_loc10_ && _loc1_))
                                                                                                                                                               {
                                                                                                                                                                  if(_loc11_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc11_)
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop46;
                                                                                                                                                                        }
                                                                                                                                                                        addr270:
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr506);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr417);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr428);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr461);
                                                                                                                                                         }
                                                                                                                                                         addr199:
                                                                                                                                                         §§pop();
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc10_)
                                                                                                                                                            {
                                                                                                                                                               continue loop21;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr259);
                                                                                                                                                            §§goto(addr199);
                                                                                                                                                         }
                                                                                                                                                         continue loop18;
                                                                                                                                                         addr192:
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc10_ && _loc1_))
                                                                                                                                                            {
                                                                                                                                                               if(_loc11_)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop();
                                                                                                                                                                        break loop42;
                                                                                                                                                                     }
                                                                                                                                                                     addr341:
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     addr240:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                        addr241:
                                                                                                                                                                        while(!(_loc10_ && _loc1_))
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              continue loop42;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr249);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr465);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr239:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr484);
                                                                                                                                                            }
                                                                                                                                                            break;
                                                                                                                                                            §§goto(addr184);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr443);
                                                                                                                                                         addr331:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr415);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr241);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr591);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             while(!(_loc10_ && this))
                                                                                                                                             {
                                                                                                                                                if(_loc10_)
                                                                                                                                                {
                                                                                                                                                   while(_loc11_)
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                   }
                                                                                                                                                   continue loop5;
                                                                                                                                                   addr581:
                                                                                                                                                }
                                                                                                                                                §§goto(addr331);
                                                                                                                                                §§push(§§pop());
                                                                                                                                                §§goto(addr584);
                                                                                                                                             }
                                                                                                                                             §§goto(addr451);
                                                                                                                                             addr321:
                                                                                                                                          }
                                                                                                                                          §§goto(addr341);
                                                                                                                                       }
                                                                                                                                       §§goto(addr192);
                                                                                                                                    }
                                                                                                                                    §§goto(addr482);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc10_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr321);
                                                                                                                                       §§push(§§pop() > §§pop());
                                                                                                                                    }
                                                                                                                                    break;
                                                                                                                                    §§goto(addr152);
                                                                                                                                 }
                                                                                                                                 §§goto(addr434);
                                                                                                                              }
                                                                                                                              §§goto(addr431);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr452);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr385);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               continue loop22;
                                                                                                            }
                                                                                                            §§goto(addr515);
                                                                                                         }
                                                                                                         §§goto(addr200);
                                                                                                      }
                                                                                                      §§goto(addr135);
                                                                                                   }
                                                                                                   while(_loc11_)
                                                                                                   {
                                                                                                      §§push(_loc7_);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc10_ && _loc3_))
                                                                                                         {
                                                                                                            if(!_loc10_)
                                                                                                            {
                                                                                                               §§push(_loc3_);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc11_ || _loc2_)
                                                                                                                  {
                                                                                                                     if(!(_loc10_ && _loc2_))
                                                                                                                     {
                                                                                                                        §§goto(addr239);
                                                                                                                        §§push(§§pop() >= §§pop());
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  addr305:
                                                                                                                  while(_loc11_ || _loc1_)
                                                                                                                  {
                                                                                                                     if(_loc11_)
                                                                                                                     {
                                                                                                                        _loc5_ = §§pop();
                                                                                                                        while(_loc11_)
                                                                                                                        {
                                                                                                                           §§goto(addr318);
                                                                                                                           §§push(0);
                                                                                                                        }
                                                                                                                        §§goto(addr482);
                                                                                                                        addr315:
                                                                                                                     }
                                                                                                                     §§goto(addr398);
                                                                                                                  }
                                                                                                                  §§goto(addr414);
                                                                                                               }
                                                                                                               §§goto(addr461);
                                                                                                               addr224:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr529);
                                                                                                            }
                                                                                                         }
                                                                                                         break;
                                                                                                         addr57:
                                                                                                         if(_loc10_ && _loc3_)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            if(!_loc10_)
                                                                                                            {
                                                                                                               §§goto(addr68);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(_loc11_)
                                                                                                               {
                                                                                                                  §§goto(addr305);
                                                                                                                  §§push(§§pop());
                                                                                                               }
                                                                                                               §§goto(addr451);
                                                                                                               addr302:
                                                                                                            }
                                                                                                            §§goto(addr305);
                                                                                                         }
                                                                                                         §§goto(addr315);
                                                                                                      }
                                                                                                      §§goto(addr503);
                                                                                                   }
                                                                                                   §§goto(addr493);
                                                                                                }
                                                                                                §§goto(addr466);
                                                                                             }
                                                                                             §§goto(addr435);
                                                                                          }
                                                                                          §§goto(addr416);
                                                                                       }
                                                                                       §§goto(addr240);
                                                                                    }
                                                                                    §§goto(addr199);
                                                                                 }
                                                                                 §§goto(addr224);
                                                                              }
                                                                           }
                                                                           §§goto(addr493);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr529);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr510);
                                                                     }
                                                                     §§goto(addr513);
                                                                  }
                                                               }
                                                               §§goto(addr538);
                                                            }
                                                            §§goto(addr421);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr605);
                                             }
                                             §§goto(addr608);
                                          }
                                       }
                                       addr565:
                                    }
                                    §§goto(addr581);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr270);
         }
      }
      
      public function §0!7§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§5D§ = null;
         while(this.§>]§.length > 0)
         {
            _loc1_ = this.§>]§.pop();
            if(_loc3_ || _loc1_)
            {
               this.§;b§(_loc1_);
            }
         }
      }
      
      public function objectIsOutOfBounds(param1:§#!v§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§extends§(param1);
            loop0:
            while(true)
            {
               §§push(param1);
               if(param1)
               {
                  §§pop();
                  loop1:
                  while(true)
                  {
                     §§push(param1.levelItem);
                     while(true)
                     {
                        §§push(!§§pop());
                        loop3:
                        while(true)
                        {
                           §§push(§§pop());
                           loop4:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop8:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       addr176:
                                       loop10:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop12:
                                             while(!_loc2_)
                                             {
                                                if(§§pop())
                                                {
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      addr184:
                                                      loop14:
                                                      while(!_loc2_)
                                                      {
                                                         §§push(Boolean(param1.§!!I§()));
                                                         while(true)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(!_loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  loop20:
                                                                  while(true)
                                                                  {
                                                                     loop21:
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(false);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 break loop21;
                                                                              }
                                                                              continue loop21;
                                                                           }
                                                                           addr43:
                                                                           return §§pop();
                                                                           addr25:
                                                                        }
                                                                        if(_loc3_ || param1)
                                                                        {
                                                                           §§push(param1 is §@_§);
                                                                           while(_loc3_ || param1)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 while(_loc3_)
                                                                                 {
                                                                                    §@_§(param1).updateOutOfBounds(this);
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       continue loop14;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(true);
                                                                                       break loop21;
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§="$§(param1.§!!I§().GetPosition().x,param1.§!!I§().GetPosition().y));
                                                                                    continue loop13;
                                                                                 }
                                                                                 addr126:
                                                                                 addr156:
                                                                              }
                                                                              §§goto(addr46);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              break loop14;
                                                                           }
                                                                           addr118:
                                                                           addr193:
                                                                        }
                                                                        §§goto(addr126);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(!_loc2_)
                                                                        {
                                                                           if(!_loc2_)
                                                                           {
                                                                              if(_loc3_)
                                                                              {
                                                                                 break loop20;
                                                                              }
                                                                              addr146:
                                                                              while(_loc3_)
                                                                              {
                                                                                 addr148:
                                                                                 if(!(_loc3_ || _loc3_))
                                                                                 {
                                                                                    while(_loc3_)
                                                                                    {
                                                                                       §§push(!§§pop());
                                                                                       continue loop8;
                                                                                       §§goto(addr148);
                                                                                    }
                                                                                    continue loop3;
                                                                                    addr171:
                                                                                 }
                                                                                 §§pop();
                                                                              }
                                                                              continue loop10;
                                                                           }
                                                                           continue loop13;
                                                                        }
                                                                        §§goto(addr118);
                                                                        §§goto(addr156);
                                                                     }
                                                                  }
                                                                  return §§pop();
                                                                  addr96:
                                                               }
                                                               §§goto(addr146);
                                                               if(_loc2_ && _loc2_)
                                                               {
                                                                  continue;
                                                               }
                                                               §§goto(addr43);
                                                            }
                                                            continue loop12;
                                                         }
                                                      }
                                                      while(_loc3_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      continue loop1;
                                                   }
                                                }
                                                §§goto(addr141);
                                             }
                                             continue loop4;
                                             if(_loc2_ && param1)
                                             {
                                                continue;
                                             }
                                             §§goto(addr96);
                                             §§push(Boolean(§§pop()));
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr193);
                           }
                        }
                        addr203:
                        §§push(param1.levelItem);
                        if(_loc2_ && this)
                        {
                           continue;
                        }
                        §§goto(addr171);
                        §§push(§§pop().getItemBodyType() == §^f§.§7!C§);
                     }
                  }
               }
               §§goto(addr176);
            }
         }
         §§goto(addr25);
      }
      
      protected function §extends§(param1:§#!v§) : void
      {
      }
      
      public function §@6§(param1:Number, param2:Number) : Boolean
      {
         return this.§!`§.camera.isOutOfCamera(param1,param2);
      }
      
      public function §="$§(param1:Number, param2:Number) : Boolean
      {
         return this.§!`§.§];§.§]!^§(param1,param2);
      }
      
      public function §3V§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            if(param1 < 0)
            {
               if(_loc4_ || _loc2_)
               {
                  return;
               }
            }
         }
         var _loc2_:§3[§ = this.§53§[param1];
         if(!_loc3_)
         {
            this.§<!g§(_loc2_.sprite);
            while(true)
            {
               this.§53§[param1] = null;
               loop3:
               while(_loc4_ || this)
               {
                  _loc2_.dispose();
                  if(_loc3_ && this)
                  {
                     continue;
                  }
                  if(_loc4_)
                  {
                     if(false)
                     {
                        while(true)
                        {
                           this.§53§.splice(param1,1);
                           continue loop3;
                        }
                        addr68:
                     }
                     _loc2_ = null;
                     return;
                  }
                  addr88:
                  while(true)
                  {
                  }
                  §§goto(addr68);
               }
            }
         }
         §§goto(addr88);
      }
      
      protected function §do §(param1:§@_§) : Boolean
      {
         return true;
      }
      
      protected function §6"+§(param1:§@_§) : Point
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Number = param1.§!!I§().GetPosition().x;
         §§push(param1.§!!I§().GetPosition().y - 3);
         if(!(_loc4_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         return new Point(_loc2_,_loc3_);
      }
      
      public function §;a§(param1:int, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc5_:§@_§ = null;
         var _loc6_:§ !A§ = null;
         var _loc7_:Point = null;
         var _loc8_:* = 0;
         var _loc9_:* = false;
         var _loc10_:* = 0;
         if(_loc13_)
         {
            if(param1 < 0)
            {
               if(!(_loc14_ && param3))
               {
                  return;
               }
            }
         }
         var _loc4_:§#!v§;
         §§push((_loc4_ = this.§-"2§[param1]) is §7k§);
         if(!(_loc14_ && param2))
         {
            if(§§pop())
            {
               if(_loc13_)
               {
                  var _loc11_:*;
                  §§push((_loc11_ = this).§[a§);
                  if(_loc13_ || param3)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc12_:* = §§pop();
                  if(!(_loc14_ && this))
                  {
                     _loc11_.§[a§ = _loc12_;
                  }
                  if(!_loc14_)
                  {
                     addr121:
                     if(_loc4_ == this.§6!j§)
                     {
                        if(!(_loc14_ && param1))
                        {
                           addr132:
                           this.§6!j§ = null;
                           if(_loc13_ || param1)
                           {
                              §§goto(addr142);
                           }
                           §§goto(addr146);
                        }
                     }
                  }
                  else
                  {
                     addr104:
                     §§push((_loc11_ = this).§2;§);
                     if(_loc13_)
                     {
                        §§push(§§pop() - 1);
                     }
                     _loc12_ = §§pop();
                     if(!_loc14_)
                     {
                        _loc11_.§2;§ = _loc12_;
                     }
                     if(!_loc14_)
                     {
                        §§goto(addr121);
                     }
                  }
                  §§goto(addr142);
               }
               §§goto(addr121);
            }
            else
            {
               §§push(_loc4_ is §^"2§);
               if(!_loc14_)
               {
                  if(§§pop())
                  {
                     if(_loc13_ || this)
                     {
                        §§goto(addr104);
                     }
                     §§goto(addr132);
                  }
                  §§goto(addr121);
               }
            }
         }
         addr142:
         if(_loc4_ is §@_§)
         {
            addr146:
            _loc5_ = _loc4_ as §@_§;
            if(!_loc14_)
            {
               §§push(param2);
               if(_loc13_ || param2)
               {
                  if(§§pop())
                  {
                     if(!(_loc14_ && this))
                     {
                        _loc7_ = this.§6"+§(_loc5_);
                        if(!_loc14_)
                        {
                           §§push(§`""§.§?!7§(_loc5_.itemName));
                           if(!(_loc14_ && param2))
                           {
                              §§push(int(§§pop()));
                           }
                           _loc8_ = §§pop();
                           loop0:
                           while(true)
                           {
                              loop1:
                              while(true)
                              {
                                 §§push(this.§do §(_loc5_));
                                 if(_loc13_ || param1)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 _loc9_ = §§pop();
                                 loop2:
                                 while(_loc5_.levelItem.score > 0)
                                 {
                                    if(_loc13_ || param1)
                                    {
                                       continue loop0;
                                    }
                                    addr211:
                                    while(true)
                                    {
                                       if(!_loc14_)
                                       {
                                          if(true)
                                          {
                                             break loop2;
                                          }
                                          continue loop1;
                                       }
                                       continue loop2;
                                    }
                                 }
                                 §§goto(addr253);
                              }
                           }
                        }
                        while(true)
                        {
                           this.§!`§.addScore(_loc5_.levelItem.score,§52§.§[!g§,_loc9_,_loc7_.x,_loc7_.y,_loc8_);
                           §§goto(addr211);
                        }
                     }
                     §§goto(addr257);
                  }
                  §§goto(addr253);
               }
               addr253:
               if(param3)
               {
                  if(_loc13_)
                  {
                     addr257:
                     _loc5_.updateBeforeRemoving(null);
                     if(_loc13_)
                     {
                        addr273:
                        this.§3"'§(_loc5_);
                     }
                  }
                  §§goto(addr273);
               }
               else
               {
                  _loc5_.updateBeforeRemoving(this);
                  if(!(_loc14_ && this))
                  {
                     §§goto(addr273);
                  }
               }
               for each(_loc6_ in this.§]!P§)
               {
                  §§push(_loc6_.objectId1);
                  if(_loc13_ || param3)
                  {
                     §§push(_loc5_.id);
                     if(_loc13_ || param1)
                     {
                        §§push(§§pop() == §§pop());
                        if(_loc13_)
                        {
                           if(!§§pop())
                           {
                              if(!(_loc14_ && param1))
                              {
                                 §§pop();
                                 if(!(_loc14_ && param2))
                                 {
                                    addr332:
                                    if(_loc6_.objectId2 != _loc5_.id)
                                    {
                                       continue;
                                    }
                                    if(!(_loc13_ || param3))
                                    {
                                       continue;
                                    }
                                 }
                                 _loc6_.§^5§ = true;
                                 continue;
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr332);
               }
               if(_loc13_)
               {
                  delete this.§-L§[_loc5_.§;"4§.instanceName];
               }
               §§goto(addr356);
            }
            §§goto(addr273);
         }
         addr356:
         this.§<!g§(_loc4_.sprite);
         if(!(_loc14_ && param3))
         {
            this.§-"2§[param1] = null;
            loop6:
            while(true)
            {
               this.§-"2§.splice(param1,1);
               while(true)
               {
                  if(_loc4_ is §+!z§)
                  {
                     loop8:
                     while(_loc13_)
                     {
                        §§push(int(this.§82§.indexOf(_loc4_)));
                        if(!(_loc14_ && param2))
                        {
                           §§push(§§pop());
                           if(_loc13_ || param1)
                           {
                              _loc10_ = §§pop();
                              addr446:
                              §§push(0);
                           }
                           if(§§pop() >= §§pop())
                           {
                              while(true)
                              {
                                 this.§82§.splice(_loc10_,1);
                                 while(true)
                                 {
                                    addr396:
                                    while(true)
                                    {
                                       §§push(this.§<!%§);
                                       if(!_loc14_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc14_ && param2))
                                             {
                                                if(!_loc13_)
                                                {
                                                   continue loop8;
                                                }
                                                addr413:
                                                this.§<!%§.§5!A§(_loc4_);
                                             }
                                             while(!_loc14_)
                                             {
                                             }
                                             continue;
                                             addr415:
                                          }
                                          while(true)
                                          {
                                             this.§5!A§(_loc4_);
                                             addr384:
                                             §§goto(addr378);
                                          }
                                       }
                                       §§goto(addr413);
                                    }
                                 }
                              }
                           }
                           §§goto(addr396);
                        }
                        §§goto(addr446);
                     }
                     continue loop6;
                  }
                  §§goto(addr396);
               }
            }
         }
         addr378:
         while(true)
         {
            if(_loc13_)
            {
               continue loop9;
            }
            §§goto(addr415);
         }
         addr378:
         while(false)
         {
            continue loop13;
         }
         _loc4_ = null;
      }
      
      protected function §5!A§(param1:§#!v§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:§@_§ = null;
         var _loc3_:§8![§ = null;
         var _loc4_:* = null;
         var _loc5_:String = null;
         var _loc6_:§@_§ = null;
         if(!(_loc10_ && _loc2_))
         {
            if(param1 is §@_§)
            {
               addr42:
               _loc2_ = param1 as §@_§;
               _loc3_ = _loc2_.§;"4§ as §8![§;
               if(_loc9_)
               {
                  if(!_loc3_)
                  {
                  }
                  §§goto(addr123);
               }
               var _loc7_:int = 0;
               var _loc8_:* = _loc3_.§'p§.§;!Y§;
               while(§§hasnext(_loc8_,_loc7_))
               {
                  §§push(§§nextname(_loc7_,_loc8_));
                  if(!(_loc10_ && param1))
                  {
                     _loc4_ = §§pop();
                     if(!_loc10_)
                     {
                        addr96:
                        _loc5_ = _loc3_.§'p§.§;!Y§[_loc4_];
                     }
                     _loc6_ = this.§'-§(_loc4_);
                     if(!_loc10_)
                     {
                        this.§`J§(_loc6_,_loc5_,"onDestroyed");
                     }
                     continue;
                  }
                  §§goto(addr96);
               }
            }
            addr123:
            return;
         }
         §§goto(addr42);
      }
      
      protected function §`J§(param1:§@_§, param2:String, param3:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            if(param1)
            {
               if(!(_loc4_ && this))
               {
                  addr53:
                  param1.§^!3§(param2,param3,this);
               }
            }
            return;
         }
         §§goto(addr53);
      }
      
      private function §<!g§(param1:§3!J§.Sprite) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(Boolean(param1));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr68:
                     while(true)
                     {
                        §§push(Boolean(param1.parent));
                        if(_loc2_)
                        {
                           continue;
                        }
                        if(_loc2_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               while(§§pop())
               {
                  if(_loc3_)
                  {
                     param1.parent.removeChild(param1);
                  }
                  if(_loc3_)
                  {
                     break;
                  }
                  §§goto(addr68);
               }
               return;
            }
         }
         §§goto(addr68);
      }
      
      public function removeObject(param1:§#!v§, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            if(param1)
            {
               if(_loc4_ || param3)
               {
                  this.§;a§(this.§-"2§.indexOf(param1),param2,param3);
               }
            }
         }
      }
      
      public function §+!M§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1)
            {
               if(!(_loc3_ && _loc2_))
               {
                  this.§!`§.§""2§();
               }
            }
         }
      }
      
      public function §8%§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param3)
         {
            this.§!`§.§8%§(param1,param2,param3,param4);
         }
      }
      
      public function §4!J§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§0%§);
            loop0:
            while(true)
            {
               §§push(param1);
               if(_loc4_)
               {
                  §§push(-§§pop());
               }
               addr162:
               while(true)
               {
                  §§pop().x = §§pop();
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §§goto(addr120);
         }
      }
      
      public function isPigsAlive() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§#!v§ = null;
         var _loc1_:int = 0;
         loop0:
         while(_loc1_ < this.§-"2§.length)
         {
            _loc2_ = this.§-"2§[_loc1_];
            if(!_loc3_)
            {
               §§push(Boolean(_loc2_));
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr143:
                           while(true)
                           {
                              §§push(_loc2_ is §7k§);
                              continue loop3;
                           }
                        }
                     }
                     while(true)
                     {
                        loop7:
                        do
                        {
                           §§push(§§pop());
                           if(_loc3_)
                           {
                              continue loop2;
                           }
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc3_)
                                    {
                                       §§push(true);
                                       continue loop7;
                                    }
                                    addr106:
                                    while(true)
                                    {
                                    }
                                    addr106:
                                 }
                                 while(true)
                                 {
                                    _loc1_++;
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    §§goto(addr106);
                                 }
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    if(_loc4_ || _loc1_)
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                       loop10:
                                       while(true)
                                       {
                                          §§push((_loc2_ as §7k§).health > 0);
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                          addr62:
                                          if(_loc4_ || _loc2_)
                                          {
                                             §§goto(addr79);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                                addr126:
                                                while(true)
                                                {
                                                   continue loop10;
                                                }
                                                §§goto(addr62);
                                             }
                                             addr125:
                                          }
                                       }
                                       continue loop7;
                                    }
                                    §§goto(addr143);
                                 }
                                 §§goto(addr126);
                              }
                              continue loop0;
                              addr93:
                           }
                           §§goto(addr125);
                        }
                        while(!(_loc4_ || _loc1_));
                        
                        return §§pop();
                     }
                  }
                  if(!(_loc4_ || _loc1_))
                  {
                     continue;
                  }
                  §§goto(addr93);
               }
            }
            §§goto(addr106);
         }
         return false;
      }
      
      public function §&!D§(param1:Boolean = false) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§7k§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = int(this.§-"2§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(!_loc5_)
            {
               if(§§pop() < 0)
               {
                  §§push(_loc2_);
                  break;
               }
               §§push(Boolean(_loc4_ = this.§-"2§[_loc3_] as §7k§));
               if(!(_loc5_ && this))
               {
                  §§push(§§pop());
                  if(_loc6_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc5_ && param1))
                        {
                           addr58:
                           §§pop();
                           if(_loc6_)
                           {
                              §§push(_loc4_.health > 0);
                              loop11:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop12:
                                    while(true)
                                    {
                                       §§push(param1);
                                       loop13:
                                       while(true)
                                       {
                                          §§push(!§§pop());
                                          if(_loc6_ || this)
                                          {
                                             §§push(§§pop());
                                             loop4:
                                             while(§§pop())
                                             {
                                                loop5:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop6:
                                                      while(true)
                                                      {
                                                         _loc2_++;
                                                         loop7:
                                                         while(true)
                                                         {
                                                            if(_loc6_ || _loc2_)
                                                            {
                                                               if(_loc6_ || _loc2_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     addr62:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        if(_loc6_)
                                                                        {
                                                                           §§push(§§pop() - 1);
                                                                        }
                                                                        _loc3_ = §§pop();
                                                                        if(!_loc6_)
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        if(_loc5_ && param1)
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                        if(_loc5_)
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        if(true)
                                                                        {
                                                                           break;
                                                                        }
                                                                        loop9:
                                                                        while(true)
                                                                        {
                                                                           §§push(!_loc4_.§+!3§);
                                                                           if(_loc6_)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 if(!(_loc5_ && param1))
                                                                                 {
                                                                                    if(!(_loc5_ && param1))
                                                                                    {
                                                                                       continue loop5;
                                                                                    }
                                                                                    continue loop11;
                                                                                 }
                                                                                 continue loop13;
                                                                              }
                                                                              addr135:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       break loop9;
                                                                                    }
                                                                                    continue loop5;
                                                                                 }
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                        loop15:
                                                                        while(true)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              §§pop();
                                                                              addr169:
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr91);
                                                                                 continue loop15;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 break loop7;
                                                                              }
                                                                              addr169:
                                                                              addr142:
                                                                           }
                                                                           §§goto(addr169);
                                                                        }
                                                                        addr91:
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                                  addr130:
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr142);
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr135);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr169);
                                       }
                                    }
                                 }
                                 §§goto(addr62);
                              }
                              addr147:
                           }
                           §§goto(addr130);
                        }
                        §§goto(addr169);
                     }
                     §§goto(addr147);
                  }
                  §§goto(addr138);
               }
               §§goto(addr58);
            }
            break;
         }
         return §§pop();
      }
      
      public function §%"!§() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§@_§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§-"2§)
         {
            if(_loc5_)
            {
               if(_loc2_ is §4!X§)
               {
                  if(_loc5_ || _loc1_)
                  {
                     _loc1_++;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      public function §;M§() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§@_§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§-"2§)
         {
            if(_loc6_ && this)
            {
               continue;
            }
            §§push(Boolean(_loc2_));
            if(!(_loc6_ && this))
            {
               if(§§pop())
               {
                  if(!_loc6_)
                  {
                     §§pop();
                     if(_loc5_ || this)
                     {
                        §§push(_loc2_.§]^§());
                        if(!_loc6_)
                        {
                           addr77:
                           if(!§§pop())
                           {
                              continue;
                           }
                           if(!(_loc5_ || _loc1_))
                           {
                              continue;
                           }
                        }
                        §§goto(addr77);
                     }
                     _loc1_++;
                     continue;
                  }
               }
            }
            §§goto(addr77);
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§7k§ = null;
         var _loc2_:* = int(this.§-"2§.length - 1);
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§-"2§[_loc2_] as §7k§;
            if(!(_loc5_ && param1))
            {
               §§push(Boolean(_loc3_));
               if(!(_loc5_ && this))
               {
                  if(§§pop())
                  {
                     loop6:
                     while(true)
                     {
                        §§pop();
                        addr111:
                        loop3:
                        while(true)
                        {
                           addr68:
                           while(true)
                           {
                              §§push(_loc3_.health > 0);
                              if(_loc4_)
                              {
                                 break loop3;
                              }
                              continue loop6;
                           }
                           continue loop6;
                        }
                     }
                     addr110:
                  }
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc4_ || param1)
                        {
                           while(true)
                           {
                              _loc3_.scream();
                           }
                           addr84:
                        }
                        loop2:
                        while(!_loc5_)
                        {
                           while(true)
                           {
                              §§push(_loc2_);
                              if(!(_loc5_ && this))
                              {
                                 §§push(§§pop() - 1);
                              }
                              _loc2_ = §§pop();
                              if(_loc5_)
                              {
                                 continue loop2;
                              }
                              if(true)
                              {
                                 break loop1;
                              }
                              §§goto(addr68);
                           }
                        }
                        §§goto(addr111);
                     }
                     §§goto(addr43);
                  }
                  continue;
               }
               §§goto(addr110);
            }
            §§goto(addr84);
         }
      }
      
      public function §>!k§() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§^"2§ = null;
         var _loc1_:* = int(this.§-"2§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§-"2§[_loc1_] as §^"2§;
            if(_loc3_)
            {
               §§push(Boolean(_loc2_));
               do
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           loop4:
                           while(true)
                           {
                              §§push(_loc2_.health > 0);
                              if(!_loc4_)
                              {
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc4_)
                                       {
                                          if(_loc3_ || _loc2_)
                                          {
                                             §§push(true);
                                             break loop4;
                                          }
                                          continue loop3;
                                       }
                                       loop6:
                                       while(true)
                                       {
                                          addr38:
                                          addr61:
                                          while(true)
                                          {
                                             §§push(_loc1_);
                                             if(_loc3_)
                                             {
                                                §§push(§§pop() - 1);
                                             }
                                             _loc1_ = §§pop();
                                             if(_loc3_ || this)
                                             {
                                                break;
                                             }
                                             continue loop6;
                                          }
                                          while(false)
                                          {
                                             continue loop4;
                                          }
                                          continue loop0;
                                       }
                                    }
                                    §§goto(addr38);
                                 }
                                 addr70:
                              }
                              break;
                           }
                           while(true)
                           {
                              if(!(_loc4_ && _loc2_))
                              {
                                 break loop2;
                              }
                              continue loop2;
                           }
                        }
                     }
                     continue;
                  }
                  §§goto(addr70);
               }
               while(!_loc3_);
               
               return §§pop();
            }
            §§goto(addr61);
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§@_§ = null;
         var _loc1_:* = int(this.§-"2§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§-"2§[_loc1_] as §@_§;
            if(_loc3_)
            {
               §§push(_loc2_ == null);
               loop1:
               while(true)
               {
                  §§push(!§§pop());
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr256:
                              while(true)
                              {
                                 §§push(_loc2_.health);
                                 addr232:
                                 while(true)
                                 {
                                    §§push(§§pop() > 0);
                                 }
                              }
                           }
                           addr255:
                        }
                        while(true)
                        {
                           loop6:
                           while(true)
                           {
                              §§push(§§pop());
                              loop7:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       addr238:
                                       while(true)
                                       {
                                          §§push(_loc2_.§ "7§());
                                          addr194:
                                          while(true)
                                          {
                                             §§push(!§§pop());
                                          }
                                       }
                                    }
                                    addr237:
                                 }
                                 while(true)
                                 {
                                    loop12:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc4_)
                                          {
                                             §§push(_loc2_.isDamageAwardingScore());
                                             loop13:
                                             while(true)
                                             {
                                                if(_loc3_ || this)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      loop15:
                                                      while(_loc3_ || _loc1_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               if(_loc3_ || this)
                                                               {
                                                                  §§pop();
                                                                  addr226:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        break loop13;
                                                                     }
                                                                     §§push(_loc2_.§!'§());
                                                                     while(!_loc4_)
                                                                     {
                                                                        §§push(!§§pop());
                                                                        while(!(_loc4_ && _loc3_))
                                                                        {
                                                                        }
                                                                        continue loop2;
                                                                     }
                                                                     §§goto(addr194);
                                                                  }
                                                                  addr226:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr255);
                                                               }
                                                               addr114:
                                                               if(!(_loc4_ && _loc3_))
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     return §§pop();
                                                                  }
                                                                  continue loop6;
                                                               }
                                                            }
                                                            §§goto(addr256);
                                                         }
                                                         loop17:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_ is §^"2§);
                                                                  loop19:
                                                                  while(_loc3_)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!_loc3_)
                                                                     {
                                                                        continue loop15;
                                                                     }
                                                                     if(!(_loc3_ || _loc1_))
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     if(!§§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc3_ || _loc2_)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr100:
                                                                                    §§push(false);
                                                                                    if(_loc4_ && _loc3_)
                                                                                    {
                                                                                       continue loop19;
                                                                                    }
                                                                                    if(!(_loc3_ || _loc1_))
                                                                                    {
                                                                                       continue loop17;
                                                                                    }
                                                                                    §§goto(addr114);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       continue loop18;
                                                                                    }
                                                                                    §§goto(addr226);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 loop24:
                                                                                 while(_loc3_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc1_);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          §§push(§§pop() - 1);
                                                                                       }
                                                                                       _loc1_ = §§pop();
                                                                                       if(!(_loc3_ || _loc3_))
                                                                                       {
                                                                                          continue loop24;
                                                                                       }
                                                                                       if(_loc3_ || _loc3_)
                                                                                       {
                                                                                          if(true)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc2_.health);
                                                                                             if(_loc3_ || _loc1_)
                                                                                             {
                                                                                                §§push(§§pop() > 0);
                                                                                                if(!(_loc4_ && _loc3_))
                                                                                                {
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      continue loop12;
                                                                                                   }
                                                                                                   addr154:
                                                                                                   addr176:
                                                                                                   while(_loc3_)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      break loop24;
                                                                                                   }
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         continue loop1;
                                                                                                      }
                                                                                                      continue loop13;
                                                                                                   }
                                                                                                   continue loop14;
                                                                                                }
                                                                                                §§goto(addr100);
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr232);
                                                                                       }
                                                                                       §§goto(addr256);
                                                                                    }
                                                                                    continue loop0;
                                                                                 }
                                                                                 while(!_loc4_)
                                                                                 {
                                                                                    §§goto(addr60);
                                                                                 }
                                                                                 addr175:
                                                                                 §§goto(addr176);
                                                                                 §§push(false);
                                                                              }
                                                                              §§goto(addr232);
                                                                           }
                                                                           §§goto(addr38);
                                                                        }
                                                                        addr88:
                                                                     }
                                                                     §§goto(addr154);
                                                                  }
                                                                  §§goto(addr163);
                                                               }
                                                            }
                                                            §§goto(addr175);
                                                         }
                                                      }
                                                      continue loop3;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr237);
                                                }
                                             }
                                             §§goto(addr238);
                                          }
                                          §§goto(addr226);
                                       }
                                       §§goto(addr38);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr256);
         }
         return true;
      }
      
      public function §>a§(param1:Boolean = false) : §7k§
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:§7k§ = null;
         var _loc2_:int = this.§-"2§.length;
         §§push(this.§&!D§(param1));
         if(_loc9_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc9_)
         {
            §§push(_loc3_);
            if(!(_loc8_ && _loc3_))
            {
               if(§§pop() == 0)
               {
                  if(!(_loc8_ && this))
                  {
                     return null;
                  }
                  addr58:
                  §§push(int(Math.random() * _loc3_));
               }
               §§goto(addr58);
            }
            var _loc4_:* = §§pop();
            var _loc5_:int = 0;
            var _loc6_:int = 0;
            loop0:
            while(_loc6_ < _loc2_)
            {
               §§push(Boolean(_loc7_ = this.§-"2§[_loc6_] as §7k§));
               if(_loc9_)
               {
                  §§push(§§pop());
                  if(_loc9_)
                  {
                     if(§§pop())
                     {
                        if(!_loc8_)
                        {
                           §§pop();
                           if(!_loc8_)
                           {
                              §§push(_loc7_.health > 0);
                              if(!_loc8_)
                              {
                                 addr184:
                                 if(§§pop())
                                 {
                                    loop15:
                                    while(true)
                                    {
                                       §§push(param1);
                                       if(!(_loc8_ && this))
                                       {
                                          while(true)
                                          {
                                             §§push(!§§pop());
                                             addr204:
                                             loop13:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                addr205:
                                                loop14:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         loop9:
                                                         while(true)
                                                         {
                                                            §§push(!_loc7_.§7!s§);
                                                            if(_loc9_)
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc8_)
                                                               {
                                                                  continue loop14;
                                                               }
                                                               if(!§§pop())
                                                               {
                                                               }
                                                               loop7:
                                                               while(§§pop())
                                                               {
                                                                  while(_loc5_ >= _loc4_)
                                                                  {
                                                                     if(_loc8_)
                                                                     {
                                                                        while(_loc8_ && this)
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr156:
                                                                     }
                                                                     if(!_loc8_)
                                                                     {
                                                                        return _loc7_;
                                                                     }
                                                                     continue loop15;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     _loc5_++;
                                                                     addr124:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc8_ && this))
                                                                        {
                                                                           break loop7;
                                                                        }
                                                                        §§goto(addr147);
                                                                     }
                                                                  }
                                                                  addr147:
                                                               }
                                                               while(true)
                                                               {
                                                                  _loc6_++;
                                                                  if(_loc9_)
                                                                  {
                                                                     if(!(_loc8_ && this))
                                                                     {
                                                                        addr113:
                                                                        if(_loc9_ || this)
                                                                        {
                                                                           while(false)
                                                                           {
                                                                              §§goto(addr113);
                                                                           }
                                                                           continue loop0;
                                                                           addr120:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(!_loc7_.§+!3§);
                                                                           if(_loc8_)
                                                                           {
                                                                              while(!_loc9_)
                                                                              {
                                                                                 continue loop13;
                                                                              }
                                                                              continue;
                                                                              addr174:
                                                                           }
                                                                           if(_loc8_ && param1)
                                                                           {
                                                                              continue loop9;
                                                                           }
                                                                           §§goto(addr145);
                                                                        }
                                                                        §§goto(addr122);
                                                                     }
                                                                     §§goto(addr156);
                                                                  }
                                                                  break;
                                                               }
                                                               addr145:
                                                               §§goto(addr124);
                                                            }
                                                            §§goto(addr174);
                                                         }
                                                      }
                                                      addr206:
                                                   }
                                                   §§goto(addr145);
                                                }
                                             }
                                             continue loop15;
                                          }
                                          addr193:
                                       }
                                       §§goto(addr206);
                                    }
                                 }
                                 §§goto(addr92);
                              }
                              §§goto(addr193);
                           }
                           §§goto(addr120);
                        }
                        §§goto(addr204);
                     }
                     §§goto(addr184);
                  }
                  §§goto(addr205);
               }
               §§goto(addr184);
            }
            return null;
         }
         §§goto(addr58);
      }
      
      public function §=U§() : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§@_§ = null;
         var _loc1_:* = 0;
         var _loc2_:* = int(this.§-"2§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc5_ && _loc2_))
            {
               §§push(0);
               if(_loc4_)
               {
                  if(§§pop() < §§pop())
                  {
                     if(!_loc5_)
                     {
                        §§push(_loc1_);
                        if(!_loc5_)
                        {
                           addr137:
                           §§push(int(§§pop() + this.§!`§.slingshot.§=U§()));
                           if(!(_loc5_ && _loc2_))
                           {
                              break;
                           }
                        }
                        §§goto(addr158);
                     }
                     addr157:
                     addr158:
                     return §§pop();
                     §§push(_loc1_);
                  }
                  else
                  {
                     _loc3_ = this.§-"2§[_loc2_] as §@_§;
                     if(_loc4_)
                     {
                        if(!_loc3_)
                        {
                           if(_loc4_)
                           {
                              loop1:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(_loc4_ || _loc2_)
                                 {
                                    if(!_loc5_)
                                    {
                                       if(!_loc5_)
                                       {
                                          addr54:
                                          §§push(§§pop() - 1);
                                          if(_loc4_)
                                          {
                                             _loc2_ = §§pop();
                                             if(_loc4_ || this)
                                             {
                                                if(_loc4_)
                                                {
                                                   addr115:
                                                   if(_loc4_)
                                                   {
                                                      while(false)
                                                      {
                                                         while(true)
                                                         {
                                                            if(!_loc3_.isDamageAwardingScore())
                                                            {
                                                               continue loop1;
                                                            }
                                                         }
                                                      }
                                                      continue loop0;
                                                      addr68:
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr81);
                                                   }
                                                   addr115:
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc1_);
                                                   addr85:
                                                   loop3:
                                                   while(true)
                                                   {
                                                      §§push(int(§§pop() + this.damageScoreMultiplier * int(_loc3_.healthMax)));
                                                      addr94:
                                                      while(true)
                                                      {
                                                         if(_loc4_ || _loc2_)
                                                         {
                                                            break loop3;
                                                         }
                                                         addr109:
                                                         loop8:
                                                         while(true)
                                                         {
                                                            §§push(int(§§pop() + _loc3_.levelItem.score));
                                                            addr114:
                                                            while(true)
                                                            {
                                                               _loc1_ = §§pop();
                                                               §§goto(addr115);
                                                               continue loop8;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   _loc1_ = §§pop();
                                                }
                                             }
                                             continue;
                                          }
                                          §§goto(addr94);
                                       }
                                       §§goto(addr114);
                                    }
                                    §§goto(addr85);
                                 }
                                 §§goto(addr54);
                              }
                           }
                           §§goto(addr115);
                        }
                        else
                        {
                           §§push(_loc1_);
                        }
                        §§goto(addr109);
                     }
                     §§goto(addr68);
                  }
               }
               §§goto(addr137);
            }
            break;
         }
         _loc1_ = §§pop();
         §§goto(addr157);
      }
      
      protected function §7p§(param1:§#!v§, param2:§#!v§) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(param1 is §@_§);
            if(_loc4_)
            {
               §§push(§§pop());
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr169:
                        while(true)
                        {
                           §§push(param2 is §@_§);
                        }
                     }
                     addr168:
                  }
                  while(true)
                  {
                     addr140:
                     while(true)
                     {
                        §§push(§§pop());
                        continue loop0;
                     }
                  }
               }
            }
            §§goto(addr168);
         }
         §§goto(addr150);
      }
      
      protected function §@l§(param1:§#!v§, param2:§#!v§) : Boolean
      {
         return this.§7p§(param1,param2);
      }
      
      public function §5H§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§2;§ = 0;
         }
      }
      
      protected function §'v§(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      protected function §4$§(param1:Number) : void
      {
      }
      
      protected function §<!a§(param1:§@_§, param2:§@_§) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = NaN;
         if(_loc4_)
         {
            §§push(param2 is §^"2§);
            loop0:
            while(!§§pop())
            {
               while(true)
               {
                  §§push(param1 is §^"2§);
                  if(_loc4_)
                  {
                     if(!§§pop())
                     {
                        §§push(1);
                        if(!_loc5_)
                        {
                           return §§pop();
                        }
                     }
                     if(!_loc5_)
                     {
                        §§push(param1.§>!@§(param2.§;!F§()));
                        if(_loc4_ || param2)
                        {
                           §§push(Number(§§pop()));
                        }
                        do
                        {
                           _loc3_ = §§pop();
                           if(!(_loc4_ || _loc3_))
                           {
                              break loop0;
                           }
                           return _loc3_;
                        }
                        while(!(_loc4_ || _loc3_));
                        
                        return §§pop();
                     }
                     continue;
                     break;
                  }
                  continue loop0;
               }
               return §§pop();
            }
         }
         §§goto(addr108);
         §§push(1);
      }
      
      protected function §7J§(param1:§@_§, param2:§@_§) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(param2 is §^"2§)
            {
               if(_loc3_ || this)
               {
                  return 0;
               }
            }
         }
         return 1;
      }
      
      protected function §#!S§(param1:§@_§, param2:§@_§) : Number
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc3_:Number = 10;
         §§push(this.§7J§(param1,param2));
         if(!_loc14_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(this.§7J§(param2,param1));
         if(!_loc14_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         var _loc6_:Number = param1.§!!I§().GetMass();
         var _loc7_:Number = param2.§!!I§().GetMass();
         var _loc8_:b2Vec2 = param1.§=m§();
         var _loc9_:b2Vec2 = param2.§=m§();
         §§push(_loc4_);
         if(!(_loc14_ && param2))
         {
            §§push(_loc6_);
            if(!_loc14_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc14_)
               {
                  §§push(_loc8_.x);
                  if(!(_loc14_ && param2))
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc14_)
                     {
                        §§push(_loc5_);
                        if(!(_loc14_ && param2))
                        {
                           addr87:
                           §§push(_loc7_);
                           if(!(_loc14_ && this))
                           {
                              addr116:
                              §§push(§§pop() * §§pop());
                              if(_loc13_ || param2)
                              {
                                 §§push(_loc9_.x);
                              }
                              §§push(§§pop() - §§pop());
                              if(!_loc14_)
                              {
                                 addr120:
                                 var _loc10_:Number = §§pop();
                                 §§push(_loc4_);
                                 if(_loc13_)
                                 {
                                    §§push(_loc6_);
                                    if(!_loc14_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc14_)
                                       {
                                          §§push(_loc8_.y);
                                          if(!_loc14_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc13_)
                                             {
                                                addr137:
                                                §§push(_loc5_);
                                                if(!(_loc14_ && this))
                                                {
                                                   §§push(_loc7_);
                                                   if(_loc13_)
                                                   {
                                                      §§goto(addr159);
                                                   }
                                                   addr159:
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc13_ || param2)
                                                   {
                                                      addr156:
                                                      §§push(_loc9_.y);
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc13_ || param2)
                                                   {
                                                      addr167:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc11_:* = §§pop();
                                                   §§push(Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_) / _loc3_);
                                                   if(_loc13_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                   return §§pop();
                                                   §§push(§§pop() * §§pop());
                                                }
                                                §§goto(addr159);
                                             }
                                             §§goto(addr167);
                                          }
                                          §§goto(addr156);
                                       }
                                       §§goto(addr137);
                                    }
                                    §§goto(addr159);
                                 }
                                 §§goto(addr167);
                              }
                              §§goto(addr120);
                           }
                           §§goto(addr116);
                           §§push(§§pop() * §§pop());
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr120);
                  }
                  §§goto(addr116);
               }
               §§goto(addr120);
            }
            §§goto(addr87);
         }
         §§goto(addr120);
      }
      
      public function §4!j§(param1:§@_§, param2:§@_§) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            §§push(param2 is §!r§);
            loop0:
            do
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(param1 is §!r§);
                        if(!_loc3_)
                        {
                           if(!(_loc4_ || param1))
                           {
                              continue loop1;
                           }
                           loop3:
                           while(§§pop())
                           {
                              if(!_loc3_)
                              {
                                 §§push(true);
                                 break loop2;
                              }
                              if(!(_loc4_ || this))
                              {
                                 continue loop2;
                              }
                              while(true)
                              {
                                 break loop3;
                              }
                           }
                           while(true)
                           {
                              §§push(false);
                              if(!_loc4_)
                              {
                                 break loop2;
                              }
                              continue loop0;
                           }
                        }
                        break;
                     }
                     return §§pop();
                  }
               }
               §§goto(addr57);
            }
            while(_loc3_);
            
            return §§pop();
         }
         §§goto(addr80);
      }
      
      public function §?!g§(param1:§#!v§, param2:§#!v§, param3:b2Contact) : Boolean
      {
         var _loc22_:Boolean = false;
         var _loc23_:Boolean = true;
         var _loc15_:§5D§ = null;
         var _loc16_:b2JointEdge = null;
         var _loc17_:b2JointEdge = null;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         if(_loc23_)
         {
            §§push(this.§8C§);
            if(_loc23_ || param2)
            {
               if(!§§pop())
               {
                  if(_loc23_)
                  {
                     §§goto(addr61);
                  }
                  else
                  {
                     while(true)
                     {
                     }
                     addr62:
                  }
               }
               loop1:
               while(true)
               {
                  param1.collidedWith(param2);
                  loop2:
                  while(_loc23_)
                  {
                     while(true)
                     {
                        param2.collidedWith(param1);
                        if(_loc23_)
                        {
                           if(true)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        continue loop2;
                     }
                     var _loc4_:§@_§ = param1 as §@_§;
                     var _loc5_:§@_§ = param2 as §@_§;
                     if(_loc23_ || this)
                     {
                        §§push(!_loc4_);
                        loop4:
                        while(true)
                        {
                           §§push(§§pop());
                           loop5:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    addr355:
                                    while(true)
                                    {
                                       §§push(!_loc5_);
                                    }
                                 }
                                 addr354:
                              }
                              while(true)
                              {
                                 loop9:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          §§push(_loc4_.destroysCollidingObjects);
                                          loop11:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             loop12:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop13:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         addr334:
                                                         while(true)
                                                         {
                                                            §§push(_loc5_.§]!Q§);
                                                            addr303:
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               addr304:
                                                               do
                                                               {
                                                                  if(_loc22_ && param2)
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                               }
                                                               while(_loc23_);
                                                               
                                                               continue loop9;
                                                            }
                                                         }
                                                      }
                                                      addr333:
                                                   }
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         loop19:
                                                         while(true)
                                                         {
                                                            §§push(_loc5_.destroysCollidingObjects);
                                                            loop20:
                                                            while(!(_loc22_ && this))
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               loop21:
                                                               while(!_loc22_)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc22_)
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                                  if(!_loc23_)
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  if(!§§pop())
                                                                  {
                                                                     loop22:
                                                                     for(; !_loc22_; while(true)
                                                                     {
                                                                        if(_loc22_ && this)
                                                                        {
                                                                           continue loop22;
                                                                        }
                                                                        if(_loc22_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(Boolean(§§pop()));
                                                                     },continue loop21)
                                                                     {
                                                                        §§pop();
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc4_.§]!Q§);
                                                                           continue loop22;
                                                                           addr220:
                                                                           if(!(_loc22_ && param2))
                                                                           {
                                                                              addr201:
                                                                              return true;
                                                                              addr227:
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop12;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     loop26:
                                                                     while(!§§pop())
                                                                     {
                                                                        loop27:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§@l§(_loc4_,_loc5_));
                                                                           if(!(_loc22_ && param3))
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§4!j§(_loc4_,_loc5_));
                                                                                    if(!(_loc22_ && param2))
                                                                                    {
                                                                                       if(!_loc22_)
                                                                                       {
                                                                                          if(_loc23_ || param1)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!(_loc22_ && param2))
                                                                                                {
                                                                                                   if(_loc22_ && this)
                                                                                                   {
                                                                                                      if(!_loc22_)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      continue loop19;
                                                                                                   }
                                                                                                   if(!_loc22_)
                                                                                                   {
                                                                                                      if(!_loc23_)
                                                                                                      {
                                                                                                         break loop26;
                                                                                                      }
                                                                                                      if(_loc23_ || this)
                                                                                                      {
                                                                                                         §§push(false);
                                                                                                         break;
                                                                                                      }
                                                                                                      continue loop10;
                                                                                                   }
                                                                                                   addr165:
                                                                                                   if(_loc23_ || param2)
                                                                                                   {
                                                                                                      if(!_loc23_)
                                                                                                      {
                                                                                                         addr292:
                                                                                                         if(_loc22_ && this)
                                                                                                         {
                                                                                                            _loc4_.causedDamageToObjects();
                                                                                                            addr326:
                                                                                                            §§goto(addr292);
                                                                                                            addr326:
                                                                                                         }
                                                                                                         §§push(true);
                                                                                                         break loop20;
                                                                                                      }
                                                                                                      if(!_loc22_)
                                                                                                      {
                                                                                                         §§push(false);
                                                                                                         break loop27;
                                                                                                      }
                                                                                                      §§goto(addr334);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      if(!(_loc22_ && param3))
                                                                                                      {
                                                                                                         if(_loc23_ || param1)
                                                                                                         {
                                                                                                            continue loop27;
                                                                                                         }
                                                                                                         addr254:
                                                                                                         if(_loc23_ || param1)
                                                                                                         {
                                                                                                            _loc5_.causedDamageToObjects();
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr315:
                                                                                                            §§push(_loc5_);
                                                                                                            §§push(_loc5_.healthMax);
                                                                                                            if(_loc23_)
                                                                                                            {
                                                                                                               §§push(§§pop() * 2);
                                                                                                            }
                                                                                                            §§pop().applyDamage(§§pop(),this,_loc4_,true);
                                                                                                            §§goto(addr326);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr220);
                                                                                                   }
                                                                                                }
                                                                                                else if(!(_loc22_ && this))
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      continue loop27;
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr340:
                                                                                                   if(_loc23_ || param1)
                                                                                                   {
                                                                                                      §§goto(addr348);
                                                                                                   }
                                                                                                   §§goto(addr355);
                                                                                                }
                                                                                             }
                                                                                             §§push(this.§#!S§(_loc4_,_loc5_));
                                                                                             if(!(_loc22_ && this))
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             var _loc6_:* = §§pop();
                                                                                             var _loc7_:Number = Math.max(0,_loc4_.health);
                                                                                             var _loc8_:Number = Math.max(0,_loc5_.health);
                                                                                             if(_loc23_ || param2)
                                                                                             {
                                                                                                §§push(_loc4_.§<!;§);
                                                                                                if(_loc23_)
                                                                                                {
                                                                                                   §§push(!§§pop());
                                                                                                   if(!(_loc22_ && param3))
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(!(_loc22_ && this))
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            if(_loc23_)
                                                                                                            {
                                                                                                               §§push(_loc5_.§<!;§);
                                                                                                               if(_loc22_)
                                                                                                               {
                                                                                                               }
                                                                                                               addr419:
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(!_loc22_)
                                                                                                                  {
                                                                                                                     this.§'v§(_loc6_,_loc7_,_loc8_);
                                                                                                                     addr427:
                                                                                                                     §§push(this.§<!a§(_loc4_,_loc5_));
                                                                                                                     if(!(_loc22_ && param1))
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                     var _loc9_:* = §§pop();
                                                                                                                     §§push(this.§<!a§(_loc5_,_loc4_));
                                                                                                                     if(_loc23_)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                     var _loc10_:* = §§pop();
                                                                                                                     §§push(_loc6_);
                                                                                                                     if(!(_loc22_ && param2))
                                                                                                                     {
                                                                                                                        §§push(§§pop() * _loc10_);
                                                                                                                        if(!_loc22_)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                     }
                                                                                                                     var _loc11_:* = §§pop();
                                                                                                                     §§push(_loc6_);
                                                                                                                     if(!(_loc22_ && this))
                                                                                                                     {
                                                                                                                        §§push(§§pop() * _loc9_);
                                                                                                                        if(_loc23_ || this)
                                                                                                                        {
                                                                                                                           addr479:
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        var _loc12_:* = §§pop();
                                                                                                                        if(_loc23_)
                                                                                                                        {
                                                                                                                           §§push(_loc11_);
                                                                                                                           if(_loc23_ || param1)
                                                                                                                           {
                                                                                                                              if(§§pop() > 0)
                                                                                                                              {
                                                                                                                                 addr494:
                                                                                                                                 §§push(_loc4_.applyDamage(_loc11_,this,_loc5_,true));
                                                                                                                                 if(!_loc22_)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    if(_loc23_)
                                                                                                                                    {
                                                                                                                                       addr505:
                                                                                                                                    }
                                                                                                                                    addr514:
                                                                                                                                    var _loc13_:* = §§pop();
                                                                                                                                    if(!(_loc22_ && this))
                                                                                                                                    {
                                                                                                                                       §§push(_loc12_);
                                                                                                                                       if(!(_loc22_ && param2))
                                                                                                                                       {
                                                                                                                                          if(§§pop() > 0)
                                                                                                                                          {
                                                                                                                                             addr543:
                                                                                                                                             §§push(_loc5_.applyDamage(_loc12_,this,_loc4_,true));
                                                                                                                                             if(_loc23_ || param1)
                                                                                                                                             {
                                                                                                                                                addr556:
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                if(_loc23_ || this)
                                                                                                                                                {
                                                                                                                                                   addr572:
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§push(_loc5_.health);
                                                                                                                                             if(_loc23_)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                if(!_loc22_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr572);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          var _loc14_:* = §§pop();
                                                                                                                                          var _loc20_:int = 0;
                                                                                                                                          var _loc21_:* = this.§>]§;
                                                                                                                                          addr750:
                                                                                                                                          for each(_loc15_ in _loc21_)
                                                                                                                                          {
                                                                                                                                             §§push(Boolean(_loc15_.isBreakable));
                                                                                                                                             if(_loc23_)
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   if(_loc23_)
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      if(_loc23_)
                                                                                                                                                      {
                                                                                                                                                         addr603:
                                                                                                                                                         if(_loc6_ >= _loc15_.minBreakForce)
                                                                                                                                                         {
                                                                                                                                                            addr604:
                                                                                                                                                            _loc16_ = _loc4_.§!!I§().GetJointList();
                                                                                                                                                            _loc17_ = _loc5_.§!!I§().GetJointList();
                                                                                                                                                            if(!(_loc22_ && param2))
                                                                                                                                                            {
                                                                                                                                                               addr746:
                                                                                                                                                               §§push(_loc16_ != null);
                                                                                                                                                               if(_loc16_ != null)
                                                                                                                                                               {
                                                                                                                                                                  addr748:
                                                                                                                                                                  §§pop();
                                                                                                                                                                  addr727:
                                                                                                                                                                  addr749:
                                                                                                                                                                  §§push(_loc16_.§@P§ == _loc15_.§7!Q§);
                                                                                                                                                                  if(_loc23_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     addr737:
                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                     if(!_loc22_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           addr740:
                                                                                                                                                                           §§pop();
                                                                                                                                                                           addr667:
                                                                                                                                                                           addr741:
                                                                                                                                                                           §§push(_loc17_ == null);
                                                                                                                                                                           if(_loc23_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(!§§pop());
                                                                                                                                                                              if(!(_loc22_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc22_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc23_ || param2)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                       if(!(_loc22_ && param3))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             addr704:
                                                                                                                                                                                             if(!_loc22_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                addr707:
                                                                                                                                                                                                if(_loc23_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc22_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc17_.§@P§);
                                                                                                                                                                                                      if(_loc23_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc15_.§7!Q§);
                                                                                                                                                                                                         if(_loc23_ || param2)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() == §§pop());
                                                                                                                                                                                                            if(!(_loc22_ && this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc22_ && this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr651:
                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc22_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        this.§;b§(_loc15_);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(!(_loc22_ && param3))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr665:
                                                                                                                                                                                                                        if(false)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr667);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr750);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr707);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr750);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr667);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr704);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr727);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr749);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr741);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr746);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr651);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr737);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr748);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr740);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr704);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr748);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr651);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr746);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr737);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr665);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr750);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr604);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr603);
                                                                                                                                          }
                                                                                                                                          if(_loc23_)
                                                                                                                                          {
                                                                                                                                             addr1046:
                                                                                                                                             addr1047:
                                                                                                                                             if(_loc13_ < _loc7_)
                                                                                                                                             {
                                                                                                                                                addr1048:
                                                                                                                                                _loc5_.causedDamageToObjects();
                                                                                                                                             }
                                                                                                                                             §§push(_loc14_);
                                                                                                                                             §§push(_loc8_);
                                                                                                                                             if(_loc23_)
                                                                                                                                             {
                                                                                                                                                if(§§pop() < §§pop())
                                                                                                                                                {
                                                                                                                                                   addr1023:
                                                                                                                                                   if(_loc23_ || param1)
                                                                                                                                                   {
                                                                                                                                                      _loc4_.causedDamageToObjects();
                                                                                                                                                      addr1042:
                                                                                                                                                      if(!_loc22_)
                                                                                                                                                      {
                                                                                                                                                         addr982:
                                                                                                                                                         addr978:
                                                                                                                                                         if(_loc4_ is §^"2§)
                                                                                                                                                         {
                                                                                                                                                            addr984:
                                                                                                                                                            if(_loc14_ <= 0)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc22_ && param3))
                                                                                                                                                               {
                                                                                                                                                                  addr995:
                                                                                                                                                                  if(!_loc5_.disableBirdPassThrough)
                                                                                                                                                                  {
                                                                                                                                                                     addr996:
                                                                                                                                                                     §§push(Number(_loc4_.§3$§(_loc5_.§;!F§())));
                                                                                                                                                                     if(!(_loc22_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc23_ || param1))
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr1046);
                                                                                                                                                                        }
                                                                                                                                                                        _loc18_ = §§pop();
                                                                                                                                                                        §§push(this);
                                                                                                                                                                        §§push(_loc4_ as §^"2§);
                                                                                                                                                                        §§push(_loc6_);
                                                                                                                                                                        if(_loc23_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc9_);
                                                                                                                                                                           if(!(_loc22_ && param2))
                                                                                                                                                                           {
                                                                                                                                                                              addr974:
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              §§push(_loc8_);
                                                                                                                                                                           }
                                                                                                                                                                           §§pop().§7f§(§§pop(),§§pop(),§§pop(),_loc18_);
                                                                                                                                                                           addr953:
                                                                                                                                                                           return false;
                                                                                                                                                                           addr951:
                                                                                                                                                                           addr977:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr974);
                                                                                                                                                                        addr1016:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1046);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr951);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr996);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         if(_loc5_ is §^"2§)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc22_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc13_);
                                                                                                                                                               if(!_loc22_)
                                                                                                                                                               {
                                                                                                                                                                  addr901:
                                                                                                                                                                  §§push(0);
                                                                                                                                                                  if(_loc23_ || param3)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop() <= §§pop())
                                                                                                                                                                     {
                                                                                                                                                                        addr909:
                                                                                                                                                                        if(!(_loc22_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc23_ || param3)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc23_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc23_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr929:
                                                                                                                                                                                    if(!_loc4_.disableBirdPassThrough)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc23_ || param3)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr949:
                                                                                                                                                                                          §§push(_loc5_.§3$§(_loc4_.§;!F§()));
                                                                                                                                                                                          if(_loc23_ || param3)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr948:
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                          }
                                                                                                                                                                                          _loc19_ = §§pop();
                                                                                                                                                                                          addr950:
                                                                                                                                                                                          §§push(this);
                                                                                                                                                                                          §§push(_loc5_ as §^"2§);
                                                                                                                                                                                          §§push(_loc6_);
                                                                                                                                                                                          if(_loc23_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc10_);
                                                                                                                                                                                             if(_loc23_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr872:
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                §§push(_loc7_);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§pop().§7f§(§§pop(),§§pop(),§§pop(),_loc19_);
                                                                                                                                                                                             addr875:
                                                                                                                                                                                             if(_loc23_ || param2)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc23_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr854);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1042);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr950);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr872);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr950);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr854:
                                                                                                                                                                                    §§goto(addr856);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr996);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1016);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr977);
                                                                                                                                                                        }
                                                                                                                                                                        if(!_loc22_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr982);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1023);
                                                                                                                                                                     }
                                                                                                                                                                     addr788:
                                                                                                                                                                     §§push(_loc13_);
                                                                                                                                                                     if(!_loc22_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc23_ || param3)
                                                                                                                                                                        {
                                                                                                                                                                           addr798:
                                                                                                                                                                           §§push(0);
                                                                                                                                                                           if(!(_loc22_ && param3))
                                                                                                                                                                           {
                                                                                                                                                                              addr806:
                                                                                                                                                                              §§push(§§pop() <= §§pop());
                                                                                                                                                                              if(!_loc22_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc23_ || param2)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       addr817:
                                                                                                                                                                                       if(!(_loc22_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop();
                                                                                                                                                                                          if(_loc23_ || param2)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc23_ || param2)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc22_ && param3))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc22_ && param2))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc14_);
                                                                                                                                                                                                      if(!_loc22_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc23_ || param2)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc23_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(0);
                                                                                                                                                                                                               if(!_loc22_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                  if(!_loc22_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc23_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc22_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr856:
                                                                                                                                                                                                                           §§push(false);
                                                                                                                                                                                                                           if(!_loc23_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr982);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           return §§pop();
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(_loc23_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr782);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr953);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr806);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr817);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr798);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr984);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr949);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr788);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr984);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr909);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr875);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr788);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr929);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr782:
                                                                                                                                                                                    return §§pop();
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr995);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr982);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr901);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr996);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr984);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr948);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr949);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr788);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1048);
                                                                                                                                                }
                                                                                                                                                §§goto(addr978);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1047);
                                                                                                                                          }
                                                                                                                                          §§goto(addr984);
                                                                                                                                       }
                                                                                                                                       §§goto(addr556);
                                                                                                                                    }
                                                                                                                                    §§goto(addr543);
                                                                                                                                 }
                                                                                                                                 addr513:
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§push(_loc4_.health);
                                                                                                                                 if(!_loc22_)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    if(!_loc22_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr513);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr514);
                                                                                                                           }
                                                                                                                           §§goto(addr505);
                                                                                                                        }
                                                                                                                        §§goto(addr494);
                                                                                                                     }
                                                                                                                     §§goto(addr479);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr427);
                                                                                                         }
                                                                                                         §§push(!§§pop());
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr419);
                                                                                             }
                                                                                             §§goto(addr427);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr354);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr304);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 if(!_loc23_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(_loc22_)
                                                                                 {
                                                                                    continue loop26;
                                                                                 }
                                                                                 if(_loc23_)
                                                                                 {
                                                                                    if(_loc23_ || this)
                                                                                    {
                                                                                       return §§pop();
                                                                                    }
                                                                                    §§goto(addr333);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr231);
                                                                                 }
                                                                              }
                                                                              §§goto(addr165);
                                                                           }
                                                                           break;
                                                                        }
                                                                        if(_loc23_ || this)
                                                                        {
                                                                           if(!_loc23_)
                                                                           {
                                                                              continue loop20;
                                                                           }
                                                                           if(!_loc22_)
                                                                           {
                                                                              if(_loc23_ || param1)
                                                                              {
                                                                                 return §§pop();
                                                                              }
                                                                              addr348:
                                                                              return true;
                                                                           }
                                                                           §§goto(addr303);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr201);
                                                                        }
                                                                     }
                                                                     §§push(_loc4_);
                                                                     §§push(_loc4_.healthMax);
                                                                     if(_loc23_)
                                                                     {
                                                                        §§push(§§pop() * 2);
                                                                     }
                                                                     §§pop().applyDamage(§§pop(),this,_loc5_,true);
                                                                     §§goto(addr254);
                                                                  }
                                                                  §§goto(addr227);
                                                               }
                                                               continue loop4;
                                                            }
                                                            return §§pop();
                                                         }
                                                      }
                                                      §§goto(addr315);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr340);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr201);
                  }
                  §§goto(addr62);
               }
            }
            addr61:
            return false;
         }
         §§goto(addr47);
      }
      
      public function §""7§(param1:§#!v§, param2:§#!v§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(param1)
            {
               addr63:
               while(true)
               {
                  param1.collisionEnded(param2);
                  addr66:
                  while(true)
                  {
                  }
               }
               addr63:
            }
            for(; param2; §§goto(addr66))
            {
               if(!_loc4_)
               {
                  if(_loc4_)
                  {
                     continue;
                  }
                  param2.collisionEnded(param1);
               }
               if(!(_loc4_ && param1))
               {
                  break;
               }
               §§goto(addr63);
            }
            return;
         }
         §§goto(addr63);
      }
      
      protected function §7f§(param1:§^"2§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            §§push(param2);
            if(_loc8_)
            {
               if(§§pop() == 0)
               {
                  if(_loc8_ || this)
                  {
                     §§goto(addr31);
                  }
               }
               §§push(param2);
               if(_loc8_)
               {
                  §§push(param3);
                  if(_loc8_)
                  {
                     addr50:
                     §§push(§§pop() - §§pop());
                     if(!_loc7_)
                     {
                        §§push(param2);
                     }
                     var _loc5_:* = Number(§§pop());
                     if(!(_loc7_ && param1))
                     {
                        if(isNaN(_loc5_))
                        {
                           if(!(_loc7_ && this))
                           {
                              addr70:
                              §§push(0);
                              if(_loc8_ || this)
                              {
                                 §§push(Number(§§pop()));
                                 if(!_loc7_)
                                 {
                                    _loc5_ = §§pop();
                                    if(_loc8_ || param3)
                                    {
                                       addr99:
                                       §§push(_loc5_);
                                       if(_loc8_ || param3)
                                       {
                                          §§push(param4);
                                          if(_loc8_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc8_)
                                             {
                                                §§goto(addr113);
                                             }
                                          }
                                          §§goto(addr116);
                                       }
                                       §§goto(addr113);
                                    }
                                    §§goto(addr129);
                                 }
                                 addr113:
                                 §§push(Number(§§pop()));
                                 if(!_loc7_)
                                 {
                                    addr116:
                                    §§push(_loc5_ = §§pop());
                                    if(!(_loc7_ && this))
                                    {
                                       if(§§pop() > 1)
                                       {
                                       }
                                       §§goto(addr132);
                                    }
                                 }
                                 _loc5_ = §§pop();
                                 §§goto(addr132);
                              }
                              §§goto(addr129);
                           }
                           addr132:
                           if(!_loc7_)
                           {
                              addr129:
                              §§push(Number(1));
                           }
                           var _loc6_:b2Vec2 = param1.§=m§();
                           if(_loc8_)
                           {
                              §§push(param1);
                              §§push(§§findproperty(b2Vec2));
                              §§push(_loc6_.x);
                              if(_loc8_ || param2)
                              {
                                 §§push(_loc5_);
                                 if(_loc8_ || param1)
                                 {
                                    addr158:
                                    §§push(§§pop() * §§pop());
                                    §§push(_loc6_.y);
                                    if(!(_loc7_ && param3))
                                    {
                                       §§push(§§pop() * _loc5_);
                                    }
                                 }
                                 §§pop().§<!j§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                 §§goto(addr181);
                              }
                              §§goto(addr158);
                           }
                           addr181:
                           return;
                        }
                        §§goto(addr99);
                     }
                     §§goto(addr70);
                  }
                  §§push(§§pop() / §§pop());
                  if(_loc8_ || param1)
                  {
                  }
                  §§goto(addr50);
               }
            }
            §§goto(addr50);
         }
         addr31:
      }
      
      public function §[!K§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§@_§ = null;
         var _loc1_:* = int(this.§-"2§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§-"2§[_loc1_] as §@_§;
            if(!_loc3_)
            {
               §§push(_loc2_ == null);
               if(!(_loc3_ && this))
               {
                  §§push(!§§pop());
               }
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr112:
                        while(true)
                        {
                           addr64:
                           while(true)
                           {
                              §§push(_loc2_ is §7k§);
                              if(!_loc3_)
                              {
                                 break;
                              }
                              continue loop2;
                           }
                           if(!_loc4_)
                           {
                              continue loop1;
                           }
                        }
                     }
                  }
                  loop3:
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           if(_loc4_ || _loc3_)
                           {
                              this.§;a§(_loc1_,true);
                           }
                           §§goto(addr112);
                        }
                        loop4:
                        while(true)
                        {
                           addr39:
                           while(true)
                           {
                              §§push(_loc1_);
                              if(!_loc3_)
                              {
                                 §§push(§§pop() - 1);
                              }
                              _loc1_ = §§pop();
                              if(!(_loc3_ && _loc3_))
                              {
                                 break;
                              }
                              continue loop4;
                           }
                           if(true)
                           {
                              break loop3;
                           }
                           §§goto(addr64);
                        }
                     }
                     §§goto(addr39);
                  }
                  continue loop0;
               }
            }
            §§goto(addr112);
         }
      }
      
      public function §?"1§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§@_§ = null;
         var _loc1_:* = int(this.§-"2§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§-"2§[_loc1_] as §@_§;
            if(_loc3_ || _loc3_)
            {
               §§push(_loc2_ == null);
               loop1:
               while(true)
               {
                  §§push(!§§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr133:
                           while(true)
                           {
                              addr75:
                              while(true)
                              {
                                 §§push(_loc2_.§<!M§());
                                 if(_loc3_ || this)
                                 {
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(_loc4_ && this)
                                 {
                                    continue loop3;
                                 }
                                 if(_loc4_ && _loc3_)
                                 {
                                    continue loop2;
                                 }
                              }
                              continue loop1;
                           }
                        }
                     }
                     loop4:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!(_loc4_ && _loc3_))
                           {
                              this.§;a§(_loc1_,true);
                           }
                           loop5:
                           while(true)
                           {
                              addr43:
                              while(true)
                              {
                                 §§push(_loc1_);
                                 if(!(_loc4_ && _loc1_))
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 _loc1_ = §§pop();
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 continue loop5;
                              }
                              if(_loc3_ || _loc1_)
                              {
                                 if(true)
                                 {
                                    break loop4;
                                 }
                                 §§goto(addr75);
                              }
                              §§goto(addr133);
                           }
                        }
                        §§goto(addr43);
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr133);
         }
      }
      
      public function §^]§() : int
      {
         return this.§-"2§.length;
      }
      
      public function § !c§(param1:§5L§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:§@_§ = null;
         var _loc5_:§,!A§ = null;
         var _loc6_:§-C§ = null;
         var _loc7_:§5D§ = null;
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            if(!_loc9_)
            {
               if(§§pop() >= this.§-"2§.length)
               {
                  §§push(Number(0));
                  break;
               }
               if(!(_loc4_ = this.§-"2§[_loc2_] as §@_§))
               {
                  if(!_loc8_)
                  {
                     addr64:
                  }
               }
               else
               {
                  §§push(_loc4_.§50§);
                  if(_loc8_)
                  {
                     if(!§§pop())
                     {
                        if(_loc8_ || _loc3_)
                        {
                           addr144:
                           §§push(_loc2_);
                           if(!(_loc9_ && param1))
                           {
                              §§push(§§pop() + 1);
                              if(_loc8_)
                              {
                                 addr155:
                                 §§push(Number(§§pop()));
                              }
                              _loc2_ = §§pop();
                              continue;
                           }
                           §§goto(addr155);
                        }
                        else
                        {
                           §§goto(addr64);
                        }
                     }
                     else
                     {
                        §§push(_loc4_.§ "7§());
                     }
                     §§goto(addr144);
                  }
                  if(§§pop())
                  {
                     if(_loc9_)
                     {
                        continue;
                     }
                     §§goto(addr64);
                  }
                  else
                  {
                     §§push(_loc5_ = new §,!A§());
                     §§push(_loc4_.§`p§());
                     if(!(_loc9_ && param1))
                     {
                        §§push(§§pop() / (Math.PI / 180));
                     }
                     §§pop().angle = §§pop();
                     if(!_loc9_)
                     {
                        _loc5_.id = _loc4_.id;
                        loop1:
                        while(true)
                        {
                           _loc5_.type = _loc4_.itemName;
                           while(true)
                           {
                              _loc5_.x = _loc4_.§!!I§().GetPosition().x;
                              loop3:
                              while(_loc8_ || _loc3_)
                              {
                                 if(_loc9_)
                                 {
                                    continue loop1;
                                 }
                                 while(true)
                                 {
                                    loop5:
                                    do
                                    {
                                       _loc5_.y = _loc4_.§!!I§().GetPosition().y;
                                       while(_loc8_)
                                       {
                                          param1.§&w§(_loc5_);
                                          if(!_loc9_)
                                          {
                                             continue loop5;
                                          }
                                       }
                                       continue loop3;
                                    }
                                    while(false);
                                    
                                    §§goto(addr144);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr132);
                  }
               }
               §§goto(addr144);
            }
            break;
         }
         var _loc3_:* = §§pop();
         if(_loc8_ || _loc3_)
         {
            while(_loc3_ < this.§>]§.length)
            {
               _loc7_ = this.§>]§[_loc3_];
               _loc6_ = new §-C§(_loc7_.type,_loc7_.id1,_loc7_.id2,_loc7_.point1,_loc7_.point2,_loc7_.§>!f§,_loc7_.§,i§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§4!r§,_loc7_.motorSpeed,_loc7_.§`!]§,_loc7_.maxTorque);
               if(_loc8_)
               {
                  param1.§?!w§(_loc6_);
                  if(_loc9_)
                  {
                     continue;
                  }
               }
               §§push(_loc3_);
               if(_loc8_)
               {
                  §§push(§§pop() + 1);
                  if(!(_loc9_ && _loc2_))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               _loc3_ = §§pop();
            }
         }
      }
      
      public function §?y§(param1:Point, param2:Point) : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Array = [];
         var _loc4_:* = Number(0);
         while(true)
         {
            §§push(_loc4_);
            if(!_loc6_)
            {
               if(_loc5_ || this)
               {
                  if(§§pop() >= this.§-"2§.length)
                  {
                     if(!(_loc6_ && param1))
                     {
                        if(!_loc6_)
                        {
                           break;
                        }
                        addr107:
                        _loc3_.push(this.§-"2§[_loc4_]);
                        loop1:
                        while(true)
                        {
                           addr61:
                           while(true)
                           {
                              §§push(_loc4_);
                              if(_loc5_ || this)
                              {
                                 §§push(§§pop() + 1);
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    addr72:
                                    while(true)
                                    {
                                       _loc4_ = §§pop();
                                       continue loop1;
                                    }
                                 }
                                 addr71:
                              }
                              §§goto(addr72);
                           }
                        }
                        addr113:
                     }
                     while(_loc6_ && this)
                     {
                        §§goto(addr113);
                     }
                     continue;
                  }
                  if(this.§-"2§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
                  {
                     §§goto(addr107);
                  }
                  §§goto(addr61);
               }
               §§goto(addr71);
            }
            §§goto(addr72);
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§@_§ = null;
         if(_loc5_ || _loc2_)
         {
            this.§]!n§ = param1;
            if(_loc5_ || _loc2_)
            {
               this.§3"!§(param1);
            }
         }
         var _loc2_:* = Number(0);
         loop0:
         while(_loc2_ < this.§-"2§.length)
         {
            _loc3_ = this.§-"2§[_loc2_] as §@_§;
            if(_loc5_ || _loc2_)
            {
               §§push(Boolean(_loc3_));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr147:
                        while(true)
                        {
                           addr108:
                           while(true)
                           {
                              §§push(_loc3_.§]^§());
                              if(_loc5_)
                              {
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 §§push(Boolean(§§pop()));
                              }
                              continue loop2;
                           }
                           continue loop1;
                        }
                     }
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           _loc3_.sprite.visible = !this.§]!n§;
                           addr131:
                           while(true)
                           {
                           }
                           addr92:
                           if(_loc4_ && _loc2_)
                           {
                              continue;
                           }
                           addr99:
                           if(_loc5_ || param1)
                           {
                              while(false)
                              {
                                 §§goto(addr108);
                              }
                              continue loop0;
                              addr106:
                           }
                           §§goto(addr147);
                        }
                     }
                     while(true)
                     {
                        §§push(_loc2_);
                        if(_loc5_ || _loc3_)
                        {
                           §§push(§§pop() + 1);
                           if(!_loc4_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        _loc2_ = §§pop();
                        if(_loc4_ && _loc2_)
                        {
                           continue;
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr99);
                  }
               }
            }
            §§goto(addr106);
         }
      }
      
      public function setCollisionsEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§8C§ = param1;
         }
      }
      
      public function §2!D§() : int
      {
         return this.§09§;
      }
      
      public function §"! §() : int
      {
         return this.§[a§;
      }
      
      public function get damageScoreMultiplier() : int
      {
         return this.§!`§.damageScoreMultiplier;
      }
   }
}
