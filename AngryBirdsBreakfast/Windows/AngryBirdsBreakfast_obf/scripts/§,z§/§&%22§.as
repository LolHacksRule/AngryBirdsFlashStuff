package §,z§
{
   import § ! §.§5!v§;
   import § ! §.§8-§;
   import §"!&§.§3"!§;
   import §"n§.§<!Z§;
   import §%q§.Texture;
   import §&v§.§ !h§;
   import §&v§.§"a§;
   import §&v§.§#c§;
   import §&v§.§,4§;
   import §&v§.§4!a§;
   import §&v§.§9B§;
   import §&v§.§each §;
   import §+C§.b2JointEdge;
   import §+C§.b2PrismaticJoint;
   import §+C§.b2RevoluteJoint;
   import §,!7§.§1L§;
   import §-"&§.b2Contact;
   import §1T§.§'!c§;
   import §6![§.§ !f§;
   import §6![§.§1!J§;
   import §6![§.Sprite;
   import §6Z§.b2Vec2;
   import §8!K§.§5!0§;
   import §>!Z§.§!`§;
   import §>!Z§.§!u§;
   import §>!Z§.§2_§;
   import §?s§.§#J§;
   import §?s§.§%!%§;
   import §?s§.§1%§;
   import §?s§.§4!b§;
   import §?s§.§8K§;
   import §@L§.§ 7§;
   import §@L§.§!]§;
   import §@L§.§?!'§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §&"§ implements §3!#§
   {
      
      private static const §,!U§:Boolean = false;
      
      private static const §%L§:int = 1000000000;
      
      public static const §1!A§:int = -1;
      
      public static const §5!1§:int = -2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §,!U§ = false;
            while(true)
            {
               §%L§ = 1000000000;
               while(_loc1_ || §&"§)
               {
                  §1!A§ = -1;
                  while(_loc1_ || _loc1_)
                  {
                     §5!1§ = -2;
                     if(!(_loc1_ || _loc2_))
                     {
                        continue;
                     }
                     return;
                     addr44:
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      protected var §2!z§:Vector.<§<!r§>;
      
      protected var §+!t§:Vector.<§%!f§>;
      
      protected var §#z§:Vector.<§!`§>;
      
      protected var §]!Z§:§<!Z§;
      
      private var §7x§:int = 1000000000;
      
      public var §<Y§:§?!'§;
      
      protected var §#!>§:Vector.<§@q§>;
      
      protected var §5a§:§6![§.Sprite;
      
      protected var §29§:§6![§.Sprite;
      
      protected var §7"!§:§6![§.Sprite;
      
      protected var §5!,§:§6![§.Sprite;
      
      protected var §4!r§:Vector.<Texture>;
      
      protected var §+!y§:Vector.<§#J§>;
      
      protected var §`!X§:int = 1;
      
      protected var § f§:Vector.<§1%§>;
      
      protected var §"!§:int = 0;
      
      private var §<!w§:int = 0;
      
      private var §-R§:int = 0;
      
      private var §9!c§:§8K§;
      
      private var §3!7§:§?!z§;
      
      private var §?+§:Boolean = true;
      
      private var § §:Boolean = true;
      
      private var § !u§:§3"!§;
      
      private var §]!m§:Boolean = false;
      
      public function §&"§(param1:§?!'§, param2:§5!0§, param3:§6![§.Sprite, param4:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         if(!(_loc7_ && param1))
         {
            this.§2!z§ = new Vector.<§<!r§>();
            while(true)
            {
               this.§+!t§ = new Vector.<§%!f§>();
               loop1:
               while(true)
               {
                  this.§#z§ = new Vector.<§!`§>();
                  loop2:
                  while(true)
                  {
                     this.§]!Z§ = new §<!Z§();
                     loop3:
                     while(true)
                     {
                        this.§#!>§ = new Vector.<§@q§>();
                        loop4:
                        while(true)
                        {
                           this.§4!r§ = new Vector.<Texture>();
                           loop5:
                           while(true)
                           {
                              this.§ f§ = new Vector.<§1%§>();
                              loop6:
                              while(true)
                              {
                                 this.§9!c§ = new §8K§();
                                 loop7:
                                 for(; _loc8_; if(_loc7_ && param1)
                                 {
                                    continue;
                                 },this.§,]§(param4,_loc5_,_loc6_,0,§&"§.§1!A§),§§goto(addr68))
                                 {
                                    super();
                                    while(true)
                                    {
                                       this.§<Y§ = param1;
                                       loop9:
                                       for(; _loc8_; while(_loc8_ || this)
                                       {
                                          this.§ § = true;
                                          §§goto(addr262);
                                       })
                                       {
                                          this.§5a§ = param3;
                                          loop10:
                                          while(true)
                                          {
                                             §§push(this.§5a§);
                                             while(true)
                                             {
                                                §§pop().§!!9§ = false;
                                                continue loop9;
                                                addr192:
                                                if(_loc8_ || param1)
                                                {
                                                   §§pop().addChild(this.§7"!§);
                                                   do
                                                   {
                                                      if(param2.§0!E§)
                                                      {
                                                         continue loop1;
                                                      }
                                                      addr33:
                                                      loop27:
                                                      while(true)
                                                      {
                                                         this.§;&§(param2);
                                                         if(!(_loc7_ && param3))
                                                         {
                                                            break;
                                                         }
                                                         addr68:
                                                         addr262:
                                                         while(true)
                                                         {
                                                            if(_loc7_ && param2)
                                                            {
                                                               loop25:
                                                               while(true)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     continue loop7;
                                                                  }
                                                                  loop24:
                                                                  while(true)
                                                                  {
                                                                     if(_loc8_)
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(0 + § 7§.§%" §);
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        if(!_loc7_)
                                                                        {
                                                                           addr121:
                                                                           if(!(_loc7_ && param1))
                                                                           {
                                                                              _loc6_ = §§pop();
                                                                              continue loop25;
                                                                           }
                                                                           addr180:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              §§goto(addr121);
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           _loc5_ = §§pop();
                                                                           continue loop24;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           this.§5!,§ = new §6![§.Sprite();
                                                                           loop17:
                                                                           while(_loc8_)
                                                                           {
                                                                              continue loop4;
                                                                              loop19:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc7_ && param1)
                                                                                 {
                                                                                    continue loop17;
                                                                                 }
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 addr218:
                                                                                 §§push(this.§5a§);
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    §§goto(addr192);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().addChild(this.§29§);
                                                                                       continue loop19;
                                                                                       §§goto(addr218);
                                                                                    }
                                                                                    addr206:
                                                                                 }
                                                                              }
                                                                              continue loop6;
                                                                           }
                                                                           continue loop10;
                                                                        }
                                                                        addr239:
                                                                     }
                                                                  }
                                                                  continue loop3;
                                                               }
                                                               continue loop7;
                                                            }
                                                            if(!(_loc8_ || param1))
                                                            {
                                                               continue loop1;
                                                            }
                                                            addr82:
                                                            if(!(_loc7_ && param2))
                                                            {
                                                               addr89:
                                                               if(_loc7_ && param3)
                                                               {
                                                                  break;
                                                               }
                                                               continue loop2;
                                                            }
                                                            while(true)
                                                            {
                                                               this.§29§ = new §6![§.Sprite();
                                                               continue loop10;
                                                               §§goto(addr82);
                                                            }
                                                            continue loop27;
                                                         }
                                                         while(!_loc7_)
                                                         {
                                                            this.§?+§ = true;
                                                            §§goto(addr257);
                                                            §§goto(addr89);
                                                         }
                                                         continue loop9;
                                                      }
                                                   }
                                                   while(!(_loc8_ || this));
                                                   
                                                   if(_loc7_ && param3)
                                                   {
                                                      §§goto(addr209);
                                                   }
                                                   return;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 continue loop5;
                              }
                           }
                        }
                     }
                  }
               }
               if(_loc7_ && param3)
               {
                  continue;
               }
               §§goto(addr33);
            }
         }
         §§goto(addr82);
      }
      
      public function get §1!§() : §6![§.Sprite
      {
         return this.§5!,§;
      }
      
      public function get §>5§() : §6![§.Sprite
      {
         return this.§5a§;
      }
      
      public function get activeObject() : §"_§
      {
         return this.§3!7§;
      }
      
      public function get objectCount() : int
      {
         return this.§2!z§.length;
      }
      
      public function set §^v§(param1:§3"!§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(param1 != this.§ !u§)
            {
               loop0:
               while(true)
               {
                  this.§ !u§ = param1;
                  loop1:
                  while(true)
                  {
                     §§push(this.§]!m§);
                     if(!_loc2_)
                     {
                        §§push(Boolean(§§pop()));
                        loop2:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 §§pop();
                                 loop4:
                                 while(true)
                                 {
                                    §§push(this.§ !u§);
                                    if(_loc2_ && this)
                                    {
                                       break;
                                    }
                                    §§push(Boolean(§§pop()));
                                    if(!_loc2_)
                                    {
                                       if(_loc3_)
                                       {
                                          while(§§pop())
                                          {
                                             if(!(_loc3_ || _loc3_))
                                             {
                                                break;
                                             }
                                             if(_loc3_)
                                             {
                                                if(_loc3_ || this)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      §§push(this.§ !u§);
                                                      break loop4;
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop1;
                                             }
                                             continue loop4;
                                          }
                                          addr20:
                                          return;
                                          addr39:
                                       }
                                       continue loop2;
                                    }
                                    continue loop5;
                                 }
                                 §§pop().levelStarted();
                                 §§goto(addr72);
                              }
                              addr81:
                           }
                           §§goto(addr39);
                        }
                     }
                     §§goto(addr81);
                  }
               }
            }
            §§goto(addr20);
         }
         §§goto(addr72);
      }
      
      public function §;!J§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(!this.§]!m§)
            {
               loop0:
               while(true)
               {
                  this.§]!m§ = true;
                  do
                  {
                     §§push(this.§ !u§);
                     if(!(_loc2_ && _loc2_))
                     {
                        if(§§pop())
                        {
                           if(!(_loc2_ && this))
                           {
                              continue loop0;
                           }
                        }
                        §§goto(addr24);
                     }
                     else
                     {
                        addr65:
                     }
                     §§pop().levelStarted();
                  }
                  while(!_loc1_);
                  
               }
               addr82:
            }
            addr24:
            return;
         }
         §§goto(addr82);
      }
      
      public function §9?§(param1:String) : §9B§
      {
         return this.§<Y§.levelItemManager.§"!?§(param1);
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = false;
         if(!_loc4_)
         {
            §§push(this.§3!7§);
            if(!(_loc4_ && this))
            {
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     §§goto(addr45);
                  }
               }
               §§goto(addr75);
            }
            §§goto(addr45);
         }
         addr45:
         §§push(this.§3!7§.activateSpecialPower(this,param1,param2));
         if(_loc5_ || _loc3_)
         {
            §§push(Boolean(§§pop()));
            if(!(_loc4_ && param2))
            {
               _loc3_ = §§pop();
               addr75:
               return _loc3_;
            }
         }
      }
      
      protected function §;&§(param1:§5!0§) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:§8K§ = null;
         var _loc4_:* = NaN;
         var _loc5_:§9B§ = null;
         var _loc6_:§%!%§ = null;
         var _loc2_:* = 0;
         if(!_loc7_)
         {
            _loc2_ = 0;
         }
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!_loc7_)
            {
               §§push(param1.objectCount);
               if(_loc8_ || param1)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(!(_loc7_ && this))
                     {
                        this.§2!C§();
                        if(!_loc7_)
                        {
                           this.§>t§(true);
                           loop1:
                           while(true)
                           {
                              loop2:
                              while(true)
                              {
                                 this.§+!y§ = new Vector.<§#J§>();
                                 if(_loc7_)
                                 {
                                    break;
                                 }
                                 if(_loc8_)
                                 {
                                    §§push(0);
                                    if(!(_loc7_ && param1))
                                    {
                                       _loc2_ = §§pop();
                                       if(_loc8_ || _loc3_)
                                       {
                                          addr178:
                                          while(false)
                                          {
                                             continue loop2;
                                          }
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             break loop0;
                                          }
                                          addr135:
                                          addr178:
                                       }
                                       break;
                                    }
                                    break loop0;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        §§goto(addr182);
                     }
                     §§goto(addr135);
                  }
                  else
                  {
                     _loc3_ = param1.getObject(_loc2_);
                     if(_loc8_)
                     {
                        _loc4_ = Number(1);
                     }
                     if(_loc5_ = this.§<Y§.levelItemManager.§"!?§(_loc3_.type))
                     {
                        if(!(_loc7_ && param1))
                        {
                           §§push(_loc5_.scale);
                           if(!_loc7_)
                           {
                              §§push(Number(§§pop()));
                           }
                           _loc4_ = §§pop();
                           if(_loc8_)
                           {
                              addr71:
                              this.§--§(_loc3_,_loc3_.id,false,false,false,_loc4_);
                              if(_loc7_)
                              {
                                 continue;
                              }
                           }
                           _loc2_++;
                           continue;
                        }
                     }
                     §§goto(addr71);
                  }
               }
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     addr182:
                     return;
                  }
                  _loc6_ = param1.§%!m§(_loc2_);
                  if(!_loc7_)
                  {
                     this.§while§(_loc6_);
                     if(!_loc7_)
                     {
                        addr177:
                        _loc2_++;
                     }
                     §§goto(addr178);
                  }
                  §§goto(addr177);
               }
               addr181:
            }
            break;
         }
         while(true)
         {
            §§goto(addr181);
            §§goto(addr178);
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
            if(this.§2!z§.length > 0)
            {
               this.§@o§(0,false,true);
               continue;
            }
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  if(this.§#z§.length <= 0)
                  {
                     loop3:
                     while(true)
                     {
                        this.§2!z§ = null;
                        while(_loc3_)
                        {
                           this.§+!t§ = null;
                           loop5:
                           while(true)
                           {
                              this.§#z§ = null;
                              loop6:
                              while(true)
                              {
                                 this.§]!Z§ = null;
                                 loop7:
                                 while(true)
                                 {
                                    this.§ f§ = null;
                                    if(_loc3_ || _loc2_)
                                    {
                                       §§push(this.§5a§);
                                       if(_loc3_ || _loc1_)
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                §§push(this.§5a§);
                                                addr135:
                                                while(true)
                                                {
                                                   §§pop().dispose();
                                                   addr136:
                                                   while(true)
                                                   {
                                                      this.§5a§ = null;
                                                      addr119:
                                                      while(true)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                         }
                                                         addr187:
                                                         continue loop2;
                                                      }
                                                   }
                                                }
                                             }
                                             addr133:
                                          }
                                          loop9:
                                          while(true)
                                          {
                                             this.§29§ = null;
                                             loop10:
                                             while(!(_loc2_ && _loc3_))
                                             {
                                                if(!_loc2_)
                                                {
                                                   this.§7"!§ = null;
                                                   while(true)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         continue loop9;
                                                      }
                                                      continue loop10;
                                                      addr48:
                                                      if(_loc3_ || this)
                                                      {
                                                         addr57:
                                                         this.§5!,§.dispose();
                                                         while(true)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  break;
                                                               }
                                                               this.§5!,§ = null;
                                                               if(!_loc3_)
                                                               {
                                                                  return;
                                                               }
                                                               addr230:
                                                               addr230:
                                                               if(!_loc2_)
                                                               {
                                                                  continue loop5;
                                                               }
                                                               continue;
                                                            }
                                                            continue loop7;
                                                         }
                                                         continue loop1;
                                                      }
                                                   }
                                                   continue loop3;
                                                }
                                                §§goto(addr133);
                                             }
                                             §§goto(addr136);
                                          }
                                          §§goto(addr187);
                                       }
                                       §§goto(addr135);
                                    }
                                    else
                                    {
                                       §§goto(addr230);
                                    }
                                 }
                              }
                           }
                        }
                        continue loop0;
                     }
                  }
                  else
                  {
                     this.§;D§(0);
                  }
                  §§goto(addr187);
               }
            }
         }
      }
      
      private function §>t§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§29§.visible = param1;
         }
      }
      
      private function §2!C§() : void
      {
         var _loc24_:Boolean = true;
         var _loc25_:Boolean = false;
         var _loc3_:§<!r§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:§"_§ = null;
         var _loc6_:§each § = null;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = 0;
         var _loc14_:* = 0;
         var _loc15_:* = 0;
         var _loc16_:int = 0;
         var _loc17_:BitmapData = null;
         var _loc18_:* = NaN;
         var _loc19_:BitmapData = null;
         var _loc20_:Texture = null;
         var _loc21_:§1!J§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§"_§> = new Vector.<§"_§>();
         for each(_loc3_ in this.§2!z§)
         {
            §§push(Boolean(_loc5_ = _loc3_ as §"_§));
            if(!(_loc25_ && _loc3_))
            {
               if(§§pop())
               {
                  if(_loc24_ || _loc1_)
                  {
                     §§pop();
                     if(!_loc25_)
                     {
                        §§push(_loc5_.§0x§());
                        if(!_loc25_)
                        {
                           addr115:
                           if(!§§pop())
                           {
                              continue;
                           }
                           if(!_loc25_)
                           {
                              addr118:
                              _loc2_.push(_loc5_);
                           }
                           _loc6_ = _loc5_.levelItem.shape;
                           if(!(_loc25_ && this))
                           {
                              §§push(Math.max(_loc6_.§"!j§(),_loc6_.§?!L§()) / §?!'§.§'!i§);
                              if(_loc24_)
                              {
                                 §§push(§§pop() * Math.sqrt(2));
                                 if(!(_loc25_ && this))
                                 {
                                    addr155:
                                    §§push(Number(§§pop()));
                                 }
                                 _loc7_ = §§pop();
                                 addr157:
                                 _loc4_ = new Rectangle(_loc3_.sprite.x - _loc7_ / 2,_loc3_.sprite.y - _loc7_ / 2,_loc7_,_loc7_);
                                 if(_loc24_ || _loc1_)
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
                              §§goto(addr155);
                           }
                           §§goto(addr157);
                        }
                        §§goto(addr115);
                     }
                     §§goto(addr118);
                  }
                  §§goto(addr115);
               }
            }
            §§goto(addr115);
         }
         if(_loc24_)
         {
            if(_loc1_)
            {
               loop1:
               while(true)
               {
                  §§push(this.§<Y§);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop().camera);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop().§&!;§);
                        loop4:
                        while(true)
                        {
                           §§push(§?!'§.§'!i§);
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
                                    loop8:
                                    while(true)
                                    {
                                       §§push(this.§<Y§);
                                       if(!(_loc24_ || _loc2_))
                                       {
                                          break;
                                       }
                                       §§push(§§pop().camera);
                                       if(!_loc24_)
                                       {
                                          continue loop3;
                                       }
                                       §§push(§§pop().§ !3§);
                                       loop9:
                                       while(true)
                                       {
                                          §§push(§?!'§.§'!i§);
                                          loop10:
                                          while(true)
                                          {
                                             §§push(§§pop() / §§pop());
                                             loop11:
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                loop12:
                                                while(true)
                                                {
                                                   _loc9_ = §§pop();
                                                   addr651:
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§push(_loc8_);
                                                      loop14:
                                                      while(true)
                                                      {
                                                         §§push(_loc9_);
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc24_)
                                                            {
                                                               if(!(_loc24_ || _loc1_))
                                                               {
                                                                  break;
                                                               }
                                                               §§push(2);
                                                            }
                                                            else
                                                            {
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  _loc10_ = §§pop();
                                                                  loop19:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc9_);
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc25_)
                                                                        {
                                                                           if(!_loc24_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(_loc8_);
                                                                           loop21:
                                                                           for(; _loc24_ || _loc1_; while(_loc24_ || this)
                                                                           {
                                                                              §§goto(addr582);
                                                                              §§push(§§pop() - §§pop());
                                                                              §§goto(addr533);
                                                                           })
                                                                           {
                                                                              §§push(§§pop() - §§pop());
                                                                              loop22:
                                                                              while(true)
                                                                              {
                                                                                 §§push(2);
                                                                                 if(!_loc25_)
                                                                                 {
                                                                                    §§push(§§pop() / §§pop());
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       addr605:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc11_ = §§pop();
                                                                                          addr606:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc10_);
                                                                                             addr571:
                                                                                             while(!_loc25_)
                                                                                             {
                                                                                                §§push(_loc11_);
                                                                                                continue loop21;
                                                                                             }
                                                                                             continue loop20;
                                                                                          }
                                                                                       }
                                                                                       loop33:
                                                                                       while(_loc24_ || _loc1_)
                                                                                       {
                                                                                          if(!(_loc25_ && _loc2_))
                                                                                          {
                                                                                             if(!_loc25_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                loop34:
                                                                                                for(; _loc24_; if(!(_loc24_ || _loc2_))
                                                                                                {
                                                                                                   continue;
                                                                                                },addr380:,if(!(_loc25_ && _loc1_))
                                                                                                {
                                                                                                   §§goto(addr388);
                                                                                                   §§push(Number(§§pop()));
                                                                                                },while(true)
                                                                                                {
                                                                                                   §§goto(addr583);
                                                                                                   §§goto(addr380);
                                                                                                })
                                                                                                {
                                                                                                   _loc9_ = §§pop();
                                                                                                   loop35:
                                                                                                   for(; !(_loc25_ && _loc3_); if(!(_loc24_ || _loc3_))
                                                                                                   {
                                                                                                      continue;
                                                                                                   },§§goto(addr310))
                                                                                                   {
                                                                                                      _loc1_.left = Math.max(_loc1_.left,_loc8_) - 4;
                                                                                                      loop36:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc1_.right = Math.min(_loc1_.right,_loc9_) + 4;
                                                                                                         loop37:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc1_.left >= _loc1_.right - 1)
                                                                                                            {
                                                                                                               addr500:
                                                                                                               if(_loc24_)
                                                                                                               {
                                                                                                                  return;
                                                                                                               }
                                                                                                               continue loop19;
                                                                                                            }
                                                                                                            loop38:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(1);
                                                                                                               loop39:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  loop40:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc24_ || this)
                                                                                                                     {
                                                                                                                        continue loop22;
                                                                                                                     }
                                                                                                                     loop31:
                                                                                                                     for(; _loc24_; continue loop40)
                                                                                                                     {
                                                                                                                        if(_loc24_)
                                                                                                                        {
                                                                                                                           §§push(_loc11_);
                                                                                                                           while(_loc24_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              continue loop33;
                                                                                                                              addr343:
                                                                                                                              §§push(1.05);
                                                                                                                              if(!(_loc25_ && _loc1_))
                                                                                                                              {
                                                                                                                                 if(_loc24_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    if(_loc24_ || this)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() / §§pop());
                                                                                                                                       if(_loc24_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          continue loop34;
                                                                                                                                       }
                                                                                                                                       addr388:
                                                                                                                                       if(_loc24_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          if(_loc24_)
                                                                                                                                          {
                                                                                                                                             if(_loc24_)
                                                                                                                                             {
                                                                                                                                                addr409:
                                                                                                                                                _loc12_ = §§pop();
                                                                                                                                                loop54:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!_loc25_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc24_)
                                                                                                                                                      {
                                                                                                                                                         while(!(_loc25_ && _loc2_))
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc1_.width > 2048);
                                                                                                                                                               if(_loc24_)
                                                                                                                                                               {
                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop();
                                                                                                                                                                        loop53:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc25_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc25_ && _loc1_))
                                                                                                                                                                              {
                                                                                                                                                                                 addr329:
                                                                                                                                                                                 §§push(_loc1_.height > 2048);
                                                                                                                                                                                 if(!(_loc24_ || this))
                                                                                                                                                                                 {
                                                                                                                                                                                    continue;
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc1_.left /= 1.05;
                                                                                                                                                                                       continue loop1;
                                                                                                                                                                                    }
                                                                                                                                                                                    loop44:
                                                                                                                                                                                    while(_loc24_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(int(_loc1_.width));
                                                                                                                                                                                       loop45:
                                                                                                                                                                                       while(!(_loc25_ && _loc2_))
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc13_ = §§pop();
                                                                                                                                                                                          while(!_loc25_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(int(_loc1_.height));
                                                                                                                                                                                             loop47:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc14_ = §§pop();
                                                                                                                                                                                                loop48:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc25_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop53;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(_loc25_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop37;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(!_loc25_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc25_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(int(_loc1_.left));
                                                                                                                                                                                                            loop50:
                                                                                                                                                                                                            while(_loc24_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc15_ = §§pop();
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc24_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(int(_loc1_.top));
                                                                                                                                                                                                                     if(!(_loc25_ && _loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc24_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop50;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop48;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop45;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop47;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop44;
                                                                                                                                                                                                         addr256:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop13;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr606);
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop54;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(_loc25_ && this)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(_loc25_ && _loc1_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop44;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(_loc25_ && this)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop1;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(false)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr256);
                                                                                                                                                                                             }
                                                                                                                                                                                             _loc17_ = new BitmapData(_loc13_,_loc14_,true,0);
                                                                                                                                                                                             if(!(_loc25_ && _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.§9!§());
                                                                                                                                                                                                if(_loc24_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                }
                                                                                                                                                                                                _loc18_ = §§pop();
                                                                                                                                                                                                if(!_loc25_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   this.§;!R§(_loc17_.rect,_loc17_,_loc12_ * _loc18_);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             _loc19_ = this.§9!$§(_loc2_,_loc13_,_loc14_,_loc15_,_loc16_,_loc12_);
                                                                                                                                                                                             if(!_loc25_)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc17_.copyChannel(_loc19_,_loc19_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
                                                                                                                                                                                             }
                                                                                                                                                                                             _loc20_ = this.§<Y§.§58§.§%^§(_loc17_);
                                                                                                                                                                                             if(_loc24_)
                                                                                                                                                                                             {
                                                                                                                                                                                                this.§4!r§.push(_loc20_);
                                                                                                                                                                                             }
                                                                                                                                                                                             (_loc21_ = new §1!J§(_loc20_)).x = _loc15_ / _loc12_;
                                                                                                                                                                                             if(!(_loc25_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc21_.y = _loc16_ / _loc12_;
                                                                                                                                                                                                _loc21_.scaleX = 1 / _loc12_;
                                                                                                                                                                                                _loc21_.scaleY = 1 / _loc12_;
                                                                                                                                                                                                addr814:
                                                                                                                                                                                                addr808:
                                                                                                                                                                                             }
                                                                                                                                                                                             addr763:
                                                                                                                                                                                             this.§29§.addChild(_loc21_);
                                                                                                                                                                                             if(_loc24_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc25_ && _loc1_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc24_ || _loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc19_.dispose();
                                                                                                                                                                                                      if(_loc24_ || _loc1_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(false)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr763);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr815);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr763);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr814);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr808);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr791:
                                                                                                                                                                                             §§goto(addr791);
                                                                                                                                                                                          }
                                                                                                                                                                                          if(!_loc25_)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc1_.right /= 1.05;
                                                                                                                                                                                             _loc1_.bottom /= 1.05;
                                                                                                                                                                                             break loop44;
                                                                                                                                                                                             addr439:
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop36;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop39;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(_loc12_);
                                                                                                                                                                                    if(!_loc24_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop34;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!(_loc25_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc25_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop7;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr343);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc8_ = §§pop();
                                                                                                                                                                                          break loop53;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr583:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr329);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop54;
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop31;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr319:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr292);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr319);
                                                                                                                                                               continue loop35;
                                                                                                                                                            }
                                                                                                                                                            continue loop35;
                                                                                                                                                         }
                                                                                                                                                         continue loop38;
                                                                                                                                                         addr485:
                                                                                                                                                      }
                                                                                                                                                      if(_loc24_)
                                                                                                                                                      {
                                                                                                                                                         continue loop35;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr500);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr439);
                                                                                                                                                }
                                                                                                                                                continue loop10;
                                                                                                                                             }
                                                                                                                                             continue loop11;
                                                                                                                                          }
                                                                                                                                          continue loop33;
                                                                                                                                       }
                                                                                                                                       continue loop40;
                                                                                                                                    }
                                                                                                                                    continue loop10;
                                                                                                                                 }
                                                                                                                                 continue loop15;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop21;
                                                                                                                           addr533:
                                                                                                                        }
                                                                                                                        §§goto(addr605);
                                                                                                                     }
                                                                                                                     §§goto(addr571);
                                                                                                                  }
                                                                                                                  continue loop22;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop8;
                                                                                                }
                                                                                                continue loop18;
                                                                                             }
                                                                                             continue loop12;
                                                                                          }
                                                                                          continue loop9;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop5;
                                                                        }
                                                                        continue loop14;
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                               }
                                                               addr630:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§pop() / §§pop());
                                                               continue loop9;
                                                            }
                                                         }
                                                         continue loop6;
                                                      }
                                                   }
                                                }
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
            }
            addr815:
            return;
         }
         §§goto(addr651);
      }
      
      private function §9!$§(param1:Vector.<§"_§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc7_:§"_§ = null;
         var _loc11_:* = NaN;
         var _loc12_:§each § = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         loop0:
         for each(_loc7_ in param1)
         {
            if(!(_loc15_ && param1))
            {
               _loc10_.identity();
               if(!_loc15_)
               {
                  §§push(param6);
                  if(!_loc15_)
                  {
                     §§push(Number(§§pop()));
                  }
                  _loc11_ = §§pop();
               }
            }
            §§push((_loc12_ = _loc7_.levelItem.shape) is §4!a§);
            if(!_loc15_)
            {
               if(§§pop())
               {
                  if(!_loc15_)
                  {
                     this.§?6§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§[!G§(),param6,_loc11_,param4,param5);
                     if(!_loc15_)
                     {
                        continue;
                     }
                     loop1:
                     for(; (_loc12_ as § !h§).§8!§.length != 4; while(true)
                     {
                        if(!_loc16_)
                        {
                           break loop1;
                        }
                        if(!_loc16_)
                        {
                           continue loop1;
                        }
                        §§goto(addr107);
                     })
                     {
                        if((_loc12_ as § !h§).§8!§.length != 3)
                        {
                           addr107:
                           continue loop0;
                        }
                        while(true)
                        {
                           this.§&Q§(_loc12_ as § !h§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§[!G§(),param6,_loc11_,param4,param5);
                           continue loop1;
                        }
                     }
                     this.§?6§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§[!G§(),param6,_loc11_,param4,param5);
                     addr232:
                     addr207:
                  }
                  else
                  {
                     addr166:
                     if(true)
                     {
                        continue;
                     }
                  }
                  addr168:
                  §§goto(addr107);
               }
               else
               {
                  §§push(_loc12_ is § !h§);
                  while(!§§pop())
                  {
                     §§push(_loc12_ is §"a§);
                     if(!_loc16_)
                     {
                        continue;
                     }
                     if(!§§pop())
                     {
                        continue loop0;
                     }
                     if(_loc16_)
                     {
                        if(!(_loc15_ && param2))
                        {
                           this.§4E§(_loc12_ as §"a§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,param6,_loc11_,param4,param5);
                           addr152:
                           if(!(_loc15_ && param2))
                           {
                              if(_loc16_ || param2)
                              {
                                 §§goto(addr166);
                              }
                              else
                              {
                                 §§goto(addr178);
                              }
                           }
                           §§goto(addr197);
                        }
                        §§goto(addr232);
                     }
                     §§goto(addr152);
                  }
                  §§goto(addr207);
                  addr206:
               }
               §§goto(addr197);
            }
            §§goto(addr206);
         }
         if(_loc16_ || param3)
         {
            _loc9_.dispose();
         }
         return _loc8_;
      }
      
      protected function §?6§(param1:§each §, param2:BitmapData, param3:BitmapData, param4:Matrix, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         §§push(param1.§"!j§());
         if(_loc14_ || param2)
         {
            §§push(§?!'§.§'!i§);
            if(!_loc15_)
            {
               addr42:
               §§push(§§pop() / §§pop());
               if(_loc14_ || param1)
               {
                  §§push(param9);
               }
               var _loc12_:* = §§pop();
               §§push(param1.§?!L§());
               if(_loc14_)
               {
                  §§push(§?!'§.§'!i§);
                  if(_loc14_ || param1)
                  {
                     addr63:
                     §§push(§§pop() / §§pop());
                     if(!_loc15_)
                     {
                        §§push(param9);
                     }
                     var _loc13_:Number = §§pop();
                     if(_loc14_ || param2)
                     {
                        param4.scale(_loc12_,_loc13_);
                        while(true)
                        {
                           param4.translate(-_loc12_ / 2,-_loc13_ / 2);
                           while(!_loc15_)
                           {
                              param4.rotate(param7);
                              while(!_loc15_)
                              {
                                 param4.translate(param5 * param8 - param10,param6 * param8 - param11);
                                 do
                                 {
                                    param2.draw(param3,param4);
                                 }
                                 while(!(_loc14_ || this));
                                 
                                 if(!_loc15_)
                                 {
                                    return;
                                    addr101:
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr101);
                  }
                  §§push(§§pop() * §§pop());
                  if(!_loc14_)
                  {
                  }
               }
               §§goto(addr63);
            }
            §§push(§§pop() * §§pop());
            if(_loc14_)
            {
               §§push(Number(§§pop()));
            }
         }
         §§goto(addr42);
      }
      
      protected function §&Q§(param1:§ !h§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc14_:b2Vec2 = null;
         var _loc11_:flash.display.Sprite;
         (_loc11_ = new flash.display.Sprite()).graphics.beginFill(16777215);
         var _loc12_:Vector.<Number> = new Vector.<Number>();
         var _loc13_:int = 0;
         while(_loc13_ < param1.§8!§.length)
         {
            _loc14_ = param1.§8!§[_loc13_];
            if(!_loc16_)
            {
               _loc12_.push(_loc14_.x / §?!'§.§'!i§ * param8,_loc14_.y / §?!'§.§'!i§ * param8);
               if(_loc15_ || this)
               {
                  _loc13_++;
               }
            }
         }
         if(!(_loc16_ && param3))
         {
            _loc11_.graphics.drawTriangles(_loc12_);
            if(!(_loc16_ && this))
            {
               _loc11_.graphics.endFill();
               while(true)
               {
                  param3.rotate(param6);
               }
               addr165:
            }
            while(true)
            {
               param3.translate(param4 * param7 - param9,param5 * param7 - param10);
               loop3:
               while(true)
               {
                  addr118:
                  while(true)
                  {
                     param2.draw(_loc11_,param3);
                     continue loop3;
                  }
               }
               addr109:
               if(_loc16_ && param3)
               {
                  continue;
               }
               if(false)
               {
                  §§goto(addr118);
               }
               §§goto(addr166);
            }
         }
         while(true)
         {
            _loc11_.graphics.clear();
            if(!_loc16_)
            {
               §§goto(addr109);
            }
            §§goto(addr123);
         }
         addr166:
         _loc11_ = null;
      }
      
      protected function §4E§(param1:§"a§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         §§push(param1.radius);
         if(!_loc14_)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:*;
         §§push(_loc10_ = §§pop());
         if(_loc13_ || this)
         {
            §§push(§?!'§.§'!i§);
            if(!(_loc14_ && param2))
            {
               addr51:
               §§push(§§pop() / §§pop());
               if(!(_loc14_ && param3))
               {
                  §§push(param7);
               }
               var _loc11_:Number = §§pop();
               var _loc12_:flash.display.Sprite;
               (_loc12_ = new flash.display.Sprite()).graphics.beginFill(16777215);
               if(_loc13_)
               {
                  _loc12_.graphics.drawCircle(_loc11_,_loc11_,_loc11_);
               }
               loop0:
               while(true)
               {
                  _loc12_.graphics.endFill();
                  addr131:
                  while(true)
                  {
                     param3.translate(param4 * param6 - param8 - _loc11_,param5 * param6 - param9 - _loc11_);
                     continue loop0;
                  }
               }
            }
            §§push(§§pop() * §§pop());
            if(_loc14_)
            {
            }
         }
         §§goto(addr51);
      }
      
      protected function §6!;§() : String
      {
         return this.§<Y§.background.§1!1§();
      }
      
      protected function §9!§() : Number
      {
         return 1;
      }
      
      private function §;!R§(param1:Rectangle, param2:BitmapData, param3:Number) : void
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc6_:BitmapData = null;
         var _loc7_:Matrix = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         §§push(this.§6!;§());
         if(!_loc17_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         var _loc5_:§8-§;
         if(_loc5_ = this.§<Y§.§^N§.§`I§(_loc4_))
         {
            _loc6_ = new BitmapData(_loc5_.bitmapData.width * param3,_loc5_.bitmapData.height * param3);
            (_loc7_ = new Matrix()).scale(param3,param3);
            if(_loc16_ || param1)
            {
               _loc6_.draw(_loc5_.bitmapData,_loc7_);
               loop0:
               while(true)
               {
                  §§push(_loc6_.width - 2);
                  loop1:
                  while(true)
                  {
                     §§push(int(§§pop()));
                     while(true)
                     {
                        _loc8_ = §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(_loc6_.height - 2);
                           loop4:
                           while(_loc16_)
                           {
                              §§push(int(§§pop()));
                              loop5:
                              while(true)
                              {
                                 _loc9_ = §§pop();
                                 loop6:
                                 while(_loc16_)
                                 {
                                    §§push(param1.top / _loc9_);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(int(§§pop()));
                                       loop8:
                                       while(true)
                                       {
                                          _loc10_ = §§pop();
                                          loop9:
                                          while(true)
                                          {
                                             if(param1.top < 0)
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc10_);
                                                   addr349:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() - 1);
                                                      addr350:
                                                      while(true)
                                                      {
                                                         _loc10_ = §§pop();
                                                         addr351:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                   }
                                                }
                                                addr348:
                                             }
                                             loop14:
                                             while(true)
                                             {
                                                §§push(param1.bottom / _loc9_);
                                                loop15:
                                                while(true)
                                                {
                                                   §§push(int(§§pop()));
                                                   loop16:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      loop17:
                                                      while(true)
                                                      {
                                                         _loc11_ = §§pop();
                                                         loop18:
                                                         while(_loc16_)
                                                         {
                                                            §§push(§§pop() + 1);
                                                            while(true)
                                                            {
                                                               _loc11_ = §§pop();
                                                               addr342:
                                                               while(true)
                                                               {
                                                                  §§push(param1.left / _loc8_);
                                                                  continue loop7;
                                                               }
                                                               addr174:
                                                               if(!(_loc16_ || param2))
                                                               {
                                                                  continue;
                                                               }
                                                               if(!(_loc17_ && this))
                                                               {
                                                                  if(!_loc17_)
                                                                  {
                                                                     addr201:
                                                                     _loc14_ = §§pop();
                                                                     if(_loc16_ || param1)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     loop28:
                                                                     for(; _loc16_ || this; §§goto(addr201))
                                                                     {
                                                                        if(_loc16_)
                                                                        {
                                                                           §§push(_loc12_);
                                                                           if(!(_loc16_ || param3))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(_loc16_)
                                                                           {
                                                                              if(!_loc17_)
                                                                              {
                                                                                 if(_loc17_)
                                                                                 {
                                                                                    while(!_loc17_)
                                                                                    {
                                                                                       if(!(_loc16_ || param2))
                                                                                       {
                                                                                          continue loop16;
                                                                                       }
                                                                                       _loc12_ = §§pop();
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc17_)
                                                                                          {
                                                                                             if(!_loc17_)
                                                                                             {
                                                                                                if(param1.left < 0)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                do
                                                                                                {
                                                                                                   §§push(param1.right / _loc8_);
                                                                                                   if(!_loc16_)
                                                                                                   {
                                                                                                      continue loop7;
                                                                                                   }
                                                                                                   if(_loc17_)
                                                                                                   {
                                                                                                      continue loop15;
                                                                                                   }
                                                                                                   if(!_loc16_)
                                                                                                   {
                                                                                                      continue loop4;
                                                                                                   }
                                                                                                   §§push(int(§§pop()));
                                                                                                }
                                                                                                while(!(_loc17_ && param1));
                                                                                                
                                                                                                continue loop6;
                                                                                             }
                                                                                             continue loop9;
                                                                                          }
                                                                                          §§goto(addr348);
                                                                                       }
                                                                                       §§goto(addr349);
                                                                                    }
                                                                                    continue loop18;
                                                                                    addr315:
                                                                                 }
                                                                                 §§goto(addr174);
                                                                                 §§goto(addr349);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(_loc17_ && this)
                                                                                 {
                                                                                    continue loop17;
                                                                                 }
                                                                                 _loc13_ = §§pop();
                                                                                 if(!_loc17_)
                                                                                 {
                                                                                    if(_loc16_)
                                                                                    {
                                                                                       if(!(_loc16_ || param1))
                                                                                       {
                                                                                          continue loop8;
                                                                                       }
                                                                                       §§push(§§pop() + 1);
                                                                                       while(!_loc17_)
                                                                                       {
                                                                                          _loc13_ = §§pop();
                                                                                          continue loop28;
                                                                                       }
                                                                                       §§goto(addr276);
                                                                                    }
                                                                                    §§goto(addr277);
                                                                                 }
                                                                              }
                                                                              §§goto(addr350);
                                                                           }
                                                                           §§goto(addr250);
                                                                        }
                                                                        §§goto(addr268);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(_loc16_ || this)
                                                                        {
                                                                           if(_loc17_)
                                                                           {
                                                                              continue loop14;
                                                                           }
                                                                           §§goto(addr294);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr342);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr349);
                                                               }
                                                               §§goto(addr350);
                                                            }
                                                         }
                                                         continue loop5;
                                                      }
                                                   }
                                                }
                                             }
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
                  }
               }
            }
            §§goto(addr275);
         }
         §§goto(addr396);
      }
      
      protected function addObjectBird(param1:§8K§, param2:§6![§.Sprite, param3:§5!v§, param4:§9B§, param5:Number = 1.0, param6:Boolean = true) : §?!z§
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc11_:§?!z§ = null;
         §§push(param1.type);
         if(_loc13_)
         {
            §§push(§§pop());
         }
         var _loc7_:* = §§pop();
         §§push(param1.x);
         if(_loc13_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc8_:* = §§pop();
         §§push(param1.y);
         if(!(_loc14_ && this))
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
         if(!_loc14_)
         {
            if("BIRD_BLACK" === _loc12_)
            {
               if(!(_loc14_ && param2))
               {
                  §§push(0);
                  if(_loc14_)
                  {
                     addr342:
                  }
               }
               else
               {
                  addr353:
                  §§push(7);
                  if(_loc13_ || param2)
                  {
                     addr361:
                  }
                  else
                  {
                     addr397:
                  }
               }
            }
            else
            {
               if("BIRD_BLUE" === _loc12_)
               {
                  if(!(_loc14_ && param1))
                  {
                     §§push(1);
                     if(!(_loc13_ || this))
                     {
                        addr286:
                     }
                  }
                  else
                  {
                     addr384:
                     §§push(9);
                     if(!_loc14_)
                     {
                        §§goto(addr397);
                     }
                  }
               }
               else
               {
                  if("BIRD_GREEN" === _loc12_)
                  {
                     if(_loc13_)
                     {
                        §§push(2);
                        if(!_loc14_)
                        {
                           §§goto(addr286);
                        }
                        else
                        {
                           addr328:
                        }
                     }
                     else
                     {
                        §§goto(addr384);
                     }
                  }
                  else
                  {
                     if("BIRD_WHITE" === _loc12_)
                     {
                        if(!_loc14_)
                        {
                           §§push(3);
                           if(_loc14_ && param3)
                           {
                              §§goto(addr361);
                           }
                        }
                        else
                        {
                           §§goto(addr384);
                        }
                     }
                     else if("BIRD_YELLOW" === _loc12_)
                     {
                        if(_loc13_ || param2)
                        {
                           §§push(4);
                           if(!_loc13_)
                           {
                              §§goto(addr361);
                           }
                        }
                        else
                        {
                           addr372:
                           §§push(8);
                           if(!(_loc13_ || param3))
                           {
                              §§goto(addr397);
                           }
                        }
                     }
                     else if("BIRD_RED" === _loc12_)
                     {
                        if(!_loc14_)
                        {
                           §§push(5);
                           if(_loc13_ || param2)
                           {
                              §§goto(addr328);
                           }
                           else
                           {
                              §§goto(addr361);
                           }
                        }
                        else
                        {
                           addr339:
                           §§push(6);
                           if(!_loc14_)
                           {
                              §§goto(addr342);
                           }
                        }
                     }
                     else if("BIRD_REDBIG" === _loc12_)
                     {
                        if(_loc13_ || param2)
                        {
                           §§goto(addr339);
                        }
                        else
                        {
                           §§goto(addr372);
                        }
                     }
                     else if("BIRD_ORANGE" === _loc12_)
                     {
                        if(!(_loc14_ && this))
                        {
                           §§goto(addr353);
                        }
                        else
                        {
                           §§goto(addr372);
                        }
                     }
                     else
                     {
                        if("BIRD_SARDINE" === _loc12_)
                        {
                           if(!(_loc14_ && param3))
                           {
                              §§goto(addr372);
                           }
                           else
                           {
                              §§goto(addr384);
                           }
                        }
                        else if("BIRD_MIGHTY_EAGLE" === _loc12_)
                        {
                           §§goto(addr384);
                        }
                        else
                        {
                           §§push(10);
                        }
                        §§goto(addr384);
                     }
                     §§goto(addr384);
                  }
                  §§goto(addr384);
               }
               §§goto(addr384);
            }
            switch(§§pop())
            {
               case 0:
                  _loc11_ = new §<!8§(param2,param3,this.§<Y§.§5!u§.§-#§,param4,param1,param5,param6);
                  break;
               case 1:
                  _loc11_ = new §6y§(param2,param3,this.§<Y§.§5!u§.§-#§,param4,param1,param5,param6);
                  break;
               case 2:
                  _loc11_ = new §#!b§(param2,param3,this.§<Y§.§5!u§.§-#§,param4,param1,param5,param6);
                  break;
               case 3:
                  _loc11_ = new §@!O§(param2,param3,this.§<Y§.§5!u§.§-#§,param4,param1,param5,param6);
                  break;
               case 4:
                  _loc11_ = new §[!#§(param2,param3,this.§<Y§.§5!u§.§-#§,param4,param1,param5,param6);
                  break;
               case 5:
                  _loc11_ = new §?!T§(param2,param3,this.§<Y§.§5!u§.§-#§,param4,param1,param5,param6);
                  break;
               case 6:
                  _loc11_ = new §'7§(param2,param3,this.§<Y§.§5!u§.§-#§,param4,param1,param5,param6);
                  break;
               case 7:
                  _loc11_ = new §8?§(param2,param3,this.§<Y§.§5!u§.§-#§,param4,param1,param5,param6);
                  break;
               case 8:
                  _loc11_ = new §!t§(param2,param3,this.§<Y§.§5!u§.§-#§,param4,param1,param5,param6);
                  break;
               case 9:
                  _loc11_ = new §+f§(param2,param3,this.§<Y§.§5!u§.§-#§,param4,param1,param5,param6);
                  break;
               default:
                  _loc11_ = new §?!z§(param2,param3,this.§<Y§.§5!u§.§-#§,param4,param1,param5,param6);
            }
            return _loc11_;
         }
         §§goto(addr384);
      }
      
      public function hasBirds() : Boolean
      {
         return this.§"!§ > 0;
      }
      
      protected function §1b§(param1:§8K§, param2:§6![§.Sprite, param3:§5!v§, param4:§9B§, param5:Number = 1.0) : §[!=§
      {
         return new §[!=§(param2,param3,this.§<Y§.§5!u§.§-#§,param4,param1,param5);
      }
      
      public function §,]§(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0, param10:Boolean = false) : §<!r§
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         if(_loc12_)
         {
            §§push(this.§9!c§);
            loop0:
            while(true)
            {
               §§pop().type = param1;
               loop1:
               while(true)
               {
                  §§push(this.§9!c§);
                  while(true)
                  {
                     §§push(param2);
                     addr145:
                     while(true)
                     {
                        §§pop().x = §§pop();
                     }
                     addr98:
                     if(!(_loc12_ || this))
                     {
                        continue;
                     }
                     §§push(0);
                     loop12:
                     while(true)
                     {
                        §§pop().§7!i§ = §§pop();
                        while(true)
                        {
                           if(!_loc11_)
                           {
                              if(_loc11_)
                              {
                                 break;
                              }
                              addr111:
                              §§push(this.§9!c§);
                              if(_loc12_ || this)
                              {
                                 if(_loc12_)
                                 {
                                    if(_loc11_)
                                    {
                                       continue loop0;
                                    }
                                    §§push(0);
                                    if(!_loc12_)
                                    {
                                       continue loop12;
                                    }
                                    if(!_loc11_)
                                    {
                                       if(_loc12_)
                                       {
                                          if(!(_loc11_ && param1))
                                          {
                                             §§pop().§!!O§ = §§pop();
                                             if(_loc11_ && this)
                                             {
                                                continue;
                                             }
                                             if(!(_loc11_ && this))
                                             {
                                                return this.§--§(this.§9!c§,param5,param6,param7,param8,param9,param10);
                                             }
                                             while(true)
                                             {
                                                §§push(this.§9!c§);
                                                loop8:
                                                while(true)
                                                {
                                                   §§push(param4);
                                                   addr116:
                                                   while(true)
                                                   {
                                                      §§pop().angle = §§pop();
                                                      addr117:
                                                      while(true)
                                                      {
                                                         if(_loc12_ || param3)
                                                         {
                                                            §§push(this.§9!c§);
                                                            continue loop8;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             addr130:
                                          }
                                          else
                                          {
                                             §§goto(addr145);
                                          }
                                          while(true)
                                          {
                                             §§push(this.§9!c§);
                                             addr128:
                                             while(true)
                                             {
                                                §§push(param3);
                                             }
                                          }
                                          addr146:
                                       }
                                       while(true)
                                       {
                                          §§pop().y = §§pop();
                                          §§goto(addr130);
                                       }
                                    }
                                    §§goto(addr116);
                                 }
                                 §§goto(addr128);
                              }
                              §§goto(addr91);
                           }
                           §§goto(addr117);
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr146);
      }
      
      public function §"!B§(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Number = 0.0, param7:Number = 0.0, param8:Number = 1.0, param9:Boolean = false) : §<!r§
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(_loc10_ || this)
         {
            §§push(this.§9!c§);
            while(true)
            {
               §§pop().type = param1;
               loop1:
               while(true)
               {
                  §§push(this.§9!c§);
                  addr146:
                  while(true)
                  {
                     §§push(param2);
                     addr147:
                     while(true)
                     {
                        §§pop().x = §§pop();
                        addr148:
                        while(!(_loc11_ && param3))
                        {
                        }
                        continue loop1;
                     }
                  }
               }
            }
            addr168:
         }
         while(true)
         {
            §§push(this.§9!c§);
            loop6:
            while(_loc10_)
            {
               §§push(param3);
               loop7:
               while(!(_loc11_ && param1))
               {
                  §§pop().y = §§pop();
                  loop8:
                  while(true)
                  {
                     §§push(this.§9!c§);
                     while(true)
                     {
                        §§push(param4);
                        addr112:
                        while(true)
                        {
                           §§pop().angle = §§pop();
                           continue loop8;
                        }
                        addr48:
                        if(_loc11_ && param1)
                        {
                           continue;
                        }
                        addr55:
                        §§push(param7);
                        if(_loc10_ || param2)
                        {
                           if(_loc10_)
                           {
                              addr65:
                              §§pop().§!!O§ = §§pop();
                              if(_loc11_ && param3)
                              {
                                 loop14:
                                 while(true)
                                 {
                                    §§push(this.§9!c§);
                                    if(!(_loc10_ || param3))
                                    {
                                       while(_loc10_)
                                       {
                                          if(_loc10_)
                                          {
                                             addr99:
                                             §§push(param6);
                                             while(!(_loc11_ && param3))
                                             {
                                                §§pop().§7!i§ = §§pop();
                                                continue loop14;
                                                §§goto(addr55);
                                             }
                                             §§goto(addr112);
                                             addr99:
                                          }
                                          else
                                          {
                                             §§goto(addr168);
                                          }
                                          continue loop14;
                                       }
                                       continue loop6;
                                       addr94:
                                    }
                                    §§goto(addr48);
                                    §§goto(addr99);
                                 }
                                 continue loop7;
                              }
                              if(_loc10_ || this)
                              {
                                 return this.§--§(this.§9!c§,param5,false,false,false,param8,param9);
                              }
                              continue loop8;
                           }
                           continue loop7;
                        }
                        §§goto(addr99);
                     }
                  }
               }
               §§goto(addr147);
            }
            §§goto(addr146);
         }
      }
      
      protected function §--§(param1:§8K§, param2:int, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true, param6:Number = 1.0, param7:Boolean = false) : §<!r§
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc8_:§6![§.Sprite = new §6![§.Sprite();
         var _loc9_:§<!r§;
         if((_loc9_ = this.§,!§(param1,param2,_loc8_,param5,param6)) == null)
         {
            if(_loc13_)
            {
               return null;
            }
            loop11:
            while(true)
            {
               loop12:
               while(true)
               {
                  §§push(param4);
                  if(!(_loc12_ && param1))
                  {
                     addr248:
                     if(_loc13_ || param1)
                     {
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc13_)
                           {
                              addr258:
                              while(true)
                              {
                                 §§push(§§pop());
                                 addr259:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       addr260:
                                       loop7:
                                       while(true)
                                       {
                                          §§pop();
                                          addr261:
                                          while(true)
                                          {
                                             if(!(_loc13_ || this))
                                             {
                                                continue loop11;
                                             }
                                             §§push(_loc9_ is §?!z§);
                                             if(!(_loc13_ || param1))
                                             {
                                                continue loop7;
                                             }
                                             if(!_loc13_)
                                             {
                                             }
                                             loop18:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   continue loop12;
                                                }
                                                while(true)
                                                {
                                                   if(_loc13_)
                                                   {
                                                      if(_loc13_)
                                                      {
                                                         while(true)
                                                         {
                                                            this.§<Y§.§9!+§(_loc9_);
                                                            continue loop11;
                                                         }
                                                         addr276:
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            this.§7"!§.§6!K§(_loc8_);
                                                            addr305:
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                         addr301:
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr298:
                                                      while(true)
                                                      {
                                                      }
                                                      addr298:
                                                   }
                                                   while(true)
                                                   {
                                                      continue loop18;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       addr260:
                                    }
                                    while(§§pop())
                                    {
                                       if(!(_loc12_ && this))
                                       {
                                          if(_loc13_)
                                          {
                                             this.§3!7§ = §?!z§(_loc9_);
                                             addr224:
                                             if(!(_loc12_ && param2))
                                             {
                                                if(!(_loc12_ && this))
                                                {
                                                   break;
                                                }
                                                §§goto(addr272);
                                             }
                                             else
                                             {
                                                §§goto(addr261);
                                             }
                                          }
                                          §§goto(addr305);
                                       }
                                       §§goto(addr224);
                                    }
                                    return _loc9_;
                                 }
                              }
                              addr258:
                           }
                           §§goto(addr260);
                        }
                        addr255:
                     }
                     else
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              this.§5!,§.§6!K§(_loc8_);
                              §§goto(addr298);
                           }
                           §§goto(addr248);
                        }
                        addr300:
                     }
                     §§goto(addr301);
                  }
                  §§goto(addr258);
               }
            }
            addr280:
         }
         else
         {
            §§push(_loc9_ is §"_§);
            if(!(_loc12_ && param3))
            {
               §§push(§§pop());
               if(_loc13_)
               {
                  if(§§pop())
                  {
                     if(_loc13_)
                     {
                        §§pop();
                        loop0:
                        while(true)
                        {
                           loop1:
                           while(true)
                           {
                              §§push((_loc9_ as §"_§).§0x§());
                              if(_loc13_ || this)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(!_loc12_)
                                 {
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc13_ || this)
                                          {
                                             if(!_loc13_)
                                             {
                                                continue loop0;
                                             }
                                             §§push(_loc8_);
                                             §§push(this.§?+§);
                                             if(_loc13_)
                                             {
                                                §§push(!§§pop());
                                             }
                                             §§pop().visible = §§pop();
                                             if(!(_loc12_ && param2))
                                             {
                                                addr40:
                                                §§push(_loc9_ is §?!z§);
                                                if(!(_loc12_ && this))
                                                {
                                                   §§push(§§pop());
                                                   if(_loc13_ || this)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc13_ || this)
                                                         {
                                                            §§pop();
                                                            if(_loc13_)
                                                            {
                                                               if(false)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               §§push(_loc9_ is §+f§);
                                                               if(_loc13_ || param1)
                                                               {
                                                                  §§push(!§§pop());
                                                                  if(!(_loc12_ && param1))
                                                                  {
                                                                     addr159:
                                                                     if(§§pop())
                                                                     {
                                                                        if(!(_loc12_ && param3))
                                                                        {
                                                                           var _loc10_:*;
                                                                           §§push((_loc10_ = this).§"!§);
                                                                           if(!_loc12_)
                                                                           {
                                                                              §§push(§§pop() + 1);
                                                                           }
                                                                           var _loc11_:* = §§pop();
                                                                           if(_loc13_)
                                                                           {
                                                                              _loc10_.§"!§ = _loc11_;
                                                                           }
                                                                           if(_loc13_ || this)
                                                                           {
                                                                              addr299:
                                                                              §§push(param7);
                                                                              break loop1;
                                                                           }
                                                                           §§goto(addr298);
                                                                        }
                                                                        §§goto(addr276);
                                                                     }
                                                                     §§goto(addr299);
                                                                  }
                                                                  §§goto(addr260);
                                                               }
                                                               §§goto(addr258);
                                                            }
                                                            §§goto(addr298);
                                                         }
                                                         §§goto(addr260);
                                                      }
                                                      §§goto(addr159);
                                                   }
                                                   §§goto(addr259);
                                                }
                                                break;
                                             }
                                          }
                                          §§goto(addr280);
                                       }
                                       §§goto(addr40);
                                    }
                                    §§goto(addr255);
                                    addr87:
                                 }
                                 §§goto(addr271);
                              }
                              break;
                           }
                           §§goto(addr300);
                        }
                     }
                     §§goto(addr260);
                  }
                  §§goto(addr87);
               }
               §§goto(addr259);
            }
         }
         §§goto(addr271);
      }
      
      private function §,!§(param1:§8K§, param2:int, param3:§6![§.Sprite, param4:Boolean = true, param5:Number = 1.0) : §<!r§
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc7_:§"_§ = null;
         if(!_loc10_)
         {
            §§push(param2);
            if(_loc11_ || this)
            {
               §§push(§5!1§);
               if(_loc11_ || param2)
               {
                  if(§§pop() == §§pop())
                  {
                     if(!_loc10_)
                     {
                        §§push(this.§7x§);
                        if(!_loc10_)
                        {
                           §§push(int(§§pop()));
                           if(_loc11_)
                           {
                              param2 = §§pop();
                              if(!_loc10_)
                              {
                                 addr51:
                                 var _loc8_:*;
                                 §§push((_loc8_ = this).§7x§);
                                 if(!(_loc10_ && param1))
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc9_:* = §§pop();
                                 if(!(_loc10_ && param3))
                                 {
                                    _loc8_.§7x§ = _loc9_;
                                 }
                                 if(_loc10_ && param2)
                                 {
                                    §§goto(addr117);
                                 }
                              }
                              else
                              {
                                 addr106:
                                 if(this.§>o§(param2))
                                 {
                                    if(!(_loc10_ && param1))
                                    {
                                       addr117:
                                       throw new Error("Object with id: " + param2 + " already added!");
                                    }
                                 }
                              }
                              addr125:
                              var _loc6_:§<!r§;
                              if((_loc6_ = this.§[!K§(param1,param3,param4,param5)) is §?!z§)
                              {
                                 if(!(_loc10_ && param3))
                                 {
                                    §§push((_loc8_ = this).§-R§);
                                    if(_loc11_)
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    _loc9_ = §§pop();
                                    if(!_loc10_)
                                    {
                                       _loc8_.§-R§ = _loc9_;
                                    }
                                    if(_loc11_)
                                    {
                                       addr171:
                                       if(_loc6_)
                                       {
                                          addr173:
                                          _loc7_ = _loc6_ as §"_§;
                                          if(_loc11_)
                                          {
                                             §§push(_loc6_ is §!`§);
                                             loop0:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   if(_loc7_)
                                                   {
                                                      loop11:
                                                      while(true)
                                                      {
                                                         _loc7_.§3!'§(param2);
                                                         loop6:
                                                         while(true)
                                                         {
                                                            this.§]!Z§[param1.instanceName] = _loc6_;
                                                            loop7:
                                                            while(true)
                                                            {
                                                               if(_loc10_)
                                                               {
                                                                  continue loop11;
                                                               }
                                                               if(!(_loc10_ && param1))
                                                               {
                                                                  addr256:
                                                                  while(true)
                                                                  {
                                                                     this.§2!z§.push(_loc6_);
                                                                     §§goto(addr256);
                                                                  }
                                                                  addr234:
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.§#z§.push(_loc6_);
                                                                     loop8:
                                                                     while(true)
                                                                     {
                                                                        addr181:
                                                                        loop9:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§ !u§);
                                                                           if(_loc11_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!(_loc10_ && param2))
                                                                                 {
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             §§push(this.§ !u§);
                                                                                             break;
                                                                                          }
                                                                                          continue loop7;
                                                                                       }
                                                                                       addr220:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             continue loop8;
                                                                                          }
                                                                                          this.§+!t§.push(_loc6_);
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc11_ || this)
                                                                                       {
                                                                                          continue loop9;
                                                                                       }
                                                                                       continue loop6;
                                                                                    }
                                                                                 }
                                                                                 addr204:
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    if(true)
                                                                                    {
                                                                                       addr285:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr285:
                                                                                    }
                                                                                    continue loop0;
                                                                                    return _loc6_;
                                                                                 }
                                                                                 addr239:
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                              }
                                                                              §§goto(addr285);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§pop().§ "&§(_loc6_);
                                                                        §§goto(addr204);
                                                                     }
                                                                  }
                                                                  addr280:
                                                               }
                                                               §§goto(addr239);
                                                            }
                                                            continue loop11;
                                                         }
                                                      }
                                                      addr262:
                                                   }
                                                   §§goto(addr234);
                                                }
                                                §§goto(addr280);
                                             }
                                          }
                                          §§goto(addr262);
                                       }
                                       §§goto(addr285);
                                    }
                                    §§goto(addr173);
                                 }
                              }
                              §§goto(addr171);
                           }
                           else
                           {
                              addr85:
                              if(§§pop() >= §%L§)
                              {
                                 if(_loc11_)
                                 {
                                    throw new Error("Invalid object id: " + param2 + ". Has to be less than " + §%L§);
                                 }
                              }
                              else
                              {
                                 §§goto(addr106);
                              }
                              §§goto(addr125);
                           }
                        }
                        §§goto(addr85);
                     }
                     §§goto(addr51);
                  }
                  else
                  {
                     §§goto(addr85);
                     §§push(param2);
                  }
               }
            }
            §§goto(addr85);
         }
         §§goto(addr51);
      }
      
      protected function §4!t§() : String
      {
         return "INGAME_TEXTURE_SAND_1";
      }
      
      protected function §3W§(param1:§8K§, param2:§6![§.Sprite, param3:§5!v§, param4:§9B§, param5:int, param6:Number = 1.0) : §<!r§
      {
         return new §[4§(param2,param3,this.§<Y§.§5!u§.§-#§,param4,param1,param6,param5);
      }
      
      protected function §5'§(param1:§8K§, param2:§6![§.Sprite, param3:§5!v§, param4:§9B§, param5:int, param6:Number = 1.0) : §<!r§
      {
         return new §2!-§(param2,param3,this.§<Y§.§5!u§.§-#§,param4,param1,param6,param5);
      }
      
      protected function §[!K§(param1:§8K§, param2:§6![§.Sprite, param3:Boolean = true, param4:Number = 1.0) : §<!r§
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc5_:§9B§;
         if(!(_loc5_ = this.§<Y§.levelItemManager.§"!?§(param1.type)))
         {
            if(!(_loc10_ && this))
            {
               return null;
            }
         }
         §§push(_loc5_.itemName);
         if(_loc9_)
         {
            §§push(§§pop());
         }
         var _loc6_:*;
         §§push(_loc6_ = §§pop());
         if(!(_loc10_ && this))
         {
            if(§§pop().substr(0,13) == "BLOCK_STATIC_")
            {
               if(!_loc10_)
               {
                  §§push(this.§4!t§());
                  if(_loc9_)
                  {
                     addr61:
                     _loc6_ = §§pop();
                  }
                  §§goto(addr61);
               }
            }
            var _loc7_:§5!v§ = this.§<Y§.§5-§.§#w§(_loc6_);
            var _loc8_:§<!r§ = null;
            if(_loc9_)
            {
               §§push(param1.type);
               if(!(_loc10_ && param1))
               {
                  if(§§pop().indexOf("BIRD") == 0)
                  {
                     if(!_loc10_)
                     {
                        _loc8_ = this.addObjectBird(param1,param2,_loc7_,_loc5_,param4,param3);
                     }
                     else
                     {
                        addr172:
                        §§push(_loc5_.itemName);
                        if(!(_loc10_ && param2))
                        {
                           addr181:
                           if(§§pop().indexOf("TNT") >= 0)
                           {
                              if(_loc9_)
                              {
                                 addr187:
                                 _loc8_ = this.§3W§(param1,param2,_loc7_,_loc5_,§@q§.§]!Q§,param4);
                              }
                              else
                              {
                                 addr204:
                                 _loc8_ = this.§5'§(param1,param2,_loc7_,_loc5_,§@q§.§5!]§,param4);
                              }
                              addr257:
                              return _loc8_;
                              addr233:
                           }
                           else
                           {
                              addr201:
                              if(_loc5_.itemName == §@!O§.§#5§)
                              {
                                 §§goto(addr204);
                              }
                              else
                              {
                                 _loc8_ = new §>!9§(param2,_loc7_,this.§<Y§.§5!u§.§-#§,_loc5_,param1,param4,_loc5_.particleJSONId,_loc5_.particleVariationCount);
                              }
                              §§goto(addr233);
                           }
                           §§goto(addr204);
                        }
                        §§goto(addr201);
                     }
                  }
                  else
                  {
                     §§push(_loc5_.itemType);
                     if(!_loc10_)
                     {
                        §§push(§9B§.§;!b§);
                        if(_loc9_)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(_loc9_)
                              {
                                 _loc8_ = this.§1b§(param1,param2,_loc7_,_loc5_,param4);
                                 §§goto(addr257);
                              }
                              else
                              {
                                 §§goto(addr204);
                              }
                           }
                           else
                           {
                              §§push(_loc5_.itemType);
                              if(_loc9_ || param2)
                              {
                                 §§push(§9B§.§6,§);
                                 if(_loc9_)
                                 {
                                    addr144:
                                    §§push(§§pop() == §§pop());
                                    if(!(_loc10_ && param2))
                                    {
                                       if(!§§pop())
                                       {
                                          if(_loc9_)
                                          {
                                             §§pop();
                                             if(!(_loc10_ && param1))
                                             {
                                                addr169:
                                                if(_loc5_.itemType == §9B§.§>!?§)
                                                {
                                                   if(_loc9_)
                                                   {
                                                      §§goto(addr172);
                                                   }
                                                }
                                                else
                                                {
                                                   _loc8_ = new §"_§(param2,_loc7_,this.§<Y§.§5!u§.§-#§,_loc5_,param1,param4);
                                                   §§goto(addr257);
                                                }
                                                §§goto(addr257);
                                             }
                                             §§goto(addr204);
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr169);
                           }
                           §§goto(addr257);
                        }
                        §§goto(addr144);
                     }
                     §§goto(addr169);
                  }
                  §§goto(addr257);
               }
               §§goto(addr181);
            }
            §§goto(addr187);
         }
         §§goto(addr61);
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean, param4:Number, param5:Number, param6:int) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            this.§<Y§.addScore(param1,§!]§.§%!&§,param3,param4,param5,param6);
         }
      }
      
      public function §-!,§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         if(!(_loc16_ && param3))
         {
            this.§<Y§.particles.§-!,§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         }
      }
      
      public function §+!v§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         if(_loc17_ || param2)
         {
            this.§<Y§.particles.§+!v§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
         }
      }
      
      protected function §#!C§(param1:§"_§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:§#J§ = null;
         var _loc5_:§#J§ = null;
         var _loc6_:§<!r§ = null;
         var _loc7_:§<!r§ = null;
         §§push(param1.id);
         if(_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:* = int(this.§+!y§.length - 1);
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§+!y§[_loc3_];
            if(!(_loc9_ && this))
            {
               §§push(this.§+!y§[_loc3_].id1 == _loc2_);
               if(!_loc9_)
               {
                  if(!§§pop())
                  {
                     if(_loc8_ || _loc2_)
                     {
                        §§pop();
                        if(!(_loc8_ || _loc2_))
                        {
                           continue;
                        }
                        §§push(this.§+!y§[_loc3_].id2 == _loc2_);
                     }
                  }
               }
               if(§§pop())
               {
                  if(_loc8_ || _loc2_)
                  {
                     §§push(_loc4_.§%E§);
                     if(_loc8_ || _loc3_)
                     {
                        if(§§pop())
                        {
                           if(!_loc8_)
                           {
                              continue;
                           }
                           addr120:
                           _loc6_ = _loc4_.§%E§.§[d§().GetUserData() as §<!r§;
                           _loc7_ = _loc4_.§%E§.§#E§().GetUserData() as §<!r§;
                           if(_loc8_)
                           {
                              if(_loc6_)
                              {
                                 if(_loc8_)
                                 {
                                    _loc6_.§7+§(_loc7_);
                                    if(_loc8_)
                                    {
                                       addr145:
                                       if(_loc7_)
                                       {
                                          if(_loc8_ || this)
                                          {
                                          }
                                          addr157:
                                          _loc5_ = this.§+!y§.pop();
                                          if(!_loc9_)
                                          {
                                             if(_loc3_ < this.§+!y§.length)
                                             {
                                                if(!(_loc9_ && _loc3_))
                                                {
                                                   addr176:
                                                   this.§+!y§[_loc3_] = _loc5_;
                                                   if(_loc9_)
                                                   {
                                                   }
                                                   addr196:
                                                   §§push(_loc3_);
                                                   if(_loc8_)
                                                   {
                                                      §§push(§§pop() - 1);
                                                   }
                                                   _loc3_ = §§pop();
                                                   continue;
                                                }
                                             }
                                             this.§]!P§(_loc4_);
                                             §§goto(addr196);
                                          }
                                          §§goto(addr176);
                                       }
                                       §§goto(addr157);
                                    }
                                 }
                                 _loc7_.§7+§(_loc6_);
                                 §§goto(addr157);
                              }
                              §§goto(addr145);
                           }
                        }
                        §§goto(addr157);
                     }
                  }
                  §§goto(addr120);
               }
               §§goto(addr176);
            }
            §§goto(addr120);
         }
      }
      
      protected function §while§(param1:§%!%§) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(param1.id1);
         if(_loc8_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(param1.id2);
         if(_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:§#J§ = §#J§.§while§(param1);
         if(_loc8_ || _loc2_)
         {
            this.§+!y§.push(_loc4_);
         }
         var _loc5_:§<!r§ = this.§>o§(_loc2_);
         var _loc6_:§<!r§ = this.§>o§(_loc3_);
         if(_loc8_ || _loc2_)
         {
            §§push(Boolean(_loc5_));
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(§§pop())
                  {
                     while(!_loc7_)
                     {
                        if(_loc4_.type == §%!%§.§`!b§)
                        {
                           this.§ f§.push(new §1%§(_loc2_,_loc3_,_loc4_.§03§,param1.§!e§));
                           loop5:
                           while(true)
                           {
                              if(_loc8_)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    _loc5_.§"!$§(_loc6_);
                                    loop7:
                                    while(!(_loc7_ && _loc3_))
                                    {
                                       while(true)
                                       {
                                          _loc6_.§"!$§(_loc5_);
                                          if(!(_loc7_ && param1))
                                          {
                                             continue loop5;
                                          }
                                          continue loop7;
                                       }
                                    }
                                    addr181:
                                    while(true)
                                    {
                                       continue loop6;
                                    }
                                 }
                              }
                              else
                              {
                                 while(true)
                                 {
                                    _loc4_.§%E§ = this.§<Y§.§5!u§.§-#§.§6`§(_loc4_.§0^§(_loc5_,_loc6_));
                                 }
                                 addr160:
                              }
                              §§goto(addr181);
                           }
                        }
                        §§goto(addr160);
                     }
                     while(true)
                     {
                        §§push(Boolean(_loc6_));
                        if(!(_loc8_ || this))
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  return;
                  addr151:
               }
               while(true)
               {
                  §§pop();
                  §§goto(addr187);
               }
            }
         }
         §§goto(addr116);
      }
      
      protected function §]!P§(param1:§#J§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(param1.§%E§)
            {
               addr96:
               while(true)
               {
                  this.§<Y§.§5!u§.§-#§.§=!"§(param1.§%E§);
                  addr103:
                  while(true)
                  {
                  }
               }
               addr96:
            }
            for(; param1.§6!i§; §§goto(addr103))
            {
               if(_loc3_)
               {
                  §§push(this.§7"!§);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(param1.§6!i§);
                     if(!(_loc2_ && _loc3_))
                     {
                        if(§§pop().contains(§§pop()))
                        {
                           if(_loc3_)
                           {
                              if(_loc2_)
                              {
                                 continue;
                              }
                              if(_loc3_ || _loc2_)
                              {
                                 addr78:
                                 §§push(this.§7"!§);
                                 §§push(param1.§6!i§);
                              }
                              else
                              {
                                 §§goto(addr96);
                              }
                           }
                           addr82:
                           break;
                        }
                        break;
                     }
                     §§pop().removeChild(§§pop(),true);
                     §§goto(addr82);
                  }
                  §§goto(addr78);
               }
               §§goto(addr82);
            }
            return;
         }
         §§goto(addr96);
      }
      
      public function § !%§(param1:int, param2:Number, param3:Number, param4:int = -1) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§#!>§.push(§@q§.§0!@§(param1,param2,param3));
            do
            {
               this.§6§(param1);
            }
            while(!(_loc6_ || param1));
            
         }
      }
      
      protected function §6§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §'!c§.§3!f§("TntExplosions","ChannelExplosions");
         }
      }
      
      public function §+"§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            this.§#!>§.push(§@q§.§9D§(param1,param2,param3,param4,param5,param6));
            do
            {
               §'!c§.§3!f§("TntExplosions","ChannelExplosions");
            }
            while(!_loc7_);
            
         }
      }
      
      public function §;H§(param1:Number, param2:Number, param3:Number, param4:b2Vec2) : b2Vec2
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            if(!param4)
            {
               if(!(_loc6_ && param2))
               {
                  param4 = new b2Vec2();
               }
               §§goto(addr58);
            }
            param4.SetV(this.§<Y§.§5!u§.§-#§.§,§());
         }
         addr58:
         return param4;
      }
      
      public function get §2!M§() : Number
      {
         return this.§<Y§.§2!M§;
      }
      
      public function §>!v§(param1:Number, param2:Number) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§"_§ = null;
         var _loc3_:* = int(this.§2!z§.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(!_loc5_)
            {
               if(§§pop() < 0)
               {
                  break;
               }
               §§push(Boolean(_loc4_ = this.§2!z§[_loc3_] as §"_§));
               if(_loc6_)
               {
                  if(§§pop())
                  {
                     if(_loc6_ || this)
                     {
                        addr59:
                        §§pop();
                        if(_loc6_ || param2)
                        {
                           addr72:
                           if(_loc4_.isInCoordinates(param1,param2))
                           {
                              if(_loc5_ && _loc3_)
                              {
                                 continue;
                              }
                              addr80:
                              §§push(_loc3_);
                              if(_loc6_)
                              {
                                 return §§pop();
                              }
                              addr104:
                              §§push(§§pop() - 1);
                           }
                           else
                           {
                              §§push(_loc3_);
                              if(!(_loc5_ && param1))
                              {
                                 §§goto(addr104);
                              }
                           }
                           _loc3_ = §§pop();
                           continue;
                        }
                        §§goto(addr80);
                     }
                  }
                  §§goto(addr72);
               }
               §§goto(addr59);
            }
            break;
         }
         return §§pop();
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §"_§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§"_§ = null;
         var _loc3_:* = int(this.§2!z§.length - 1);
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§2!z§[_loc3_] as §"_§)
            {
               if(_loc5_ && param1)
               {
                  continue;
               }
               if(_loc4_.isInCoordinates(param1,param2))
               {
                  if(!_loc5_)
                  {
                     return _loc4_;
                  }
               }
            }
            §§push(_loc3_);
            if(_loc6_)
            {
               §§push(§§pop() - 1);
            }
            _loc3_ = §§pop();
         }
         return null;
      }
      
      public function getObject(param1:int) : §<!r§
      {
         return this.§2!z§[param1];
      }
      
      public function §>o§(param1:int) : §"_§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§<!r§ = null;
         var _loc3_:§"_§ = null;
         var _loc4_:int = 0;
         var _loc5_:* = this.§2!z§;
         while(true)
         {
            for each(_loc2_ in _loc5_)
            {
               _loc3_ = _loc2_ as §"_§;
               if(_loc6_)
               {
                  break;
               }
               §§push(Boolean(_loc3_));
               if(!_loc6_)
               {
                  if(§§pop())
                  {
                     if(_loc7_)
                     {
                        §§pop();
                        if(!(_loc7_ || param1))
                        {
                           continue;
                        }
                        §§push(_loc3_.id == param1);
                     }
                  }
               }
               if(§§pop())
               {
                  if(_loc7_)
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc3_;
      }
      
      public function §]!w§(param1:String) : §"_§
      {
         return this.§]!Z§[param1];
      }
      
      public function §6!n§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = int(this.§2!z§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc4_);
            loop1:
            while(true)
            {
               §§push(0);
               loop2:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     loop3:
                     while(true)
                     {
                        this.§=!6§(param1);
                        loop4:
                        while(_loc5_)
                        {
                           §§push(int(this.§#z§.length - 1));
                           loop5:
                           while(true)
                           {
                              _loc4_ = §§pop();
                              loop6:
                              while(!_loc6_)
                              {
                                 if(!(_loc5_ || param2))
                                 {
                                    continue loop3;
                                 }
                                 if(!(_loc6_ && param2))
                                 {
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       if(_loc5_ || param1)
                                       {
                                          if(!_loc5_)
                                          {
                                             §§push(§§pop() - 1);
                                             _loc4_ = §§pop();
                                          }
                                          else
                                          {
                                             addr133:
                                          }
                                          §§push(0);
                                          if(_loc6_ && this)
                                          {
                                             break;
                                          }
                                          if(§§pop() >= §§pop())
                                          {
                                             this.§#z§[_loc4_].render(param1,param2,param3);
                                             while(true)
                                             {
                                                §§push(_loc4_);
                                                if(_loc5_)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   if(_loc6_ && this)
                                                   {
                                                      break;
                                                   }
                                                   if(_loc5_)
                                                   {
                                                      §§goto(addr64);
                                                      §§push(§§pop() - 1);
                                                   }
                                                }
                                                §§goto(addr64);
                                             }
                                          }
                                          if(_loc5_)
                                          {
                                             return;
                                          }
                                          loop8:
                                          while(!(_loc5_ || param1))
                                          {
                                             while(true)
                                             {
                                                _loc4_ = §§pop();
                                                continue loop8;
                                             }
                                          }
                                          if(_loc5_)
                                          {
                                             continue;
                                          }
                                          continue loop6;
                                          continue loop1;
                                          break loop4;
                                       }
                                       §§goto(addr64);
                                    }
                                    continue loop2;
                                 }
                                 addr156:
                                 §§push(_loc4_);
                                 §§goto(addr133);
                              }
                              continue loop4;
                           }
                        }
                        continue loop0;
                     }
                  }
                  else
                  {
                     this.§2!z§[_loc4_].render(param1,param2,param3);
                  }
                  §§goto(addr156);
               }
            }
         }
      }
      
      protected function §1w§(param1:Number, param2:Number) : Number
      {
         return 1 / param1;
      }
      
      protected function §[" §(param1:Number, param2:Number, param3:§"_§) : §1L§
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         §§push(param3.§^`§().GetPosition().x - param1);
         if(_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(param3.§^`§().GetPosition().y - param2);
         if(!_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         var _loc7_:§1L§;
         (_loc7_ = new §1L§()).§1_§ = _loc6_;
         if(_loc9_ || param1)
         {
            _loc7_.§;%§ = new Point(param3.§^`§().GetPosition().x,param3.§^`§().GetPosition().y);
         }
         return _loc7_;
      }
      
      protected function § C§(param1:§"_§, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            param1.applyDamage(param2,this,null,param3);
         }
      }
      
      protected function ignoreExplosion(param1:§"_§) : Boolean
      {
         return false;
      }
      
      protected function §,!j§() : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc1_:§@q§ = null;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§<!r§ = null;
         var _loc7_:§"_§ = null;
         var _loc8_:§1L§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Point = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         if(_loc17_)
         {
            if(!this.§ §)
            {
               if(_loc17_)
               {
                  return;
               }
            }
         }
         loop0:
         while(this.§#!>§.length > 0)
         {
            _loc1_ = this.§#!>§.shift();
            if(!_loc16_)
            {
               §§push(_loc1_.§'i§);
               loop1:
               while(true)
               {
                  §§push(Number(§§pop()));
                  loop2:
                  while(true)
                  {
                     _loc2_ = §§pop();
                     if(_loc16_)
                     {
                        continue loop0;
                     }
                     §§push(_loc1_.x);
                     loop3:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        loop4:
                        while(_loc17_)
                        {
                           _loc3_ = §§pop();
                           while(true)
                           {
                              §§push(_loc1_.y);
                              if(_loc17_ || this)
                              {
                                 §§push(Number(§§pop()));
                              }
                              continue loop3;
                              addr122:
                              if(!(_loc16_ && _loc3_))
                              {
                                 addr75:
                                 while(true)
                                 {
                                    §§push(_loc1_.damage);
                                    if(!_loc16_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    if(!_loc16_)
                                    {
                                       if(!(_loc16_ && _loc2_))
                                       {
                                          continue loop1;
                                       }
                                       continue loop4;
                                    }
                                    continue loop3;
                                 }
                                 continue loop1;
                                 addr75:
                              }
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
            this.§>e§(_loc1_,_loc3_,_loc4_,_loc2_);
         }
      }
      
      protected function §>e§(param1:§@q§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         if(!_loc9_)
         {
            this.§<Y§.particles.§-!,§(this.§2w§(param1.type),§!u§.§54§,§2_§.§9o§,param2,param3,600,"",§2_§.§4!Q§,0,0,0,0,1,20,true);
         }
         var _loc5_:* = 30;
         while(true)
         {
            §§push(_loc5_);
            if(_loc10_ || param2)
            {
               if(!_loc9_)
               {
                  if(!(_loc9_ && param3))
                  {
                     §§push(150);
                     if(_loc10_)
                     {
                        if(§§pop() >= §§pop())
                        {
                           if(_loc10_)
                           {
                              break;
                           }
                           loop1:
                           while(_loc9_)
                           {
                              loop2:
                              while(true)
                              {
                                 if(!(_loc9_ && param2))
                                 {
                                    if(!(_loc9_ && this))
                                    {
                                       §§push(_loc5_);
                                       if(!_loc10_)
                                       {
                                          break;
                                       }
                                       §§push(5);
                                       while(true)
                                       {
                                          if(_loc10_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc10_)
                                             {
                                                if(!_loc9_)
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         §§push(int(§§pop()));
                                                         break loop2;
                                                      }
                                                      addr210:
                                                      while(true)
                                                      {
                                                         §§push(param4);
                                                         if(_loc10_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc10_ || param1)
                                                            {
                                                               addr235:
                                                               §§push(§§pop() + Math.random() * param4);
                                                            }
                                                            loop6:
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               loop7:
                                                               while(true)
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  loop4:
                                                                  while(true)
                                                                  {
                                                                     §§push(1250);
                                                                     addr195:
                                                                     while(true)
                                                                     {
                                                                        §§push(Math.random() * 750);
                                                                        loop15:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           addr200:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              loop10:
                                                                              while(!_loc9_)
                                                                              {
                                                                                 addr203:
                                                                                 _loc7_ = §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       continue loop4;
                                                                                    }
                                                                                    §§push(_loc5_);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(180);
                                                                                       addr170:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() / Math.PI);
                                                                                          if(!(_loc10_ || param3))
                                                                                          {
                                                                                             continue loop15;
                                                                                          }
                                                                                          §§push(§§pop() / §§pop());
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             addr182:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   continue loop10;
                                                                                                }
                                                                                                if(_loc9_ && param1)
                                                                                                {
                                                                                                   continue loop6;
                                                                                                }
                                                                                                _loc8_ = §§pop();
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§<Y§.particles);
                                                                                                   §§push(§2_§.§#=§);
                                                                                                   §§push(§!u§.§54§);
                                                                                                   §§push(§2_§.§4d§);
                                                                                                   §§push(param2);
                                                                                                   §§push(param3);
                                                                                                   §§push(_loc7_);
                                                                                                   §§push("");
                                                                                                   §§push(§2_§.§4!Q§);
                                                                                                   §§push(_loc6_);
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      §§push(§§pop() * Math.cos(_loc8_));
                                                                                                   }
                                                                                                   §§push(_loc6_);
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      §§push(-§§pop());
                                                                                                      if(!(_loc9_ && this))
                                                                                                      {
                                                                                                         §§push(§§pop() * Math.sin(_loc8_));
                                                                                                      }
                                                                                                   }
                                                                                                   §§pop().§-!,§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),20,0);
                                                                                                   continue loop2;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr203);
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
                                                         §§goto(addr235);
                                                      }
                                                   }
                                                   §§goto(addr200);
                                                }
                                                §§goto(addr181);
                                             }
                                             §§goto(addr182);
                                          }
                                          §§goto(addr170);
                                       }
                                    }
                                    §§goto(addr204);
                                 }
                                 §§goto(addr192);
                              }
                              while(true)
                              {
                                 _loc5_ = §§pop();
                                 continue loop1;
                              }
                           }
                           continue;
                        }
                        §§push(0.75);
                        §§goto(addr210);
                     }
                     §§goto(addr85);
                  }
                  §§goto(addr195);
               }
               §§goto(addr169);
            }
            §§goto(addr97);
         }
      }
      
      protected function §2w§(param1:int) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(_loc3_)
         {
         }
         switch(§§pop())
         {
         }
         return §2_§.§>k§;
      }
      
      public function §`!w§(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§"_§ = null;
         var _loc2_:§<!r§ = null;
         var _loc3_:* = int(this.§2!z§.length - 1);
         loop0:
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§2!z§[_loc3_];
            if(_loc5_ || param1)
            {
               if(_loc2_.removeOnNextUpdate)
               {
                  if(!_loc6_)
                  {
                     this.§@o§(_loc3_,true);
                     if(!(_loc5_ || _loc2_))
                     {
                        addr71:
                        _loc4_ = _loc2_ as §"_§;
                        if(!_loc6_)
                        {
                           §§push(this.objectIsOutOfBounds(_loc2_));
                           loop1:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!_loc6_)
                                 {
                                    addr179:
                                    if(_loc4_)
                                    {
                                       while(true)
                                       {
                                          _loc4_.§]Y§(§,4§.§ !x§);
                                          addr165:
                                          if(!(_loc5_ || _loc2_))
                                          {
                                             continue;
                                          }
                                          addr186:
                                          §§push(_loc3_);
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             §§push(§§pop() - 1);
                                          }
                                          _loc3_ = §§pop();
                                          continue loop0;
                                          addr172:
                                       }
                                       addr181:
                                    }
                                    while(true)
                                    {
                                       §§push(this);
                                       §§push(_loc3_);
                                       §§push(_loc4_ is §?!z§);
                                       if(_loc5_)
                                       {
                                          §§push(!§§pop());
                                       }
                                       §§pop().§@o§(§§pop(),§§pop());
                                       §§goto(addr165);
                                    }
                                    §§goto(addr172);
                                 }
                                 §§goto(addr181);
                              }
                              else
                              {
                                 §§push(Boolean(_loc4_));
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             while(_loc5_ || _loc2_)
                                             {
                                                _loc4_.§]Y§(§,4§.§ !x§);
                                                while(true)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr165);
                                                }
                                                §§goto(addr186);
                                             }
                                             §§goto(addr165);
                                          }
                                          §§goto(addr186);
                                          continue loop1;
                                       }
                                       continue loop1;
                                       addr131:
                                    }
                                    §§goto(addr153);
                                    if(!(_loc5_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    §§goto(addr111);
                                    §§push(Boolean(§§pop()));
                                 }
                              }
                              §§goto(addr186);
                           }
                        }
                        §§goto(addr179);
                     }
                     else
                     {
                        addr59:
                     }
                     §§goto(addr186);
                  }
                  §§goto(addr59);
               }
               else
               {
                  this.§7",§(_loc2_,param1);
                  if(!(_loc5_ || _loc2_))
                  {
                     continue;
                  }
               }
               §§goto(addr71);
            }
            §§goto(addr59);
         }
         if(_loc5_ || _loc2_)
         {
            this.§!!!§(param1);
            if(!(_loc6_ && param1))
            {
               this.§,!j§();
               while(true)
               {
                  §§push(this.§ !u§);
                  if(_loc5_ || _loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc5_ || _loc3_)
                        {
                           continue;
                        }
                        addr260:
                     }
                     return;
                  }
                  break;
               }
               §§pop().update(param1);
            }
         }
         §§goto(addr260);
      }
      
      protected function §7",§(param1:§<!r§, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            param1.update(param2,this);
         }
      }
      
      protected function §=!6§(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§!`§ = null;
         var _loc3_:* = int(this.§#z§.length - 1);
         loop0:
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§#z§[_loc3_];
            if(_loc4_ || param1)
            {
               if(!_loc2_.removeOnNextUpdate)
               {
                  _loc2_.update(param1,this);
                  loop5:
                  while(true)
                  {
                     addr51:
                     while(true)
                     {
                        §§push(_loc3_);
                        if(_loc4_ || param1)
                        {
                           §§push(§§pop() - 1);
                        }
                        _loc3_ = §§pop();
                        if(_loc4_)
                        {
                           break;
                        }
                        continue loop5;
                     }
                     if(_loc4_)
                     {
                        addr66:
                        if(!(_loc5_ && param1))
                        {
                           if(false)
                           {
                              while(true)
                              {
                                 §§goto(addr51);
                              }
                              addr75:
                           }
                           continue loop0;
                        }
                        while(true)
                        {
                           this.§;D§(_loc3_);
                           §§goto(addr66);
                        }
                        addr96:
                     }
                     while(true)
                     {
                        §§goto(addr75);
                     }
                  }
                  addr82:
               }
               §§goto(addr96);
            }
            §§goto(addr82);
         }
      }
      
      protected function §!!!§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§!!S§(param1);
            do
            {
               this.§;!9§();
            }
            while(_loc2_ && param1);
            
         }
      }
      
      protected function §!!S§(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§1%§ = null;
         var _loc4_:§<!r§ = null;
         var _loc2_:* = int(this.§ f§.length - 1);
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§ f§[_loc2_];
            if(!(_loc6_ && param1))
            {
               §§push(_loc3_.§1Z§);
               if(!(_loc6_ && this))
               {
                  if(§§pop())
                  {
                     if(_loc5_ || _loc3_)
                     {
                        §§push(_loc3_.update(param1));
                        if(_loc5_)
                        {
                           addr75:
                           if(!§§pop())
                           {
                              if(!_loc5_)
                              {
                                 continue;
                              }
                              addr78:
                              §§push(_loc3_.§#!8§);
                           }
                           addr131:
                           §§push(_loc2_);
                           if(!_loc6_)
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc2_ = §§pop();
                           continue;
                        }
                        if(!§§pop())
                        {
                           if(!_loc5_)
                           {
                              continue;
                           }
                           §§push(this.§>o§(_loc3_.objectId1));
                           if(!_loc6_)
                           {
                              _loc4_ = §§pop();
                              if(_loc5_)
                              {
                                 this.removeObject(_loc4_,true);
                                 addr97:
                                 §§push(this.§>o§(_loc3_.objectId2));
                              }
                              §§goto(addr97);
                           }
                           _loc4_ = §§pop();
                           if(!(_loc6_ && _loc3_))
                           {
                              this.removeObject(_loc4_,true);
                              if(!_loc5_)
                              {
                              }
                              §§goto(addr131);
                           }
                           this.§ f§.splice(_loc2_,1);
                           §§goto(addr131);
                        }
                        §§goto(addr97);
                     }
                     §§goto(addr78);
                  }
                  §§goto(addr131);
               }
               §§goto(addr75);
            }
            §§goto(addr78);
         }
      }
      
      private function §7F§(param1:§#J§) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc2_:§"_§ = param1.debug_object_1;
         var _loc3_:§"_§ = param1.debug_object_2;
         if(!(_loc10_ && param1))
         {
            if(!_loc2_)
            {
               if(_loc11_)
               {
                  addr36:
                  §§push(this.§>o§(param1.id1));
                  if(!_loc10_)
                  {
                     _loc2_ = §§pop();
                     if(_loc11_)
                     {
                        param1.debug_object_1 = _loc2_;
                        addr49:
                        if(!_loc3_)
                        {
                           addr55:
                           _loc3_ = this.§>o§(param1.id2);
                           if(!(_loc10_ && param1))
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
                        if(_loc11_)
                        {
                           §§push(param1.§6!i§);
                           loop0:
                           while(true)
                           {
                              if(§§pop() == null)
                              {
                                 if(!(_loc10_ && this))
                                 {
                                    param1.§6!i§ = new § !f§(4,4,4294901760);
                                 }
                                 loop1:
                                 while(true)
                                 {
                                    this.§7"!§.addChild(param1.§6!i§);
                                    while(true)
                                    {
                                       addr190:
                                       if(!(_loc11_ || param1))
                                       {
                                          continue;
                                       }
                                       §§push(param1.§6!i§);
                                       if(!(_loc10_ && _loc2_))
                                       {
                                          addr143:
                                          §§push(_loc9_);
                                          if(!(_loc10_ && _loc2_))
                                          {
                                             addr151:
                                             if(_loc11_ || _loc2_)
                                             {
                                                addr158:
                                                §§pop().rotation = §§pop();
                                                if(_loc10_ && this)
                                                {
                                                   addr230:
                                                   while(true)
                                                   {
                                                      if(!_loc10_)
                                                      {
                                                         if(_loc11_ || this)
                                                         {
                                                            §§goto(addr190);
                                                         }
                                                         break;
                                                      }
                                                      continue loop1;
                                                      §§goto(addr158);
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(param1.§6!i§);
                                                      addr201:
                                                      while(_loc11_ || this)
                                                      {
                                                         §§push(_loc5_);
                                                         while(true)
                                                         {
                                                            §§pop().y = §§pop();
                                                            continue loop1;
                                                            §§goto(addr151);
                                                         }
                                                      }
                                                      continue loop0;
                                                   }
                                                   addr181:
                                                   addr230:
                                                }
                                                return;
                                             }
                                             §§goto(addr209);
                                          }
                                          while(!(_loc10_ && this))
                                          {
                                             §§pop().width = §§pop();
                                             §§goto(addr181);
                                             §§goto(addr143);
                                          }
                                          while(true)
                                          {
                                             §§pop().x = §§pop();
                                             §§goto(addr230);
                                             §§goto(addr173);
                                          }
                                          addr173:
                                          addr229:
                                       }
                                       while(true)
                                       {
                                          if(!_loc10_)
                                          {
                                             §§goto(addr143);
                                             §§push(_loc8_);
                                          }
                                          break;
                                          §§goto(addr197);
                                       }
                                       addr197:
                                       §§goto(addr201);
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§push(param1.§6!i§);
                                 continue loop0;
                              }
                           }
                        }
                        §§goto(addr230);
                     }
                     §§goto(addr49);
                  }
               }
               §§goto(addr55);
            }
            §§goto(addr49);
         }
         §§goto(addr36);
      }
      
      protected function §!P§(param1:Number, param2:Number, param3:Number) : Number
      {
         return 0.01;
      }
      
      private function §;!9§() : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc1_:§#J§ = null;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         loop0:
         for each(_loc1_ in this.§+!y§)
         {
            if(_loc11_ || this)
            {
               §§push(§,!U§);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        this.§7F§(_loc1_);
                        addr633:
                        while(true)
                        {
                        }
                        addr340:
                        if(_loc10_ && _loc1_)
                        {
                           continue;
                        }
                        §§push(_loc7_);
                        loop36:
                        while(true)
                        {
                           if(!_loc10_)
                           {
                              addr242:
                              if(!(_loc10_ && _loc1_))
                              {
                                 §§push(_loc3_);
                                 loop37:
                                 while(true)
                                 {
                                    if(_loc11_)
                                    {
                                       if(!(_loc10_ && _loc3_))
                                       {
                                          §§push(§§pop() >= §§pop());
                                          loop38:
                                          for(; !_loc10_; while(_loc11_ || _loc1_)
                                          {
                                             if(!_loc10_)
                                             {
                                                §§goto(addr184);
                                             }
                                             §§goto(addr330);
                                             if(_loc10_ && _loc3_)
                                             {
                                                continue;
                                             }
                                             if(!_loc10_)
                                             {
                                                if(!_loc10_)
                                                {
                                                   §§goto(addr107);
                                                }
                                                §§goto(addr520);
                                             }
                                             §§goto(addr501);
                                          })
                                          {
                                             loop39:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop40:
                                                while(true)
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      if(_loc11_)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            loop41:
                                                            while(!(_loc10_ && this))
                                                            {
                                                               §§pop();
                                                               loop42:
                                                               while(!(_loc10_ && _loc2_))
                                                               {
                                                                  if(!_loc10_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc5_);
                                                                        addr165:
                                                                        loop44:
                                                                        while(true)
                                                                        {
                                                                           if(_loc11_)
                                                                           {
                                                                              if(_loc11_)
                                                                              {
                                                                                 §§push(0);
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(§§pop() < §§pop());
                                                                                    continue loop38;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() > §§pop());
                                                                                    break loop41;
                                                                                 }
                                                                                 addr320:
                                                                              }
                                                                              while(!(_loc10_ && _loc1_))
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    addr314:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc5_ = §§pop();
                                                                                       addr315:
                                                                                       while(!_loc10_)
                                                                                       {
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             §§goto(addr320);
                                                                                             §§push(0);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc3_);
                                                                                             addr495:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc6_);
                                                                                                addr496:
                                                                                                addr403:
                                                                                                loop69:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   addr497:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() >= §§pop());
                                                                                                      addr498:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         addr499:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            break loop40;
                                                                                                            addr420:
                                                                                                            while(_loc11_ || _loc3_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     break loop42;
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop69;
                                                                                                   }
                                                                                                }
                                                                                                if(_loc10_ && _loc3_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                §§push(_loc6_);
                                                                                                if(!(_loc10_ && _loc3_))
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   break loop37;
                                                                                                }
                                                                                                §§goto(addr496);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr393:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             §§push(_loc2_);
                                                                                             if(!(_loc10_ && _loc3_))
                                                                                             {
                                                                                                §§goto(addr403);
                                                                                             }
                                                                                             break loop37;
                                                                                          }
                                                                                          addr507:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(0);
                                                                                             addr508:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() > §§pop());
                                                                                                break loop38;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr495);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(!_loc10_)
                                                                              {
                                                                                 break loop44;
                                                                              }
                                                                              loop55:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 loop56:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc5_ = §§pop();
                                                                                    loop57:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§!P§(_loc3_,_loc2_,_loc5_));
                                                                                       addr542:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             while(!(_loc10_ && _loc2_))
                                                                                             {
                                                                                                _loc6_ = §§pop();
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr507);
                                                                                                }
                                                                                             }
                                                                                             continue loop56;
                                                                                             addr545:
                                                                                          }
                                                                                          loop19:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc3_ = §§pop();
                                                                                             addr589:
                                                                                             addr569:
                                                                                             loop20:
                                                                                             while(_loc1_.type != §%!%§.§^§)
                                                                                             {
                                                                                                if(_loc1_.type != §%!%§.§!!C§)
                                                                                                {
                                                                                                   continue loop0;
                                                                                                }
                                                                                                loop21:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc11_ || _loc1_)
                                                                                                   {
                                                                                                      §§push(_loc1_.§%E§);
                                                                                                      while(!_loc10_)
                                                                                                      {
                                                                                                         §§push((§§pop() as b2RevoluteJoint).§@-§());
                                                                                                         break loop36;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push((§§pop() as b2PrismaticJoint).§#0§());
                                                                                                         addr574:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc11_ || _loc3_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc4_ = §§pop();
                                                                                                                  addr583:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc1_.§%E§);
                                                                                                                     addr557:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        continue loop55;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr582:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc2_ = §§pop();
                                                                                                                  addr600:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     continue loop19;
                                                                                                                  }
                                                                                                               }
                                                                                                               addr599:
                                                                                                            }
                                                                                                         }
                                                                                                         break loop20;
                                                                                                      }
                                                                                                      addr571:
                                                                                                      addr365:
                                                                                                   }
                                                                                                   break;
                                                                                                   addr331:
                                                                                                   addr521:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc11_ || _loc2_))
                                                                                                      {
                                                                                                         continue loop21;
                                                                                                      }
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§goto(addr340);
                                                                                                   }
                                                                                                   while(!(_loc10_ && _loc3_))
                                                                                                   {
                                                                                                      if(_loc10_ && _loc1_)
                                                                                                      {
                                                                                                         break loop20;
                                                                                                      }
                                                                                                      §§goto(addr494);
                                                                                                      §§push(_loc4_);
                                                                                                   }
                                                                                                   continue loop57;
                                                                                                }
                                                                                                §§goto(addr348);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr571);
                                                                                                §§goto(addr528);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr455:
                                                                              addr295:
                                                                           }
                                                                           §§goto(addr303);
                                                                        }
                                                                        while(!_loc10_)
                                                                        {
                                                                           §§push(§§pop() < §§pop());
                                                                           if(_loc11_)
                                                                           {
                                                                              addr463:
                                                                              if(_loc11_ || _loc2_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       addr472:
                                                                                       loop79:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc10_ && _loc1_))
                                                                                          {
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                §§pop();
                                                                                                while(_loc11_)
                                                                                                {
                                                                                                   if(!(_loc10_ && this))
                                                                                                   {
                                                                                                      §§goto(addr393);
                                                                                                      §§push(_loc4_);
                                                                                                   }
                                                                                                   §§goto(addr600);
                                                                                                }
                                                                                                while(_loc11_)
                                                                                                {
                                                                                                   §§goto(addr455);
                                                                                                   §§push(_loc5_);
                                                                                                }
                                                                                                §§goto(addr553);
                                                                                                addr482:
                                                                                                addr502:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                addr617:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Boolean(_loc1_.§ ]§));
                                                                                                   addr605:
                                                                                                   while(true)
                                                                                                   {
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr616:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             addr607:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      addr609:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Boolean(_loc1_.§'"&§));
                                                                                                      }
                                                                                                   }
                                                                                                   addr608:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   addr595:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§goto(addr599);
                                                                                                      }
                                                                                                      §§goto(addr463);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             continue loop79;
                                                                                          }
                                                                                       }
                                                                                       addr472:
                                                                                    }
                                                                                    §§goto(addr427);
                                                                                 }
                                                                                 addr471:
                                                                              }
                                                                              §§goto(addr595);
                                                                           }
                                                                           §§goto(addr472);
                                                                        }
                                                                        §§goto(addr508);
                                                                     }
                                                                     addr163:
                                                                  }
                                                                  §§goto(addr589);
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!(_loc10_ && _loc3_))
                                                                  {
                                                                     if(!_loc10_)
                                                                     {
                                                                        addr440:
                                                                        §§push(_loc1_.§%E§ as b2PrismaticJoint);
                                                                        §§push(_loc5_);
                                                                        if(_loc11_ || _loc2_)
                                                                        {
                                                                           §§push(-§§pop());
                                                                        }
                                                                        §§pop().§"!v§(§§pop());
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr633);
                                                                     }
                                                                     §§goto(addr452);
                                                                  }
                                                                  §§goto(addr617);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               addr322:
                                                               addr519:
                                                               while(_loc11_ || _loc2_)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     continue loop39;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     §§goto(addr331);
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        §§goto(addr521);
                                                                     }
                                                                     addr520:
                                                                  }
                                                                  §§goto(addr498);
                                                               }
                                                            }
                                                            addr269:
                                                         }
                                                         else
                                                         {
                                                            addr107:
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  continue loop0;
                                                               }
                                                               if(_loc11_ || _loc2_)
                                                               {
                                                                  if(_loc11_ || _loc1_)
                                                                  {
                                                                     if(!(_loc10_ && _loc3_))
                                                                     {
                                                                        if(!_loc10_)
                                                                        {
                                                                           §§push(_loc1_.§%E§);
                                                                           if(_loc11_)
                                                                           {
                                                                              if(_loc11_)
                                                                              {
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    §§push(§§pop() as b2RevoluteJoint);
                                                                                    §§push(_loc5_);
                                                                                    if(!(_loc10_ && _loc3_))
                                                                                    {
                                                                                       §§push(-§§pop());
                                                                                    }
                                                                                    §§pop().§"!v§(§§pop());
                                                                                    addr152:
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       addr154:
                                                                                       if(_loc11_ || this)
                                                                                       {
                                                                                          if(true)
                                                                                          {
                                                                                             continue loop0;
                                                                                          }
                                                                                          §§goto(addr163);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    addr228:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          if(!(_loc10_ && this))
                                                                                          {
                                                                                             §§push(_loc7_);
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                continue loop36;
                                                                                             }
                                                                                             §§goto(addr165);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr277);
                                                                                    }
                                                                                    §§goto(addr482);
                                                                                    §§goto(addr429);
                                                                                 }
                                                                                 §§goto(addr557);
                                                                              }
                                                                              §§goto(addr440);
                                                                           }
                                                                           while(!_loc10_)
                                                                           {
                                                                              §§goto(addr295);
                                                                              §§push((§§pop() as b2RevoluteJoint).§7"%§());
                                                                           }
                                                                           §§goto(addr365);
                                                                           addr290:
                                                                        }
                                                                        §§goto(addr596);
                                                                     }
                                                                     §§goto(addr583);
                                                                  }
                                                                  §§goto(addr331);
                                                               }
                                                               §§goto(addr152);
                                                            }
                                                            while(true)
                                                            {
                                                               if(_loc11_ || _loc3_)
                                                               {
                                                                  §§goto(addr290);
                                                                  §§push(_loc1_.§%E§);
                                                               }
                                                               break;
                                                               §§goto(addr154);
                                                            }
                                                            §§goto(addr609);
                                                            addr107:
                                                            addr383:
                                                         }
                                                         §§goto(addr277);
                                                      }
                                                      §§goto(addr607);
                                                   }
                                                   §§push(§§pop());
                                                   addr184:
                                                   break;
                                                   if(!(_loc11_ || _loc3_))
                                                   {
                                                      continue;
                                                   }
                                                   if(!(_loc10_ && _loc3_))
                                                   {
                                                      if(_loc11_ || _loc2_)
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  if(!_loc10_)
                                                                  {
                                                                     if(_loc11_)
                                                                     {
                                                                        if(_loc11_ || this)
                                                                        {
                                                                           continue loop1;
                                                                        }
                                                                        §§goto(addr472);
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr269);
                                                                  §§goto(addr498);
                                                               }
                                                               §§goto(addr420);
                                                               addr209:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr107);
                                                            }
                                                            §§goto(addr277);
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               §§goto(addr616);
                                                            }
                                                            §§goto(addr605);
                                                         }
                                                         addr615:
                                                      }
                                                      §§goto(addr471);
                                                   }
                                                   §§goto(addr322);
                                                }
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         §§goto(addr502);
                                                      }
                                                      addr501:
                                                   }
                                                   §§goto(addr348);
                                                   §§goto(addr499);
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             if(_loc11_)
                                             {
                                                addr511:
                                                if(_loc11_ || this)
                                                {
                                                   §§goto(addr519);
                                                   §§push(§§pop());
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr615);
                                                   §§goto(addr511);
                                                }
                                                addr614:
                                             }
                                             §§goto(addr608);
                                             §§goto(addr508);
                                          }
                                       }
                                       break;
                                    }
                                    §§goto(addr314);
                                    addr78:
                                    §§push(_loc2_);
                                    if(_loc10_ && this)
                                    {
                                       continue;
                                    }
                                    if(_loc11_ || this)
                                    {
                                       §§push(§§pop() <= §§pop());
                                       if(_loc11_)
                                       {
                                          §§goto(addr96);
                                       }
                                       §§goto(addr209);
                                    }
                                    §§goto(addr497);
                                 }
                                 while(true)
                                 {
                                    §§goto(addr420);
                                 }
                              }
                              break;
                           }
                           §§goto(addr315);
                        }
                        while(true)
                        {
                           if(!(_loc10_ && this))
                           {
                              §§goto(addr378);
                              §§push(Number(§§pop()));
                           }
                           break;
                           §§goto(addr242);
                        }
                        §§goto(addr582);
                     }
                  }
                  while(true)
                  {
                     §§goto(addr614);
                  }
               }
            }
            §§goto(addr569);
         }
      }
      
      public function §&!h§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§#J§ = null;
         while(this.§+!y§.length > 0)
         {
            _loc1_ = this.§+!y§.pop();
            if(!(_loc2_ && _loc2_))
            {
               this.§]!P§(_loc1_);
            }
         }
      }
      
      public function objectIsOutOfBounds(param1:§<!r§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§[w§(param1);
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
                        if(!(_loc2_ && _loc3_))
                        {
                           §§push(§§pop());
                           loop3:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    addr195:
                                    loop5:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       addr196:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          loop9:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop10:
                                             while(!_loc2_)
                                             {
                                                if(§§pop())
                                                {
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      if(!(_loc3_ || _loc3_))
                                                      {
                                                         break;
                                                      }
                                                      §§push(Boolean(param1.§^`§()));
                                                      addr128:
                                                      if(_loc2_ && this)
                                                      {
                                                         continue;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         §"_§(param1).updateOutOfBounds(this);
                                                         loop18:
                                                         while(true)
                                                         {
                                                            if(_loc3_ || this)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(true);
                                                                  loop20:
                                                                  while(true)
                                                                  {
                                                                     if(_loc3_ || _loc3_)
                                                                     {
                                                                        addr48:
                                                                        if(!_loc2_)
                                                                        {
                                                                           return §§pop();
                                                                           addr157:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(!(_loc3_ || param1))
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              continue loop9;
                                                                           }
                                                                           addr99:
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(false);
                                                                                    if(!(_loc3_ || param1))
                                                                                    {
                                                                                       continue loop20;
                                                                                    }
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    addr225:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       break loop11;
                                                                                    }
                                                                                 }
                                                                                 return §§pop();
                                                                                 addr25:
                                                                              }
                                                                              if(_loc2_ && this)
                                                                              {
                                                                                 continue loop18;
                                                                              }
                                                                              §§push(param1 is §"_§);
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc3_ || _loc3_))
                                                                                 {
                                                                                    continue loop9;
                                                                                 }
                                                                                 §§goto(addr128);
                                                                                 continue loop20;
                                                                              }
                                                                              §§goto(addr48);
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
                                                                  §§push(this.§6!5§(param1.§^`§().GetPosition().x,param1.§^`§().GetPosition().y));
                                                                  if(!(_loc2_ && this))
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     if(_loc3_ || param1)
                                                                     {
                                                                        §§goto(addr99);
                                                                     }
                                                                  }
                                                                  continue loop18;
                                                               }
                                                               addr176:
                                                            }
                                                            §§goto(addr111);
                                                         }
                                                      }
                                                      §§goto(addr39);
                                                   }
                                                   continue loop1;
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr157);
                                                }
                                             }
                                             continue loop3;
                                          }
                                          continue loop5;
                                       }
                                    }
                                 }
                                 addr194:
                              }
                           }
                        }
                        §§goto(addr225);
                        addr233:
                        §§push(param1.levelItem);
                        if(!_loc3_)
                        {
                           continue;
                        }
                        §§push(§§pop().getItemBodyType() == §#c§.§9&§);
                        if(!(_loc2_ && this))
                        {
                           §§goto(addr194);
                           §§push(!§§pop());
                        }
                        §§goto(addr195);
                     }
                  }
               }
               §§goto(addr196);
            }
         }
         §§goto(addr25);
      }
      
      protected function §[w§(param1:§<!r§) : void
      {
      }
      
      public function §+6§(param1:Number, param2:Number) : Boolean
      {
         return this.§<Y§.camera.isOutOfCamera(param1,param2);
      }
      
      public function §6!5§(param1:Number, param2:Number) : Boolean
      {
         return this.§<Y§.§57§.§3" §(param1,param2);
      }
      
      public function §;D§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc2_)
         {
            if(param1 < 0)
            {
               if(_loc3_ || this)
               {
                  return;
               }
            }
         }
         var _loc2_:§!`§ = this.§#z§[param1];
         if(_loc3_ || _loc3_)
         {
            this.§@h§(_loc2_.sprite);
            loop0:
            while(true)
            {
               this.§#z§[param1] = null;
               loop1:
               while(true)
               {
                  addr65:
                  while(true)
                  {
                     this.§#z§.splice(param1,1);
                     addr71:
                     while(!_loc4_)
                     {
                        if(_loc4_)
                        {
                           continue loop0;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            _loc2_.dispose();
            if(_loc3_)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr65);
            }
            §§goto(addr71);
         }
         _loc2_ = null;
      }
      
      protected function §2Q§(param1:§"_§) : Boolean
      {
         return true;
      }
      
      protected function §^!e§(param1:§"_§) : Point
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Number = param1.§^`§().GetPosition().x;
         §§push(param1.§^`§().GetPosition().y - 3);
         if(!_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         return new Point(_loc2_,_loc3_);
      }
      
      public function §@o§(param1:int, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc5_:§"_§ = null;
         var _loc6_:§1%§ = null;
         var _loc7_:Point = null;
         var _loc8_:* = 0;
         var _loc9_:* = false;
         var _loc10_:* = 0;
         if(_loc13_ || param1)
         {
            if(param1 < 0)
            {
               if(_loc13_ || this)
               {
                  §§goto(addr48);
               }
            }
            var _loc4_:§<!r§;
            §§push((_loc4_ = this.§2!z§[param1]) is §[!=§);
            if(!_loc14_)
            {
               if(§§pop())
               {
                  if(_loc13_ || this)
                  {
                     var _loc11_:*;
                     §§push((_loc11_ = this).§<!w§);
                     if(_loc13_ || param2)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc12_:* = §§pop();
                     if(_loc13_ || param2)
                     {
                        _loc11_.§<!w§ = _loc12_;
                     }
                     if(!_loc14_)
                     {
                        addr126:
                        if(_loc4_ == this.§3!7§)
                        {
                           if(_loc13_ || this)
                           {
                              this.§3!7§ = null;
                              if(!(_loc14_ && param2))
                              {
                                 addr147:
                                 if(_loc4_ is §"_§)
                                 {
                                    addr151:
                                    _loc5_ = _loc4_ as §"_§;
                                    if(!(_loc14_ && param3))
                                    {
                                       §§push(param2);
                                       if(_loc13_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc14_)
                                             {
                                                _loc7_ = this.§^!e§(_loc5_);
                                                if(!(_loc14_ && this))
                                                {
                                                   §§push(§2_§.§1!B§(_loc5_.itemName));
                                                   if(!(_loc14_ && param1))
                                                   {
                                                      §§push(int(§§pop()));
                                                   }
                                                   _loc8_ = §§pop();
                                                   loop0:
                                                   while(true)
                                                   {
                                                      addr201:
                                                      while(true)
                                                      {
                                                         §§push(this.§2Q§(_loc5_));
                                                         if(_loc13_ || param3)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                         _loc9_ = §§pop();
                                                         continue loop0;
                                                      }
                                                   }
                                                }
                                                while(false)
                                                {
                                                   §§goto(addr201);
                                                }
                                             }
                                             addr250:
                                             _loc5_.updateBeforeRemoving(null);
                                             if(!_loc14_)
                                             {
                                                addr266:
                                                this.§#!C§(_loc5_);
                                             }
                                             addr269:
                                             for each(_loc6_ in this.§ f§)
                                             {
                                                §§push(_loc6_.objectId1);
                                                if(_loc13_ || param2)
                                                {
                                                   §§push(_loc5_.id);
                                                   if(!_loc14_)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      if(!(_loc14_ && param1))
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            if(_loc13_)
                                                            {
                                                               addr307:
                                                               §§pop();
                                                               if(!(_loc13_ || param2))
                                                               {
                                                                  continue;
                                                               }
                                                               addr319:
                                                               §§push(_loc6_.objectId2 == _loc5_.id);
                                                            }
                                                         }
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc14_ && param2))
                                                            {
                                                               _loc6_.§1Z§ = true;
                                                            }
                                                         }
                                                         continue;
                                                      }
                                                      §§goto(addr307);
                                                   }
                                                }
                                                §§goto(addr319);
                                             }
                                             if(_loc13_)
                                             {
                                                delete this.§]!Z§[_loc5_.§;"!§.instanceName];
                                                addr344:
                                                this.§@h§(_loc4_.sprite);
                                                if(_loc13_)
                                                {
                                                   this.§2!z§[param1] = null;
                                                }
                                                while(true)
                                                {
                                                   this.§2!z§.splice(param1,1);
                                                   loop6:
                                                   while(!_loc14_)
                                                   {
                                                      if(_loc4_ is §%!f§)
                                                      {
                                                         if(!_loc14_)
                                                         {
                                                            §§push(int(this.§+!t§.indexOf(_loc4_)));
                                                            if(!_loc14_)
                                                            {
                                                               §§push(§§pop());
                                                               if(!(_loc14_ && param3))
                                                               {
                                                                  _loc10_ = §§pop();
                                                                  addr422:
                                                                  §§push(0);
                                                               }
                                                               if(§§pop() >= §§pop())
                                                               {
                                                                  loop7:
                                                                  while(true)
                                                                  {
                                                                     this.§+!t§.splice(_loc10_,1);
                                                                     addr429:
                                                                     while(true)
                                                                     {
                                                                        addr372:
                                                                        loop9:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§ !u§);
                                                                           if(!_loc14_)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 loop11:
                                                                                 do
                                                                                 {
                                                                                    this.§4!S§(_loc4_);
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc13_)
                                                                                       {
                                                                                          _loc4_.dispose();
                                                                                          if(!(_loc14_ && this))
                                                                                          {
                                                                                             if(_loc13_)
                                                                                             {
                                                                                                continue loop11;
                                                                                             }
                                                                                             continue loop7;
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                       continue loop9;
                                                                                    }
                                                                                 }
                                                                                 while(false);
                                                                                 
                                                                                 _loc4_ = null;
                                                                                 return;
                                                                                 addr365:
                                                                              }
                                                                              if(!(_loc13_ || param3))
                                                                              {
                                                                                 continue loop7;
                                                                              }
                                                                              if(_loc14_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(this.§ !u§);
                                                                           }
                                                                           §§pop().§4!S§(_loc4_);
                                                                           continue loop7;
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr372);
                                                            }
                                                            §§goto(addr422);
                                                         }
                                                         §§goto(addr429);
                                                      }
                                                      §§goto(addr372);
                                                   }
                                                }
                                             }
                                             §§goto(addr344);
                                          }
                                          §§push(param3);
                                       }
                                       if(§§pop())
                                       {
                                          if(!_loc14_)
                                          {
                                             §§goto(addr250);
                                          }
                                       }
                                       else
                                       {
                                          _loc5_.updateBeforeRemoving(this);
                                          if(!(_loc14_ && param2))
                                          {
                                             §§goto(addr266);
                                          }
                                       }
                                       §§goto(addr269);
                                    }
                                    §§goto(addr250);
                                 }
                                 §§goto(addr344);
                              }
                           }
                           §§goto(addr151);
                        }
                     }
                     else
                     {
                        addr109:
                        §§push((_loc11_ = this).§"!§);
                        if(!_loc14_)
                        {
                           §§push(§§pop() - 1);
                        }
                        _loc12_ = §§pop();
                        if(!_loc14_)
                        {
                           _loc11_.§"!§ = _loc12_;
                        }
                        if(_loc13_)
                        {
                           §§goto(addr126);
                        }
                     }
                  }
                  §§goto(addr147);
               }
               else
               {
                  §§push(_loc4_ is §?!z§);
                  if(_loc13_ || param3)
                  {
                     addr106:
                     if(§§pop())
                     {
                        if(_loc13_)
                        {
                           §§goto(addr109);
                        }
                     }
                     §§goto(addr126);
                  }
               }
               §§goto(addr147);
            }
            §§goto(addr106);
         }
         addr48:
      }
      
      protected function §4!S§(param1:§<!r§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:§"_§ = null;
         var _loc3_:§4!b§ = null;
         var _loc4_:* = null;
         var _loc5_:String = null;
         var _loc6_:§"_§ = null;
         if(!(_loc9_ && this))
         {
            if(param1 is §"_§)
            {
               addr43:
               _loc2_ = param1 as §"_§;
               _loc3_ = _loc2_.§;"!§ as §4!b§;
               if(_loc10_ || _loc2_)
               {
                  if(!_loc3_)
                  {
                  }
                  §§goto(addr134);
               }
               var _loc7_:int = 0;
               var _loc8_:* = _loc3_.§7!b§.§&!G§;
               while(§§hasnext(_loc8_,_loc7_))
               {
                  §§push(§§nextname(_loc7_,_loc8_));
                  if(_loc10_)
                  {
                     _loc4_ = §§pop();
                     if(!(_loc9_ && this))
                     {
                        addr102:
                        _loc5_ = _loc3_.§7!b§.§&!G§[_loc4_];
                     }
                     _loc6_ = this.§]!w§(_loc4_);
                     if(!(_loc9_ && param1))
                     {
                        this.§2!#§(_loc6_,_loc5_,"onDestroyed");
                     }
                     continue;
                  }
                  §§goto(addr102);
               }
            }
            addr134:
            return;
         }
         §§goto(addr43);
      }
      
      protected function §2!#§(param1:§"_§, param2:String, param3:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            if(param1)
            {
               if(_loc5_ || param1)
               {
                  addr53:
                  param1.§7Q§(param2,param3,this);
               }
            }
            return;
         }
         §§goto(addr53);
      }
      
      private function §@h§(param1:§6![§.Sprite) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(Boolean(param1));
            if(!(_loc2_ && param1))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr83:
                     loop2:
                     while(true)
                     {
                        §§push(Boolean(param1.parent));
                        if(_loc3_ || _loc2_)
                        {
                           while(§§pop())
                           {
                              if(!_loc2_)
                              {
                                 param1.parent.removeChild(param1);
                              }
                              if(_loc3_)
                              {
                                 break;
                              }
                              continue loop2;
                           }
                           return;
                           addr50:
                        }
                     }
                  }
                  addr82:
               }
               §§goto(addr50);
            }
            §§goto(addr82);
         }
         §§goto(addr83);
      }
      
      public function removeObject(param1:§<!r§, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(param1)
            {
               if(!(_loc4_ && param1))
               {
                  addr47:
                  this.§@o§(this.§2!z§.indexOf(param1),param2);
               }
            }
            return;
         }
         §§goto(addr47);
      }
      
      public function §#!j§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr52:
                  this.§<Y§.§;![§();
               }
            }
            return;
         }
         §§goto(addr52);
      }
      
      public function §0h§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            this.§<Y§.§0h§(param1,param2,param3,param4);
         }
      }
      
      public function §=!F§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            §§push(this.§5a§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr109:
               while(true)
               {
                  §§push(-§§pop());
                  addr110:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop0;
                  }
               }
            }
            addr108:
         }
         while(true)
         {
            §§push(this.§5a§);
            if(_loc3_)
            {
               §§push(param2);
               if(!_loc4_)
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr92:
                     §§push(-§§pop());
                     if(!_loc4_)
                     {
                        §§pop().y = §§pop();
                        while(true)
                        {
                           §§push(this.§5!,§);
                           loop5:
                           while(true)
                           {
                              §§push(param1);
                              if(!_loc4_)
                              {
                                 §§push(-§§pop());
                              }
                              addr74:
                              while(true)
                              {
                                 §§pop().x = §§pop();
                                 continue loop5;
                              }
                           }
                        }
                     }
                     else
                     {
                        §§goto(addr109);
                     }
                  }
                  §§goto(addr110);
               }
               §§goto(addr92);
            }
            else
            {
               §§goto(addr108);
            }
         }
      }
      
      public function isPigsAlive() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§<!r§ = null;
         var _loc1_:int = 0;
         loop0:
         while(_loc1_ < this.§2!z§.length)
         {
            _loc2_ = this.§2!z§[_loc1_];
            if(_loc4_)
            {
               §§push(Boolean(_loc2_));
               loop1:
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
                           loop4:
                           while(true)
                           {
                              §§push(_loc2_ is §[!=§);
                              if(_loc4_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(!_loc3_)
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(!(_loc4_ || this))
                                       {
                                          break;
                                       }
                                       if(§§pop())
                                       {
                                          loop5:
                                          while(true)
                                          {
                                             §§pop();
                                             addr116:
                                             while(true)
                                             {
                                                addr53:
                                                while(true)
                                                {
                                                   §§push((_loc2_ as §[!=§).health > 0);
                                                   if(_loc4_ || this)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop5;
                                                   }
                                                   continue loop3;
                                                }
                                                if(!_loc4_)
                                                {
                                                   continue loop1;
                                                }
                                             }
                                          }
                                          addr115:
                                       }
                                       loop7:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             while(true)
                                             {
                                                _loc1_++;
                                                if(!_loc4_)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   continue;
                                                }
                                                if(_loc4_ || _loc1_)
                                                {
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      if(true)
                                                      {
                                                         break loop7;
                                                      }
                                                      §§goto(addr53);
                                                   }
                                                   §§goto(addr116);
                                                }
                                             }
                                             continue loop4;
                                          }
                                          §§push(true);
                                          continue loop3;
                                       }
                                       continue loop0;
                                    }
                                    continue loop2;
                                    addr105:
                                 }
                              }
                              §§goto(addr115);
                           }
                        }
                     }
                     §§goto(addr105);
                  }
               }
            }
            §§goto(addr116);
         }
         return false;
      }
      
      public function §[R§(param1:Boolean = false) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§[!=§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = int(this.§2!z§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(_loc6_ || param1)
            {
               if(§§pop() < 0)
               {
                  §§push(_loc2_);
                  break;
               }
               §§push(Boolean(_loc4_ = this.§2!z§[_loc3_] as §[!=§));
               if(!(_loc5_ && _loc3_))
               {
                  §§push(§§pop());
                  if(!_loc5_)
                  {
                     if(§§pop())
                     {
                        if(_loc6_ || _loc3_)
                        {
                           §§pop();
                           if(!(_loc5_ && this))
                           {
                              §§push(_loc4_.health > 0);
                              loop11:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       §§push(param1);
                                       loop8:
                                       while(true)
                                       {
                                          §§push(!§§pop());
                                          addr162:
                                          loop13:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             addr163:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   loop15:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      addr165:
                                                      loop9:
                                                      while(true)
                                                      {
                                                         §§push(!_loc4_.§#y§);
                                                         if(_loc6_)
                                                         {
                                                            if(!(_loc5_ && _loc3_))
                                                            {
                                                               continue loop8;
                                                            }
                                                            continue loop15;
                                                         }
                                                         addr154:
                                                         addr154:
                                                         addr151:
                                                         while(_loc5_)
                                                         {
                                                            continue loop13;
                                                         }
                                                         §§pop();
                                                         while(true)
                                                         {
                                                            addr99:
                                                            while(true)
                                                            {
                                                               §§push(!_loc4_.§%`§);
                                                               if(!_loc5_)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     break loop9;
                                                                  }
                                                                  continue loop11;
                                                               }
                                                               §§goto(addr151);
                                                            }
                                                         }
                                                         addr151:
                                                         continue loop15;
                                                      }
                                                   }
                                                }
                                                addr107:
                                                loop3:
                                                while(true)
                                                {
                                                   addr108:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            _loc2_++;
                                                         }
                                                         while(true)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               if(!(_loc5_ && _loc3_))
                                                               {
                                                                  continue;
                                                               }
                                                               continue loop7;
                                                            }
                                                            §§goto(addr165);
                                                         }
                                                         addr117:
                                                      }
                                                      continue loop3;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    if(_loc6_)
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    _loc3_ = §§pop();
                                    if(!(_loc5_ && this))
                                    {
                                       if(!(_loc5_ && this))
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          §§goto(addr99);
                                       }
                                       §§goto(addr154);
                                    }
                                    §§goto(addr117);
                                 }
                                 continue loop0;
                              }
                              addr159:
                           }
                           §§goto(addr154);
                        }
                        §§goto(addr108);
                     }
                     §§goto(addr159);
                  }
                  §§goto(addr150);
               }
               §§goto(addr162);
            }
            break;
         }
         return §§pop();
      }
      
      public function §%!p§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§"_§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§2!z§)
         {
            if(!(_loc5_ && _loc1_))
            {
               if(_loc2_ is §>!9§)
               {
                  if(!(_loc5_ && _loc1_))
                  {
                     _loc1_++;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      public function §2!8§() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§"_§ = null;
         var _loc1_:int = 0;
         var _loc3_:int = 0;
         for each(_loc2_ in this.§2!z§)
         {
            if(!(_loc5_ || _loc3_))
            {
               continue;
            }
            §§push(Boolean(_loc2_));
            if(!(_loc6_ && _loc3_))
            {
               if(§§pop())
               {
                  if(_loc5_)
                  {
                     addr64:
                     §§pop();
                     if(_loc5_)
                     {
                        §§push(_loc2_.§0x§());
                        if(_loc5_)
                        {
                           addr72:
                           if(!§§pop())
                           {
                              continue;
                           }
                           if(_loc6_ && _loc1_)
                           {
                              continue;
                           }
                        }
                        §§goto(addr72);
                     }
                     _loc1_++;
                     continue;
                  }
               }
               §§goto(addr72);
            }
            §§goto(addr64);
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§[!=§ = null;
         var _loc2_:* = int(this.§2!z§.length - 1);
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§2!z§[_loc2_] as §[!=§;
            if(_loc5_)
            {
               §§push(Boolean(_loc3_));
               if(!(_loc4_ && _loc3_))
               {
                  if(§§pop())
                  {
                     loop5:
                     while(true)
                     {
                        §§pop();
                        addr117:
                        loop3:
                        while(true)
                        {
                           addr69:
                           while(true)
                           {
                              §§push(_loc3_.health > 0);
                              if(!(_loc4_ && _loc3_))
                              {
                                 break loop3;
                              }
                              continue loop5;
                           }
                           continue loop5;
                        }
                     }
                     addr116:
                  }
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           _loc3_.scream();
                        }
                        loop2:
                        while(!(_loc4_ && param1))
                        {
                           while(true)
                           {
                              §§push(_loc2_);
                              if(_loc5_ || this)
                              {
                                 §§push(§§pop() - 1);
                              }
                              _loc2_ = §§pop();
                              if(!(_loc4_ && _loc3_))
                              {
                                 while(false)
                                 {
                                    continue loop1;
                                 }
                                 continue loop0;
                                 addr67:
                              }
                              continue loop2;
                           }
                        }
                        §§goto(addr117);
                     }
                     §§goto(addr39);
                  }
               }
               §§goto(addr116);
            }
            §§goto(addr67);
         }
      }
      
      public function §+t§() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§?!z§ = null;
         var _loc1_:* = int(this.§2!z§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§2!z§[_loc1_] as §?!z§;
            if(!(_loc4_ && _loc3_))
            {
               §§push(Boolean(_loc2_));
               loop1:
               while(true)
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
                              if(!_loc3_)
                              {
                                 break;
                              }
                              if(_loc3_)
                              {
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          if(!_loc4_)
                                          {
                                             §§push(true);
                                             break loop4;
                                          }
                                          continue loop3;
                                       }
                                       addr92:
                                       while(true)
                                       {
                                       }
                                       addr92:
                                    }
                                    while(true)
                                    {
                                       §§push(_loc1_);
                                       if(_loc3_)
                                       {
                                          §§push(§§pop() - 1);
                                       }
                                       _loc1_ = §§pop();
                                       if(_loc3_ || _loc2_)
                                       {
                                          break;
                                       }
                                       §§goto(addr92);
                                    }
                                    if(true)
                                    {
                                       break;
                                    }
                                    continue loop4;
                                 }
                                 continue loop0;
                                 addr77:
                              }
                              continue loop1;
                           }
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 break loop2;
                              }
                              continue loop2;
                           }
                        }
                     }
                     return §§pop();
                  }
                  §§goto(addr77);
               }
            }
            §§goto(addr92);
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§"_§ = null;
         var _loc1_:* = int(this.§2!z§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§2!z§[_loc1_] as §"_§;
            if(_loc4_ || _loc3_)
            {
               §§push(_loc2_ == null);
               loop1:
               while(true)
               {
                  §§push(!§§pop());
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
                              loop5:
                              while(true)
                              {
                                 §§push(_loc2_.health);
                                 while(true)
                                 {
                                    §§push(§§pop() > 0);
                                    loop21:
                                    while(true)
                                    {
                                       §§push(_loc2_.health);
                                       if(!(_loc4_ || _loc1_))
                                       {
                                          break;
                                       }
                                       §§push(§§pop() > 0);
                                       if(_loc4_)
                                       {
                                          if(_loc4_ || this)
                                          {
                                             if(_loc4_)
                                             {
                                                addr89:
                                                if(_loc3_ && _loc3_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      while(!(_loc3_ && _loc3_))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop10:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               loop11:
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_.§!"'§());
                                                                  if(_loc4_ || _loc1_)
                                                                  {
                                                                     §§push(!§§pop());
                                                                     loop12:
                                                                     for(; _loc4_; loop19:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc4_ || _loc2_))
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        §§goto(addr190);
                                                                        addr149:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc4_ || _loc3_))
                                                                           {
                                                                              continue loop19;
                                                                           }
                                                                           §§pop();
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc3_ && this))
                                                                              {
                                                                                 if(!(_loc3_ && _loc3_))
                                                                                 {
                                                                                    continue loop21;
                                                                                 }
                                                                                 §§goto(addr212);
                                                                              }
                                                                              §§goto(addr225);
                                                                           }
                                                                        }
                                                                     })
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc1_);
                                                                                 if(_loc4_ || _loc1_)
                                                                                 {
                                                                                    §§push(§§pop() - 1);
                                                                                 }
                                                                                 _loc1_ = §§pop();
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr117:
                                                                                    continue;
                                                                                 }
                                                                                 if(_loc4_ || _loc3_)
                                                                                 {
                                                                                    if(true)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue loop21;
                                                                                 }
                                                                              }
                                                                              continue loop0;
                                                                              addr44:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(_loc3_ && _loc1_)
                                                                              {
                                                                                 continue loop5;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc2_.isDamageAwardingScore());
                                                                                 addr221:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                    loop14:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       addr223:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      §§push(false);
                                                                                                      break;
                                                                                                   }
                                                                                                   addr196:
                                                                                                   while(true)
                                                                                                   {
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc2_ is §?!z§);
                                                                                                   continue loop10;
                                                                                                }
                                                                                             }
                                                                                             addr195:
                                                                                             return §§pop();
                                                                                             addr190:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop();
                                                                                             addr225:
                                                                                             while(_loc4_)
                                                                                             {
                                                                                                §§push(_loc2_.§^" §());
                                                                                                while(!(_loc3_ && _loc2_))
                                                                                                {
                                                                                                   §§push(!§§pop());
                                                                                                   continue loop12;
                                                                                                }
                                                                                                continue loop14;
                                                                                             }
                                                                                             continue loop11;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr196);
                                                                        }
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                                  §§goto(addr221);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr210);
                                                      }
                                                      continue loop3;
                                                      §§goto(addr89);
                                                   }
                                                   addr234:
                                                }
                                                §§goto(addr96);
                                             }
                                             §§goto(addr175);
                                          }
                                          §§goto(addr149);
                                       }
                                       §§goto(addr108);
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr234);
                        }
                     }
                  }
               }
            }
            §§goto(addr219);
         }
         return true;
      }
      
      public function §3!"§(param1:Boolean = false) : §[!=§
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:§[!=§ = null;
         var _loc2_:int = this.§2!z§.length;
         §§push(this.§[R§(param1));
         if(!_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!(_loc8_ && _loc2_))
         {
            §§push(_loc3_);
            if(_loc9_ || param1)
            {
               if(§§pop() == 0)
               {
                  if(!_loc8_)
                  {
                     return null;
                  }
                  addr53:
                  §§push(int(Math.random() * _loc3_));
               }
               §§goto(addr53);
            }
            var _loc4_:* = §§pop();
            var _loc5_:int = 0;
            var _loc6_:int = 0;
            loop0:
            while(_loc6_ < _loc2_)
            {
               §§push(Boolean(_loc7_ = this.§2!z§[_loc6_] as §[!=§));
               if(!(_loc8_ && this))
               {
                  §§push(§§pop());
                  if(_loc9_ || _loc2_)
                  {
                     if(§§pop())
                     {
                        if(_loc9_ || _loc3_)
                        {
                           §§pop();
                           if(!_loc8_)
                           {
                              §§push(_loc7_.health > 0);
                              loop12:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop13:
                                    while(true)
                                    {
                                       §§push(param1);
                                       if(!(_loc8_ && _loc3_))
                                       {
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
                                                   if(!§§pop())
                                                   {
                                                      loop4:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         loop5:
                                                         while(true)
                                                         {
                                                            §§push(!_loc7_.§#y§);
                                                            if(_loc9_ || _loc3_)
                                                            {
                                                               if(!_loc9_)
                                                               {
                                                                  break;
                                                               }
                                                               if(_loc8_ && param1)
                                                               {
                                                                  continue loop12;
                                                               }
                                                               §§push(§§pop());
                                                               if(_loc8_ && param1)
                                                               {
                                                                  continue loop3;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                  }
                                                                  addr152:
                                                                  loop11:
                                                                  while(true)
                                                                  {
                                                                     addr153:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           while(_loc5_ >= _loc4_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    §§goto(addr159);
                                                                                 }
                                                                                 loop9:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(!_loc7_.§%`§);
                                                                                    if(_loc9_ || _loc3_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    addr198:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       continue loop9;
                                                                                    }
                                                                                 }
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop11;
                                                                              }
                                                                              continue loop4;
                                                                           }
                                                                           addr129:
                                                                           _loc5_++;
                                                                           addr154:
                                                                           if(!(_loc8_ && param1))
                                                                           {
                                                                              addr102:
                                                                              while(true)
                                                                              {
                                                                                 _loc6_++;
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    if(!(_loc8_ && param1))
                                                                                    {
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             if(true)
                                                                                             {
                                                                                                continue loop0;
                                                                                             }
                                                                                             §§goto(addr129);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr154);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr157);
                                                                                    }
                                                                                    else if(!(_loc9_ || this))
                                                                                    {
                                                                                       continue loop5;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr129);
                                                                              }
                                                                              addr102:
                                                                           }
                                                                           continue loop13;
                                                                        }
                                                                        §§goto(addr102);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr198);
                                                         }
                                                         continue loop2;
                                                      }
                                                      addr226:
                                                   }
                                                   §§goto(addr152);
                                                }
                                             }
                                             continue loop13;
                                          }
                                          addr213:
                                       }
                                       §§goto(addr226);
                                    }
                                 }
                                 §§goto(addr102);
                              }
                              addr204:
                           }
                           addr159:
                           return _loc7_;
                        }
                        §§goto(addr213);
                     }
                     §§goto(addr204);
                  }
                  §§goto(addr197);
               }
               §§goto(addr153);
            }
            return null;
         }
         §§goto(addr53);
      }
      
      public function §&!2§() : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§"_§ = null;
         var _loc1_:* = 0;
         var _loc2_:* = int(this.§2!z§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc5_ && _loc3_))
            {
               §§push(0);
               if(!_loc5_)
               {
                  if(§§pop() < §§pop())
                  {
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(_loc1_);
                        if(!(_loc5_ && _loc3_))
                        {
                           break;
                        }
                        addr181:
                        _loc1_ = §§pop();
                     }
                     §§goto(addr183);
                  }
                  _loc3_ = this.§2!z§[_loc2_] as §"_§;
                  if(!_loc5_)
                  {
                     if(_loc3_)
                     {
                        §§push(_loc1_);
                        if(_loc4_)
                        {
                           §§push(int(§§pop() + _loc3_.levelItem.score));
                        }
                        loop1:
                        while(true)
                        {
                           _loc1_ = §§pop();
                           addr130:
                           loop8:
                           while(true)
                           {
                              addr71:
                              loop4:
                              while(_loc3_.isDamageAwardingScore())
                              {
                                 while(!(_loc5_ && _loc1_))
                                 {
                                    §§push(_loc1_);
                                    if(_loc4_ || _loc3_)
                                    {
                                       §§push(int(§§pop() + this.damageScoreMultiplier * int(_loc3_.healthMax)));
                                    }
                                    while(true)
                                    {
                                       _loc1_ = §§pop();
                                       addr110:
                                       while(_loc5_ && _loc2_)
                                       {
                                          continue loop8;
                                       }
                                       break loop4;
                                    }
                                 }
                                 while(true)
                                 {
                                    break loop4;
                                    §§goto(addr75);
                                 }
                                 addr75:
                              }
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(!_loc5_)
                                 {
                                    continue loop1;
                                 }
                                 addr52:
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    _loc2_ = §§pop();
                                    if(_loc4_ || this)
                                    {
                                       if(!_loc5_)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          §§goto(addr71);
                                       }
                                       §§goto(addr75);
                                    }
                                    §§goto(addr110);
                                 }
                                 §§goto(addr109);
                              }
                              continue loop0;
                           }
                        }
                     }
                     §§goto(addr120);
                  }
                  §§goto(addr130);
               }
               §§goto(addr162);
            }
            break;
         }
         addr162:
         §§push(int(§§pop() + §§pop()));
         if(!(_loc5_ && _loc2_))
         {
            §§goto(addr181);
         }
         addr183:
         this.§<Y§.slingshot.§&!2§();
         return _loc1_;
      }
      
      protected function §=!n§(param1:§<!r§, param2:§<!r§) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            §§push(param1 is §"_§);
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr154:
                        while(true)
                        {
                           §§push(param2 is §"_§);
                        }
                     }
                     addr153:
                  }
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        §§push(§§pop());
                        loop6:
                        while(!(_loc3_ && _loc3_))
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 while(!_loc3_)
                                 {
                                    §§push((param1 as §"_§).§@"+§());
                                    while(true)
                                    {
                                       §§push(!§§pop());
                                       §§goto(addr104);
                                    }
                                 }
                                 §§goto(addr154);
                              }
                           }
                           addr104:
                           loop10:
                           while(true)
                           {
                              loop11:
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 if(§§pop())
                                 {
                                    continue loop5;
                                 }
                                 loop15:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc3_ && this)
                                       {
                                          addr90:
                                          if(!(_loc4_ || _loc3_))
                                          {
                                             while(_loc4_)
                                             {
                                                §§push((param2 as §"_§).§@"+§());
                                                if(_loc4_ || _loc3_)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      continue loop10;
                                                   }
                                                   §§push(!§§pop());
                                                }
                                                §§goto(addr90);
                                             }
                                             continue loop8;
                                             addr117:
                                          }
                                          addr25:
                                          §§push(true);
                                          if(_loc4_)
                                          {
                                             if(_loc4_)
                                             {
                                                break;
                                             }
                                          }
                                          else
                                          {
                                             addr65:
                                             while(true)
                                             {
                                                if(!(_loc3_ && param1))
                                                {
                                                   continue loop7;
                                                }
                                                continue loop5;
                                             }
                                             addr65:
                                          }
                                          while(_loc4_)
                                          {
                                             if(_loc4_)
                                             {
                                                continue loop15;
                                             }
                                             §§goto(addr153);
                                          }
                                          continue loop11;
                                       }
                                       while(true)
                                       {
                                          §§push(false);
                                       }
                                       §§goto(addr65);
                                    }
                                    §§goto(addr25);
                                 }
                                 if(!_loc3_)
                                 {
                                    return §§pop();
                                 }
                                 continue loop0;
                              }
                              continue loop6;
                           }
                           addr89:
                           return §§pop();
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      public function §<h§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§"!§ = 0;
         }
      }
      
      protected function §+=§(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      protected function §4!w§(param1:Number) : void
      {
      }
      
      protected function §%<§(param1:§"_§, param2:§"_§) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = NaN;
         if(!_loc5_)
         {
            §§push(param2 is §?!z§);
            while(!§§pop())
            {
               §§push(param1 is §?!z§);
               if(!_loc5_)
               {
                  if(§§pop())
                  {
                     §§goto(addr72);
                  }
                  §§push(1);
                  if(!(_loc5_ && param1))
                  {
                     return §§pop();
                  }
                  addr108:
                  return §§pop();
               }
            }
            §§goto(addr108);
            §§push(1);
         }
         addr72:
         §§push(param1.§ Y§(param2.§[,§()));
         if(!(_loc5_ && param1))
         {
            §§push(Number(§§pop()));
         }
         do
         {
            _loc3_ = §§pop();
            if(_loc5_ && _loc3_)
            {
               break loop0;
            }
            return _loc3_;
         }
         while(!(_loc4_ || param2));
         
         return §§pop();
      }
      
      protected function §5!f§(param1:§"_§, param2:§"_§) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            if(param2 is §?!z§)
            {
               if(_loc3_ || this)
               {
                  return 0;
               }
            }
         }
         return 1;
      }
      
      protected function §>O§(param1:§"_§, param2:§"_§) : Number
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc3_:Number = 10;
         §§push(this.§5!f§(param1,param2));
         if(!_loc13_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(this.§5!f§(param2,param1));
         if(!(_loc13_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         var _loc6_:Number = param1.§^`§().GetMass();
         var _loc7_:Number = param2.§^`§().GetMass();
         var _loc8_:b2Vec2 = param1.§3!Y§();
         var _loc9_:b2Vec2 = param2.§3!Y§();
         §§push(_loc4_);
         if(!_loc13_)
         {
            §§push(_loc6_);
            if(_loc14_ || this)
            {
               §§push(§§pop() * §§pop());
               if(!_loc13_)
               {
                  §§push(_loc8_.x);
                  if(!(_loc13_ && this))
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc14_)
                     {
                        §§push(_loc5_);
                        if(!(_loc13_ && _loc3_))
                        {
                           addr93:
                           §§push(_loc7_);
                           if(!(_loc13_ && param1))
                           {
                              addr122:
                              §§push(§§pop() * §§pop());
                              if(_loc14_ || _loc3_)
                              {
                                 §§push(_loc9_.x);
                              }
                              §§push(§§pop() - §§pop());
                              if(_loc13_)
                              {
                              }
                              §§goto(addr126);
                           }
                           §§push(§§pop() * §§pop());
                        }
                     }
                     §§goto(addr126);
                  }
                  §§goto(addr122);
               }
               §§goto(addr126);
            }
            §§goto(addr93);
         }
         addr126:
         var _loc10_:Number = §§pop();
         §§push(_loc4_);
         if(!_loc13_)
         {
            §§push(_loc6_);
            if(!(_loc13_ && this))
            {
               §§push(§§pop() * §§pop());
               if(!(_loc13_ && param1))
               {
                  §§push(_loc8_.y);
                  if(_loc14_ || param2)
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc13_)
                     {
                        addr158:
                        §§push(_loc5_);
                        if(!_loc13_)
                        {
                           addr161:
                           §§push(_loc7_);
                           if(!_loc13_)
                           {
                              §§goto(addr175);
                           }
                           §§push(§§pop() * §§pop());
                        }
                        addr175:
                        §§push(§§pop() * §§pop());
                        if(!(_loc13_ && this))
                        {
                           addr172:
                           §§push(_loc9_.y);
                        }
                        §§push(§§pop() - §§pop());
                        if(_loc14_ || param1)
                        {
                        }
                     }
                     §§goto(addr184);
                  }
                  §§goto(addr161);
               }
               §§goto(addr158);
            }
            §§goto(addr172);
         }
         addr184:
         var _loc11_:Number = §§pop();
         §§push(Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_) / _loc3_);
         if(_loc14_ || _loc3_)
         {
            return Number(§§pop());
         }
      }
      
      public function §else§(param1:§<!r§, param2:§<!r§, param3:b2Contact) : Boolean
      {
         var _loc20_:Boolean = true;
         var _loc21_:Boolean = false;
         var _loc13_:§#J§ = null;
         var _loc14_:b2JointEdge = null;
         var _loc15_:b2JointEdge = null;
         var _loc16_:Number = NaN;
         var _loc17_:* = NaN;
         if(_loc20_ || this)
         {
            §§push(this.§ §);
            if(!_loc21_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     param1.collidedWith(param2);
                     do
                     {
                        param2.collidedWith(param1);
                     }
                     while(!(_loc20_ || param3));
                     
                     if(_loc21_)
                     {
                        continue;
                     }
                     if(_loc21_)
                     {
                        break;
                     }
                     while(false)
                     {
                        continue loop0;
                     }
                     var _loc4_:§"_§ = param1 as §"_§;
                     var _loc5_:§"_§ = param2 as §"_§;
                     if(!_loc21_)
                     {
                        §§push(!_loc4_);
                        loop3:
                        while(true)
                        {
                           §§push(§§pop());
                           loop4:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§pop();
                                    loop6:
                                    while(true)
                                    {
                                       §§push(!_loc5_);
                                       while(_loc20_)
                                       {
                                          addr286:
                                          if(!(_loc21_ && param3))
                                          {
                                             §§push(§§pop());
                                             loop20:
                                             for(; _loc20_; §§push(§§pop()),if(_loc21_ && this)
                                             {
                                                continue;
                                             },if(§§pop())
                                             {
                                                loop26:
                                                while(true)
                                                {
                                                   if(_loc20_ || param1)
                                                   {
                                                      if(_loc20_)
                                                      {
                                                         §§pop();
                                                         loop27:
                                                         while(true)
                                                         {
                                                            if(!_loc21_)
                                                            {
                                                               if(_loc20_)
                                                               {
                                                                  if(!_loc20_)
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                                  §§push(_loc5_ is §?!z§);
                                                                  if(!(_loc20_ || param1))
                                                                  {
                                                                     continue loop26;
                                                                  }
                                                                  if(_loc20_)
                                                                  {
                                                                     if(_loc20_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc20_)
                                                                              {
                                                                                 if(!(_loc21_ && param3))
                                                                                 {
                                                                                    if(!(_loc21_ && param2))
                                                                                    {
                                                                                       §§push(true);
                                                                                       continue loop26;
                                                                                    }
                                                                                    addr341:
                                                                                    addr374:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc4_.destroysCollidingObjects);
                                                                                       continue loop3;
                                                                                       §§goto(addr374);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr308);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 if(_loc21_)
                                                                                 {
                                                                                    continue loop27;
                                                                                 }
                                                                                 if(!_loc21_)
                                                                                 {
                                                                                    if(!(_loc21_ && this))
                                                                                    {
                                                                                       if(_loc20_ || param3)
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             §§goto(addr158);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr381:
                                                                                             §§push(this.§>O§(_loc4_,_loc5_));
                                                                                             if(_loc20_ || this)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             var _loc6_:* = §§pop();
                                                                                             var _loc7_:Number = Math.max(0,_loc4_.health);
                                                                                             var _loc8_:Number = Math.max(0,_loc5_.health);
                                                                                             if(!_loc21_)
                                                                                             {
                                                                                                this.§+=§(_loc6_,_loc7_,_loc8_);
                                                                                             }
                                                                                             §§push(this.§%<§(_loc4_,_loc5_));
                                                                                             if(_loc20_ || param3)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             var _loc9_:* = §§pop();
                                                                                             §§push(this.§%<§(_loc5_,_loc4_));
                                                                                             if(!_loc21_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             var _loc10_:* = §§pop();
                                                                                             §§push(_loc4_);
                                                                                             §§push(_loc6_);
                                                                                             if(!(_loc21_ && this))
                                                                                             {
                                                                                                §§push(§§pop() * _loc10_);
                                                                                             }
                                                                                             §§push(§§pop().applyDamage(§§pop(),this,_loc5_,true));
                                                                                             if(!_loc21_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             var _loc11_:* = §§pop();
                                                                                             §§push(_loc5_);
                                                                                             §§push(_loc6_);
                                                                                             if(_loc20_ || param2)
                                                                                             {
                                                                                                §§push(§§pop() * _loc9_);
                                                                                             }
                                                                                             §§push(§§pop().applyDamage(§§pop(),this,_loc4_,true));
                                                                                             if(!_loc21_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             var _loc12_:* = §§pop();
                                                                                             var _loc18_:int = 0;
                                                                                             var _loc19_:* = this.§+!y§;
                                                                                             addr655:
                                                                                             for each(_loc13_ in _loc19_)
                                                                                             {
                                                                                                §§push(Boolean(_loc13_.§&!5§));
                                                                                                if(_loc20_ || param2)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(!(_loc21_ && this))
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         if(_loc20_ || param1)
                                                                                                         {
                                                                                                            addr528:
                                                                                                            if(_loc6_ >= _loc13_.§"!d§)
                                                                                                            {
                                                                                                               addr529:
                                                                                                               _loc14_ = _loc4_.§^`§().GetJointList();
                                                                                                               _loc15_ = _loc5_.§^`§().GetJointList();
                                                                                                               if(!(_loc21_ && param3))
                                                                                                               {
                                                                                                                  §§push(_loc14_ == null);
                                                                                                                  if(!_loc21_)
                                                                                                                  {
                                                                                                                     addr651:
                                                                                                                     §§push(!§§pop());
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        addr653:
                                                                                                                        §§pop();
                                                                                                                        addr654:
                                                                                                                        §§push(_loc14_.§`!g§ == _loc13_.§%E§);
                                                                                                                        if(_loc20_)
                                                                                                                        {
                                                                                                                           addr633:
                                                                                                                           §§push(§§pop());
                                                                                                                           if(!_loc21_)
                                                                                                                           {
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 addr636:
                                                                                                                                 if(!(_loc21_ && this))
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    addr605:
                                                                                                                                    addr644:
                                                                                                                                    §§push(_loc15_ != null);
                                                                                                                                    if(!_loc21_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop());
                                                                                                                                       if(!(_loc21_ && param1))
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             addr621:
                                                                                                                                             §§pop();
                                                                                                                                             addr622:
                                                                                                                                             §§push(_loc15_.§`!g§);
                                                                                                                                             if(_loc20_ || param1)
                                                                                                                                             {
                                                                                                                                                §§push(_loc13_.§%E§);
                                                                                                                                                if(!(_loc21_ && param2))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() == §§pop());
                                                                                                                                                   if(_loc20_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc20_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc20_ || param2)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc21_ && param2))
                                                                                                                                                            {
                                                                                                                                                               addr585:
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc21_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc20_ || param3)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc20_)
                                                                                                                                                                        {
                                                                                                                                                                           this.§]!P§(_loc13_);
                                                                                                                                                                           addr601:
                                                                                                                                                                           if(_loc20_)
                                                                                                                                                                           {
                                                                                                                                                                              if(false)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr605);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr655);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr622);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr654);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr644);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr601);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr655);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr651);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr636);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr605);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr621);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr654);
                                                                                                                                          }
                                                                                                                                          §§goto(addr585);
                                                                                                                                       }
                                                                                                                                       §§goto(addr633);
                                                                                                                                    }
                                                                                                                                    §§goto(addr621);
                                                                                                                                 }
                                                                                                                                 §§goto(addr653);
                                                                                                                              }
                                                                                                                              §§goto(addr585);
                                                                                                                           }
                                                                                                                           §§goto(addr651);
                                                                                                                        }
                                                                                                                        §§goto(addr636);
                                                                                                                     }
                                                                                                                     §§goto(addr633);
                                                                                                                  }
                                                                                                                  §§goto(addr653);
                                                                                                               }
                                                                                                               §§goto(addr605);
                                                                                                            }
                                                                                                            §§goto(addr655);
                                                                                                         }
                                                                                                         §§goto(addr529);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr528);
                                                                                             }
                                                                                             if(!_loc21_)
                                                                                             {
                                                                                                addr922:
                                                                                                addr923:
                                                                                                if(_loc11_ < _loc7_)
                                                                                                {
                                                                                                   addr924:
                                                                                                   _loc5_.causedDamageToObjects();
                                                                                                   addr926:
                                                                                                }
                                                                                                addr904:
                                                                                                §§push(_loc12_);
                                                                                                §§push(_loc8_);
                                                                                                if(_loc20_)
                                                                                                {
                                                                                                   if(§§pop() < §§pop())
                                                                                                   {
                                                                                                      addr918:
                                                                                                      _loc4_.causedDamageToObjects();
                                                                                                   }
                                                                                                   addr887:
                                                                                                   if(_loc4_ is §?!z§)
                                                                                                   {
                                                                                                      addr888:
                                                                                                      if(_loc20_)
                                                                                                      {
                                                                                                         if(!_loc21_)
                                                                                                         {
                                                                                                            addr893:
                                                                                                            addr894:
                                                                                                            if(_loc12_ <= 0)
                                                                                                            {
                                                                                                               addr900:
                                                                                                               _loc16_ = _loc4_.§+l§(_loc5_.§[,§());
                                                                                                               addr895:
                                                                                                               §§push(this);
                                                                                                               §§push(_loc4_ as §?!z§);
                                                                                                               §§push(_loc6_);
                                                                                                               if(_loc20_ || this)
                                                                                                               {
                                                                                                                  §§push(_loc9_);
                                                                                                                  if(_loc20_)
                                                                                                                  {
                                                                                                                     addr877:
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     §§push(_loc8_);
                                                                                                                  }
                                                                                                                  §§pop().§!p§(§§pop(),§§pop(),§§pop(),_loc16_);
                                                                                                                  addr880:
                                                                                                                  if(_loc20_)
                                                                                                                  {
                                                                                                                     §§goto(addr851);
                                                                                                                  }
                                                                                                                  §§goto(addr895);
                                                                                                               }
                                                                                                               §§goto(addr877);
                                                                                                               addr899:
                                                                                                               addr901:
                                                                                                            }
                                                                                                            addr799:
                                                                                                            if(_loc5_ is §?!z§)
                                                                                                            {
                                                                                                               addr804:
                                                                                                               §§push(_loc11_);
                                                                                                               if(!_loc21_)
                                                                                                               {
                                                                                                                  addr808:
                                                                                                                  §§push(0);
                                                                                                                  if(_loc20_)
                                                                                                                  {
                                                                                                                     if(§§pop() <= §§pop())
                                                                                                                     {
                                                                                                                        if(_loc20_ || param3)
                                                                                                                        {
                                                                                                                           addr818:
                                                                                                                           §§push(_loc5_.§+l§(_loc4_.§[,§()));
                                                                                                                           if(!(_loc21_ && this))
                                                                                                                           {
                                                                                                                              addr829:
                                                                                                                              if(_loc20_)
                                                                                                                              {
                                                                                                                                 addr832:
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 if(!_loc21_)
                                                                                                                                 {
                                                                                                                                    if(_loc20_)
                                                                                                                                    {
                                                                                                                                       _loc17_ = §§pop();
                                                                                                                                       addr837:
                                                                                                                                       if(!(_loc21_ && param3))
                                                                                                                                       {
                                                                                                                                          if(_loc20_)
                                                                                                                                          {
                                                                                                                                             if(!_loc21_)
                                                                                                                                             {
                                                                                                                                                §§push(this);
                                                                                                                                                §§push(_loc5_ as §?!z§);
                                                                                                                                                §§push(_loc6_);
                                                                                                                                                if(_loc20_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc10_);
                                                                                                                                                   if(_loc20_)
                                                                                                                                                   {
                                                                                                                                                      addr781:
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      §§push(_loc7_);
                                                                                                                                                   }
                                                                                                                                                   §§pop().§!p§(§§pop(),§§pop(),§§pop(),_loc17_);
                                                                                                                                                   addr784:
                                                                                                                                                   if(_loc20_ || param2)
                                                                                                                                                   {
                                                                                                                                                      if(_loc20_ || param2)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr744);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr918);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr837);
                                                                                                                                                }
                                                                                                                                                §§goto(addr781);
                                                                                                                                             }
                                                                                                                                             §§goto(addr926);
                                                                                                                                          }
                                                                                                                                          §§goto(addr888);
                                                                                                                                       }
                                                                                                                                       §§goto(addr880);
                                                                                                                                    }
                                                                                                                                    §§goto(addr904);
                                                                                                                                 }
                                                                                                                                 §§goto(addr899);
                                                                                                                              }
                                                                                                                              §§goto(addr900);
                                                                                                                           }
                                                                                                                           §§goto(addr832);
                                                                                                                        }
                                                                                                                        §§goto(addr837);
                                                                                                                     }
                                                                                                                     addr707:
                                                                                                                     §§push(_loc11_);
                                                                                                                     if(_loc20_ || param2)
                                                                                                                     {
                                                                                                                        if(_loc20_ || param1)
                                                                                                                        {
                                                                                                                           addr722:
                                                                                                                           §§push(0);
                                                                                                                           if(_loc20_)
                                                                                                                           {
                                                                                                                              addr725:
                                                                                                                              §§push(§§pop() <= §§pop());
                                                                                                                              if(_loc20_ || this)
                                                                                                                              {
                                                                                                                                 if(_loc20_)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       addr736:
                                                                                                                                       §§pop();
                                                                                                                                       if(!_loc21_)
                                                                                                                                       {
                                                                                                                                          if(_loc20_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc12_);
                                                                                                                                             if(_loc20_ || this)
                                                                                                                                             {
                                                                                                                                                if(!(_loc21_ && param2))
                                                                                                                                                {
                                                                                                                                                   §§push(0);
                                                                                                                                                   if(_loc20_ || param1)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() <= §§pop());
                                                                                                                                                      if(_loc20_ || param3)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc20_ || param2))
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr725);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr701);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr736);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr722);
                                                                                                                                                }
                                                                                                                                                §§goto(addr832);
                                                                                                                                             }
                                                                                                                                             §§goto(addr707);
                                                                                                                                          }
                                                                                                                                          §§goto(addr799);
                                                                                                                                       }
                                                                                                                                       if(_loc20_ || param3)
                                                                                                                                       {
                                                                                                                                          if(_loc20_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc21_ && this))
                                                                                                                                             {
                                                                                                                                                §§goto(addr707);
                                                                                                                                             }
                                                                                                                                             §§goto(addr901);
                                                                                                                                          }
                                                                                                                                          §§goto(addr804);
                                                                                                                                       }
                                                                                                                                       §§goto(addr784);
                                                                                                                                    }
                                                                                                                                    addr701:
                                                                                                                                    return §§pop();
                                                                                                                                 }
                                                                                                                                 §§goto(addr799);
                                                                                                                              }
                                                                                                                              addr744:
                                                                                                                              §§push(false);
                                                                                                                              if(_loc21_ && param3)
                                                                                                                              {
                                                                                                                                 addr851:
                                                                                                                                 §§push(false);
                                                                                                                                 if(!(_loc20_ || param3))
                                                                                                                                 {
                                                                                                                                    §§goto(addr887);
                                                                                                                                 }
                                                                                                                                 return §§pop();
                                                                                                                              }
                                                                                                                              return §§pop();
                                                                                                                           }
                                                                                                                           §§goto(addr808);
                                                                                                                        }
                                                                                                                        §§goto(addr922);
                                                                                                                     }
                                                                                                                     §§goto(addr893);
                                                                                                                  }
                                                                                                                  §§goto(addr894);
                                                                                                               }
                                                                                                               §§goto(addr829);
                                                                                                            }
                                                                                                            §§goto(addr707);
                                                                                                         }
                                                                                                         §§goto(addr924);
                                                                                                      }
                                                                                                      §§goto(addr918);
                                                                                                   }
                                                                                                   §§goto(addr893);
                                                                                                }
                                                                                                §§goto(addr923);
                                                                                             }
                                                                                             §§goto(addr818);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr340);
                                                                                    }
                                                                                    §§goto(addr245);
                                                                                 }
                                                                                 §§goto(addr195);
                                                                              }
                                                                              addr301:
                                                                              addr301:
                                                                              return §§pop();
                                                                           }
                                                                           §§goto(addr381);
                                                                        }
                                                                        §§goto(addr364);
                                                                        addr95:
                                                                     }
                                                                     addr240:
                                                                     return true;
                                                                  }
                                                                  §§goto(addr222);
                                                               }
                                                               §§goto(addr212);
                                                            }
                                                            else if(!(_loc21_ && this))
                                                            {
                                                               §§goto(addr158);
                                                            }
                                                            §§goto(addr261);
                                                         }
                                                         §§goto(addr245);
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr281);
                                                }
                                                §§goto(addr321);
                                             },§§goto(addr95))
                                             {
                                                if(!§§pop())
                                                {
                                                   loop30:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      addr298:
                                                      loop32:
                                                      while(true)
                                                      {
                                                         §§push(_loc4_.§%!,§);
                                                         loop33:
                                                         while(true)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            addr252:
                                                            loop34:
                                                            while(true)
                                                            {
                                                               if(_loc20_ || param2)
                                                               {
                                                                  while(!§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§=!n§(_loc4_,_loc5_));
                                                                        loop23:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc20_ || this))
                                                                           {
                                                                              continue loop33;
                                                                           }
                                                                           if(_loc20_)
                                                                           {
                                                                              if(!_loc21_)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    addr212:
                                                                                    if(_loc20_ || this)
                                                                                    {
                                                                                       if(!_loc21_)
                                                                                       {
                                                                                          addr222:
                                                                                          §§push(false);
                                                                                          if(!(_loc21_ && this))
                                                                                          {
                                                                                             return §§pop();
                                                                                          }
                                                                                          §§goto(addr301);
                                                                                       }
                                                                                       continue loop32;
                                                                                    }
                                                                                    addr245:
                                                                                    addr277:
                                                                                    _loc5_.causedDamageToObjects();
                                                                                    if(!_loc21_)
                                                                                    {
                                                                                       §§goto(addr240);
                                                                                    }
                                                                                    if(!_loc20_)
                                                                                    {
                                                                                       §§goto(addr373);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc5_.destroysCollidingObjects);
                                                                                       addr281:
                                                                                       while(_loc20_)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          if(!_loc20_)
                                                                                          {
                                                                                             continue loop30;
                                                                                          }
                                                                                          §§goto(addr286);
                                                                                       }
                                                                                       continue loop3;
                                                                                    }
                                                                                    addr278:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr158:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc4_ is §?!z§);
                                                                                       addr162:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc21_ && param2))
                                                                                          {
                                                                                             continue loop20;
                                                                                          }
                                                                                          continue loop23;
                                                                                       }
                                                                                       continue loop20;
                                                                                    }
                                                                                    addr158:
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    break loop20;
                                                                                 }
                                                                                 addr352:
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                              addr320:
                                                                              loop16:
                                                                              while(true)
                                                                              {
                                                                                 addr321:
                                                                                 while(!§§pop())
                                                                                 {
                                                                                    §§goto(addr278);
                                                                                 }
                                                                                 do
                                                                                 {
                                                                                    if(_loc20_ || this)
                                                                                    {
                                                                                       §§push(_loc5_);
                                                                                       §§push(_loc5_.healthMax);
                                                                                       if(_loc20_)
                                                                                       {
                                                                                          §§push(§§pop() * 2);
                                                                                       }
                                                                                       §§pop().applyDamage(§§pop(),this,_loc4_,true);
                                                                                       _loc4_.causedDamageToObjects();
                                                                                       continue;
                                                                                       addr340:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr364:
                                                                                    }
                                                                                    addr364:
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop16;
                                                                                    }
                                                                                 }
                                                                                 while(!(_loc20_ || param1));
                                                                                 
                                                                                 §§goto(addr301);
                                                                              }
                                                                           }
                                                                        }
                                                                        continue loop33;
                                                                     }
                                                                     continue loop34;
                                                                  }
                                                                  addr261:
                                                                  §§push(_loc4_);
                                                                  §§push(_loc4_.healthMax);
                                                                  if(_loc20_ || param1)
                                                                  {
                                                                     §§push(§§pop() * 2);
                                                                  }
                                                                  §§pop().applyDamage(§§pop(),this,_loc5_,true);
                                                                  §§goto(addr277);
                                                                  addr259:
                                                               }
                                                               §§goto(addr361);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr297:
                                                }
                                                §§goto(addr259);
                                             }
                                             while(!(_loc21_ && param2))
                                             {
                                                if(!§§pop())
                                                {
                                                   addr361:
                                                   while(_loc20_)
                                                   {
                                                      §§pop();
                                                      §§goto(addr364);
                                                      continue loop34;
                                                   }
                                                   §§goto(addr373);
                                                }
                                                §§goto(addr320);
                                             }
                                             continue loop4;
                                          }
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                              while(!§§pop())
                              {
                                 §§goto(addr341);
                              }
                              addr373:
                              return true;
                           }
                        }
                     }
                     §§goto(addr298);
                  }
               }
               return false;
            }
         }
         §§goto(addr52);
      }
      
      public function §]!r§(param1:§<!r§, param2:§<!r§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            if(param1)
            {
               while(true)
               {
                  param1.collisionEnded(param2);
                  addr71:
                  while(true)
                  {
                  }
               }
               addr68:
            }
            while(param2)
            {
               if(_loc3_ || _loc3_)
               {
                  if(!_loc3_)
                  {
                     continue;
                  }
                  param2.collisionEnded(param1);
               }
               if(!_loc4_)
               {
                  break;
               }
               §§goto(addr68);
            }
            return;
         }
         §§goto(addr71);
      }
      
      protected function §!p§(param1:§?!z§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && this))
         {
            §§push(param2);
            if(!_loc8_)
            {
               if(§§pop() == 0)
               {
                  if(_loc7_)
                  {
                     return;
                  }
                  addr31:
                  §§push(param2);
                  if(!(_loc8_ && param1))
                  {
                     §§push(param3);
                     if(_loc7_)
                     {
                        addr49:
                        §§push(§§pop() - §§pop());
                        if(!_loc8_)
                        {
                           addr45:
                           §§push(param2);
                        }
                        var _loc5_:* = Number(§§pop());
                        if(!(_loc8_ && param3))
                        {
                           if(isNaN(_loc5_))
                           {
                              if(!(_loc8_ && this))
                              {
                                 §§push(0);
                                 if(_loc7_ || param1)
                                 {
                                    §§push(Number(§§pop()));
                                    if(!_loc8_)
                                    {
                                       _loc5_ = §§pop();
                                       if(_loc7_ || param3)
                                       {
                                          addr98:
                                          §§push(_loc5_);
                                          if(_loc7_ || param1)
                                          {
                                             §§push(param4);
                                             if(!_loc8_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc8_ && param3))
                                                {
                                                   addr117:
                                                   §§push(Number(§§pop()));
                                                   if(!(_loc8_ && param2))
                                                   {
                                                      addr125:
                                                      addr126:
                                                      §§push(_loc5_ = §§pop());
                                                      if(_loc8_)
                                                      {
                                                      }
                                                      §§goto(addr135);
                                                   }
                                                   if(§§pop() > 1)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         addr134:
                                                         addr135:
                                                         _loc5_ = §§pop();
                                                         var _loc6_:b2Vec2 = param1.§3!Y§();
                                                         if(_loc7_)
                                                         {
                                                            §§push(param1);
                                                            §§push(§§findproperty(b2Vec2));
                                                            §§push(_loc6_.x);
                                                            if(_loc7_ || param1)
                                                            {
                                                               §§push(_loc5_);
                                                               if(!(_loc8_ && this))
                                                               {
                                                                  §§goto(addr172);
                                                               }
                                                               §§goto(addr176);
                                                            }
                                                            §§goto(addr172);
                                                         }
                                                         addr172:
                                                         §§push(§§pop() * §§pop());
                                                         §§push(_loc6_.y);
                                                         if(!_loc8_)
                                                         {
                                                            addr176:
                                                            §§push(§§pop() * _loc5_);
                                                         }
                                                         §§pop().§-"-§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                                         return;
                                                         §§push(Number(1));
                                                      }
                                                   }
                                                   §§goto(addr135);
                                                }
                                                §§goto(addr125);
                                             }
                                             §§goto(addr126);
                                          }
                                          §§goto(addr117);
                                       }
                                    }
                                    §§goto(addr125);
                                 }
                                 §§goto(addr134);
                              }
                              §§goto(addr125);
                           }
                           §§goto(addr98);
                        }
                        §§goto(addr134);
                     }
                     §§push(§§pop() / §§pop());
                     if(!_loc7_)
                     {
                     }
                     §§goto(addr49);
                  }
                  §§goto(addr45);
               }
               §§goto(addr31);
            }
            §§goto(addr49);
         }
         §§goto(addr31);
      }
      
      public function §2I§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§"_§ = null;
         var _loc1_:* = int(this.§2!z§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§2!z§[_loc1_] as §"_§;
            if(!(_loc4_ && this))
            {
               §§push(_loc2_ == null);
               while(true)
               {
                  §§push(!§§pop());
                  if(_loc3_ || _loc3_)
                  {
                     if(!§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!(_loc4_ && _loc2_))
                              {
                                 this.§@o§(_loc1_,true);
                              }
                              loop3:
                              while(true)
                              {
                                 addr43:
                                 while(true)
                                 {
                                    §§push(_loc1_);
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    _loc1_ = §§pop();
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       break;
                                    }
                                    continue loop3;
                                 }
                                 if(_loc3_ || _loc1_)
                                 {
                                    while(false)
                                    {
                                       while(true)
                                       {
                                          §§push(_loc2_ is §[!=§);
                                          if(_loc3_ || _loc2_)
                                          {
                                             continue loop2;
                                          }
                                          addr135:
                                          addr135:
                                          while(true)
                                          {
                                             §§pop();
                                          }
                                       }
                                    }
                                    continue loop0;
                                    addr78:
                                 }
                                 while(true)
                                 {
                                    §§goto(addr80);
                                    §§goto(addr135);
                                 }
                                 continue loop2;
                              }
                           }
                           §§goto(addr43);
                        }
                        continue;
                        addr98:
                     }
                  }
                  §§goto(addr135);
               }
            }
            §§goto(addr78);
         }
      }
      
      public function §]!>§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§"_§ = null;
         var _loc1_:* = int(this.§2!z§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§2!z§[_loc1_] as §"_§;
            if(!(_loc3_ && _loc2_))
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
                           addr114:
                           while(true)
                           {
                              addr74:
                              while(true)
                              {
                                 §§push(_loc2_.§>""§());
                                 if(!_loc3_)
                                 {
                                    if(!_loc4_)
                                    {
                                       continue loop3;
                                    }
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 if(!_loc4_)
                                 {
                                    continue loop1;
                                 }
                              }
                              continue loop2;
                           }
                        }
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!_loc3_)
                           {
                              this.§@o§(_loc1_,true);
                           }
                           loop7:
                           while(!_loc3_)
                           {
                              while(true)
                              {
                                 §§push(_loc1_);
                                 if(!(_loc3_ && this))
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 _loc1_ = §§pop();
                                 if(_loc4_ || _loc3_)
                                 {
                                    while(false)
                                    {
                                       §§goto(addr74);
                                    }
                                    continue loop0;
                                    addr72:
                                 }
                                 continue loop7;
                              }
                           }
                           §§goto(addr114);
                        }
                        §§goto(addr44);
                     }
                  }
               }
            }
            §§goto(addr72);
         }
      }
      
      public function §<B§() : int
      {
         return this.§2!z§.length;
      }
      
      public function §?F§(param1:§5!0§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:§"_§ = null;
         var _loc5_:§8K§ = null;
         var _loc6_:§%!%§ = null;
         var _loc7_:§#J§ = null;
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc9_ && param1))
            {
               if(§§pop() >= this.§2!z§.length)
               {
                  §§push(Number(0));
                  break;
               }
               if(!(_loc4_ = this.§2!z§[_loc2_] as §"_§))
               {
                  if(!_loc8_)
                  {
                     addr53:
                  }
               }
               else
               {
                  §§push(_loc4_.§!?§);
                  if(_loc8_)
                  {
                     if(!§§pop())
                     {
                        if(_loc8_)
                        {
                           §§goto(addr53);
                        }
                        else
                        {
                           addr126:
                           §§push(_loc2_);
                           if(_loc8_)
                           {
                              §§push(§§pop() + 1);
                              if(!(_loc9_ && param1))
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           _loc2_ = §§pop();
                           continue;
                           addr59:
                        }
                        §§goto(addr126);
                     }
                     else
                     {
                        §§push(_loc4_.§!"'§());
                     }
                     §§goto(addr126);
                  }
                  if(§§pop())
                  {
                     if(_loc9_)
                     {
                        continue;
                     }
                     §§goto(addr59);
                  }
                  else
                  {
                     §§push(_loc5_ = new §8K§());
                     §§push(_loc4_.§[!G§());
                     if(!_loc9_)
                     {
                        §§push(§§pop() / (Math.PI / 180));
                     }
                     §§pop().angle = §§pop();
                     if(!_loc9_)
                     {
                        _loc5_.type = _loc4_.itemName;
                        while(true)
                        {
                           _loc5_.x = _loc4_.§^`§().GetPosition().x;
                           loop2:
                           while(true)
                           {
                              addr86:
                              while(true)
                              {
                                 _loc5_.y = _loc4_.§^`§().GetPosition().y;
                                 continue loop2;
                              }
                           }
                        }
                     }
                     while(false)
                     {
                        §§goto(addr86);
                     }
                  }
               }
               §§goto(addr126);
            }
            break;
         }
         var _loc3_:* = §§pop();
         if(_loc8_ || param1)
         {
            while(_loc3_ < this.§+!y§.length)
            {
               _loc7_ = this.§+!y§[_loc3_];
               _loc6_ = new §%!%§(_loc7_.type,_loc7_.id1,_loc7_.id2,_loc7_.point1,_loc7_.point2,_loc7_.§2!&§,_loc7_.§ ]§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§'"&§,_loc7_.motorSpeed,_loc7_.§=!f§,_loc7_.maxTorque);
               if(_loc8_ || _loc3_)
               {
                  param1.§[!7§(_loc6_);
                  if(_loc9_)
                  {
                     continue;
                  }
               }
               §§push(_loc3_);
               if(_loc8_)
               {
                  §§push(§§pop() + 1);
                  if(!_loc9_)
                  {
                     addr227:
                     §§push(Number(§§pop()));
                  }
                  _loc3_ = §§pop();
                  continue;
               }
               §§goto(addr227);
            }
         }
      }
      
      public function §?"%§(param1:Point, param2:Point) : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Array = [];
         var _loc4_:* = Number(0);
         while(true)
         {
            §§push(_loc4_);
            if(!(_loc6_ && param2))
            {
               if(§§pop() >= this.§2!z§.length)
               {
                  if(_loc5_ || this)
                  {
                     break;
                  }
                  loop2:
                  while(_loc6_ && this)
                  {
                     while(true)
                     {
                        continue loop2;
                     }
                  }
                  continue;
                  addr71:
               }
               else if(this.§2!z§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
               {
                  if(_loc5_)
                  {
                     _loc3_.push(this.§2!z§[_loc4_]);
                  }
                  §§goto(addr113);
               }
               while(true)
               {
                  §§push(_loc4_);
                  if(_loc5_ || param2)
                  {
                     §§push(§§pop() + 1);
                     if(_loc5_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
               }
            }
            while(true)
            {
               _loc4_ = §§pop();
               §§goto(addr71);
            }
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§"_§ = null;
         if(!(_loc5_ && _loc2_))
         {
            this.§?+§ = param1;
            if(_loc4_ || this)
            {
               addr36:
               this.§>t§(param1);
            }
            var _loc2_:* = Number(0);
            loop0:
            while(_loc2_ < this.§2!z§.length)
            {
               _loc3_ = this.§2!z§[_loc2_] as §"_§;
               if(_loc4_ || _loc3_)
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
                           addr146:
                           while(true)
                           {
                              addr102:
                              while(true)
                              {
                                 §§push(_loc3_.§0x§());
                                 if(_loc4_ || param1)
                                 {
                                    if(!_loc4_)
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
                              _loc3_.sprite.visible = !this.§?+§;
                              addr130:
                              while(true)
                              {
                              }
                              addr86:
                              if(_loc5_ && _loc3_)
                              {
                                 continue;
                              }
                              addr93:
                              if(_loc4_ || param1)
                              {
                                 while(false)
                                 {
                                    §§goto(addr102);
                                 }
                                 continue loop0;
                                 addr100:
                              }
                              §§goto(addr146);
                           }
                        }
                        while(true)
                        {
                           §§push(_loc2_);
                           if(_loc4_ || _loc2_)
                           {
                              §§push(§§pop() + 1);
                              if(_loc4_)
                              {
                                 addr82:
                                 §§push(Number(§§pop()));
                              }
                              _loc2_ = §§pop();
                              if(!_loc4_)
                              {
                                 continue;
                              }
                              §§goto(addr86);
                           }
                           §§goto(addr82);
                        }
                        §§goto(addr93);
                     }
                  }
               }
               §§goto(addr100);
            }
            return;
         }
         §§goto(addr36);
      }
      
      public function setCollisionsEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§ § = param1;
         }
      }
      
      public function §'6§() : int
      {
         return this.§-R§;
      }
      
      public function §-;§() : int
      {
         return this.§<!w§;
      }
      
      public function get damageScoreMultiplier() : int
      {
         return this.§<Y§.damageScoreMultiplier;
      }
   }
}
