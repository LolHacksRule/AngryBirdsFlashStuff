package §7P§
{
   import § #§.§&!>§;
   import §!!U§.§#"t§;
   import §!!U§.§2"D§;
   import §!!U§.Sprite;
   import §&v§.Texture;
   import §1!2§.b2JointEdge;
   import §1!2§.b2PrismaticJoint;
   import §1!2§.b2RevoluteJoint;
   import §1!i§.§,#_§;
   import §2"Y§.§"t§;
   import §2"Y§.§&!x§;
   import §2"Y§.§'§;
   import §2"Y§.§,!W§;
   import §2"Y§.§<"+§;
   import §2"Y§.§?#Q§;
   import §2"Y§.§?#^§;
   import §7!F§.§8!W§;
   import §7!F§.§>"G§;
   import §8[§.b2Contact;
   import §<"B§.§-!5§;
   import §<"B§.§-#'§;
   import §<"B§.§2!=§;
   import §<"B§.§94§;
   import §<"B§.§;!#§;
   import §="2§.§?!r§;
   import §?m§.§8!B§;
   import §[""§.§3!2§;
   import §[R§.b2Vec2;
   import §^#>§.§#_§;
   import §^#>§.§&'§;
   import §^#>§.§2-§;
   import §`!r§.§ U§;
   import §`!r§.§!!H§;
   import §`!r§.§,!w§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §;=§ implements §;$§
   {
      
      private static const §<!4§:Boolean = false;
      
      public static const §@"J§:int = 1000000000;
      
      public static const §]"Z§:int = -1;
      
      public static const §""3§:int = -2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §<!4§ = false;
         }
         while(true)
         {
            §@"J§ = 1000000000;
            while(_loc2_)
            {
               §]"Z§ = -1;
               while(!_loc1_)
               {
                  §""3§ = -2;
                  if(_loc2_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      protected var §1!b§:Vector.<§7B§>;
      
      protected var §63§:Vector.<§1#E§>;
      
      protected var §`#[§:Vector.<§!!H§>;
      
      protected var §8'§:§,#_§;
      
      private var §6!S§:int = 1000000000;
      
      public var §2#G§:§#_§;
      
      protected var §'"+§:Vector.<§>"_§>;
      
      protected var §9§:§!!U§.Sprite;
      
      protected var §;T§:§!!U§.Sprite;
      
      protected var §!V§:§!!U§.Sprite;
      
      protected var §8!>§:§!!U§.Sprite;
      
      protected var §4!m§:Vector.<Texture>;
      
      protected var §6!Z§:Vector.<§-!5§>;
      
      protected var §="H§:int = 1;
      
      protected var §>>§:Vector.<§;!#§>;
      
      protected var §#!3§:int = 0;
      
      private var §%"`§:int = 0;
      
      private var §[!Y§:int = 0;
      
      private var §!,§:§94§;
      
      private var §1!§:§?"N§;
      
      private var §4"R§:Boolean = true;
      
      private var §%#T§:Boolean = true;
      
      private var §]" §:§&!>§;
      
      private var §`#M§:Boolean = false;
      
      public function §;=§(param1:§#_§, param2:§8!B§, param3:§!!U§.Sprite, param4:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc6_:Number = NaN;
         if(!_loc7_)
         {
            this.§1!b§ = new Vector.<§7B§>();
            loop0:
            while(true)
            {
               this.§63§ = new Vector.<§1#E§>();
               while(true)
               {
                  this.§`#[§ = new Vector.<§!!H§>();
                  loop2:
                  while(true)
                  {
                     this.§8'§ = new §,#_§();
                     while(true)
                     {
                        this.§'"+§ = new Vector.<§>"_§>();
                        loop4:
                        while(true)
                        {
                           this.§4!m§ = new Vector.<Texture>();
                           loop5:
                           while(true)
                           {
                              this.§>>§ = new Vector.<§;!#§>();
                              loop6:
                              while(true)
                              {
                                 this.§!,§ = new §94§();
                                 loop7:
                                 while(true)
                                 {
                                    super();
                                    while(true)
                                    {
                                       this.§2#G§ = param1;
                                       addr276:
                                       while(true)
                                       {
                                          this.§9§ = param3;
                                          continue loop5;
                                       }
                                       loop15:
                                       while(!(_loc7_ && param1))
                                       {
                                          this.§!V§ = new §!!U§.Sprite();
                                          loop16:
                                          while(true)
                                          {
                                             this.§8!>§ = new §!!U§.Sprite();
                                             loop17:
                                             while(true)
                                             {
                                                §§push(this.§9§);
                                                while(true)
                                                {
                                                   §§pop().addChild(this.§;T§);
                                                   continue loop16;
                                                   addr202:
                                                   §§push(this.§9§);
                                                   if(_loc7_ && param2)
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc8_)
                                                   {
                                                      §§pop().addChild(this.§!V§);
                                                      loop20:
                                                      while(!_loc7_)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            if(!param2.hasGround)
                                                            {
                                                               loop27:
                                                               while(true)
                                                               {
                                                                  this.addLevelObjects(param2);
                                                                  if(!_loc8_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc7_ && param3))
                                                                        {
                                                                           if(!_loc8_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(!_loc7_)
                                                                           {
                                                                              continue loop27;
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                        continue loop16;
                                                                     }
                                                                     continue loop6;
                                                                     addr51:
                                                                  }
                                                                  addr34:
                                                                  if(!(_loc7_ && param1))
                                                                  {
                                                                     break;
                                                                  }
                                                                  loop25:
                                                                  while(true)
                                                                  {
                                                                     if(_loc8_ || param2)
                                                                     {
                                                                        addr88:
                                                                        if(!(_loc7_ && param3))
                                                                        {
                                                                           if(_loc7_ && this)
                                                                           {
                                                                              continue loop20;
                                                                           }
                                                                           if(_loc8_)
                                                                           {
                                                                              this.addObject(param4,_loc5_,_loc6_,0,§;=§.§]"Z§);
                                                                              §§goto(addr51);
                                                                           }
                                                                           §§goto(addr276);
                                                                           continue loop20;
                                                                        }
                                                                        continue loop17;
                                                                     }
                                                                     addr146:
                                                                     loop24:
                                                                     while(true)
                                                                     {
                                                                        §§push(0 + §2-§.§?! §);
                                                                        if(!_loc7_)
                                                                        {
                                                                           if(_loc8_)
                                                                           {
                                                                              addr72:
                                                                              if(!(_loc7_ && param3))
                                                                              {
                                                                                 addr80:
                                                                                 _loc6_ = §§pop();
                                                                                 continue loop25;
                                                                              }
                                                                              addr136:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() / 2);
                                                                                 if(!(_loc7_ && this))
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    break loop24;
                                                                                 }
                                                                                 break loop24;
                                                                                 §§goto(addr72);
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr80);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        _loc5_ = §§pop();
                                                                        §§goto(addr147);
                                                                     }
                                                                     addr147:
                                                                  }
                                                                  §§goto(addr276);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr41:
                                                            }
                                                            continue loop17;
                                                            return;
                                                         }
                                                         continue loop2;
                                                      }
                                                      continue loop7;
                                                   }
                                                   addr250:
                                                   while(true)
                                                   {
                                                      §§pop().§3'§ = false;
                                                      loop12:
                                                      while(true)
                                                      {
                                                         this.§%#T§ = true;
                                                         loop13:
                                                         while(true)
                                                         {
                                                            this.§4"R§ = true;
                                                            addr232:
                                                            while(true)
                                                            {
                                                               if(_loc8_ || param3)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  this.§;T§ = new §!!U§.Sprite();
                                                                  continue loop15;
                                                               }
                                                               continue loop13;
                                                               addr193:
                                                               if(_loc7_ && param2)
                                                               {
                                                                  continue;
                                                               }
                                                               if(!_loc8_)
                                                               {
                                                                  continue loop12;
                                                               }
                                                               §§goto(addr202);
                                                            }
                                                            continue loop4;
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
                        if(!(_loc8_ || param2))
                        {
                           continue;
                        }
                        §§push(this.§2#G§.§""?§.§!M§);
                        if(!_loc7_)
                        {
                           §§goto(addr136);
                           §§push(§§pop() + this.§2#G§.§""?§.§="q§);
                        }
                        §§goto(addr146);
                     }
                  }
                  if(!(_loc8_ || param2))
                  {
                     continue;
                  }
                  §§goto(addr250);
                  §§push(this.§9§);
               }
            }
         }
         §§goto(addr41);
      }
      
      public function get §!'§() : §!!U§.Sprite
      {
         return this.§8!>§;
      }
      
      public function get §8#G§() : §!!U§.Sprite
      {
         return this.§9§;
      }
      
      public function get activeObject() : §&#=§
      {
         return this.§1!§;
      }
      
      public function get objectCount() : int
      {
         return this.§1!b§.length;
      }
      
      public function set §-7§(param1:§&!>§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(param1 != this.§]" §)
            {
               loop0:
               while(true)
               {
                  this.§]" § = param1;
                  addr120:
                  while(true)
                  {
                     §§push(this.§`#M§);
                     if(!_loc2_)
                     {
                        §§push(Boolean(§§pop()));
                        if(!(_loc2_ && param1))
                        {
                           addr92:
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc3_ || this)
                                    {
                                       if(!(_loc3_ || _loc3_))
                                       {
                                          break;
                                       }
                                       §§push(this.§]" §);
                                       while(true)
                                       {
                                          §§pop().levelStarted();
                                       }
                                    }
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          addr25:
                                          return;
                                          addr78:
                                       }
                                       continue loop0;
                                    }
                                 }
                                 §§goto(addr25);
                              }
                              continue;
                              addr47:
                           }
                        }
                        while(true)
                        {
                           §§pop();
                           §§push(Boolean(§§pop()));
                           addr39:
                           continue loop0;
                           if(!(_loc3_ || _loc3_))
                           {
                              continue;
                           }
                           §§goto(addr47);
                        }
                     }
                     §§goto(addr92);
                  }
               }
            }
            §§goto(addr25);
         }
         §§goto(addr120);
      }
      
      public function levelInitialized() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!this.§`#M§)
            {
               loop0:
               do
               {
                  this.§`#M§ = true;
                  while(true)
                  {
                     §§push(this.§]" §);
                     if(!_loc1_)
                     {
                        break;
                     }
                     if(!§§pop())
                     {
                        return;
                     }
                     addr19:
                     if(!_loc2_)
                     {
                        if(_loc1_ || _loc2_)
                        {
                           §§push(this.§]" §);
                           break;
                        }
                        continue;
                     }
                     continue loop0;
                  }
                  §§pop().levelStarted();
               }
               while(!_loc1_);
               
               addr63:
            }
            §§goto(addr19);
         }
         §§goto(addr63);
      }
      
      public function §0"I§(param1:String) : §"t§
      {
         return this.§2#G§.levelItemManager.getItem(param1);
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = false;
         if(!(_loc5_ && _loc3_))
         {
            §§push(this.§1!§);
            if(_loc4_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr64);
            }
            §§push(§§pop().activateSpecialPower(this,param1,param2));
            if(_loc4_)
            {
               §§push(Boolean(§§pop()));
               if(_loc4_)
               {
                  _loc3_ = §§pop();
                  §§goto(addr64);
               }
            }
            §§goto(addr64);
         }
         addr64:
         if(_loc4_)
         {
            §§push(this.§1!§);
         }
         return _loc3_;
      }
      
      protected function addLevelObjects(param1:§8!B§) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:§94§ = null;
         var _loc4_:* = NaN;
         var _loc5_:§"t§ = null;
         var _loc6_:§-#'§ = null;
         var _loc2_:* = 0;
         if(_loc7_)
         {
            _loc2_ = 0;
         }
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(_loc7_)
            {
               §§push(param1.objectCount);
               if(_loc7_ || this)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(!_loc8_)
                     {
                        this.§-]§();
                        if(_loc7_)
                        {
                           this.§`!l§(true);
                           if(_loc7_)
                           {
                              addr151:
                              loop5:
                              while(true)
                              {
                                 this.§6!Z§ = new Vector.<§-!5§>();
                                 if(!_loc8_)
                                 {
                                    while(true)
                                    {
                                       §§push(0);
                                       if(_loc7_ || this)
                                       {
                                          _loc2_ = §§pop();
                                          if(_loc7_)
                                          {
                                             if(false)
                                             {
                                                continue loop5;
                                             }
                                             addr187:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                break loop0;
                                             }
                                          }
                                       }
                                       break loop0;
                                    }
                                    addr145:
                                 }
                              }
                           }
                           §§goto(addr191);
                        }
                        §§goto(addr145);
                     }
                     §§goto(addr151);
                  }
                  else
                  {
                     _loc3_ = param1.getObject(_loc2_);
                     if(_loc7_ || this)
                     {
                        _loc4_ = Number(1);
                     }
                     if(_loc5_ = this.§2#G§.levelItemManager.getItem(_loc3_.type))
                     {
                        if(!_loc8_)
                        {
                           §§push(_loc5_.scale);
                           if(!(_loc8_ && _loc2_))
                           {
                              §§push(Number(§§pop()));
                           }
                           _loc4_ = §§pop();
                           if(!(_loc8_ && _loc2_))
                           {
                              this.§<#1§(_loc3_,_loc3_.id,false,false,false,_loc4_);
                              addr80:
                              if(!_loc7_)
                              {
                                 continue;
                              }
                           }
                           _loc2_++;
                           continue;
                        }
                     }
                     §§goto(addr80);
                  }
               }
               while(§§pop() < §§pop())
               {
                  _loc6_ = param1.§0#V§(_loc2_);
                  if(_loc7_ || _loc3_)
                  {
                     this.§]!3§(_loc6_);
                     if(!(_loc8_ && this))
                     {
                        addr186:
                        _loc2_++;
                     }
                     §§goto(addr187);
                  }
                  §§goto(addr186);
                  break loop0;
               }
               addr191:
               return;
               addr190:
            }
            break;
         }
         while(true)
         {
            §§goto(addr190);
         }
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Texture = null;
         while(true)
         {
            if(this.§1!b§.length > 0)
            {
               this.§5#<§(0,false,true);
               continue;
            }
            loop1:
            while(true)
            {
               while(true)
               {
                  if(this.§`#[§.length <= 0)
                  {
                     loop3:
                     while(true)
                     {
                        this.§1!b§ = null;
                        loop4:
                        while(true)
                        {
                           this.§63§ = null;
                           loop5:
                           while(!_loc2_)
                           {
                              this.§`#[§ = null;
                              while(true)
                              {
                                 this.§8'§ = null;
                                 while(true)
                                 {
                                    this.§>>§ = null;
                                    while(true)
                                    {
                                       §§push(this.§9§);
                                       if(_loc3_)
                                       {
                                          if(§§pop())
                                          {
                                             loop9:
                                             while(_loc3_ || _loc1_)
                                             {
                                                §§push(this.§9§);
                                                while(true)
                                                {
                                                   §§pop().dispose();
                                                   loop16:
                                                   while(true)
                                                   {
                                                      this.§9§ = null;
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         addr121:
                                                         while(true)
                                                         {
                                                            this.§;T§ = null;
                                                            loop11:
                                                            while(_loc3_)
                                                            {
                                                               this.§!V§ = null;
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  if(_loc2_ && _loc1_)
                                                                  {
                                                                     continue loop16;
                                                                  }
                                                                  if(_loc2_)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  do
                                                                  {
                                                                     §§push(this.§8!>§);
                                                                     if(_loc3_)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(_loc2_ && _loc2_)
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        if(_loc2_)
                                                                        {
                                                                           continue loop11;
                                                                        }
                                                                        if(!_loc3_)
                                                                        {
                                                                           continue loop5;
                                                                        }
                                                                        §§push(this.§8!>§);
                                                                     }
                                                                     §§pop().dispose();
                                                                     continue loop12;
                                                                  }
                                                                  while(false);
                                                                  
                                                                  addr220:
                                                                  if(this.§4!m§.length > 0)
                                                                  {
                                                                     _loc1_ = this.§4!m§.pop();
                                                                     if(!(_loc2_ && this))
                                                                     {
                                                                        this.§2#G§.textureManager.unregisterBitmapDataTexture(_loc1_);
                                                                     }
                                                                     §§goto(addr220);
                                                                  }
                                                               }
                                                               continue loop16;
                                                            }
                                                            continue loop3;
                                                            §§goto(addr121);
                                                         }
                                                         addr93:
                                                      }
                                                      return;
                                                   }
                                                }
                                             }
                                             continue loop1;
                                          }
                                          §§goto(addr93);
                                       }
                                       §§goto(addr137);
                                    }
                                    if(!(_loc3_ || _loc1_))
                                    {
                                       continue;
                                    }
                                    if(_loc2_)
                                    {
                                       continue loop4;
                                    }
                                    §§goto(addr78);
                                 }
                              }
                           }
                        }
                     }
                  }
                  else
                  {
                     this.§,#[§(0);
                  }
               }
            }
         }
      }
      
      private function §`!l§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§;T§.visible = param1;
         }
      }
      
      private function §-]§() : void
      {
         var _loc24_:Boolean = false;
         var _loc25_:Boolean = true;
         var _loc3_:§7B§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:§&#=§ = null;
         var _loc6_:§?#^§ = null;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = 0;
         var _loc14_:* = 0;
         var _loc15_:* = 0;
         var _loc16_:* = 0;
         var _loc17_:BitmapData = null;
         var _loc18_:* = NaN;
         var _loc19_:BitmapData = null;
         var _loc20_:Texture = null;
         var _loc21_:§#"t§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§&#=§> = new Vector.<§&#=§>();
         for each(_loc3_ in this.§1!b§)
         {
            §§push(Boolean(_loc5_ = _loc3_ as §&#=§));
            if(!(_loc24_ && _loc1_))
            {
               if(§§pop())
               {
                  if(!(_loc24_ && _loc1_))
                  {
                     §§pop();
                     if(_loc25_ || this)
                     {
                        §§push(_loc5_.§"!@§());
                        if(!(_loc24_ && this))
                        {
                           addr126:
                           if(!§§pop())
                           {
                              continue;
                           }
                           if(!_loc24_)
                           {
                              addr129:
                              _loc2_.push(_loc5_);
                           }
                           _loc6_ = _loc5_.levelItem.shape;
                           if(_loc25_ || _loc2_)
                           {
                              §§push(Math.max(_loc6_.getWidth(),_loc6_.getHeight()) / §#_§.§8]§);
                              if(_loc25_ || _loc1_)
                              {
                                 §§push(§§pop() * Math.sqrt(2));
                                 if(!_loc24_)
                                 {
                                    addr166:
                                    §§push(Number(§§pop()));
                                 }
                                 _loc7_ = §§pop();
                                 addr168:
                                 _loc4_ = new Rectangle(_loc3_.sprite.x - _loc7_ / 2,_loc3_.sprite.y - _loc7_ / 2,_loc7_,_loc7_);
                                 if(!(_loc24_ && _loc1_))
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
                              §§goto(addr166);
                           }
                           §§goto(addr168);
                        }
                        §§goto(addr126);
                     }
                     §§goto(addr129);
                  }
                  §§goto(addr126);
               }
            }
            §§goto(addr126);
         }
         if(!_loc24_)
         {
            if(_loc1_)
            {
               loop1:
               while(true)
               {
                  §§push(this.§2#G§);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop().camera);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop().§'^§);
                        loop4:
                        while(true)
                        {
                           §§push(§#_§.§8]§);
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
                                       §§push(this.§2#G§);
                                       if(!(_loc25_ || _loc2_))
                                       {
                                          break;
                                       }
                                       §§push(§§pop().camera);
                                       if(_loc24_ && _loc3_)
                                       {
                                          continue loop3;
                                       }
                                       §§push(§§pop().§="!§);
                                       loop9:
                                       while(true)
                                       {
                                          §§push(§#_§.§8]§);
                                          loop10:
                                          while(true)
                                          {
                                             §§push(§§pop() / §§pop());
                                             loop11:
                                             while(_loc25_ || _loc2_)
                                             {
                                                §§push(Number(§§pop()));
                                                loop12:
                                                while(true)
                                                {
                                                   _loc9_ = §§pop();
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§push(_loc8_);
                                                      while(true)
                                                      {
                                                         §§push(_loc9_);
                                                         addr633:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            continue loop9;
                                                         }
                                                         loop26:
                                                         while(_loc25_ || _loc3_)
                                                         {
                                                            §§push(_loc11_);
                                                            loop27:
                                                            for(; !(_loc24_ && this); while(true)
                                                            {
                                                               if(!(_loc25_ || _loc3_))
                                                               {
                                                                  continue loop27;
                                                               }
                                                               if(!_loc24_)
                                                               {
                                                                  §§goto(addr556);
                                                                  §§push(§§pop() + §§pop());
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr601);
                                                               }
                                                               §§goto(addr341);
                                                            },§§goto(addr602))
                                                            {
                                                               if(!(_loc25_ || _loc2_))
                                                               {
                                                                  continue loop10;
                                                               }
                                                               §§push(§§pop() - §§pop());
                                                               loop28:
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  loop29:
                                                                  while(_loc25_)
                                                                  {
                                                                     _loc8_ = §§pop();
                                                                     loop30:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc10_);
                                                                        if(!(_loc24_ && _loc3_))
                                                                        {
                                                                           §§push(_loc11_);
                                                                           continue loop27;
                                                                        }
                                                                        loop33:
                                                                        while(true)
                                                                        {
                                                                           _loc9_ = §§pop();
                                                                           while(true)
                                                                           {
                                                                              _loc1_.left = Math.max(_loc1_.left,_loc8_) - 4;
                                                                              loop35:
                                                                              while(!(_loc24_ && _loc3_))
                                                                              {
                                                                                 _loc1_.right = Math.min(_loc1_.right,_loc9_) + 4;
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc1_.left >= _loc1_.right - 1)
                                                                                    {
                                                                                       if(!(_loc25_ || this))
                                                                                       {
                                                                                          continue loop35;
                                                                                       }
                                                                                       §§goto(addr505);
                                                                                       continue loop35;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(1);
                                                                                       addr479:
                                                                                       addr506:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          addr480:
                                                                                          addr620:
                                                                                          while(_loc25_)
                                                                                          {
                                                                                             continue loop12;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             break loop29;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 return;
                                                                              }
                                                                           }
                                                                           addr371:
                                                                           if(!(_loc25_ || this))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(_loc24_)
                                                                           {
                                                                              continue loop26;
                                                                           }
                                                                           if(!_loc24_)
                                                                           {
                                                                              if(!(_loc24_ && _loc3_))
                                                                              {
                                                                                 addr390:
                                                                                 §§push(Number(§§pop()));
                                                                                 if(!(_loc24_ && _loc3_))
                                                                                 {
                                                                                    if(!_loc25_)
                                                                                    {
                                                                                       continue loop29;
                                                                                    }
                                                                                    _loc12_ = §§pop();
                                                                                    addr400:
                                                                                    if(_loc25_ || this)
                                                                                    {
                                                                                       if(_loc25_)
                                                                                       {
                                                                                          addr409:
                                                                                          loop41:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc1_.width > 2048);
                                                                                             loop42:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   loop43:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      addr332:
                                                                                                      do
                                                                                                      {
                                                                                                         §§push(_loc1_.height > 2048);
                                                                                                         if(!_loc25_)
                                                                                                         {
                                                                                                            continue loop43;
                                                                                                         }
                                                                                                      }
                                                                                                      while(!(_loc24_ && _loc1_));
                                                                                                      
                                                                                                      continue loop42;
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      loop46:
                                                                                                      while(_loc25_ || _loc2_)
                                                                                                      {
                                                                                                         if(!_loc24_)
                                                                                                         {
                                                                                                            §§push(int(_loc1_.width));
                                                                                                            loop47:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc13_ = §§pop();
                                                                                                               loop48:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc24_)
                                                                                                                  {
                                                                                                                     if(_loc24_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§push(int(_loc1_.height));
                                                                                                                     loop49:
                                                                                                                     for(; !_loc24_; loop52:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc24_ && _loc3_))
                                                                                                                        {
                                                                                                                           if(_loc24_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           _loc15_ = §§pop();
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc24_)
                                                                                                                              {
                                                                                                                                 if(_loc24_ && _loc3_)
                                                                                                                                 {
                                                                                                                                    continue loop48;
                                                                                                                                 }
                                                                                                                                 if(!_loc24_)
                                                                                                                                 {
                                                                                                                                    if(!_loc24_)
                                                                                                                                    {
                                                                                                                                       §§push(int(_loc1_.top));
                                                                                                                                       if(!_loc25_)
                                                                                                                                       {
                                                                                                                                          continue loop52;
                                                                                                                                       }
                                                                                                                                       _loc16_ = §§pop();
                                                                                                                                       if(_loc24_)
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       if(_loc24_)
                                                                                                                                       {
                                                                                                                                          continue loop46;
                                                                                                                                       }
                                                                                                                                       if(_loc25_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          if(false)
                                                                                                                                          {
                                                                                                                                             §§goto(addr243);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             _loc17_ = new BitmapData(_loc13_,_loc14_,true,0);
                                                                                                                                             if(_loc25_)
                                                                                                                                             {
                                                                                                                                                §§push(this.getLevelTextureScale());
                                                                                                                                                if(_loc25_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                }
                                                                                                                                                _loc18_ = §§pop();
                                                                                                                                                if(_loc25_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   addr718:
                                                                                                                                                   this.§="F§(_loc17_.rect,_loc17_,_loc12_ * _loc18_);
                                                                                                                                                }
                                                                                                                                                _loc19_ = this.§'"=§(_loc2_,_loc13_,_loc14_,_loc15_,_loc16_,_loc12_);
                                                                                                                                                if(!(_loc24_ && _loc1_))
                                                                                                                                                {
                                                                                                                                                   _loc17_.copyChannel(_loc19_,_loc19_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
                                                                                                                                                }
                                                                                                                                                _loc20_ = this.§2#G§.textureManager.getTextureFromBitmapData(_loc17_);
                                                                                                                                                if(!(_loc24_ && this))
                                                                                                                                                {
                                                                                                                                                   this.§4!m§.push(_loc20_);
                                                                                                                                                }
                                                                                                                                                (_loc21_ = new §#"t§(_loc20_)).x = _loc15_ / _loc12_;
                                                                                                                                                if(_loc25_ || this)
                                                                                                                                                {
                                                                                                                                                   _loc21_.y = _loc16_ / _loc12_;
                                                                                                                                                }
                                                                                                                                                _loc21_.scaleX = 1 / _loc12_;
                                                                                                                                                _loc21_.scaleY = 1 / _loc12_;
                                                                                                                                                addr850:
                                                                                                                                                if(!_loc24_)
                                                                                                                                                {
                                                                                                                                                   addr813:
                                                                                                                                                   this.§;T§.addChild(_loc21_);
                                                                                                                                                   _loc19_.dispose();
                                                                                                                                                   if(!_loc24_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc25_ || this)
                                                                                                                                                      {
                                                                                                                                                         if(_loc25_ || _loc1_)
                                                                                                                                                         {
                                                                                                                                                            if(false)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr813);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr851);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr850);
                                                                                                                                                   }
                                                                                                                                                   addr818:
                                                                                                                                                   §§goto(addr818);
                                                                                                                                                }
                                                                                                                                                addr844:
                                                                                                                                                §§goto(addr844);
                                                                                                                                             }
                                                                                                                                             §§goto(addr718);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr645);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr517);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr278);
                                                                                                                              }
                                                                                                                              §§goto(addr457);
                                                                                                                           }
                                                                                                                           continue loop8;
                                                                                                                        }
                                                                                                                        continue loop49;
                                                                                                                     },§§goto(addr479))
                                                                                                                     {
                                                                                                                        _loc14_ = §§pop();
                                                                                                                        while(_loc25_)
                                                                                                                        {
                                                                                                                           if(_loc24_)
                                                                                                                           {
                                                                                                                              addr474:
                                                                                                                              if(!_loc24_)
                                                                                                                              {
                                                                                                                                 _loc1_.top /= 1.05;
                                                                                                                                 addr457:
                                                                                                                                 if(_loc25_ || this)
                                                                                                                                 {
                                                                                                                                    _loc1_.right /= 1.05;
                                                                                                                                    continue loop30;
                                                                                                                                 }
                                                                                                                                 continue loop8;
                                                                                                                              }
                                                                                                                              continue loop1;
                                                                                                                           }
                                                                                                                           addr282:
                                                                                                                           if(!(_loc24_ && _loc1_))
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(int(_loc1_.left));
                                                                                                                                 continue loop49;
                                                                                                                              }
                                                                                                                              continue loop46;
                                                                                                                              addr243:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr629:
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              continue loop26;
                                                                                                                              §§goto(addr282);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        if(_loc24_ && _loc2_)
                                                                                                                        {
                                                                                                                           continue loop30;
                                                                                                                        }
                                                                                                                        §§push(_loc12_);
                                                                                                                        if(!_loc24_)
                                                                                                                        {
                                                                                                                           if(!_loc24_)
                                                                                                                           {
                                                                                                                              if(!_loc25_)
                                                                                                                              {
                                                                                                                                 continue loop6;
                                                                                                                              }
                                                                                                                              §§push(1.05);
                                                                                                                              if(_loc24_ && _loc1_)
                                                                                                                              {
                                                                                                                                 continue loop27;
                                                                                                                              }
                                                                                                                              if(!(_loc25_ || _loc3_))
                                                                                                                              {
                                                                                                                                 continue loop5;
                                                                                                                              }
                                                                                                                              §§push(§§pop() / §§pop());
                                                                                                                              if(_loc25_ || _loc3_)
                                                                                                                              {
                                                                                                                                 if(!(_loc24_ && this))
                                                                                                                                 {
                                                                                                                                    §§goto(addr371);
                                                                                                                                 }
                                                                                                                                 §§goto(addr480);
                                                                                                                              }
                                                                                                                              §§goto(addr390);
                                                                                                                           }
                                                                                                                           loop22:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc24_)
                                                                                                                              {
                                                                                                                                 if(!(_loc25_ || _loc2_))
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 addr611:
                                                                                                                                 §§push(2);
                                                                                                                                 if(!(_loc24_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    §§goto(addr620);
                                                                                                                                    §§push(§§pop() / §§pop());
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() / §§pop());
                                                                                                                                       addr643:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                       }
                                                                                                                                       §§goto(addr611);
                                                                                                                                    }
                                                                                                                                    addr642:
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc10_ = §§pop();
                                                                                                                                 addr645:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc9_);
                                                                                                                                    if(!(_loc25_ || _loc3_))
                                                                                                                                    {
                                                                                                                                       break loop29;
                                                                                                                                    }
                                                                                                                                    §§push(_loc8_);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       continue loop22;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop9;
                                                                                                                           addr602:
                                                                                                                        }
                                                                                                                        §§goto(addr390);
                                                                                                                     }
                                                                                                                     continue loop47;
                                                                                                                  }
                                                                                                                  addr490:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     continue loop41;
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop13;
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr400);
                                                                                                      }
                                                                                                      §§goto(addr332);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      _loc1_.left /= 1.05;
                                                                                                   }
                                                                                                   §§goto(addr474);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr498);
                                                                                    }
                                                                                    §§goto(addr506);
                                                                                 }
                                                                                 while(_loc25_)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    continue loop33;
                                                                                    §§goto(addr390);
                                                                                 }
                                                                                 continue loop28;
                                                                                 addr556:
                                                                              }
                                                                              continue loop7;
                                                                           }
                                                                           §§goto(addr643);
                                                                        }
                                                                     }
                                                                  }
                                                                  while(_loc25_ || this)
                                                                  {
                                                                     _loc11_ = §§pop();
                                                                     §§goto(addr629);
                                                                  }
                                                                  continue loop11;
                                                               }
                                                            }
                                                            §§goto(addr633);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             continue loop4;
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
            addr851:
            return;
         }
         §§goto(addr505);
      }
      
      private function §'"=§(param1:Vector.<§&#=§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc7_:§&#=§ = null;
         var _loc11_:* = NaN;
         var _loc12_:§?#^§ = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         loop0:
         for each(_loc7_ in param1)
         {
            if(!(_loc15_ && param3))
            {
               _loc10_.identity();
               if(!_loc15_)
               {
                  addr68:
                  §§push(param6);
                  if(_loc16_)
                  {
                     §§push(Number(§§pop()));
                  }
                  _loc11_ = §§pop();
               }
               §§push((_loc12_ = _loc7_.levelItem.shape) is §<"+§);
               if(!(_loc15_ && this))
               {
                  if(§§pop())
                  {
                     if(!_loc15_)
                     {
                        this.§,"r§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§"#,§(),param6,_loc11_,param4,param5);
                        if(_loc16_ || param2)
                        {
                           continue;
                        }
                        addr178:
                        addr247:
                     }
                     else
                     {
                        addr190:
                        this.§0"!§(_loc12_ as §,!W§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§"#,§(),param6,_loc11_,param4,param5);
                     }
                     addr117:
                     continue;
                  }
                  §§push(_loc12_ is §,!W§);
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc16_ || param1)
                        {
                           if((_loc12_ as §,!W§).vertices.length == 4)
                           {
                              break;
                           }
                           if((_loc12_ as §,!W§).vertices.length == 3)
                           {
                              if(_loc15_)
                              {
                              }
                              §§goto(addr190);
                           }
                           §§goto(addr117);
                        }
                        break;
                     }
                     §§push(_loc12_ is §?#Q§);
                     if(!(_loc16_ || param2))
                     {
                        continue;
                     }
                     if(!§§pop())
                     {
                        continue loop0;
                     }
                     if(_loc16_)
                     {
                        if(_loc16_)
                        {
                           if(_loc16_ || param1)
                           {
                              this.§1]§(_loc12_ as §?#Q§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,param6,_loc11_,param4,param5);
                              addr169:
                              if(_loc15_ && this)
                              {
                                 break;
                              }
                              if(true)
                              {
                                 continue loop0;
                              }
                              §§goto(addr178);
                           }
                           §§goto(addr247);
                        }
                        else
                        {
                           §§goto(addr190);
                        }
                     }
                     §§goto(addr169);
                  }
                  this.§,"r§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§"#,§(),param6,_loc11_,param4,param5);
                  addr214:
                  §§goto(addr178);
               }
               §§goto(addr214);
            }
            §§goto(addr68);
         }
         if(!(_loc15_ && param1))
         {
            _loc9_.dispose();
         }
         return _loc8_;
      }
      
      protected function §,"r§(param1:§?#^§, param2:BitmapData, param3:BitmapData, param4:Matrix, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         §§push(param1.getWidth());
         if(_loc15_)
         {
            §§push(§#_§.§8]§);
            if(_loc15_ || this)
            {
               addr43:
               §§push(§§pop() / §§pop());
               if(_loc15_)
               {
                  §§push(param9);
               }
               var _loc12_:* = §§pop();
               §§push(param1.getHeight());
               if(_loc15_ || param1)
               {
                  §§push(§#_§.§8]§);
                  if(_loc15_ || param1)
                  {
                     addr74:
                     §§push(§§pop() / §§pop());
                     if(_loc15_)
                     {
                        §§push(param9);
                     }
                     var _loc13_:Number = §§pop();
                     if(_loc15_ || param2)
                     {
                        param4.scale(_loc12_,_loc13_);
                        while(true)
                        {
                           param4.translate(-_loc12_ / 2,-_loc13_ / 2);
                           loop1:
                           for(; !(_loc14_ && param1); if(!(_loc15_ || this))
                           {
                              continue;
                           },§§goto(addr138))
                           {
                              param4.rotate(param7);
                              while(true)
                              {
                                 param4.translate(param5 * param8 - param10,param6 * param8 - param11);
                                 loop3:
                                 while(_loc15_ || this)
                                 {
                                    continue loop1;
                                    while(true)
                                    {
                                       param2.draw(param3,param4);
                                       if(!(_loc14_ && this))
                                       {
                                          break;
                                       }
                                       continue loop3;
                                    }
                                    return;
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr138);
                  }
                  §§push(§§pop() * §§pop());
                  if(_loc15_ || param1)
                  {
                  }
               }
               §§goto(addr74);
            }
            §§push(§§pop() * §§pop());
            if(_loc15_ || this)
            {
               §§push(Number(§§pop()));
            }
         }
         §§goto(addr43);
      }
      
      protected function §0"!§(param1:§,!W§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc14_:b2Vec2 = null;
         var _loc11_:flash.display.Sprite;
         (_loc11_ = new flash.display.Sprite()).graphics.beginFill(16777215);
         var _loc12_:Vector.<Number> = new Vector.<Number>();
         var _loc13_:int = 0;
         while(_loc13_ < param1.vertices.length)
         {
            _loc14_ = param1.vertices[_loc13_];
            if(_loc16_ || this)
            {
               _loc12_.push(_loc14_.x / §#_§.§8]§ * param8,_loc14_.y / §#_§.§8]§ * param8);
               if(_loc15_ && param2)
               {
                  continue;
               }
            }
            _loc13_++;
         }
         if(!(_loc15_ && param1))
         {
            _loc11_.graphics.drawTriangles(_loc12_);
            if(_loc16_ || this)
            {
               _loc11_.graphics.endFill();
               while(true)
               {
                  param3.rotate(param6);
               }
               addr166:
            }
         }
         while(true)
         {
            param3.translate(param4 * param7 - param9,param5 * param7 - param10);
            loop3:
            while(true)
            {
               addr126:
               while(true)
               {
                  param2.draw(_loc11_,param3);
                  while(!_loc15_)
                  {
                     _loc11_.graphics.clear();
                     if(_loc16_)
                     {
                        continue loop3;
                     }
                  }
                  §§goto(addr166);
               }
            }
         }
      }
      
      protected function §1]§(param1:§?#Q§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         §§push(param1.radius);
         if(_loc13_ || param2)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:*;
         §§push(_loc10_ = §§pop());
         if(_loc13_ || param2)
         {
            §§push(§#_§.§8]§);
            if(_loc13_ || this)
            {
               §§push(§§pop() / §§pop());
               if(!_loc14_)
               {
                  addr48:
                  §§push(§§pop() * param7);
                  if(!(_loc14_ && param2))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc11_:* = §§pop();
               var _loc12_:flash.display.Sprite;
               (_loc12_ = new flash.display.Sprite()).graphics.beginFill(16777215);
               if(!_loc14_)
               {
                  _loc12_.graphics.drawCircle(_loc11_,_loc11_,_loc11_);
                  while(true)
                  {
                     _loc12_.graphics.endFill();
                     addr101:
                     if(!(_loc13_ || this))
                     {
                        continue;
                     }
                     _loc12_.graphics.clear();
                     if(_loc13_)
                     {
                        addr85:
                        if(_loc13_ || param1)
                        {
                           if(false)
                           {
                              loop3:
                              while(true)
                              {
                                 param2.draw(_loc12_,param3);
                                 addr99:
                                 addr131:
                                 while(_loc13_)
                                 {
                                    §§goto(addr101);
                                 }
                                 while(true)
                                 {
                                    param3.translate(param4 * param6 - param8 - _loc11_,param5 * param6 - param9 - _loc11_);
                                    break loop3;
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr94);
                                 §§goto(addr85);
                              }
                              addr94:
                              addr126:
                           }
                           _loc12_ = null;
                           return;
                        }
                        §§goto(addr126);
                     }
                     §§goto(addr99);
                  }
               }
               §§goto(addr131);
            }
         }
         §§goto(addr48);
      }
      
      protected function §@#[§() : String
      {
         return this.§2#G§.background.§[!!§();
      }
      
      protected function getLevelTextureScale() : Number
      {
         return 1;
      }
      
      private function §="F§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc15_:* = 0;
         §§push(this.§@#[§());
         if(!_loc16_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         var _loc5_:§8!W§;
         if(_loc5_ = this.§2#G§.backgroundTextureManager.getTexture(_loc4_))
         {
            _loc6_ = new BitmapData(_loc5_.bitmapData.width * param3,_loc5_.bitmapData.height * param3);
            (_loc7_ = new Matrix()).scale(param3,param3);
            if(_loc17_ || param3)
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
                     loop2:
                     while(true)
                     {
                        _loc8_ = §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(_loc6_.height - 2);
                           loop4:
                           while(true)
                           {
                              §§push(int(§§pop()));
                              addr409:
                              while(true)
                              {
                                 _loc9_ = §§pop();
                                 addr410:
                                 while(!_loc16_)
                                 {
                                 }
                                 continue loop3;
                              }
                              addr362:
                              if(_loc17_ || this)
                              {
                                 §§push(int(§§pop()));
                                 if(!_loc16_)
                                 {
                                    §§push(§§pop());
                                    while(true)
                                    {
                                       _loc11_ = §§pop();
                                       addr374:
                                       while(true)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                    }
                                    addr373:
                                 }
                                 loop19:
                                 while(_loc17_ || this)
                                 {
                                    _loc11_ = §§pop();
                                    loop20:
                                    while(!_loc16_)
                                    {
                                       §§push(param1.left / _loc8_);
                                       loop21:
                                       while(true)
                                       {
                                          §§push(int(§§pop()));
                                          loop22:
                                          while(_loc17_ || param1)
                                          {
                                             _loc12_ = §§pop();
                                             while(!(_loc16_ && param2))
                                             {
                                                continue loop0;
                                                while(!(_loc16_ && param1))
                                                {
                                                   continue loop21;
                                                }
                                             }
                                             loop10:
                                             while(true)
                                             {
                                                if(param1.top < 0)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc10_);
                                                      addr392:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() - 1);
                                                         addr393:
                                                         while(true)
                                                         {
                                                            _loc10_ = §§pop();
                                                            addr394:
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                      }
                                                      addr204:
                                                      if(!(_loc17_ || param2))
                                                      {
                                                         continue;
                                                      }
                                                      addr84:
                                                      §§push(_loc14_);
                                                      if(_loc17_ || param3)
                                                      {
                                                         §§push(_loc13_);
                                                         if(_loc17_ || param3)
                                                         {
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               if(!(_loc16_ && param1))
                                                               {
                                                                  if(!(_loc16_ && param2))
                                                                  {
                                                                     _loc6_.dispose();
                                                                     addr118:
                                                                     if(!_loc16_)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           addr122:
                                                                           §§push(_loc15_);
                                                                           if(!_loc16_)
                                                                           {
                                                                              addr127:
                                                                              if(§§pop() >= _loc11_)
                                                                              {
                                                                                 if(_loc17_ || param2)
                                                                                 {
                                                                                    if(!(_loc16_ && this))
                                                                                    {
                                                                                       _loc14_++;
                                                                                       addr143:
                                                                                       §§goto(addr84);
                                                                                    }
                                                                                    addr163:
                                                                                    if(_loc17_)
                                                                                    {
                                                                                       _loc15_++;
                                                                                       addr146:
                                                                                    }
                                                                                    §§goto(addr122);
                                                                                    addr174:
                                                                                 }
                                                                                 §§goto(addr143);
                                                                              }
                                                                              param2.copyPixels(_loc6_,_loc6_.rect,new Point(_loc14_ * _loc8_,_loc15_ * _loc9_));
                                                                              §§goto(addr163);
                                                                           }
                                                                           addr173:
                                                                           _loc15_ = §§pop();
                                                                           §§goto(addr174);
                                                                        }
                                                                        §§goto(addr437);
                                                                     }
                                                                     §§goto(addr143);
                                                                  }
                                                                  §§goto(addr146);
                                                               }
                                                               §§goto(addr118);
                                                            }
                                                            §§push(_loc10_);
                                                            if(!_loc16_)
                                                            {
                                                               §§push(int(§§pop()));
                                                            }
                                                            §§goto(addr173);
                                                         }
                                                         §§goto(addr127);
                                                      }
                                                      §§goto(addr122);
                                                   }
                                                }
                                                loop15:
                                                while(true)
                                                {
                                                   §§push(param1.bottom / _loc9_);
                                                   while(true)
                                                   {
                                                      if(!_loc16_)
                                                      {
                                                         §§goto(addr362);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(int(§§pop()));
                                                            addr401:
                                                            while(true)
                                                            {
                                                               _loc10_ = §§pop();
                                                               continue loop10;
                                                            }
                                                         }
                                                         addr400:
                                                      }
                                                      addr234:
                                                      if(_loc16_ && param2)
                                                      {
                                                         continue;
                                                      }
                                                      if(!_loc17_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      §§push(int(§§pop()));
                                                      if(!_loc16_)
                                                      {
                                                         if(!_loc16_)
                                                         {
                                                            if(!(_loc16_ && param3))
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc17_)
                                                               {
                                                                  _loc13_ = §§pop();
                                                                  if(_loc17_ || param3)
                                                                  {
                                                                     addr266:
                                                                     §§push(§§pop() + 1);
                                                                  }
                                                                  loop28:
                                                                  for(; _loc17_ || param1; if(!(_loc17_ || this))
                                                                  {
                                                                     continue;
                                                                  },§§goto(addr192),§§push(int(§§pop())))
                                                                  {
                                                                     _loc13_ = §§pop();
                                                                     loop29:
                                                                     while(true)
                                                                     {
                                                                        if(_loc17_)
                                                                        {
                                                                           if(_loc16_)
                                                                           {
                                                                              continue loop20;
                                                                           }
                                                                           if(!(_loc17_ || param2))
                                                                           {
                                                                              continue loop15;
                                                                           }
                                                                           §§push(_loc12_);
                                                                           if(!(_loc16_ && param1))
                                                                           {
                                                                              continue loop28;
                                                                           }
                                                                           addr192:
                                                                           if(!(_loc16_ && this))
                                                                           {
                                                                              _loc14_ = §§pop();
                                                                              if(_loc16_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(!_loc17_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§goto(addr204);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr401);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc12_);
                                                                              if(_loc17_ || param1)
                                                                              {
                                                                                 if(!(_loc17_ || param1))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(§§pop() - 1);
                                                                                 while(!_loc16_)
                                                                                 {
                                                                                    if(!(_loc16_ && param2))
                                                                                    {
                                                                                       _loc12_ = §§pop();
                                                                                       break loop29;
                                                                                    }
                                                                                    §§goto(addr374);
                                                                                 }
                                                                                 continue loop22;
                                                                                 addr308:
                                                                              }
                                                                              §§goto(addr308);
                                                                           }
                                                                           addr292:
                                                                        }
                                                                        §§goto(addr392);
                                                                     }
                                                                     §§goto(addr318);
                                                                  }
                                                                  continue loop19;
                                                               }
                                                               §§goto(addr373);
                                                               §§goto(addr374);
                                                            }
                                                            §§goto(addr393);
                                                         }
                                                         §§goto(addr308);
                                                      }
                                                      §§goto(addr266);
                                                   }
                                                   continue loop4;
                                                }
                                             }
                                          }
                                          §§goto(addr409);
                                       }
                                    }
                                    §§goto(addr410);
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
               §§goto(addr400);
            }
         }
         addr437:
      }
      
      protected function addObjectBird(param1:§94§, param2:§!!U§.Sprite, param3:§>"G§, param4:§"t§, param5:Number = 1.0, param6:Boolean = true) : §?"N§
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc11_:§?"N§ = null;
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
         if(!(_loc14_ && param3))
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(param1.angle);
         if(_loc13_ || param3)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         var _loc12_:* = _loc7_;
         if(!(_loc14_ && this))
         {
            if("BIRD_BLACK" === _loc12_)
            {
               if(!_loc14_)
               {
                  §§push(0);
                  if(!(_loc13_ || param1))
                  {
                     addr287:
                  }
               }
               else
               {
                  addr404:
                  §§push(9);
                  if(!_loc14_)
                  {
                     addr417:
                  }
               }
               §§goto(addr422);
            }
            else
            {
               if("BIRD_BLUE" !== _loc12_)
               {
                  if("BIRD_GREEN" === _loc12_)
                  {
                     if(!(_loc14_ && this))
                     {
                        §§push(2);
                        if(!_loc13_)
                        {
                        }
                     }
                     else
                     {
                        addr359:
                        §§push(6);
                        if(!(_loc13_ || this))
                        {
                           §§goto(addr417);
                        }
                     }
                     §§goto(addr422);
                  }
                  else if("BIRD_WHITE" === _loc12_)
                  {
                     if(!(_loc14_ && param3))
                     {
                        §§push(3);
                        if(_loc14_)
                        {
                        }
                        §§goto(addr422);
                     }
                     else
                     {
                        §§goto(addr359);
                     }
                  }
                  else if("BIRD_YELLOW" === _loc12_)
                  {
                     if(_loc13_ || this)
                     {
                        §§push(4);
                        if(_loc13_ || param1)
                        {
                        }
                        §§goto(addr422);
                     }
                     else
                     {
                        §§goto(addr359);
                     }
                  }
                  else if("BIRD_RED" === _loc12_)
                  {
                     if(_loc13_ || param2)
                     {
                        §§push(5);
                        if(!(_loc13_ || this))
                        {
                           addr400:
                        }
                     }
                     else
                     {
                        addr373:
                        §§push(7);
                        if(_loc13_ || param1)
                        {
                           §§goto(addr381);
                        }
                     }
                  }
                  else if("BIRD_REDBIG" === _loc12_)
                  {
                     if(!_loc14_)
                     {
                        §§goto(addr359);
                     }
                     else
                     {
                        §§goto(addr373);
                     }
                  }
                  else if("BIRD_ORANGE" === _loc12_)
                  {
                     if(!_loc14_)
                     {
                        §§goto(addr373);
                     }
                     else
                     {
                        addr392:
                        §§push(8);
                        if(_loc13_ || param3)
                        {
                           §§goto(addr400);
                        }
                        else
                        {
                           §§goto(addr417);
                        }
                     }
                  }
                  else
                  {
                     if("BIRD_SARDINE" === _loc12_)
                     {
                        if(!(_loc14_ && this))
                        {
                           §§goto(addr392);
                        }
                        else
                        {
                           §§goto(addr404);
                        }
                     }
                     else if("BIRD_MIGHTY_EAGLE" === _loc12_)
                     {
                        §§goto(addr404);
                     }
                     else
                     {
                        §§push(10);
                     }
                     §§goto(addr404);
                  }
                  addr422:
                  switch(§§pop())
                  {
                     case 0:
                        _loc11_ = new §>#4§(param2,param3,this.§2#G§.mLevelEngine.mWorld,param4,param1,param5,param6);
                        break;
                     case 1:
                        _loc11_ = new §9!s§(param2,param3,this.§2#G§.mLevelEngine.mWorld,param4,param1,param5,param6);
                        break;
                     case 2:
                        _loc11_ = new §0"u§(param2,param3,this.§2#G§.mLevelEngine.mWorld,param4,param1,param5,param6);
                        break;
                     case 3:
                        _loc11_ = new §<!c§(param2,param3,this.§2#G§.mLevelEngine.mWorld,param4,param1,param5,param6);
                        break;
                     case 4:
                        _loc11_ = new §<#0§(param2,param3,this.§2#G§.mLevelEngine.mWorld,param4,param1,param5,param6);
                        break;
                     case 5:
                        _loc11_ = new §3!Y§(param2,param3,this.§2#G§.mLevelEngine.mWorld,param4,param1,param5,param6);
                        break;
                     case 6:
                        _loc11_ = new §'#§(param2,param3,this.§2#G§.mLevelEngine.mWorld,param4,param1,param5,param6);
                        break;
                     case 7:
                        _loc11_ = new §6#+§(param2,param3,this.§2#G§.mLevelEngine.mWorld,param4,param1,param5,param6);
                        break;
                     case 8:
                        _loc11_ = new §@#P§(param2,param3,this.§2#G§.mLevelEngine.mWorld,param4,param1,param5,param6);
                        break;
                     case 9:
                        _loc11_ = new §'"o§(param2,param3,this.§2#G§.mLevelEngine.mWorld,param4,param1,param5,param6);
                        break;
                     default:
                        _loc11_ = new §?"N§(param2,param3,this.§2#G§.mLevelEngine.mWorld,param4,param1,param5,param6);
                  }
                  return _loc11_;
               }
               if(_loc13_ || param3)
               {
                  §§push(1);
                  if(!(_loc14_ && param1))
                  {
                     §§goto(addr287);
                  }
                  else
                  {
                     addr381:
                  }
               }
               else
               {
                  §§goto(addr404);
               }
               §§goto(addr422);
            }
            §§goto(addr404);
         }
         §§goto(addr373);
      }
      
      public function hasBirds() : Boolean
      {
         return this.§#!3§ > 0;
      }
      
      protected function addObjectPig(param1:§94§, param2:§!!U§.Sprite, param3:§>"G§, param4:§"t§, param5:Number = 1.0) : §<!2§
      {
         return new §<!2§(param2,param3,this.§2#G§.mLevelEngine.mWorld,param4,param1,param5);
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0, param10:Boolean = false) : §7B§
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         if(_loc12_ || param1)
         {
            §§push(this.§!,§);
            while(true)
            {
               §§pop().type = param1;
               loop1:
               while(true)
               {
                  §§push(this.§!,§);
                  addr142:
                  while(true)
                  {
                     §§push(param2);
                     addr153:
                     while(true)
                     {
                        §§pop().x = §§pop();
                        addr154:
                        while(_loc12_)
                        {
                        }
                        continue loop1;
                     }
                  }
               }
               addr101:
               if(_loc11_ && param3)
               {
                  continue;
               }
               §§push(0);
               loop13:
               for(; !(_loc11_ && param2); §§push(0),if(_loc11_ && this)
               {
                  continue;
               },if(!_loc11_)
               {
                  if(_loc12_)
                  {
                     addr68:
                     §§pop().§`#Y§ = §§pop();
                     if(_loc12_ || this)
                     {
                        if(_loc11_ && param2)
                        {
                           addr132:
                           §§goto(addr93);
                        }
                        addr93:
                     }
                     continue loop14;
                     while(true)
                     {
                        §§push(this.§!,§);
                     }
                     return this.§<#1§(this.§!,§,param5,param6,param7,param8,param9,param10);
                  }
                  §§goto(addr153);
               },§§goto(addr131))
               {
                  §§pop().§2"5§ = §§pop();
                  while(true)
                  {
                     if(_loc12_)
                     {
                        if(!(_loc11_ && param1))
                        {
                           §§push(this.§!,§);
                           if(!(_loc11_ && param2))
                           {
                              addr49:
                              if(!(_loc11_ && param2))
                              {
                                 continue loop13;
                              }
                              while(true)
                              {
                                 §§push(param4);
                                 addr131:
                                 while(true)
                                 {
                                    §§pop().angle = §§pop();
                                    §§goto(addr132);
                                 }
                                 §§goto(addr49);
                              }
                              addr130:
                           }
                           while(true)
                           {
                              if(_loc12_)
                              {
                                 if(!_loc12_)
                                 {
                                    break;
                                 }
                                 §§goto(addr101);
                              }
                              addr136:
                              while(true)
                              {
                                 §§push(param3);
                                 break loop13;
                              }
                              §§goto(addr126);
                           }
                           addr126:
                           §§goto(addr142);
                        }
                        break;
                     }
                     addr138:
                     while(true)
                     {
                        §§goto(addr130);
                     }
                     §§goto(addr68);
                  }
                  §§goto(addr154);
               }
               while(true)
               {
                  §§pop().y = §§pop();
                  §§goto(addr138);
               }
            }
         }
         while(true)
         {
            §§goto(addr136);
         }
      }
      
      public function §]#^§(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Number = 0.0, param7:Number = 0.0, param8:Number = 1.0, param9:Boolean = false) : §7B§
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(!_loc11_)
         {
            §§push(this.§!,§);
            while(true)
            {
               §§pop().type = param1;
               addr145:
               while(true)
               {
                  §§push(this.§!,§);
                  addr138:
                  while(true)
                  {
                     §§push(param2);
                     addr139:
                     while(true)
                     {
                        §§pop().x = §§pop();
                     }
                  }
               }
               addr100:
               if(!(_loc10_ || param2))
               {
                  continue;
               }
               §§push(param4);
               loop9:
               while(true)
               {
                  §§pop().angle = §§pop();
                  while(true)
                  {
                     if(!_loc11_)
                     {
                        if(!(_loc11_ && param2))
                        {
                           §§push(this.§!,§);
                           loop11:
                           while(true)
                           {
                              §§push(param6);
                              addr84:
                              while(true)
                              {
                                 if(_loc10_)
                                 {
                                    if(_loc11_ && param2)
                                    {
                                       break;
                                    }
                                    §§pop().§2"5§ = §§pop();
                                    continue loop11;
                                 }
                                 continue loop9;
                              }
                              §§goto(addr139);
                           }
                        }
                        else
                        {
                           §§goto(addr145);
                        }
                        §§goto(addr138);
                     }
                     addr140:
                     while(true)
                     {
                        §§goto(addr122);
                     }
                  }
                  if(!_loc11_)
                  {
                     return this.§<#1§(this.§!,§,param5,false,false,false,param8,param9);
                  }
                  §§goto(addr124);
               }
            }
         }
         §§goto(addr140);
      }
      
      protected function §<#1§(param1:§94§, param2:int, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true, param6:Number = 1.0, param7:Boolean = false) : §7B§
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc8_:§!!U§.Sprite = new §!!U§.Sprite();
         var _loc9_:§7B§;
         if((_loc9_ = this.§-"N§(param1,param2,_loc8_,param5,param6)) == null)
         {
            if(_loc13_)
            {
               return null;
            }
            loop5:
            while(true)
            {
               while(true)
               {
                  §§push(param3);
                  addr271:
                  while(true)
                  {
                     if(§§pop())
                     {
                        addr278:
                        if(!_loc12_)
                        {
                           addr274:
                           this.§2#G§.§"!N§(_loc9_);
                        }
                        while(true)
                        {
                        }
                        addr278:
                     }
                     while(true)
                     {
                        §§push(param4);
                        if(_loc13_ || param3)
                        {
                           if(!(_loc13_ || param1))
                           {
                              addr305:
                              if(§§pop())
                              {
                                 this.§8!>§.§["`§(_loc8_);
                                 §§goto(addr286);
                              }
                              break;
                           }
                           §§push(Boolean(§§pop()));
                           if(!(_loc12_ && this))
                           {
                              §§goto(addr263);
                           }
                           §§goto(addr265);
                           §§goto(addr286);
                        }
                        addr263:
                        §§goto(addr264);
                     }
                     addr306:
                     this.§!V§.§["`§(_loc8_);
                     continue loop5;
                  }
               }
            }
         }
         else
         {
            §§push(_loc9_ is §&#=§);
            if(!(_loc12_ && param1))
            {
               §§push(§§pop());
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     if(!(_loc12_ && param3))
                     {
                        while(true)
                        {
                           §§pop();
                           if(_loc13_)
                           {
                              while(true)
                              {
                                 §§push((_loc9_ as §&#=§).§"!@§());
                                 if(!(_loc12_ && param2))
                                 {
                                    §§push(Boolean(§§pop()));
                                    while(true)
                                    {
                                       addr105:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc13_ || this)
                                             {
                                                §§push(_loc8_);
                                                §§push(this.§4"R§);
                                                if(!_loc12_)
                                                {
                                                   §§push(!§§pop());
                                                }
                                                §§pop().visible = §§pop();
                                                if(!_loc12_)
                                                {
                                                   addr45:
                                                   §§push(_loc9_ is §?"N§);
                                                   if(!(_loc12_ && param3))
                                                   {
                                                      §§push(§§pop());
                                                      if(!(_loc13_ || this))
                                                      {
                                                         addr264:
                                                         if(§§pop())
                                                         {
                                                            addr265:
                                                            loop10:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               addr266:
                                                               while(true)
                                                               {
                                                                  if(!_loc12_)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  §§goto(addr278);
                                                               }
                                                            }
                                                            addr265:
                                                         }
                                                      }
                                                      continue loop0;
                                                      while(§§pop())
                                                      {
                                                         if(!_loc12_)
                                                         {
                                                            addr227:
                                                            this.§1!§ = §?"N§(_loc9_);
                                                         }
                                                         if(_loc13_)
                                                         {
                                                            if(!_loc12_)
                                                            {
                                                               if(!_loc12_)
                                                               {
                                                                  break;
                                                               }
                                                               continue loop5;
                                                            }
                                                            addr286:
                                                            if(!(_loc13_ || this))
                                                            {
                                                               break loop9;
                                                            }
                                                            continue loop6;
                                                         }
                                                         §§goto(addr266);
                                                      }
                                                      return _loc9_;
                                                   }
                                                   break;
                                                }
                                                §§goto(addr227);
                                             }
                                             §§goto(addr268);
                                          }
                                          §§goto(addr45);
                                       }
                                       §§goto(addr271);
                                    }
                                    addr104:
                                 }
                                 §§goto(addr305);
                              }
                              addr91:
                           }
                           §§goto(addr268);
                        }
                        addr142:
                     }
                     §§goto(addr265);
                  }
                  §§goto(addr104);
               }
            }
            §§goto(addr142);
         }
         §§goto(addr268);
      }
      
      private function §-"N§(param1:§94§, param2:int, param3:§!!U§.Sprite, param4:Boolean = true, param5:Number = 1.0) : §7B§
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc7_:§&#=§ = null;
         if(_loc11_)
         {
            §§push(param2);
            if(_loc11_)
            {
               §§push(§""3§);
               if(!(_loc10_ && param3))
               {
                  if(§§pop() == §§pop())
                  {
                     if(!(_loc10_ && this))
                     {
                        addr41:
                        §§push(this.§6!S§);
                        if(_loc11_)
                        {
                           §§push(int(§§pop()));
                           if(!_loc10_)
                           {
                              addr48:
                              param2 = §§pop();
                              if(!_loc10_)
                              {
                                 var _loc8_:*;
                                 §§push((_loc8_ = this).§6!S§);
                                 if(!_loc10_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc9_:* = §§pop();
                                 if(_loc11_ || this)
                                 {
                                    _loc8_.§6!S§ = _loc9_;
                                 }
                                 if(!_loc10_)
                                 {
                                    §§goto(addr110);
                                 }
                              }
                              §§goto(addr79);
                           }
                           else
                           {
                              addr75:
                              if(§§pop() >= §@"J§)
                              {
                                 if(!_loc10_)
                                 {
                                    addr79:
                                    throw new Error("Invalid object id: " + param2 + ". Has to be less than " + §@"J§);
                                 }
                              }
                              else
                              {
                                 addr91:
                                 if(this.§3p§(param2))
                                 {
                                    if(_loc11_ || param2)
                                    {
                                       throw new Error("Object with id: " + param2 + " already added!");
                                    }
                                 }
                              }
                           }
                           addr110:
                           var _loc6_:§7B§;
                           if((_loc6_ = this.createObjectInstance(param1,param3,param4,param5)) is §?"N§)
                           {
                              if(_loc11_)
                              {
                                 §§push((_loc8_ = this).§[!Y§);
                                 if(!(_loc10_ && param2))
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 _loc9_ = §§pop();
                                 if(!(_loc10_ && param2))
                                 {
                                    _loc8_.§[!Y§ = _loc9_;
                                 }
                                 if(!(_loc10_ && param3))
                                 {
                                    §§goto(addr166);
                                 }
                              }
                              §§goto(addr168);
                           }
                           addr166:
                           if(_loc6_)
                           {
                              addr168:
                              _loc7_ = _loc6_ as §&#=§;
                              if(_loc11_)
                              {
                                 §§push(_loc6_ is §!!H§);
                                 loop0:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       if(_loc7_)
                                       {
                                          loop1:
                                          while(true)
                                          {
                                             _loc7_.§3#A§(param2);
                                             while(true)
                                             {
                                                if(!_loc10_)
                                                {
                                                   this.§8'§[param1.instanceName] = _loc6_;
                                                   loop3:
                                                   while(true)
                                                   {
                                                      addr244:
                                                      while(true)
                                                      {
                                                         this.§1!b§.push(_loc6_);
                                                         addr249:
                                                         addr218:
                                                         while(_loc10_)
                                                         {
                                                            continue loop3;
                                                         }
                                                         addr176:
                                                         while(true)
                                                         {
                                                            §§push(_loc6_ is §1#E§);
                                                            if(!_loc11_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               break;
                                                            }
                                                            loop9:
                                                            while(true)
                                                            {
                                                               this.§63§.push(_loc6_);
                                                               addr229:
                                                               while(_loc10_ && param3)
                                                               {
                                                                  §§goto(addr249);
                                                                  continue loop9;
                                                               }
                                                               continue loop1;
                                                            }
                                                         }
                                                         §§goto(addr290);
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      this.§`#[§.push(_loc6_);
                                                   }
                                                   addr285:
                                                }
                                                §§goto(addr289);
                                             }
                                          }
                                       }
                                       §§goto(addr244);
                                    }
                                    §§goto(addr285);
                                 }
                              }
                              §§goto(addr243);
                           }
                           addr290:
                           loop5:
                           while(true)
                           {
                              §§push(this.§]" §);
                              if(!_loc10_)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc10_ && param1))
                                    {
                                       if(_loc11_)
                                       {
                                          addr193:
                                          this.§]" §.§9!U§(_loc6_);
                                          addr195:
                                          if(!(_loc10_ && param2))
                                          {
                                             if(_loc10_ && param2)
                                             {
                                                continue loop2;
                                             }
                                             addr209:
                                             if(_loc11_ || param2)
                                             {
                                                if(true)
                                                {
                                                   break;
                                                }
                                                §§goto(addr218);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   continue loop5;
                                                   §§goto(addr209);
                                                }
                                                addr289:
                                             }
                                          }
                                          §§goto(addr225);
                                       }
                                       §§goto(addr229);
                                    }
                                    §§goto(addr195);
                                 }
                                 break;
                              }
                              §§goto(addr193);
                           }
                           return _loc6_;
                        }
                        §§goto(addr75);
                     }
                     §§goto(addr91);
                  }
                  else
                  {
                     §§push(param2);
                  }
               }
               §§goto(addr75);
            }
            §§goto(addr48);
         }
         §§goto(addr41);
      }
      
      protected function getCommonTextureName() : String
      {
         return "INGAME_TEXTURE_SAND_1";
      }
      
      protected function createBombBlockInstance(param1:§94§, param2:§!!U§.Sprite, param3:§>"G§, param4:§"t§, param5:int, param6:Number = 1.0) : §7B§
      {
         return new §-F§(param2,param3,this.§2#G§.mLevelEngine.mWorld,param4,param1,param6,param5);
      }
      
      protected function §1k§(param1:§94§, param2:§!!U§.Sprite, param3:§>"G§, param4:§"t§, param5:int, param6:Number = 1.0) : §7B§
      {
         return new §;#-§(param2,param3,this.§2#G§.mLevelEngine.mWorld,param4,param1,param6,param5);
      }
      
      protected function createObjectInstance(param1:§94§, param2:§!!U§.Sprite, param3:Boolean = true, param4:Number = 1.0) : §7B§
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc5_:§"t§;
         if(!(_loc5_ = this.§2#G§.levelItemManager.getItem(param1.type)))
         {
            if(!_loc10_)
            {
               return null;
            }
         }
         §§push(_loc5_.itemName);
         if(!(_loc10_ && this))
         {
            §§push(§§pop());
         }
         var _loc6_:*;
         §§push(_loc6_ = §§pop());
         if(!(_loc10_ && this))
         {
            if(§§pop().substr(0,13) == "BLOCK_STATIC_")
            {
               if(_loc9_ || this)
               {
                  §§push(this.getCommonTextureName());
                  if(!(_loc10_ && param1))
                  {
                     addr71:
                     _loc6_ = §§pop();
                  }
                  §§goto(addr71);
               }
            }
            var _loc7_:§>"G§ = this.§2#G§.animationManager.getAnimation(_loc6_);
            var _loc8_:§7B§ = null;
            if(_loc9_ || param1)
            {
               §§push(param1.type);
               if(_loc9_)
               {
                  if(§§pop().indexOf("BIRD") == 0)
                  {
                     if(_loc9_ || param2)
                     {
                        addr104:
                        _loc8_ = this.addObjectBird(param1,param2,_loc7_,_loc5_,param4,param3);
                     }
                     else
                     {
                        addr146:
                        _loc8_ = this.addObjectPig(param1,param2,_loc7_,_loc5_,param4);
                     }
                  }
                  else
                  {
                     §§push(_loc5_.itemType);
                     if(_loc9_ || param2)
                     {
                        §§push(§"t§.§5s§);
                        if(_loc9_)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(_loc9_ || this)
                              {
                                 §§goto(addr146);
                              }
                              else
                              {
                                 addr224:
                                 _loc8_ = this.§1k§(param1,param2,_loc7_,_loc5_,§>"_§.§%#G§,param4);
                                 addr277:
                                 return _loc8_;
                                 addr253:
                              }
                              §§goto(addr277);
                           }
                           else
                           {
                              §§push(_loc5_.itemType);
                              if(_loc9_)
                              {
                                 §§push(§"t§.§;"e§);
                                 if(!_loc10_)
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(_loc9_)
                                    {
                                       if(!§§pop())
                                       {
                                          if(!(_loc10_ && param3))
                                          {
                                             §§pop();
                                             if(_loc9_ || param2)
                                             {
                                                addr189:
                                                if(_loc5_.itemType == §"t§.§6!9§)
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      addr192:
                                                      §§push(_loc5_.itemName);
                                                      if(!_loc10_)
                                                      {
                                                         if(§§pop().indexOf("TNT") >= 0)
                                                         {
                                                            if(!(_loc10_ && param1))
                                                            {
                                                               _loc8_ = this.createBombBlockInstance(param1,param2,_loc7_,_loc5_,§>"_§.§#§,param4);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr224);
                                                            }
                                                            §§goto(addr253);
                                                         }
                                                         else
                                                         {
                                                            addr221:
                                                            if(_loc5_.itemName == §<!c§.§8>§)
                                                            {
                                                               §§goto(addr224);
                                                            }
                                                            else
                                                            {
                                                               _loc8_ = new §7";§(param2,_loc7_,this.§2#G§.mLevelEngine.mWorld,_loc5_,param1,param4,_loc5_.particleJSONId,_loc5_.particleVariationCount);
                                                            }
                                                            §§goto(addr224);
                                                         }
                                                      }
                                                      §§goto(addr221);
                                                   }
                                                }
                                                else
                                                {
                                                   _loc8_ = new §&#=§(param2,_loc7_,this.§2#G§.mLevelEngine.mWorld,_loc5_,param1,param4);
                                                }
                                                §§goto(addr224);
                                             }
                                             §§goto(addr192);
                                          }
                                       }
                                    }
                                    §§goto(addr189);
                                 }
                              }
                              §§goto(addr189);
                           }
                        }
                     }
                     §§goto(addr189);
                  }
                  §§goto(addr224);
               }
               §§goto(addr221);
            }
            §§goto(addr104);
         }
         §§goto(addr71);
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean, param4:Number, param5:Number, param6:int) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            this.§2#G§.addScore(param1,§&'§.§'#?§,param3,param4,param5,param6);
         }
      }
      
      public function §;!0§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         if(!_loc16_)
         {
            this.§2#G§.particles.§;!0§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         }
      }
      
      public function §`?§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         if(_loc18_ || param3)
         {
            this.§2#G§.particles.§`?§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
         }
      }
      
      protected function §7"L§(param1:§&#=§) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:§-!5§ = null;
         var _loc5_:§-!5§ = null;
         var _loc6_:§7B§ = null;
         var _loc7_:§7B§ = null;
         §§push(param1.id);
         if(!(_loc8_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:* = int(this.§6!Z§.length - 1);
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§6!Z§[_loc3_];
            if(_loc9_ || _loc2_)
            {
               §§push(this.§6!Z§[_loc3_].id1 == _loc2_);
               if(_loc9_)
               {
                  if(!§§pop())
                  {
                     if(_loc9_)
                     {
                        addr74:
                        §§pop();
                        if(!(_loc9_ || _loc2_))
                        {
                           continue;
                        }
                        §§push(this.§6!Z§[_loc3_].id2 == _loc2_);
                     }
                  }
                  if(§§pop())
                  {
                     if(!_loc9_)
                     {
                        continue;
                     }
                     addr92:
                     §§push(_loc4_.§##>§);
                     if(!_loc8_)
                     {
                        if(§§pop())
                        {
                           if(_loc8_ && _loc3_)
                           {
                              continue;
                           }
                           addr116:
                           _loc6_ = _loc4_.§##>§.§;!`§().GetUserData() as §7B§;
                           _loc7_ = _loc4_.§##>§.§8!'§().GetUserData() as §7B§;
                           if(_loc9_ || this)
                           {
                              if(_loc6_)
                              {
                                 if(_loc9_)
                                 {
                                    _loc6_.attachedJointRemoved(_loc7_);
                                    if(_loc8_)
                                    {
                                    }
                                    addr153:
                                    _loc5_ = this.§6!Z§.pop();
                                    if(_loc9_ || param1)
                                    {
                                       if(_loc3_ < this.§6!Z§.length)
                                       {
                                          if(!(_loc8_ && _loc2_))
                                          {
                                             addr177:
                                             this.§6!Z§[_loc3_] = _loc5_;
                                             if(_loc8_ && _loc2_)
                                             {
                                             }
                                             addr202:
                                             §§push(_loc3_);
                                             if(!_loc8_)
                                             {
                                                §§push(§§pop() - 1);
                                             }
                                             _loc3_ = §§pop();
                                             continue;
                                          }
                                       }
                                       this.§`"S§(_loc4_);
                                       §§goto(addr202);
                                    }
                                    §§goto(addr177);
                                 }
                                 addr150:
                                 _loc7_.attachedJointRemoved(_loc6_);
                                 §§goto(addr153);
                              }
                              if(_loc7_)
                              {
                                 if(_loc8_)
                                 {
                                 }
                              }
                              §§goto(addr153);
                           }
                           §§goto(addr150);
                        }
                        §§goto(addr153);
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr177);
               }
               §§goto(addr74);
            }
            §§goto(addr92);
         }
      }
      
      protected function §]!3§(param1:§-#'§) : §-!5§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(param1.id1);
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(param1.id2);
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:§-!5§ = §-!5§.§]!3§(param1);
         if(!(_loc7_ && _loc3_))
         {
            this.§6!Z§.push(_loc4_);
         }
         var _loc5_:§7B§ = this.§3p§(_loc2_);
         var _loc6_:§7B§ = this.§3p§(_loc3_);
         if(_loc8_)
         {
            §§push(Boolean(_loc5_));
            if(_loc8_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     loop7:
                     while(true)
                     {
                        §§push(Boolean(_loc6_));
                        if(!(_loc7_ && _loc3_))
                        {
                           loop0:
                           while(§§pop())
                           {
                              while(true)
                              {
                                 if(_loc4_.type != §-#'§.§use §)
                                 {
                                    if(_loc8_)
                                    {
                                       _loc4_.§##>§ = this.§2#G§.mLevelEngine.mWorld.CreateJoint(_loc4_.§!!0§(_loc5_,_loc6_));
                                    }
                                    while(true)
                                    {
                                       addr84:
                                       while(true)
                                       {
                                          _loc5_.attachedJointCreated(_loc6_);
                                          loop4:
                                          while(true)
                                          {
                                             if(_loc7_)
                                             {
                                                continue loop7;
                                             }
                                             while(true)
                                             {
                                                _loc6_.attachedJointCreated(_loc5_);
                                                if(_loc7_)
                                                {
                                                   continue loop4;
                                                }
                                                if(!_loc7_)
                                                {
                                                   break loop0;
                                                }
                                             }
                                          }
                                          continue loop7;
                                          addr114:
                                       }
                                    }
                                    addr155:
                                 }
                                 else
                                 {
                                    this.§>>§.push(new §;!#§(_loc2_,_loc3_,_loc4_.annihilationTime,param1.§-"A§));
                                 }
                                 while(true)
                                 {
                                    if(!_loc7_)
                                    {
                                       if(_loc7_ && _loc2_)
                                       {
                                          break;
                                       }
                                       §§goto(addr114);
                                    }
                                    else
                                    {
                                       §§goto(addr155);
                                    }
                                 }
                              }
                              continue loop7;
                           }
                           return _loc4_;
                           addr125:
                        }
                        break;
                     }
                  }
                  addr162:
               }
               §§goto(addr125);
            }
            §§goto(addr162);
         }
         §§goto(addr90);
      }
      
      protected function §`"S§(param1:§-!5§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(param1.§##>§)
            {
               while(true)
               {
                  this.§2#G§.mLevelEngine.mWorld.DestroyJoint(param1.§##>§);
                  addr107:
                  addr39:
                  while(true)
                  {
                  }
                  if(!(_loc2_ || _loc3_))
                  {
                     continue;
                  }
                  §§push(this.§!V§);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(param1.§`"t§);
                     if(_loc2_ || _loc2_)
                     {
                        if(§§pop().contains(§§pop()))
                        {
                           if(!_loc3_)
                           {
                              addr78:
                              if(!_loc2_)
                              {
                                 §§goto(addr107);
                              }
                              addr84:
                              this.§!V§.removeChild(param1.§`"t§,true);
                           }
                        }
                        §§goto(addr24);
                     }
                  }
                  §§goto(addr84);
               }
            }
            while(true)
            {
               if(param1.§`"t§)
               {
                  if(_loc2_ || param1)
                  {
                     §§goto(addr39);
                  }
                  §§goto(addr78);
               }
               break;
               §§goto(addr107);
            }
            addr24:
            return;
         }
         §§goto(addr78);
      }
      
      public function §1!R§(param1:int, param2:Number, param3:Number, param4:int = -1) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§'"+§.push(§>"_§.§[1§(param1,param2,param3));
         }
         do
         {
            this.§#!q§(param1);
         }
         while(_loc5_ && param3);
         
      }
      
      protected function §#!q§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §?!r§.§"#_§("TntExplosions","ChannelExplosions");
         }
      }
      
      public function §6#4§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && param1))
         {
            this.§'"+§.push(§>"_§.§2W§(param1,param2,param3,param4,param5,param6));
         }
         do
         {
            §?!r§.§"#_§("TntExplosions","ChannelExplosions");
         }
         while(_loc7_);
         
      }
      
      public function getForceAtPoint(param1:Number, param2:Number, param3:Number, param4:b2Vec2) : b2Vec2
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            if(!param4)
            {
               if(_loc6_ || param3)
               {
                  param4 = new b2Vec2();
               }
               §§goto(addr59);
            }
            param4.SetV(this.§2#G§.mLevelEngine.mWorld.GetGravity());
         }
         addr59:
         return param4;
      }
      
      public function get timeSpeedMultiplier() : Number
      {
         return this.§2#G§.timeSpeedMultiplier;
      }
      
      public function §4#7§(param1:Number, param2:Number) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§&#=§ = null;
         var _loc3_:* = int(this.§1!b§.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc6_ && param1))
            {
               if(§§pop() < 0)
               {
                  break;
               }
               §§push(Boolean(_loc4_ = this.§1!b§[_loc3_] as §&#=§));
               if(!(_loc6_ && this))
               {
                  if(§§pop())
                  {
                     if(!_loc6_)
                     {
                        addr58:
                        §§pop();
                        if(_loc6_)
                        {
                           continue;
                        }
                        §§push(Boolean(_loc4_.isInCoordinates(param1,param2)));
                     }
                  }
                  if(§§pop())
                  {
                     if(!_loc5_)
                     {
                        continue;
                     }
                     §§push(_loc3_);
                     if(_loc5_)
                     {
                        return §§pop();
                     }
                     addr88:
                     §§push(§§pop() - 1);
                  }
                  else
                  {
                     §§push(_loc3_);
                     if(_loc5_ || param1)
                     {
                        §§goto(addr88);
                     }
                  }
                  _loc3_ = §§pop();
                  continue;
               }
               §§goto(addr58);
            }
            break;
         }
         return §§pop();
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §&#=§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§&#=§ = null;
         var _loc3_:* = int(this.§1!b§.length - 1);
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§1!b§[_loc3_] as §&#=§)
            {
               if(_loc5_)
               {
                  continue;
               }
               if(_loc4_.isInCoordinates(param1,param2))
               {
                  if(_loc6_)
                  {
                     return _loc4_;
                  }
               }
            }
            §§push(_loc3_);
            if(_loc6_ || this)
            {
               §§push(§§pop() - 1);
            }
            _loc3_ = §§pop();
         }
         return null;
      }
      
      public function §;"r§(param1:Number, param2:Number) : Vector.<§&#=§>
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§&#=§ = null;
         var _loc3_:Vector.<§&#=§> = new Vector.<§&#=§>();
         var _loc4_:* = int(this.§1!b§.length - 1);
         while(_loc4_ >= 0)
         {
            §§push(Boolean(_loc5_ = this.§1!b§[_loc4_] as §&#=§));
            if(!(_loc7_ && param2))
            {
               if(§§pop())
               {
                  if(_loc6_ || _loc3_)
                  {
                     addr69:
                     §§pop();
                     if(!(_loc7_ && _loc3_))
                     {
                        addr82:
                        if(_loc5_.isInCoordinates(param1,param2))
                        {
                           if(!(_loc7_ && param1))
                           {
                              addr90:
                              _loc3_.push(_loc5_);
                              if(!(_loc6_ || param1))
                              {
                                 continue;
                              }
                           }
                        }
                        §§push(_loc4_);
                        if(_loc6_)
                        {
                           §§push(§§pop() - 1);
                        }
                        _loc4_ = §§pop();
                        continue;
                     }
                     §§goto(addr90);
                  }
               }
               §§goto(addr82);
            }
            §§goto(addr69);
         }
         return _loc3_;
      }
      
      public function getObject(param1:int) : §7B§
      {
         return this.§1!b§[param1];
      }
      
      public function §3p§(param1:int) : §&#=§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§7B§ = null;
         var _loc3_:§&#=§ = null;
         var _loc4_:int = 0;
         var _loc5_:* = this.§1!b§;
         while(true)
         {
            for each(_loc2_ in _loc5_)
            {
               _loc3_ = _loc2_ as §&#=§;
               if(_loc7_)
               {
                  continue;
               }
               §§push(Boolean(_loc3_));
               if(_loc6_ || _loc2_)
               {
                  if(§§pop())
                  {
                     if(!_loc7_)
                     {
                        addr65:
                        §§pop();
                        if(_loc7_ && _loc3_)
                        {
                           continue;
                        }
                        §§push(_loc3_.id == param1);
                     }
                  }
                  if(§§pop())
                  {
                     if(!(_loc7_ && _loc2_))
                     {
                        break;
                     }
                  }
                  continue;
               }
               §§goto(addr65);
            }
            return null;
         }
         return _loc3_;
      }
      
      public function §5"z§(param1:String) : §&#=§
      {
         return this.§8'§[param1];
      }
      
      public function renderObjects(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = int(this.§1!b§.length - 1);
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
                        this.§&"A§(param1);
                        loop4:
                        while(true)
                        {
                           §§push(int(this.§`#[§.length - 1));
                           loop5:
                           while(true)
                           {
                              _loc4_ = §§pop();
                              loop6:
                              while(true)
                              {
                                 if(_loc6_ || param3)
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       if(!_loc5_)
                                       {
                                          if(_loc6_)
                                          {
                                             if(!(_loc6_ || param1))
                                             {
                                                break;
                                             }
                                             §§push(0);
                                             if(_loc6_)
                                             {
                                                if(§§pop() < §§pop())
                                                {
                                                   if(_loc6_ || this)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         return;
                                                      }
                                                      continue loop3;
                                                   }
                                                   while(true)
                                                   {
                                                      if(!(_loc5_ && param2))
                                                      {
                                                         if(_loc5_ && param1)
                                                         {
                                                            break;
                                                         }
                                                         continue loop7;
                                                      }
                                                      addr87:
                                                      _loc4_ = §§pop();
                                                   }
                                                   continue loop0;
                                                   addr88:
                                                }
                                                else
                                                {
                                                   this.§`#[§[_loc4_].render(param1,param2,param3);
                                                }
                                                while(_loc6_)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      §§push(_loc4_);
                                                      continue loop5;
                                                   }
                                                   continue loop4;
                                                }
                                                continue loop6;
                                             }
                                             continue loop2;
                                          }
                                          continue loop5;
                                       }
                                       addr70:
                                       while(true)
                                       {
                                          if(!(_loc6_ || this))
                                          {
                                             addr145:
                                             _loc4_ = §§pop();
                                             continue loop0;
                                          }
                                          §§goto(addr87);
                                       }
                                       §§goto(addr88);
                                    }
                                    continue loop1;
                                 }
                                 addr167:
                                 addr144:
                                 §§push(_loc4_ - 1);
                                 §§goto(addr145);
                              }
                           }
                        }
                     }
                  }
                  else
                  {
                     this.§1!b§[_loc4_].render(param1,param2,param3);
                  }
                  §§goto(addr167);
               }
            }
         }
      }
      
      protected function getExplosionDamageMultiplier(param1:Number, param2:Number) : Number
      {
         return 1 / param1;
      }
      
      protected function getExplosionDistanceToObject(param1:Number, param2:Number, param3:§&#=§) : §3!2§
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         §§push(param3.§3!t§().GetPosition().x - param1);
         if(!_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(param3.§3!t§().GetPosition().y - param2);
         if(!_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         var _loc7_:§3!2§;
         (_loc7_ = new §3!2§()).distance = _loc6_;
         if(_loc9_)
         {
            _loc7_.§>"6§ = new Point(param3.§3!t§().GetPosition().x,param3.§3!t§().GetPosition().y);
         }
         return _loc7_;
      }
      
      protected function §>U§(param1:§&#=§, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            param1.applyDamage(param2,this,null,param3);
         }
      }
      
      protected function §^!E§(param1:§&#=§) : Boolean
      {
         return false;
      }
      
      protected function §4!j§() : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc1_:§>"_§ = null;
         var _loc2_:* = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§7B§ = null;
         var _loc7_:§&#=§ = null;
         var _loc8_:§3!2§ = null;
         var _loc9_:* = NaN;
         var _loc10_:Point = null;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:Number = NaN;
         if(_loc17_ || _loc2_)
         {
            if(!this.§%#T§)
            {
               if(_loc17_)
               {
                  §§goto(addr60);
               }
            }
            loop0:
            while(this.§'"+§.length > 0)
            {
               _loc1_ = this.§'"+§.shift();
               if(!_loc16_)
               {
                  §§push(_loc1_.§&D§);
                  loop1:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     addr148:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        addr149:
                        while(true)
                        {
                           §§push(_loc1_.x);
                           continue loop1;
                        }
                     }
                  }
               }
               while(true)
               {
                  if(false)
                  {
                     §§goto(addr82);
                  }
                  else
                  {
                     var _loc14_:int = 0;
                     if(_loc17_ || this)
                     {
                        loop11:
                        for each(_loc6_ in this.§1!b§)
                        {
                           §§push(Boolean(_loc7_ = _loc6_ as §&#=§));
                           if(_loc17_ || _loc2_)
                           {
                              if(§§pop())
                              {
                                 if(!_loc16_)
                                 {
                                    addr188:
                                    §§pop();
                                    if(_loc17_ || _loc2_)
                                    {
                                       §§push(this.§^!E§(_loc7_));
                                       if(_loc17_)
                                       {
                                          addr202:
                                          if(§§pop())
                                          {
                                             continue;
                                          }
                                       }
                                       §§goto(addr202);
                                    }
                                    §§push((_loc8_ = this.getExplosionDistanceToObject(_loc3_,_loc4_,_loc7_)).distance);
                                    if(_loc17_ || _loc2_)
                                    {
                                       §§push(_loc1_.§&D§);
                                       if(!(_loc16_ && _loc2_))
                                       {
                                          if(§§pop() <= §§pop())
                                          {
                                             if(!(_loc16_ && this))
                                             {
                                                §§push(_loc1_.push);
                                                if(!_loc16_)
                                                {
                                                   §§push(this.getExplosionDamageMultiplier(_loc8_.distance,_loc1_.§&D§));
                                                   if(!_loc16_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc17_ || _loc1_)
                                                      {
                                                         addr266:
                                                         §§push(Number(§§pop()));
                                                         if(!_loc16_)
                                                         {
                                                            _loc9_ = §§pop();
                                                            if(!(_loc16_ && this))
                                                            {
                                                               §§push(_loc8_.distance);
                                                               if(_loc17_ || _loc3_)
                                                               {
                                                                  if(§§pop() > 0)
                                                                  {
                                                                     if(_loc16_ && _loc1_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     addr295:
                                                                     (_loc10_ = new Point(_loc8_.§>"6§.x - _loc3_,_loc8_.§>"6§.y - _loc4_)).normalize(1);
                                                                     if(_loc17_)
                                                                     {
                                                                        §§push(_loc9_);
                                                                        if(!_loc16_)
                                                                        {
                                                                           §§push(§§pop() * _loc10_.x);
                                                                        }
                                                                        loop12:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           addr370:
                                                                           while(true)
                                                                           {
                                                                              _loc11_ = §§pop();
                                                                           }
                                                                           addr352:
                                                                           if(!(_loc17_ || _loc3_))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           _loc12_ = §§pop();
                                                                           while(!_loc16_)
                                                                           {
                                                                              _loc7_.§3!t§().ApplyImpulse(new b2Vec2(_loc11_,_loc12_),new b2Vec2(_loc8_.§>"6§.x,_loc8_.§>"6§.y));
                                                                              if(!(_loc17_ || _loc3_))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(false)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc9_);
                                                                                    if(!_loc16_)
                                                                                    {
                                                                                       if(_loc17_)
                                                                                       {
                                                                                          §§push(§§pop() * _loc10_.y);
                                                                                          if(!_loc16_)
                                                                                          {
                                                                                             addr351:
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          §§goto(addr352);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr370);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr351);
                                                                                 }
                                                                                 continue loop12;
                                                                                 addr340:
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr372:
                                                                                 §§push(_loc8_.distance);
                                                                                 if(_loc17_)
                                                                                 {
                                                                                    addr376:
                                                                                    §§push(_loc1_.§6"-§);
                                                                                    if(!_loc16_)
                                                                                    {
                                                                                       addr380:
                                                                                       if(§§pop() <= §§pop())
                                                                                       {
                                                                                          if(_loc17_)
                                                                                          {
                                                                                             §§push(_loc5_);
                                                                                             if(!_loc16_)
                                                                                             {
                                                                                                addr392:
                                                                                                §§push(§§pop() * this.getExplosionDamageMultiplier(_loc8_.distance,_loc1_.§6"-§));
                                                                                                if(!(_loc16_ && this))
                                                                                                {
                                                                                                   addr401:
                                                                                                   _loc13_ = §§pop();
                                                                                                   if(_loc16_ && this)
                                                                                                   {
                                                                                                      continue loop11;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr401);
                                                                                          }
                                                                                          addr409:
                                                                                          this.§>U§(_loc7_,_loc13_);
                                                                                       }
                                                                                       continue loop11;
                                                                                    }
                                                                                    §§goto(addr392);
                                                                                 }
                                                                                 §§goto(addr401);
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr340);
                                                                           }
                                                                           addr371:
                                                                        }
                                                                     }
                                                                     §§goto(addr371);
                                                                  }
                                                                  §§goto(addr372);
                                                               }
                                                               §§goto(addr392);
                                                            }
                                                            §§goto(addr409);
                                                         }
                                                         §§goto(addr392);
                                                      }
                                                      §§goto(addr401);
                                                   }
                                                   §§goto(addr380);
                                                }
                                                §§goto(addr266);
                                             }
                                             §§goto(addr295);
                                          }
                                          §§goto(addr372);
                                       }
                                       §§goto(addr380);
                                    }
                                    §§goto(addr376);
                                 }
                              }
                              §§goto(addr202);
                           }
                           §§goto(addr188);
                        }
                     }
                     if(!_loc17_)
                     {
                        continue loop0;
                     }
                  }
                  §§goto(addr419);
               }
            }
            return;
         }
         addr60:
      }
      
      protected function updateExplosionEffects(param1:§>"_§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         if(_loc9_ || param1)
         {
            this.§2#G§.particles.§;!0§(this.§ "$§(param1.type),§,!w§.§ !B§,§ U§.§>#]§,param2,param3,600,"",§ U§.§^#+§,0,0,0,0,1,20,true);
         }
         var _loc5_:int = 30;
         while(true)
         {
            §§push(_loc5_);
            if(_loc9_)
            {
               if(!_loc10_)
               {
                  §§push(150);
                  if(!_loc10_)
                  {
                     if(_loc9_ || param1)
                     {
                        if(§§pop() >= §§pop())
                        {
                           if(_loc9_ || param1)
                           {
                              break;
                           }
                           loop4:
                           while(true)
                           {
                              if(!(_loc10_ && param1))
                              {
                                 if(!_loc10_)
                                 {
                                    break;
                                 }
                                 loop5:
                                 while(true)
                                 {
                                    if(!(_loc10_ && param1))
                                    {
                                       §§push(this.§2#G§.particles);
                                       §§push(§ U§.§;!%§);
                                       §§push(§,!w§.§ !B§);
                                       §§push(§ U§.§'# §);
                                       §§push(param2);
                                       §§push(param3);
                                       §§push(_loc7_);
                                       §§push("");
                                       §§push(§ U§.§^#+§);
                                       §§push(_loc6_);
                                       if(_loc9_ || param2)
                                       {
                                          §§push(§§pop() * Math.cos(_loc8_));
                                       }
                                       §§push(_loc6_);
                                       if(_loc9_ || this)
                                       {
                                          §§push(-§§pop());
                                          if(!(_loc10_ && this))
                                          {
                                             §§push(§§pop() * Math.sin(_loc8_));
                                          }
                                       }
                                       §§pop().§;!0§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),20,0);
                                       while(true)
                                       {
                                          §§push(_loc5_);
                                          addr86:
                                          while(true)
                                          {
                                             if(!_loc10_)
                                             {
                                                if(_loc9_ || this)
                                                {
                                                   §§push(5);
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc10_ && param2))
                                                      {
                                                         §§push(int(§§pop()));
                                                         continue loop4;
                                                      }
                                                      while(_loc9_ || param1)
                                                      {
                                                         continue loop5;
                                                      }
                                                      loop13:
                                                      while(true)
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            addr235:
                                                            if(!(_loc10_ && param1))
                                                            {
                                                               addr242:
                                                               _loc7_ = §§pop();
                                                               loop6:
                                                               while(true)
                                                               {
                                                                  if(!_loc10_)
                                                                  {
                                                                     §§push(_loc5_);
                                                                     while(true)
                                                                     {
                                                                        §§push(180);
                                                                        addr181:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() / Math.PI);
                                                                           if(_loc9_ || this)
                                                                           {
                                                                              §§push(§§pop() / §§pop());
                                                                              if(_loc9_ || param2)
                                                                              {
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    loop11:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc9_ || param1)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          continue loop13;
                                                                                       }
                                                                                       addr265:
                                                                                       loop1:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Math.random() * param4);
                                                                                          addr269:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             addr270:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                addr271:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc6_ = §§pop();
                                                                                                   addr272:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(1250);
                                                                                                      addr220:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Math.random() * 750);
                                                                                                         addr224:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            continue loop11;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop6;
                                                                                                }
                                                                                                §§goto(addr235);
                                                                                             }
                                                                                             continue loop1;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr202);
                                                                           }
                                                                           §§goto(addr224);
                                                                        }
                                                                     }
                                                                     addr180:
                                                                  }
                                                                  §§goto(addr272);
                                                               }
                                                               addr243:
                                                            }
                                                            §§goto(addr270);
                                                         }
                                                         §§goto(addr271);
                                                      }
                                                      addr202:
                                                   }
                                                   addr96:
                                                }
                                                §§goto(addr220);
                                             }
                                             §§goto(addr180);
                                          }
                                       }
                                       addr177:
                                    }
                                    §§goto(addr243);
                                 }
                              }
                              §§goto(addr177);
                           }
                           continue;
                        }
                        §§push(0.75);
                        if(_loc9_)
                        {
                           §§push(param4);
                           if(!_loc10_)
                           {
                              §§goto(addr265);
                              §§push(§§pop() * §§pop());
                           }
                           §§goto(addr269);
                        }
                        §§goto(addr271);
                     }
                     §§goto(addr181);
                  }
                  §§goto(addr96);
               }
               §§goto(addr86);
            }
            §§goto(addr105);
         }
      }
      
      protected function § "$§(param1:int) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(_loc3_ || param1)
         {
         }
         switch(§§pop())
         {
         }
         return § U§.§ !`§;
      }
      
      public function updateObjects(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§&#=§ = null;
         var _loc2_:§7B§ = null;
         var _loc3_:* = int(this.§1!b§.length - 1);
         loop0:
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§1!b§[_loc3_];
            if(_loc5_)
            {
               if(_loc2_.removeOnNextUpdate)
               {
                  if(_loc6_ && this)
                  {
                     continue;
                  }
                  this.§5#<§(_loc3_,true);
                  if(!_loc5_)
                  {
                     continue;
                  }
               }
               else
               {
                  this.updateObject(_loc2_,param1);
                  if(!(_loc5_ || _loc2_))
                  {
                     continue;
                  }
                  addr66:
                  _loc4_ = _loc2_ as §&#=§;
                  if(!_loc6_)
                  {
                     §§push(this.§&<§(_loc2_));
                     loop1:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!(_loc6_ && param1))
                           {
                              addr174:
                              if(_loc4_)
                              {
                                 addr176:
                                 _loc4_.§[v§(§'#2§.§&x§);
                              }
                              §§push(this);
                              §§push(_loc3_);
                              §§push(_loc4_ is §?"N§);
                              if(_loc5_ || _loc3_)
                              {
                                 §§push(!§§pop());
                              }
                              §§pop().§5#<§(§§pop(),§§pop());
                              addr181:
                              §§push(_loc3_);
                              if(_loc5_)
                              {
                                 §§push(§§pop() - 1);
                              }
                              _loc3_ = §§pop();
                              continue loop0;
                              addr162:
                           }
                           §§goto(addr176);
                        }
                        else
                        {
                           §§push(Boolean(_loc4_));
                           if(_loc5_)
                           {
                              if(§§pop())
                              {
                                 loop8:
                                 while(true)
                                 {
                                    §§pop();
                                    loop7:
                                    while(true)
                                    {
                                       addr99:
                                       loop6:
                                       while(true)
                                       {
                                          §§push(_loc4_.isReadyToBeRemoved(param1));
                                          if(_loc5_)
                                          {
                                             if(_loc6_)
                                             {
                                                continue loop8;
                                             }
                                             if(_loc6_)
                                             {
                                                continue loop1;
                                             }
                                             addr119:
                                             §§push(Boolean(§§pop()));
                                             while(true)
                                             {
                                                break loop6;
                                                §§goto(addr119);
                                             }
                                          }
                                          break;
                                       }
                                       loop3:
                                       while(§§pop())
                                       {
                                          while(true)
                                          {
                                             if(!_loc6_)
                                             {
                                                if(_loc5_ || _loc3_)
                                                {
                                                   _loc4_.§[v§(§'#2§.§&x§);
                                                   do
                                                   {
                                                      this.§5#<§(_loc3_,false);
                                                   }
                                                   while(_loc6_ && _loc3_);
                                                   
                                                   if(!(_loc5_ || _loc3_))
                                                   {
                                                      continue;
                                                   }
                                                   if(!_loc6_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         if(true)
                                                         {
                                                            break loop3;
                                                         }
                                                         §§goto(addr99);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr176);
                                                      }
                                                   }
                                                   §§goto(addr176);
                                                }
                                                break;
                                             }
                                             continue loop7;
                                          }
                                          §§goto(addr162);
                                       }
                                       §§goto(addr181);
                                    }
                                 }
                                 addr145:
                              }
                              §§goto(addr120);
                           }
                           §§goto(addr145);
                        }
                     }
                  }
                  §§goto(addr174);
               }
               §§goto(addr174);
            }
            §§goto(addr66);
         }
         if(!_loc6_)
         {
            this.§`e§(param1);
            if(!(_loc6_ && this))
            {
               this.§4!j§();
               while(true)
               {
                  §§push(this.§]" §);
                  if(!_loc6_)
                  {
                     if(§§pop())
                     {
                        if(!_loc6_)
                        {
                           continue;
                        }
                        addr230:
                     }
                     return;
                  }
                  break;
               }
               §§pop().update(param1);
            }
         }
         §§goto(addr230);
      }
      
      protected function updateObject(param1:§7B§, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            param1.update(param2,this);
         }
      }
      
      protected function §&"A§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§!!H§ = null;
         var _loc3_:* = int(this.§`#[§.length - 1);
         loop0:
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§`#[§[_loc3_];
            if(_loc5_ || param1)
            {
               if(!_loc2_.removeOnNextUpdate)
               {
                  _loc2_.update(param1,this);
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        §§push(_loc3_);
                        if(_loc5_)
                        {
                           §§push(§§pop() - 1);
                        }
                        _loc3_ = §§pop();
                        if(!(_loc5_ || _loc2_))
                        {
                           continue loop1;
                        }
                        if(_loc5_ || param1)
                        {
                           if(!_loc4_)
                           {
                              if(true)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              while(true)
                              {
                                 this.§,#[§(_loc3_);
                                 addr100:
                                 while(true)
                                 {
                                 }
                              }
                              addr97:
                           }
                           while(true)
                           {
                              continue loop2;
                           }
                        }
                        §§goto(addr100);
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr97);
         }
      }
      
      protected function §`e§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§;R§(param1);
         }
         do
         {
            this.§9"X§();
         }
         while(_loc2_ && _loc3_);
         
      }
      
      protected function §;R§(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§;!#§ = null;
         var _loc4_:§7B§ = null;
         var _loc2_:* = int(this.§>>§.length - 1);
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§>>§[_loc2_];
            if(!(_loc5_ && this))
            {
               §§push(_loc3_.§>"i§);
               if(_loc6_)
               {
                  if(§§pop())
                  {
                     if(_loc5_ && this)
                     {
                        continue;
                     }
                     addr56:
                     §§push(_loc3_.update(param1));
                     if(!(_loc5_ && _loc2_))
                     {
                        addr66:
                        if(!§§pop())
                        {
                           if(!(_loc6_ || this))
                           {
                              continue;
                           }
                           §§push(_loc3_.§+!A§);
                        }
                        addr132:
                        §§push(_loc2_);
                        if(_loc6_ || this)
                        {
                           §§push(§§pop() - 1);
                        }
                        _loc2_ = §§pop();
                        continue;
                     }
                     if(!§§pop())
                     {
                        if(_loc5_)
                        {
                           continue;
                        }
                        §§push(this.§3p§(_loc3_.objectId1));
                        if(!_loc5_)
                        {
                           _loc4_ = §§pop();
                           if(!(_loc5_ && _loc3_))
                           {
                              this.removeObject(_loc4_,true);
                              addr108:
                              §§push(this.§3p§(_loc3_.objectId2));
                           }
                           §§goto(addr108);
                        }
                        _loc4_ = §§pop();
                        if(!_loc5_)
                        {
                           this.removeObject(_loc4_,true);
                           if(!(_loc5_ && this))
                           {
                              this.§>>§.splice(_loc2_,1);
                           }
                        }
                        §§goto(addr132);
                     }
                     §§goto(addr108);
                  }
                  §§goto(addr132);
               }
               §§goto(addr66);
            }
            §§goto(addr56);
         }
      }
      
      private function §'w§(param1:§-!5§) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc2_:§&#=§ = param1.debug_object_1;
         var _loc3_:§&#=§ = param1.debug_object_2;
         if(!_loc11_)
         {
            if(!_loc2_)
            {
               if(!(_loc11_ && param1))
               {
                  addr35:
                  §§push(this.§3p§(param1.id1));
                  if(!(_loc11_ && _loc3_))
                  {
                     _loc2_ = §§pop();
                     if(!(_loc11_ && _loc2_))
                     {
                        param1.debug_object_1 = _loc2_;
                        addr58:
                        if(!_loc3_)
                        {
                           addr64:
                           _loc3_ = this.§3p§(param1.id2);
                           if(_loc10_ || param1)
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
                        if(!_loc11_)
                        {
                           §§push(param1.§`"t§);
                           loop0:
                           while(true)
                           {
                              if(§§pop() == null)
                              {
                                 addr238:
                                 while(true)
                                 {
                                    param1.§`"t§ = new §2"D§(4,4,4294901760);
                                    addr245:
                                    while(true)
                                    {
                                       this.§!V§.addChild(param1.§`"t§);
                                       addr223:
                                       while(true)
                                       {
                                       }
                                    }
                                 }
                                 addr238:
                              }
                              while(true)
                              {
                                 §§push(param1.§`"t§);
                                 continue loop0;
                                 §§goto(addr223);
                              }
                           }
                        }
                        §§goto(addr238);
                     }
                     §§goto(addr58);
                  }
               }
               §§goto(addr64);
            }
            §§goto(addr58);
         }
         §§goto(addr35);
      }
      
      protected function §,# §(param1:Number, param2:Number, param3:Number) : Number
      {
         return 0.01;
      }
      
      private function §9"X§() : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc1_:§-!5§ = null;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         loop0:
         for each(_loc1_ in this.§6!Z§)
         {
            if(_loc11_)
            {
               §§push(§<!4§);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        this.§'w§(_loc1_);
                        addr603:
                        while(true)
                        {
                        }
                     }
                     addr600:
                  }
                  while(true)
                  {
                     §§push(Boolean(_loc1_.§@[§));
                     loop5:
                     while(true)
                     {
                        §§push(§§pop());
                        loop6:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop7:
                              while(true)
                              {
                                 §§pop();
                                 loop8:
                                 while(true)
                                 {
                                    §§push(Boolean(_loc1_.§9"r§));
                                    if(!_loc10_)
                                    {
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop47:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop9:
                                                while(_loc11_)
                                                {
                                                   §§pop();
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(_loc1_.§?"B§));
                                                      loop65:
                                                      while(true)
                                                      {
                                                         if(_loc10_ && _loc2_)
                                                         {
                                                            continue loop10;
                                                         }
                                                         §§push(_loc4_);
                                                         loop66:
                                                         while(true)
                                                         {
                                                            if(_loc11_ || this)
                                                            {
                                                               if(_loc11_)
                                                               {
                                                                  if(!_loc10_)
                                                                  {
                                                                     addr463:
                                                                     §§push(_loc2_);
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc6_);
                                                                        if(_loc10_ && _loc3_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() <= §§pop());
                                                                           addr421:
                                                                           while(true)
                                                                           {
                                                                              addr422:
                                                                              while(§§pop())
                                                                              {
                                                                                 if(!(_loc10_ && _loc3_))
                                                                                 {
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       addr434:
                                                                                       §§push(_loc1_.§##>§ as b2PrismaticJoint);
                                                                                       §§push(_loc5_);
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          §§push(-§§pop());
                                                                                       }
                                                                                       §§pop().§8#S§(§§pop());
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr603);
                                                                                    }
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                        }
                                                                     }
                                                                     loop53:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        addr464:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() >= §§pop());
                                                                           addr465:
                                                                           while(true)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 addr467:
                                                                                 loop57:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       continue loop47;
                                                                                    }
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          addr471:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                continue loop8;
                                                                                             }
                                                                                             §§push(_loc5_);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(0);
                                                                                                addr445:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() < §§pop());
                                                                                                   addr446:
                                                                                                   while(_loc11_)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               continue loop65;
                                                                                                            }
                                                                                                            addr450:
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop57;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr470:
                                                                                    }
                                                                                    §§goto(addr421);
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop53;
                                                                        }
                                                                     }
                                                                     addr411:
                                                                     addr463:
                                                                  }
                                                                  else
                                                                  {
                                                                     loop69:
                                                                     while(true)
                                                                     {
                                                                        _loc4_ = §§pop();
                                                                        loop70:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc1_.§##>§);
                                                                           loop71:
                                                                           while(true)
                                                                           {
                                                                              §§push((§§pop() as b2PrismaticJoint).§+#0§());
                                                                              addr526:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 loop73:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc5_ = §§pop();
                                                                                    loop74:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc10_ && this))
                                                                                       {
                                                                                          §§push(this.§,# §(_loc3_,_loc2_,_loc5_));
                                                                                          loop75:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc6_ = §§pop();
                                                                                                   addr510:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         continue loop70;
                                                                                                      }
                                                                                                      if(_loc11_ || _loc1_)
                                                                                                      {
                                                                                                         §§push(_loc5_);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc11_)
                                                                                                            {
                                                                                                               continue loop75;
                                                                                                            }
                                                                                                            §§push(0);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() > §§pop());
                                                                                                               if(!(_loc10_ && this))
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  while(§§pop())
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           if(_loc11_ || _loc2_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           continue loop7;
                                                                                                                        }
                                                                                                                        continue loop9;
                                                                                                                     }
                                                                                                                     addr498:
                                                                                                                     §§pop();
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc4_);
                                                                                                                        addr461:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc3_);
                                                                                                                           addr462:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§goto(addr463);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr498);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr465);
                                                                                                                  addr488:
                                                                                                               }
                                                                                                               §§goto(addr489);
                                                                                                            }
                                                                                                         }
                                                                                                         addr476:
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr509:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                loop14:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc2_ = §§pop();
                                                                                                   addr566:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(_loc1_.upperLimit));
                                                                                                      loop16:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc3_ = §§pop();
                                                                                                         loop17:
                                                                                                         while(_loc1_.type != §-#'§.§,"?§)
                                                                                                         {
                                                                                                            if(_loc1_.type != §-#'§.§>"z§)
                                                                                                            {
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                            loop18:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc11_)
                                                                                                               {
                                                                                                                  §§push(_loc1_.§##>§);
                                                                                                                  loop19:
                                                                                                                  for(; _loc11_ || _loc2_; while(true)
                                                                                                                  {
                                                                                                                     if(_loc10_ && _loc1_)
                                                                                                                     {
                                                                                                                        continue loop19;
                                                                                                                     }
                                                                                                                     if(!_loc11_)
                                                                                                                     {
                                                                                                                        continue loop71;
                                                                                                                     }
                                                                                                                     §§goto(addr300);
                                                                                                                     §§push((§§pop() as b2RevoluteJoint).§+#0§());
                                                                                                                     §§goto(addr120);
                                                                                                                  },continue loop71)
                                                                                                                  {
                                                                                                                     if(_loc11_)
                                                                                                                     {
                                                                                                                        §§push((§§pop() as b2RevoluteJoint).§4"F§());
                                                                                                                        loop20:
                                                                                                                        while(_loc11_ || _loc1_)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc7_ = §§pop();
                                                                                                                              addr396:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc1_.§##>§);
                                                                                                                                 continue loop19;
                                                                                                                              }
                                                                                                                              loop27:
                                                                                                                              while(_loc11_ || _loc3_)
                                                                                                                              {
                                                                                                                                 §§push(0);
                                                                                                                                 loop28:
                                                                                                                                 for(; _loc11_; §§push(0),if(_loc10_ && _loc2_)
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 },if(!(_loc10_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    §§goto(addr180);
                                                                                                                                    §§push(§§pop() < §§pop());
                                                                                                                                 },§§goto(addr479))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() > §§pop());
                                                                                                                                    loop29:
                                                                                                                                    for(; _loc11_; if(_loc10_ && _loc1_)
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    },§§goto(addr196))
                                                                                                                                    {
                                                                                                                                       if(!_loc10_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop());
                                                                                                                                          loop30:
                                                                                                                                          while(!(_loc10_ && this))
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                loop31:
                                                                                                                                                for(; !_loc10_; while(true)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc10_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      if(!_loc10_)
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc10_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc11_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc11_ || _loc1_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           continue loop5;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr100);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr488);
                                                                                                                                                                  }
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop());
                                                                                                                                                               addr196:
                                                                                                                                                               continue loop30;
                                                                                                                                                               if(!(_loc11_ || _loc1_))
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               if(_loc11_)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr207);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr100);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr467);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr449);
                                                                                                                                                         }
                                                                                                                                                         addr243:
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   continue loop31;
                                                                                                                                                },§§goto(addr446))
                                                                                                                                                {
                                                                                                                                                   §§pop();
                                                                                                                                                   loop32:
                                                                                                                                                   while(!_loc10_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc7_);
                                                                                                                                                      loop33:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc11_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc10_)
                                                                                                                                                            {
                                                                                                                                                               continue loop20;
                                                                                                                                                            }
                                                                                                                                                            if(!_loc11_)
                                                                                                                                                            {
                                                                                                                                                               continue loop66;
                                                                                                                                                            }
                                                                                                                                                            §§push(_loc3_);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc11_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc10_)
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop() >= §§pop());
                                                                                                                                                                  continue loop31;
                                                                                                                                                               }
                                                                                                                                                               addr325:
                                                                                                                                                               while(!(_loc10_ && _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  _loc5_ = §§pop();
                                                                                                                                                                  continue loop27;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr462);
                                                                                                                                                               addr54:
                                                                                                                                                               §§push(_loc2_);
                                                                                                                                                               if(!(_loc11_ || _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               if(!(_loc10_ && _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc10_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     addr76:
                                                                                                                                                                     §§push(§§pop() <= §§pop());
                                                                                                                                                                     if(_loc11_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        addr180:
                                                                                                                                                                        if(!_loc10_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc11_ || _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc11_ || _loc1_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr100:
                                                                                                                                                                                 loop45:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop0;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc11_ || _loc1_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc10_ && _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc11_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop18;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(_loc10_ && this)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop65;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(!_loc10_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc7_);
                                                                                                                                                                                                if(_loc11_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc11_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop33;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr54);
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr153);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop65;
                                                                                                                                                                                          addr208:
                                                                                                                                                                                       }
                                                                                                                                                                                       if(_loc11_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc10_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop74;
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc1_.§##>§);
                                                                                                                                                                                             if(_loc10_ && _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop19;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(§§pop() as b2RevoluteJoint);
                                                                                                                                                                                             §§push(_loc5_);
                                                                                                                                                                                             if(_loc11_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(-§§pop());
                                                                                                                                                                                             }
                                                                                                                                                                                             §§pop().§8#S§(§§pop());
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc11_ || _loc2_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(_loc11_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc10_ && _loc2_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr151);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr510);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop32;
                                                                                                                                                                                                   addr265:
                                                                                                                                                                                                }
                                                                                                                                                                                                if(!_loc11_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   break loop45;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(!_loc10_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc11_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop17;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop0;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc5_);
                                                                                                                                                                                                      addr153:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc11_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc11_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc11_ || _loc2_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop28;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop69;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr317:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc11_ || _loc2_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop73;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr325);
                                                                                                                                                                                                               §§push(§§pop());
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop73;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop27;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop69;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr151:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr499);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr441);
                                                                                                                                                                                       §§goto(addr471);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr136);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr396);
                                                                                                                                                                                 addr100:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr498);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr450);
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc11_ || _loc1_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc10_)
                                                                                                                                                                              {
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop29;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop5;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop31;
                                                                                                                                                                        addr180:
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop();
                                                                                                                                                                        §§goto(addr208);
                                                                                                                                                                        §§goto(addr76);
                                                                                                                                                                     }
                                                                                                                                                                     addr207:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr463);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr420);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr464);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            while(!(_loc10_ && _loc1_))
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc10_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc11_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop16;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr317);
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr476);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr465);
                                                                                                                                                            }
                                                                                                                                                            addr300:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr444);
                                                                                                                                                      }
                                                                                                                                                      continue loop66;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      continue loop14;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!§§pop())
                                                                                                                                                   {
                                                                                                                                                      continue loop0;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr562);
                                                                                                                                                }
                                                                                                                                                addr561:
                                                                                                                                             }
                                                                                                                                             §§goto(addr243);
                                                                                                                                          }
                                                                                                                                          continue loop6;
                                                                                                                                       }
                                                                                                                                       §§goto(addr470);
                                                                                                                                    }
                                                                                                                                    §§goto(addr422);
                                                                                                                                 }
                                                                                                                                 §§goto(addr445);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr461);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push((§§pop() as b2PrismaticJoint).§##2§());
                                                                                                                           continue loop69;
                                                                                                                        }
                                                                                                                        addr544:
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr434);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr600);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr603);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr544);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr566);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr603);
                                                               }
                                                               §§goto(addr526);
                                                            }
                                                            §§goto(addr509);
                                                         }
                                                      }
                                                   }
                                                }
                                                continue loop1;
                                                addr576:
                                             }
                                             while(true)
                                             {
                                                §§goto(addr561);
                                             }
                                          }
                                       }
                                       addr573:
                                    }
                                    §§goto(addr576);
                                 }
                              }
                           }
                           §§goto(addr573);
                        }
                     }
                  }
               }
            }
            §§goto(addr120);
         }
      }
      
      public function §7U§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§-!5§ = null;
         while(this.§6!Z§.length > 0)
         {
            _loc1_ = this.§6!Z§.pop();
            if(_loc2_ || this)
            {
               this.§`"S§(_loc1_);
            }
         }
      }
      
      public function §&<§(param1:§7B§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§0#B§(param1);
            loop0:
            while(true)
            {
               §§push(param1);
               if(param1)
               {
                  §§pop();
                  while(true)
                  {
                     §§push(param1.levelItem);
                     loop2:
                     while(true)
                     {
                        §§push(!§§pop());
                        addr195:
                        while(true)
                        {
                           §§push(§§pop());
                           addr196:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 continue loop2;
                              }
                              addr182:
                              while(true)
                              {
                                 addr183:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                 }
                              }
                           }
                        }
                     }
                     addr164:
                     if(!(_loc3_ || this))
                     {
                        continue;
                     }
                     §§push(this.§%!%§(param1.§3!t§().GetPosition().x,param1.§3!t§().GetPosition().y));
                     if(_loc3_ || _loc2_)
                     {
                        addr83:
                        if(!(_loc2_ && _loc3_))
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc3_)
                           {
                              addr93:
                              if(§§pop())
                              {
                                 if(_loc3_ || this)
                                 {
                                    §§push(param1 is §&#=§);
                                    loop17:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc2_)
                                          {
                                             continue loop0;
                                          }
                                          addr130:
                                          addr130:
                                          while(true)
                                          {
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(true);
                                          continue loop17;
                                       }
                                    }
                                    addr43:
                                    if(_loc3_ || param1)
                                    {
                                       if(!_loc3_)
                                       {
                                          loop12:
                                          while(true)
                                          {
                                             §§pop();
                                             loop13:
                                             while(true)
                                             {
                                                §§push(Boolean(param1.§3!t§()));
                                                addr136:
                                                loop14:
                                                while(true)
                                                {
                                                   if(!(_loc2_ && this))
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            loop15:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(!_loc2_)
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        while(!_loc2_)
                                                                        {
                                                                           §§pop();
                                                                           if(!(_loc3_ || _loc3_))
                                                                           {
                                                                              continue loop13;
                                                                           }
                                                                           §§goto(addr164);
                                                                           §§goto(addr83);
                                                                        }
                                                                        §§goto(addr183);
                                                                        addr154:
                                                                     }
                                                                     §§goto(addr93);
                                                                  }
                                                                  §§goto(addr196);
                                                               }
                                                               addr188:
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                                  continue loop15;
                                                               }
                                                            }
                                                            §§goto(addr52);
                                                         }
                                                         §§goto(addr197);
                                                      }
                                                      break;
                                                   }
                                                   addr187:
                                                   while(true)
                                                   {
                                                      §§goto(addr188);
                                                      continue loop14;
                                                   }
                                                }
                                                §§goto(addr181);
                                             }
                                          }
                                       }
                                       addr52:
                                       return §§pop();
                                    }
                                    §§goto(addr136);
                                    addr115:
                                 }
                                 §§goto(addr130);
                              }
                              §§push(false);
                              if(!(_loc2_ && param1))
                              {
                                 if(!(_loc3_ || this))
                                 {
                                    §§goto(addr195);
                                 }
                                 return §§pop();
                              }
                              §§goto(addr41);
                           }
                           §§goto(addr115);
                        }
                        §§goto(addr154);
                     }
                     §§goto(addr43);
                  }
               }
               while(true)
               {
                  §§goto(addr187);
                  §§goto(addr183);
               }
            }
         }
         while(true)
         {
            §&#=§(param1).updateOutOfBounds(this);
            §§goto(addr130);
         }
      }
      
      protected function §0#B§(param1:§7B§) : void
      {
      }
      
      public function §5#!§(param1:Number, param2:Number) : Boolean
      {
         return this.§2#G§.camera.§?l§(param1,param2);
      }
      
      public function §%!%§(param1:Number, param2:Number) : Boolean
      {
         return this.§2#G§.§""?§.§'"b§(param1,param2);
      }
      
      public function §,#[§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(param1 < 0)
            {
               if(_loc3_ || _loc3_)
               {
                  §§goto(addr28);
               }
            }
            var _loc2_:§!!H§ = this.§`#[§[param1];
            if(!(_loc4_ && this))
            {
               this.§6^§(_loc2_.sprite);
               loop0:
               while(true)
               {
                  this.§`#[§[param1] = null;
                  loop1:
                  while(true)
                  {
                     addr67:
                     while(true)
                     {
                        this.§`#[§.splice(param1,1);
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
            }
            while(false)
            {
               §§goto(addr67);
            }
            _loc2_ = null;
            return;
         }
         addr28:
      }
      
      protected function shouldShowScoreText(param1:§&#=§) : Boolean
      {
         return true;
      }
      
      protected function getScoreTextPosition(param1:§&#=§) : Point
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Number = param1.§3!t§().GetPosition().x;
         §§push(param1.§3!t§().GetPosition().y - 3);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         return new Point(_loc2_,_loc3_);
      }
      
      public function §5#<§(param1:int, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc5_:§&#=§ = null;
         var _loc6_:§;!#§ = null;
         var _loc7_:Point = null;
         var _loc8_:* = 0;
         var _loc9_:* = false;
         var _loc10_:* = 0;
         if(_loc13_)
         {
            if(param1 < 0)
            {
               if(_loc13_)
               {
                  §§goto(addr38);
               }
            }
            var _loc4_:§7B§;
            §§push((_loc4_ = this.§1!b§[param1]) is §<!2§);
            if(_loc13_ || param2)
            {
               if(§§pop())
               {
                  if(_loc13_ || this)
                  {
                     var _loc11_:*;
                     §§push((_loc11_ = this).§%"`§);
                     if(!(_loc14_ && param1))
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc12_:* = §§pop();
                     if(!_loc14_)
                     {
                        _loc11_.§%"`§ = _loc12_;
                     }
                     if(!(_loc14_ && this))
                     {
                        addr131:
                        if(_loc4_ == this.§1!§)
                        {
                           if(_loc13_)
                           {
                              this.§1!§ = null;
                              if(!_loc14_)
                              {
                                 addr142:
                                 if(_loc4_ is §&#=§)
                                 {
                                    addr146:
                                    _loc5_ = _loc4_ as §&#=§;
                                    if(!_loc14_)
                                    {
                                       §§push(param2);
                                       if(!(_loc14_ && this))
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc13_ || this)
                                             {
                                                addr169:
                                                _loc7_ = this.getScoreTextPosition(_loc5_);
                                                if(_loc13_)
                                                {
                                                   §§push(§ U§.§0#`§(_loc5_.itemName));
                                                   if(!_loc14_)
                                                   {
                                                      §§push(int(§§pop()));
                                                   }
                                                   _loc8_ = §§pop();
                                                   loop12:
                                                   while(true)
                                                   {
                                                      addr213:
                                                      while(true)
                                                      {
                                                         §§push(this.shouldShowScoreText(_loc5_));
                                                         if(!_loc14_)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                         _loc9_ = §§pop();
                                                         continue loop12;
                                                      }
                                                   }
                                                   addr230:
                                                }
                                                while(true)
                                                {
                                                   this.§2#G§.addScore(_loc5_.levelItem.score,§&'§.§8#'§,_loc9_,_loc7_.x,_loc7_.y,_loc8_);
                                                   if(!(_loc13_ || param2))
                                                   {
                                                      continue;
                                                   }
                                                   if(!_loc14_)
                                                   {
                                                      if(true)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr230);
                                                   }
                                                   §§goto(addr213);
                                                }
                                                addr231:
                                                addr232:
                                                if(param3)
                                                {
                                                   if(_loc13_ || param1)
                                                   {
                                                      _loc5_.updateBeforeRemoving(null);
                                                      if(_loc13_ || param2)
                                                      {
                                                         addr261:
                                                         this.§7"L§(_loc5_);
                                                      }
                                                   }
                                                   §§goto(addr261);
                                                }
                                                else
                                                {
                                                   _loc5_.updateBeforeRemoving(this);
                                                   if(!(_loc14_ && this))
                                                   {
                                                      §§goto(addr261);
                                                   }
                                                }
                                                for each(_loc6_ in this.§>>§)
                                                {
                                                   §§push(_loc6_.objectId1);
                                                   if(_loc13_ || param2)
                                                   {
                                                      §§push(_loc5_.id);
                                                      if(_loc13_)
                                                      {
                                                         §§push(§§pop() == §§pop());
                                                         if(_loc13_)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               if(!_loc14_)
                                                               {
                                                                  addr297:
                                                                  §§pop();
                                                                  if(!_loc14_)
                                                                  {
                                                                     addr305:
                                                                     if(_loc6_.objectId2 != _loc5_.id)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(_loc14_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                  }
                                                                  _loc6_.§>"i§ = true;
                                                                  continue;
                                                               }
                                                            }
                                                            §§goto(addr305);
                                                         }
                                                         §§goto(addr297);
                                                      }
                                                   }
                                                   §§goto(addr305);
                                                }
                                                if(_loc13_)
                                                {
                                                   delete this.§8'§[_loc5_.§["H§.instanceName];
                                                   addr324:
                                                   this.§6^§(_loc4_.sprite);
                                                   if(!(_loc14_ && param3))
                                                   {
                                                      this.§1!b§[param1] = null;
                                                      loop1:
                                                      while(true)
                                                      {
                                                         this.§1!b§.splice(param1,1);
                                                         loop2:
                                                         while(_loc4_ is §1#E§)
                                                         {
                                                            if(_loc13_)
                                                            {
                                                               if(!_loc13_)
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(int(this.§63§.indexOf(_loc4_)));
                                                               if(!_loc14_)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc13_)
                                                                  {
                                                                     _loc10_ = §§pop();
                                                                     addr394:
                                                                     §§push(0);
                                                                  }
                                                                  if(§§pop() >= §§pop())
                                                                  {
                                                                     addr396:
                                                                     while(true)
                                                                     {
                                                                        this.§63§.splice(_loc10_,1);
                                                                        addr401:
                                                                        while(true)
                                                                        {
                                                                           break loop2;
                                                                        }
                                                                     }
                                                                     addr396:
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr394);
                                                            }
                                                            §§goto(addr396);
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(this.§]" §);
                                                            if(!_loc14_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  loop5:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§]" §);
                                                                     addr369:
                                                                     while(true)
                                                                     {
                                                                        §§pop().§^!I§(_loc4_);
                                                                        loop9:
                                                                        while(true)
                                                                        {
                                                                           if(_loc13_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 addr350:
                                                                                 loop6:
                                                                                 while(true)
                                                                                 {
                                                                                    this.§^!I§(_loc4_);
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc13_)
                                                                                       {
                                                                                          continue loop9;
                                                                                       }
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          continue loop5;
                                                                                       }
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          _loc4_.dispose();
                                                                                          if(_loc13_ || param3)
                                                                                          {
                                                                                             if(!_loc14_)
                                                                                             {
                                                                                                if(true)
                                                                                                {
                                                                                                   _loc4_ = null;
                                                                                                }
                                                                                                continue loop6;
                                                                                                return;
                                                                                             }
                                                                                             continue loop1;
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                       §§goto(addr396);
                                                                                    }
                                                                                    continue loop9;
                                                                                 }
                                                                              }
                                                                              addr373:
                                                                           }
                                                                           §§goto(addr401);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr350);
                                                            }
                                                            §§goto(addr369);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr373);
                                                }
                                                §§goto(addr324);
                                             }
                                             §§goto(addr261);
                                          }
                                          §§goto(addr231);
                                       }
                                       §§goto(addr232);
                                    }
                                    §§goto(addr169);
                                 }
                                 §§goto(addr324);
                              }
                              §§goto(addr146);
                           }
                        }
                     }
                  }
                  else
                  {
                     addr104:
                     §§push((_loc11_ = this).§#!3§);
                     if(!_loc14_)
                     {
                        §§push(§§pop() - 1);
                     }
                     _loc12_ = §§pop();
                     if(_loc13_ || param3)
                     {
                        _loc11_.§#!3§ = _loc12_;
                     }
                     if(_loc13_ || this)
                     {
                        §§goto(addr131);
                     }
                  }
                  §§goto(addr142);
               }
               else
               {
                  §§push(_loc4_ is §?"N§);
                  if(_loc13_)
                  {
                     addr96:
                     if(§§pop())
                     {
                        if(_loc13_ || param2)
                        {
                           §§goto(addr104);
                        }
                        §§goto(addr142);
                     }
                     §§goto(addr131);
                  }
               }
               §§goto(addr142);
            }
            §§goto(addr96);
         }
         addr38:
      }
      
      protected function §^!I§(param1:§7B§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:§&#=§ = null;
         var _loc3_:§2!=§ = null;
         var _loc4_:* = null;
         var _loc5_:String = null;
         var _loc6_:§&#=§ = null;
         if(_loc9_ || param1)
         {
            if(param1 is §&#=§)
            {
               addr42:
               _loc2_ = param1 as §&#=§;
               _loc3_ = _loc2_.§["H§ as §2!=§;
               if(_loc9_)
               {
                  if(!_loc3_)
                  {
                  }
                  §§goto(addr123);
               }
               var _loc7_:int = 0;
               var _loc8_:* = _loc3_.§=#X§.§^!o§;
               while(§§hasnext(_loc8_,_loc7_))
               {
                  §§push(§§nextname(_loc7_,_loc8_));
                  if(_loc9_)
                  {
                     _loc4_ = §§pop();
                     if(!(_loc10_ && _loc3_))
                     {
                        addr96:
                        _loc5_ = _loc3_.§=#X§.§^!o§[_loc4_];
                     }
                     _loc6_ = this.§5"z§(_loc4_);
                     if(!_loc10_)
                     {
                        this.performTriggerActionOnObject(_loc6_,_loc5_,"onDestroyed");
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
      
      protected function performTriggerActionOnObject(param1:§&#=§, param2:String, param3:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(param1)
            {
               if(_loc5_ || param2)
               {
                  param1.§="D§(param2,param3,this);
               }
            }
         }
      }
      
      private function §6^§(param1:§!!U§.Sprite) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
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
                     addr78:
                     while(true)
                     {
                        §§push(Boolean(param1.parent));
                        if(!_loc3_)
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
                     if(!(_loc2_ && param1))
                     {
                        param1.parent.removeChild(param1);
                     }
                     else
                     {
                        §§goto(addr78);
                     }
                  }
                  break;
               }
               return;
            }
         }
         §§goto(addr78);
      }
      
      public function removeObject(param1:§7B§, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(param1)
            {
               if(_loc4_)
               {
                  this.§5#<§(this.§1!b§.indexOf(param1),param2);
               }
            }
         }
      }
      
      public function §5"J§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(param1)
            {
               if(_loc2_ || this)
               {
                  this.§2#G§.§@"1§();
               }
            }
         }
      }
      
      public function §&!G§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param1)
         {
            this.§2#G§.§&!G§(param1,param2,param3,param4);
         }
      }
      
      public function §'"0§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            §§push(this.§9§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr119:
               while(true)
               {
                  §§push(-§§pop());
                  addr120:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop0;
                  }
               }
            }
            addr118:
         }
         loop3:
         while(true)
         {
            §§push(this.§9§);
            if(!_loc4_)
            {
               §§push(param2);
               if(!_loc4_)
               {
                  if(_loc3_ || param2)
                  {
                     addr102:
                     §§push(-§§pop());
                     if(!_loc4_)
                     {
                        §§pop().y = §§pop();
                        while(true)
                        {
                           §§push(this.§8!>§);
                           loop5:
                           while(true)
                           {
                              §§push(param1);
                              addr76:
                              while(true)
                              {
                                 §§push(-§§pop());
                                 addr77:
                                 while(true)
                                 {
                                    §§pop().x = §§pop();
                                    addr78:
                                    while(!(_loc4_ && param2))
                                    {
                                       continue loop5;
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                        }
                     }
                  }
                  else
                  {
                     §§goto(addr119);
                  }
                  §§goto(addr120);
               }
               §§goto(addr102);
            }
            else
            {
               §§goto(addr118);
            }
         }
      }
      
      public function isPigsAlive() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§7B§ = null;
         var _loc1_:int = 0;
         loop0:
         while(_loc1_ < this.§1!b§.length)
         {
            _loc2_ = this.§1!b§[_loc1_];
            if(_loc3_)
            {
               §§push(Boolean(_loc2_));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§push(§§pop());
                           if(_loc4_)
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 §§pop();
                                 addr115:
                                 while(true)
                                 {
                                    addr40:
                                    do
                                    {
                                       §§push((_loc2_ as §<!2§).health > 0);
                                    }
                                    while(!(_loc4_ && _loc3_));
                                    
                                    continue loop5;
                                 }
                              }
                              if(_loc3_ || _loc3_)
                              {
                                 if(_loc3_)
                                 {
                                    return §§pop();
                                 }
                                 §§goto(addr98);
                              }
                              while(!_loc3_)
                              {
                                 §§goto(addr131);
                              }
                              continue loop1;
                              addr100:
                           }
                           loop10:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    _loc1_++;
                                    if(_loc3_)
                                    {
                                       if(_loc3_)
                                       {
                                          if(true)
                                          {
                                             break loop10;
                                          }
                                          §§goto(addr40);
                                       }
                                       else
                                       {
                                          addr56:
                                          §§push(true);
                                       }
                                       §§goto(addr57);
                                    }
                                    else
                                    {
                                       if(_loc4_ && _loc3_)
                                       {
                                          break;
                                       }
                                       if(_loc3_ || _loc2_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr132);
                                    }
                                 }
                                 §§goto(addr115);
                              }
                              §§goto(addr56);
                           }
                           continue loop0;
                        }
                        continue;
                        addr109:
                     }
                     while(true)
                     {
                        §§pop();
                        addr132:
                        while(true)
                        {
                           §§push(_loc2_ is §<!2§);
                           addr98:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                           }
                        }
                     }
                     addr131:
                     §§goto(addr100);
                  }
               }
            }
            §§goto(addr132);
         }
         return false;
      }
      
      public function §3"z§(param1:Boolean = false) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§<!2§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = int(this.§1!b§.length - 1);
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
               §§push(Boolean(_loc4_ = this.§1!b§[_loc3_] as §<!2§));
               if(!(_loc5_ && _loc3_))
               {
                  §§push(§§pop());
                  if(!(_loc5_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        if(_loc6_ || param1)
                        {
                           §§pop();
                           if(_loc6_ || this)
                           {
                              §§push(_loc4_.health > 0);
                              loop9:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(param1);
                                       addr166:
                                       while(true)
                                       {
                                          §§push(!§§pop());
                                          loop3:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             addr168:
                                             loop12:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      addr180:
                                                      while(true)
                                                      {
                                                         §§push(!_loc4_.§5!+§);
                                                         while(true)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               continue loop13;
                                                            }
                                                            if(_loc5_)
                                                            {
                                                               continue loop3;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(!_loc6_)
                                                               {
                                                                  continue loop12;
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  loop5:
                                                                  while(true)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        addr159:
                                                                        while(true)
                                                                        {
                                                                           continue loop5;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         continue loop13;
                                                      }
                                                   }
                                                }
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
                                                      }
                                                      addr143:
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    addr165:
                                 }
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    _loc3_ = §§pop();
                                    if(!(_loc5_ && param1))
                                    {
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          if(_loc6_ || this)
                                          {
                                             if(_loc6_ || _loc2_)
                                             {
                                                if(true)
                                                {
                                                   break;
                                                }
                                                §§goto(addr118);
                                             }
                                             else
                                             {
                                                §§goto(addr165);
                                             }
                                          }
                                          §§goto(addr180);
                                       }
                                       §§goto(addr159);
                                    }
                                    §§goto(addr143);
                                 }
                                 continue loop0;
                              }
                              addr164:
                           }
                           §§goto(addr180);
                        }
                        §§goto(addr152);
                     }
                     §§goto(addr164);
                  }
                  §§goto(addr168);
               }
               §§goto(addr158);
            }
            break;
         }
         return §§pop();
      }
      
      public function §@"z§() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§&#=§ = null;
         var _loc1_:int = 0;
         var _loc3_:int = 0;
         for each(_loc2_ in this.§1!b§)
         {
            if(_loc5_ || _loc2_)
            {
               if(_loc2_ is §7";§)
               {
                  if(!(_loc6_ && _loc3_))
                  {
                     _loc1_++;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      public function §6#W§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§&#=§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§1!b§)
         {
            if(_loc6_ || _loc1_)
            {
               §§push(Boolean(_loc2_));
               if(_loc6_)
               {
                  if(§§pop())
                  {
                     if(!(_loc5_ && _loc1_))
                     {
                        §§pop();
                        if(_loc6_ || this)
                        {
                           addr73:
                           §§push(_loc2_.§"!@§());
                           if(_loc6_)
                           {
                              addr78:
                              if(!§§pop())
                              {
                                 continue;
                              }
                              if(!_loc6_)
                              {
                                 continue;
                              }
                           }
                           §§goto(addr78);
                        }
                        _loc1_++;
                        continue;
                     }
                  }
               }
               §§goto(addr78);
            }
            §§goto(addr73);
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§<!2§ = null;
         var _loc2_:* = int(this.§1!b§.length - 1);
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§1!b§[_loc2_] as §<!2§;
            if(_loc4_)
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
                        addr101:
                        while(true)
                        {
                           addr65:
                           while(true)
                           {
                              §§push(_loc3_.health > 0);
                              if(_loc5_)
                              {
                                 break;
                              }
                              if(_loc5_)
                              {
                                 continue loop1;
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
                  loop5:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop7:
                        while(true)
                        {
                           _loc3_.scream();
                           loop8:
                           while(true)
                           {
                              if(_loc4_ || _loc2_)
                              {
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    if(_loc4_)
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    _loc2_ = §§pop();
                                    if(!(_loc4_ || _loc3_))
                                    {
                                       continue loop8;
                                    }
                                    if(!_loc4_)
                                    {
                                       continue loop7;
                                    }
                                    if(true)
                                    {
                                       break loop5;
                                    }
                                    §§goto(addr65);
                                    continue loop8;
                                 }
                                 addr38:
                              }
                              §§goto(addr101);
                           }
                        }
                        addr76:
                     }
                     §§goto(addr38);
                  }
                  continue loop0;
               }
            }
            §§goto(addr76);
         }
      }
      
      public function §;!N§() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§?"N§ = null;
         var _loc1_:* = int(this.§1!b§.length - 1);
         loop0:
         for(; _loc1_ >= 0; while(false)
         {
            §§goto(addr63);
         })
         {
            _loc2_ = this.§1!b§[_loc1_] as §?"N§;
            if(_loc4_)
            {
               continue;
            }
            §§push(Boolean(_loc2_));
            loop1:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           if(_loc3_ || _loc2_)
                           {
                              return true;
                           }
                           else
                           {
                              loop3:
                              while(true)
                              {
                                 addr63:
                                 while(true)
                                 {
                                    §§push(_loc2_.health > 0);
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    if(_loc3_ || _loc1_)
                                    {
                                       continue loop1;
                                    }
                                    addr117:
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop3;
                                    }
                                 }
                              }
                           }
                           return §§pop();
                        }
                        loop6:
                        while(true)
                        {
                           addr38:
                           while(true)
                           {
                              §§push(_loc1_);
                              if(_loc3_ || this)
                              {
                                 §§push(§§pop() - 1);
                              }
                              _loc1_ = §§pop();
                              if(_loc3_)
                              {
                                 break;
                              }
                              continue loop6;
                           }
                           continue loop0;
                        }
                     }
                     §§goto(addr38);
                  }
                  addr84:
               }
               §§goto(addr117);
            }
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§&#=§ = null;
         var _loc1_:int = this.§1!b§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§1!b§[_loc1_] as §&#=§;
            if(!_loc4_)
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
                              addr246:
                              while(true)
                              {
                                 §§push(_loc2_.health);
                                 addr222:
                                 while(true)
                                 {
                                    §§push(§§pop() > 0);
                                 }
                              }
                           }
                           addr245:
                        }
                        while(true)
                        {
                           loop8:
                           while(true)
                           {
                              §§push(§§pop());
                              loop9:
                              while(true)
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
                                          §§push(_loc2_.§[#L§());
                                          if(_loc3_)
                                          {
                                             if(_loc4_ && _loc2_)
                                             {
                                                break;
                                             }
                                             §§push(!§§pop());
                                             while(true)
                                             {
                                             }
                                          }
                                          loop12:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop13:
                                                while(_loc3_ || _loc2_)
                                                {
                                                   §§push(_loc2_.isDamageAwardingScore());
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      loop15:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         loop16:
                                                         while(!_loc4_)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               loop20:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     loop21:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_ is §?"N§);
                                                                        if(!(_loc4_ && _loc3_))
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(!(_loc3_ || _loc1_))
                                                                              {
                                                                                 continue loop16;
                                                                              }
                                                                              if(!(_loc3_ || _loc1_))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 loop25:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    loop24:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc3_ || this))
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          continue loop21;
                                                                                       }
                                                                                       if(_loc4_ && this)
                                                                                       {
                                                                                          addr167:
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§goto(addr170);
                                                                                          }
                                                                                          continue loop13;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc2_.health);
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§push(§§pop() > 0);
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                if(_loc4_ && _loc2_)
                                                                                                {
                                                                                                   continue loop25;
                                                                                                }
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   addr76:
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  continue loop24;
                                                                                                               }
                                                                                                               continue loop24;
                                                                                                            }
                                                                                                            §§push(false);
                                                                                                         }
                                                                                                         §§goto(addr38);
                                                                                                         §§goto(addr76);
                                                                                                      }
                                                                                                      addr78:
                                                                                                   }
                                                                                                   continue loop1;
                                                                                                }
                                                                                                §§goto(addr245);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      continue loop14;
                                                                                                   }
                                                                                                   addr203:
                                                                                                   while(_loc3_ || _loc2_)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      break loop24;
                                                                                                   }
                                                                                                   continue loop10;
                                                                                                }
                                                                                                addr163:
                                                                                                while(_loc3_)
                                                                                                {
                                                                                                   continue loop20;
                                                                                                }
                                                                                                continue loop15;
                                                                                             }
                                                                                             return §§pop();
                                                                                          }
                                                                                          §§goto(addr222);
                                                                                       }
                                                                                    }
                                                                                    while(!(_loc4_ && _loc1_))
                                                                                    {
                                                                                       §§push(_loc2_.§+"6§());
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             continue loop8;
                                                                                          }
                                                                                          continue loop12;
                                                                                       }
                                                                                       §§goto(addr170);
                                                                                    }
                                                                                    continue loop11;
                                                                                 }
                                                                                 addr132:
                                                                              }
                                                                              §§goto(addr78);
                                                                           }
                                                                           addr170:
                                                                           return false;
                                                                        }
                                                                        §§goto(addr132);
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                                  §§goto(addr167);
                                                               }
                                                            }
                                                            §§goto(addr203);
                                                         }
                                                         continue loop3;
                                                      }
                                                   }
                                                }
                                                §§goto(addr246);
                                             }
                                             §§goto(addr38);
                                          }
                                       }
                                       continue loop2;
                                    }
                                 }
                                 §§goto(addr187);
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr173);
         }
         return true;
      }
      
      public function §,O§(param1:Boolean = false) : §<!2§
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:§<!2§ = null;
         var _loc2_:int = this.§1!b§.length;
         §§push(this.§3"z§(param1));
         if(_loc9_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc9_)
         {
            §§push(_loc3_);
            if(_loc9_)
            {
               if(§§pop() == 0)
               {
                  if(!(_loc8_ && _loc3_))
                  {
                     §§goto(addr51);
                  }
               }
               §§push(int(Math.random() * _loc3_));
            }
            var _loc4_:* = §§pop();
            var _loc5_:int = 0;
            var _loc6_:int = 0;
            loop0:
            while(_loc6_ < _loc2_)
            {
               §§push(Boolean(_loc7_ = this.§1!b§[_loc6_] as §<!2§));
               if(_loc9_ || param1)
               {
                  §§push(§§pop());
                  if(_loc9_)
                  {
                     if(§§pop())
                     {
                        if(_loc9_ || this)
                        {
                           §§pop();
                           if(_loc9_)
                           {
                              §§push(_loc7_.health > 0);
                              loop11:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop12:
                                    while(true)
                                    {
                                       §§push(param1);
                                       addr191:
                                       loop10:
                                       while(true)
                                       {
                                          §§push(!§§pop());
                                          if(!(_loc8_ && _loc2_))
                                          {
                                             addr211:
                                             §§push(§§pop());
                                             loop2:
                                             for(; §§pop(); §§goto(addr199))
                                             {
                                                loop3:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         if(_loc5_ < _loc4_)
                                                         {
                                                            loop4:
                                                            while(true)
                                                            {
                                                               _loc5_++;
                                                               loop5:
                                                               while(true)
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        _loc6_++;
                                                                        if(_loc8_)
                                                                        {
                                                                           continue loop5;
                                                                        }
                                                                        if(!(_loc8_ && this))
                                                                        {
                                                                           if(_loc9_ || this)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 continue loop4;
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                           addr152:
                                                                           if(_loc9_)
                                                                           {
                                                                              if(!(_loc8_ && _loc2_))
                                                                              {
                                                                                 return _loc7_;
                                                                              }
                                                                              continue loop12;
                                                                           }
                                                                           addr212:
                                                                           addr212:
                                                                           while(true)
                                                                           {
                                                                              §§push(!_loc7_.§5!+§);
                                                                              if(_loc9_)
                                                                              {
                                                                                 if(_loc8_ && this)
                                                                                 {
                                                                                    break loop2;
                                                                                 }
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    continue loop10;
                                                                                 }
                                                                                 §§push(§§pop());
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    continue loop2;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       break loop5;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr183:
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                              }
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              continue loop4;
                                                                           }
                                                                           addr163:
                                                                        }
                                                                     }
                                                                     continue loop12;
                                                                     addr107:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(!_loc7_.§;e§);
                                                                     if(!_loc8_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§goto(addr183);
                                                                  }
                                                                  if(!(_loc8_ && this))
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop11;
                                                               }
                                                               continue loop3;
                                                            }
                                                         }
                                                         §§goto(addr152);
                                                      }
                                                      §§goto(addr163);
                                                   }
                                                }
                                             }
                                             addr199:
                                             while(true)
                                             {
                                                §§pop();
                                                §§goto(addr212);
                                             }
                                             addr211:
                                          }
                                          §§goto(addr211);
                                       }
                                    }
                                 }
                                 §§goto(addr107);
                              }
                              addr189:
                           }
                           §§goto(addr212);
                        }
                        §§goto(addr191);
                     }
                     §§goto(addr189);
                  }
                  §§goto(addr182);
               }
               §§goto(addr211);
            }
            return null;
         }
         addr51:
         return null;
      }
      
      public function §#"+§() : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§&#=§ = null;
         var _loc1_:* = 0;
         var _loc2_:* = int(this.§1!b§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(_loc5_ || _loc1_)
            {
               §§push(0);
               if(_loc5_)
               {
                  if(§§pop() < §§pop())
                  {
                     if(!_loc4_)
                     {
                        §§push(_loc1_);
                        if(!_loc4_)
                        {
                           addr148:
                           §§push(int(§§pop() + this.§2#G§.slingshot.§#"+§()));
                           if(!_loc4_)
                           {
                              _loc1_ = §§pop();
                           }
                           break;
                        }
                        break;
                     }
                     §§push(_loc1_);
                     break;
                  }
                  _loc3_ = this.§1!b§[_loc2_] as §&#=§;
                  if(!_loc4_)
                  {
                     if(!_loc3_)
                     {
                        if(_loc5_ || this)
                        {
                           addr108:
                           loop6:
                           while(true)
                           {
                              §§push(_loc2_);
                              if(!_loc4_)
                              {
                                 if(!_loc4_)
                                 {
                                    if(_loc5_)
                                    {
                                       addr50:
                                       §§push(§§pop() - 1);
                                       if(_loc4_)
                                       {
                                          break;
                                       }
                                       _loc2_ = §§pop();
                                       if(_loc5_ || this)
                                       {
                                          if(_loc5_)
                                          {
                                             if(!(_loc4_ && this))
                                             {
                                                if(true)
                                                {
                                                   continue loop0;
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                }
                                                addr116:
                                             }
                                             while(true)
                                             {
                                                if(!_loc3_.isDamageAwardingScore())
                                                {
                                                   continue loop6;
                                                }
                                             }
                                             continue loop0;
                                          }
                                          while(true)
                                          {
                                             §§push(_loc1_);
                                             if(_loc5_)
                                             {
                                                addr97:
                                                §§push(int(§§pop() + this.damageScoreMultiplier * int(_loc3_.healthMax)));
                                                while(true)
                                                {
                                                   _loc1_ = §§pop();
                                                }
                                                addr97:
                                             }
                                             §§goto(addr97);
                                          }
                                       }
                                       while(true)
                                       {
                                          continue loop6;
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§push(int(§§pop() + _loc3_.levelItem.score));
                                          break loop6;
                                       }
                                       addr110:
                                    }
                                 }
                                 §§goto(addr97);
                              }
                              §§goto(addr50);
                           }
                           while(true)
                           {
                              _loc1_ = §§pop();
                           }
                        }
                        §§goto(addr116);
                     }
                     else
                     {
                        §§push(_loc1_);
                     }
                     §§goto(addr110);
                  }
                  §§goto(addr108);
               }
               §§goto(addr148);
            }
            break;
         }
         return §§pop();
      }
      
      protected function §6S§(param1:§7B§, param2:§7B§) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(param1 is §&#=§);
            if(_loc3_)
            {
               §§push(§§pop());
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     addr152:
                     while(true)
                     {
                        §§pop();
                        addr153:
                        while(true)
                        {
                           §§push(param2 is §&#=§);
                        }
                     }
                     addr152:
                  }
                  while(true)
                  {
                     while(true)
                     {
                        §§push(§§pop());
                        loop3:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§pop();
                                 addr134:
                                 loop13:
                                 while(true)
                                 {
                                    §§push((param1 as §&#=§).§@"W§());
                                    loop14:
                                    while(true)
                                    {
                                       §§push(!§§pop());
                                       if(_loc3_)
                                       {
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(_loc4_)
                                             {
                                                break;
                                             }
                                             if(!_loc3_)
                                             {
                                                continue loop0;
                                             }
                                             if(§§pop())
                                             {
                                                loop6:
                                                while(true)
                                                {
                                                   §§pop();
                                                   loop7:
                                                   while(true)
                                                   {
                                                      §§push((param2 as §&#=§).§@"W§());
                                                      loop8:
                                                      while(true)
                                                      {
                                                         §§push(!§§pop());
                                                         loop9:
                                                         while(true)
                                                         {
                                                            if(_loc4_ && param2)
                                                            {
                                                               continue loop6;
                                                            }
                                                            if(_loc4_ && this)
                                                            {
                                                               continue loop14;
                                                            }
                                                            if(!_loc3_)
                                                            {
                                                               continue loop4;
                                                            }
                                                            if(_loc3_ || param2)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc3_ || param2)
                                                                     {
                                                                        if(_loc3_ || param1)
                                                                        {
                                                                           §§push(false);
                                                                           break;
                                                                        }
                                                                        §§goto(addr153);
                                                                     }
                                                                     else
                                                                     {
                                                                        if(_loc4_ && this)
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        if(!_loc3_)
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                     }
                                                                  }
                                                                  §§push(true);
                                                                  if(!(_loc3_ || _loc3_))
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(_loc3_)
                                                                  {
                                                                     continue loop8;
                                                                  }
                                                                  continue loop9;
                                                               }
                                                               return §§pop();
                                                               addr81:
                                                            }
                                                            §§goto(addr152);
                                                            §§goto(addr153);
                                                         }
                                                         continue loop14;
                                                      }
                                                   }
                                                }
                                                addr124:
                                             }
                                             §§goto(addr81);
                                          }
                                          continue loop3;
                                          addr117:
                                       }
                                       §§goto(addr124);
                                    }
                                 }
                              }
                           }
                           §§goto(addr117);
                        }
                     }
                  }
               }
            }
            §§goto(addr152);
         }
         §§goto(addr134);
      }
      
      protected function hasMinimumCollisionSpeed(param1:§7B§, param2:§7B§) : Boolean
      {
         return this.§6S§(param1,param2);
      }
      
      public function §<"Z§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§#!3§ = 0;
         }
      }
      
      protected function shakeCameraOnCollision(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      protected function shakeCameraOnExplosion(param1:Number) : void
      {
      }
      
      protected function getCollisionDamageFactor(param1:§&#=§, param2:§&#=§) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Number = NaN;
         if(!_loc5_)
         {
            §§push(param2 is §?"N§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  continue;
               }
               if(_loc5_)
               {
                  while(true)
                  {
                     continue loop0;
                  }
                  addr104:
               }
            }
            §§goto(addr103);
         }
         addr103:
         1;
         return §§pop();
      }
      
      protected function getCollisionForceFactor(param1:§&#=§, param2:§&#=§) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            if(param2 is §?"N§)
            {
               if(_loc3_)
               {
                  return 0;
               }
            }
         }
         return 1;
      }
      
      protected function §2#E§(param1:§&#=§, param2:§&#=§) : Number
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc3_:Number = 10;
         §§push(this.getCollisionForceFactor(param1,param2));
         if(_loc14_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(this.getCollisionForceFactor(param2,param1));
         if(_loc14_ || param2)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         var _loc6_:Number = param1.§3!t§().GetMass();
         var _loc7_:Number = param2.§3!t§().GetMass();
         var _loc8_:b2Vec2 = param1.§;!x§();
         var _loc9_:b2Vec2 = param2.§;!x§();
         §§push(_loc4_);
         if(_loc14_)
         {
            §§push(_loc6_);
            if(_loc14_)
            {
               §§push(§§pop() * §§pop());
               if(_loc14_)
               {
                  addr73:
                  §§push(_loc8_.x);
                  if(!_loc13_)
                  {
                     addr77:
                     §§push(§§pop() * §§pop());
                     if(!(_loc13_ && param1))
                     {
                        addr85:
                        §§push(_loc5_);
                        if(_loc14_)
                        {
                           §§push(_loc7_);
                           if(!_loc13_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc14_ || param2)
                              {
                                 addr111:
                                 §§push(§§pop() * _loc9_.x);
                              }
                              §§push(§§pop() - §§pop());
                              if(_loc14_)
                              {
                                 addr115:
                                 §§push(Number(§§pop()));
                              }
                              var _loc10_:* = §§pop();
                              §§push(_loc4_);
                              if(_loc14_ || param1)
                              {
                                 §§push(_loc6_);
                                 if(_loc14_ || _loc3_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!_loc13_)
                                    {
                                       §§push(_loc8_.y);
                                       if(!_loc13_)
                                       {
                                          addr140:
                                          §§push(§§pop() * §§pop());
                                          if(_loc14_ || this)
                                          {
                                             addr148:
                                             §§push(_loc5_);
                                             if(!(_loc13_ && param1))
                                             {
                                                §§push(_loc7_);
                                                if(!(_loc13_ && this))
                                                {
                                                   §§goto(addr175);
                                                }
                                                addr175:
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc13_ && param2))
                                                {
                                                   §§push(_loc9_.y);
                                                }
                                                §§push(§§pop() - §§pop());
                                                if(_loc14_ || _loc3_)
                                                {
                                                   §§goto(addr184);
                                                }
                                                addr184:
                                                var _loc11_:Number = §§pop();
                                                §§push(Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_) / _loc3_);
                                                if(_loc14_ || this)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                                return §§pop();
                                                §§push(§§pop() * §§pop());
                                             }
                                             §§goto(addr175);
                                          }
                                          §§goto(addr184);
                                       }
                                       §§goto(addr175);
                                    }
                                    §§goto(addr184);
                                 }
                                 §§goto(addr140);
                              }
                              §§goto(addr148);
                           }
                        }
                        §§goto(addr111);
                     }
                     §§goto(addr115);
                  }
                  §§goto(addr111);
               }
               §§goto(addr85);
            }
            §§goto(addr77);
         }
         §§goto(addr73);
      }
      
      public function objectCollision(param1:§7B§, param2:§7B§, param3:b2Contact) : Boolean
      {
         var _loc20_:Boolean = true;
         var _loc21_:Boolean = false;
         var _loc13_:§-!5§ = null;
         var _loc14_:b2JointEdge = null;
         var _loc15_:b2JointEdge = null;
         var _loc16_:* = NaN;
         var _loc17_:Number = NaN;
         if(_loc20_)
         {
            §§push(this.§%#T§);
            if(!_loc21_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     param1.collidedWith(param2);
                     while(!(_loc21_ && param1))
                     {
                        param2.collidedWith(param1);
                        if(!_loc20_)
                        {
                           continue;
                        }
                        if(!(_loc20_ || param1))
                        {
                           break loop0;
                        }
                        while(false)
                        {
                           continue loop0;
                        }
                        var _loc4_:§&#=§ = param1 as §&#=§;
                        var _loc5_:§&#=§ = param2 as §&#=§;
                        if(_loc20_ || param3)
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
                                    while(true)
                                    {
                                       §§pop();
                                       addr365:
                                       while(true)
                                       {
                                          §§push(!_loc5_);
                                          addr353:
                                          while(!_loc21_)
                                          {
                                          }
                                          continue loop3;
                                       }
                                    }
                                    addr364:
                                 }
                                 loop8:
                                 while(!§§pop())
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       §§push(_loc4_.destroysCollidingObjects);
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          loop11:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop12:
                                             while(!_loc21_)
                                             {
                                                if(!§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      addr349:
                                                      while(true)
                                                      {
                                                         §§push(_loc5_.§,"W§);
                                                         addr313:
                                                         while(true)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                      }
                                                   }
                                                   addr348:
                                                }
                                                loop14:
                                                while(true)
                                                {
                                                   loop15:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         loop16:
                                                         while(true)
                                                         {
                                                            §§push(_loc5_.destroysCollidingObjects);
                                                            loop17:
                                                            while(!_loc21_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  loop19:
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc20_)
                                                                           {
                                                                              continue loop14;
                                                                           }
                                                                           if(_loc20_ || this)
                                                                           {
                                                                              §§pop();
                                                                              loop21:
                                                                              while(_loc20_)
                                                                              {
                                                                                 §§push(_loc4_.§,"W§);
                                                                                 loop22:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc21_)
                                                                                    {
                                                                                       continue loop20;
                                                                                    }
                                                                                    if(_loc21_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(Boolean(§§pop()));
                                                                                    while(true)
                                                                                    {
                                                                                       loop24:
                                                                                       while(!§§pop())
                                                                                       {
                                                                                          loop25:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.hasMinimumCollisionSpeed(_loc4_,_loc5_));
                                                                                             loop26:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc21_)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      if(_loc21_ && param3)
                                                                                                      {
                                                                                                         loop27:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc20_)
                                                                                                            {
                                                                                                               if(_loc21_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               if(!(_loc20_ || param2))
                                                                                                               {
                                                                                                                  break loop25;
                                                                                                                  addr161:
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc4_ is §?"N§);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc20_ || param1))
                                                                                                                     {
                                                                                                                        continue loop26;
                                                                                                                     }
                                                                                                                     §§push(§§pop());
                                                                                                                     if(_loc21_)
                                                                                                                     {
                                                                                                                        continue loop19;
                                                                                                                     }
                                                                                                                     if(!(_loc20_ || this))
                                                                                                                     {
                                                                                                                        continue loop12;
                                                                                                                     }
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        loop30:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           loop31:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc21_ && this))
                                                                                                                              {
                                                                                                                                 if(_loc21_ && param3)
                                                                                                                                 {
                                                                                                                                    break loop24;
                                                                                                                                 }
                                                                                                                                 if(_loc20_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc5_ is §?"N§);
                                                                                                                                    if(_loc21_ && this)
                                                                                                                                    {
                                                                                                                                       continue loop30;
                                                                                                                                    }
                                                                                                                                    if(_loc21_)
                                                                                                                                    {
                                                                                                                                       addr217:
                                                                                                                                       if(_loc21_)
                                                                                                                                       {
                                                                                                                                          break loop26;
                                                                                                                                       }
                                                                                                                                       if(!_loc21_)
                                                                                                                                       {
                                                                                                                                          return §§pop();
                                                                                                                                       }
                                                                                                                                       continue loop17;
                                                                                                                                    }
                                                                                                                                    if(!_loc20_)
                                                                                                                                    {
                                                                                                                                       continue loop22;
                                                                                                                                    }
                                                                                                                                    if(_loc21_)
                                                                                                                                    {
                                                                                                                                       continue loop11;
                                                                                                                                    }
                                                                                                                                    while(§§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc20_ || this)
                                                                                                                                       {
                                                                                                                                          if(_loc21_ && param1)
                                                                                                                                          {
                                                                                                                                             §§push(_loc5_);
                                                                                                                                             §§push(_loc5_.healthMax);
                                                                                                                                             if(!(_loc21_ && param1))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * 2);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr316:
                                                                                                                                          }
                                                                                                                                          §§push(true);
                                                                                                                                          continue loop30;
                                                                                                                                          §§pop().applyDamage(§§pop(),this,_loc4_,true);
                                                                                                                                          break loop31;
                                                                                                                                       }
                                                                                                                                       if(!_loc21_)
                                                                                                                                       {
                                                                                                                                          continue loop27;
                                                                                                                                       }
                                                                                                                                       continue loop31;
                                                                                                                                    }
                                                                                                                                    §§push(this.§2#E§(_loc4_,_loc5_));
                                                                                                                                    if(_loc20_)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                    }
                                                                                                                                    var _loc6_:* = §§pop();
                                                                                                                                    var _loc7_:Number = Math.max(0,_loc4_.health);
                                                                                                                                    var _loc8_:Number = Math.max(0,_loc5_.health);
                                                                                                                                    if(_loc20_ || param3)
                                                                                                                                    {
                                                                                                                                       this.shakeCameraOnCollision(_loc6_,_loc7_,_loc8_);
                                                                                                                                    }
                                                                                                                                    §§push(this.getCollisionDamageFactor(_loc4_,_loc5_));
                                                                                                                                    if(!(_loc21_ && param3))
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                    }
                                                                                                                                    var _loc9_:* = §§pop();
                                                                                                                                    §§push(this.getCollisionDamageFactor(_loc5_,_loc4_));
                                                                                                                                    if(_loc20_ || param3)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                    }
                                                                                                                                    var _loc10_:* = §§pop();
                                                                                                                                    §§push(_loc4_);
                                                                                                                                    §§push(_loc6_);
                                                                                                                                    if(!_loc21_)
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
                                                                                                                                    var _loc19_:* = this.§6!Z§;
                                                                                                                                    addr615:
                                                                                                                                    for each(_loc13_ in _loc19_)
                                                                                                                                    {
                                                                                                                                       §§push(Boolean(_loc13_.isBreakable));
                                                                                                                                       if(_loc20_)
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             if(!_loc21_)
                                                                                                                                             {
                                                                                                                                                addr491:
                                                                                                                                                §§pop();
                                                                                                                                                if(_loc20_)
                                                                                                                                                {
                                                                                                                                                   addr498:
                                                                                                                                                   if(_loc6_ >= _loc13_.minBreakForce)
                                                                                                                                                   {
                                                                                                                                                      addr499:
                                                                                                                                                      _loc14_ = _loc4_.§3!t§().GetJointList();
                                                                                                                                                      _loc15_ = _loc5_.§3!t§().GetJointList();
                                                                                                                                                      if(_loc20_ || param2)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc14_ == null);
                                                                                                                                                         if(_loc20_ || param1)
                                                                                                                                                         {
                                                                                                                                                            addr611:
                                                                                                                                                            §§push(!§§pop() && _loc14_.joint == _loc13_.§##>§);
                                                                                                                                                            if(!(!§§pop() && _loc14_.joint == _loc13_.§##>§))
                                                                                                                                                            {
                                                                                                                                                               addr598:
                                                                                                                                                               §§pop();
                                                                                                                                                               addr554:
                                                                                                                                                               addr599:
                                                                                                                                                               §§push(_loc15_ == null);
                                                                                                                                                               if(_loc20_)
                                                                                                                                                               {
                                                                                                                                                                  addr561:
                                                                                                                                                                  §§push(!§§pop());
                                                                                                                                                                  if(_loc20_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                     if(!_loc21_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc20_ || param2)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              addr574:
                                                                                                                                                                              if(_loc20_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc21_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop();
                                                                                                                                                                                    addr584:
                                                                                                                                                                                    if(_loc20_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc20_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc15_.joint);
                                                                                                                                                                                          if(!_loc21_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc13_.§##>§);
                                                                                                                                                                                             if(!_loc21_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() == §§pop());
                                                                                                                                                                                                if(!(_loc21_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc21_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc20_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr543:
                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc21_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               this.§`"S§(_loc13_);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!_loc21_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(false)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr554);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr615);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr584);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr615);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr611);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr561);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr574);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr594);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr614);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr599);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr613);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr611);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr543);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr611);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr598);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr574);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr543);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr613);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr615);
                                                                                                                                                }
                                                                                                                                                §§goto(addr499);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr498);
                                                                                                                                       }
                                                                                                                                       §§goto(addr491);
                                                                                                                                    }
                                                                                                                                    if(_loc20_ || param2)
                                                                                                                                    {
                                                                                                                                       addr882:
                                                                                                                                       addr883:
                                                                                                                                       if(_loc11_ < _loc7_)
                                                                                                                                       {
                                                                                                                                          addr884:
                                                                                                                                          _loc5_.causedDamageToObjects();
                                                                                                                                          addr886:
                                                                                                                                       }
                                                                                                                                       §§push(_loc12_);
                                                                                                                                       §§push(_loc8_);
                                                                                                                                       if(!(_loc21_ && param1))
                                                                                                                                       {
                                                                                                                                          if(§§pop() < §§pop())
                                                                                                                                          {
                                                                                                                                             addr878:
                                                                                                                                             _loc4_.causedDamageToObjects();
                                                                                                                                          }
                                                                                                                                          addr828:
                                                                                                                                          if(_loc4_ is §?"N§)
                                                                                                                                          {
                                                                                                                                             addr829:
                                                                                                                                             if(_loc12_ <= 0)
                                                                                                                                             {
                                                                                                                                                if(!(_loc21_ && this))
                                                                                                                                                {
                                                                                                                                                   if(_loc20_)
                                                                                                                                                   {
                                                                                                                                                      addr848:
                                                                                                                                                      §§push(_loc4_.§5#Q§(_loc5_.§+"J§()));
                                                                                                                                                      if(_loc20_)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                      }
                                                                                                                                                      if(_loc21_ && param1)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr882);
                                                                                                                                                      }
                                                                                                                                                      _loc16_ = §§pop();
                                                                                                                                                      addr856:
                                                                                                                                                      §§push(this);
                                                                                                                                                      §§push(_loc4_ as §?"N§);
                                                                                                                                                      §§push(_loc6_);
                                                                                                                                                      if(!(_loc21_ && param1))
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc9_);
                                                                                                                                                         if(_loc20_)
                                                                                                                                                         {
                                                                                                                                                            addr820:
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            §§push(_loc8_);
                                                                                                                                                         }
                                                                                                                                                         §§pop().§!"u§(§§pop(),§§pop(),§§pop(),_loc16_);
                                                                                                                                                         addr801:
                                                                                                                                                         return false;
                                                                                                                                                         addr823:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr820);
                                                                                                                                                      addr856:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr886);
                                                                                                                                                }
                                                                                                                                                §§goto(addr856);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§push(_loc5_ is §?"N§);
                                                                                                                                          if(!_loc21_)
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                addr753:
                                                                                                                                                if(!_loc21_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc11_);
                                                                                                                                                   if(!(_loc21_ && param3))
                                                                                                                                                   {
                                                                                                                                                      addr764:
                                                                                                                                                      §§push(0);
                                                                                                                                                      if(!_loc21_)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop() <= §§pop())
                                                                                                                                                         {
                                                                                                                                                            addr767:
                                                                                                                                                            if(!_loc21_)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc21_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc5_.§5#Q§(_loc4_.§+"J§()));
                                                                                                                                                                  if(_loc20_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc21_ && param2))
                                                                                                                                                                     {
                                                                                                                                                                        addr790:
                                                                                                                                                                        _loc17_ = §§pop();
                                                                                                                                                                        if(_loc20_ || param2)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this);
                                                                                                                                                                           §§push(_loc5_ as §?"N§);
                                                                                                                                                                           §§push(_loc6_);
                                                                                                                                                                           if(_loc20_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc10_);
                                                                                                                                                                              if(!(_loc21_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 addr735:
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 §§push(_loc7_);
                                                                                                                                                                              }
                                                                                                                                                                              §§pop().§!"u§(§§pop(),§§pop(),§§pop(),_loc17_);
                                                                                                                                                                              addr738:
                                                                                                                                                                              if(_loc21_ && this)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr767);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr712);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr735);
                                                                                                                                                                           addr798:
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr829);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr790);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr878);
                                                                                                                                                         }
                                                                                                                                                         addr671:
                                                                                                                                                         §§push(_loc11_);
                                                                                                                                                         if(_loc20_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc20_ || param2)
                                                                                                                                                            {
                                                                                                                                                               addr681:
                                                                                                                                                               §§push(0);
                                                                                                                                                               if(_loc20_)
                                                                                                                                                               {
                                                                                                                                                                  addr684:
                                                                                                                                                                  §§push(§§pop() <= §§pop());
                                                                                                                                                                  if(§§pop() <= §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     addr686:
                                                                                                                                                                     if(_loc20_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop();
                                                                                                                                                                        if(_loc20_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc20_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc21_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc20_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc21_ && param3))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc12_);
                                                                                                                                                                                       if(!(_loc21_ && param2))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc21_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(0);
                                                                                                                                                                                             if(_loc20_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() <= §§pop());
                                                                                                                                                                                                if(!(_loc21_ && param3))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc20_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc20_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc21_ && this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr828);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr665);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr712:
                                                                                                                                                                                                      return false;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr684);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr686);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr681);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr882);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr671);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr884);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr856);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr828);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr753);
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc20_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc20_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr671);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr790);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr738);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr828);
                                                                                                                                                                  }
                                                                                                                                                                  addr665:
                                                                                                                                                                  return §§pop();
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr764);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr848);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr790);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr829);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr790);
                                                                                                                                                }
                                                                                                                                                §§goto(addr823);
                                                                                                                                             }
                                                                                                                                             §§goto(addr671);
                                                                                                                                          }
                                                                                                                                          §§goto(addr801);
                                                                                                                                       }
                                                                                                                                       §§goto(addr883);
                                                                                                                                    }
                                                                                                                                    §§goto(addr798);
                                                                                                                                 }
                                                                                                                                 §§goto(addr349);
                                                                                                                              }
                                                                                                                              addr245:
                                                                                                                              if(!_loc21_)
                                                                                                                              {
                                                                                                                                 §§push(true);
                                                                                                                                 break loop26;
                                                                                                                              }
                                                                                                                              break loop8;
                                                                                                                           }
                                                                                                                           addr332:
                                                                                                                           if(_loc20_ || param2)
                                                                                                                           {
                                                                                                                              _loc4_.causedDamageToObjects();
                                                                                                                              break loop21;
                                                                                                                           }
                                                                                                                           continue loop9;
                                                                                                                        }
                                                                                                                        if(!(_loc21_ && param3))
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     §§goto(addr102);
                                                                                                                  }
                                                                                                                  if(_loc21_)
                                                                                                                  {
                                                                                                                     continue loop24;
                                                                                                                  }
                                                                                                                  if(!(_loc21_ && this))
                                                                                                                  {
                                                                                                                     return §§pop();
                                                                                                                  }
                                                                                                                  §§goto(addr300);
                                                                                                                  addr152:
                                                                                                                  if(!(_loc20_ || param1))
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  if(false)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  §§goto(addr366);
                                                                                                               }
                                                                                                               continue loop25;
                                                                                                            }
                                                                                                            addr276:
                                                                                                            _loc5_.causedDamageToObjects();
                                                                                                            §§goto(addr245);
                                                                                                         }
                                                                                                         continue loop21;
                                                                                                      }
                                                                                                      §§push(false);
                                                                                                      §§goto(addr217);
                                                                                                   }
                                                                                                   §§goto(addr161);
                                                                                                }
                                                                                                §§goto(addr358);
                                                                                             }
                                                                                             if(!_loc20_)
                                                                                             {
                                                                                                continue loop18;
                                                                                             }
                                                                                             if(_loc20_)
                                                                                             {
                                                                                                return §§pop();
                                                                                             }
                                                                                             §§goto(addr348);
                                                                                          }
                                                                                          if(_loc21_)
                                                                                          {
                                                                                             break loop20;
                                                                                          }
                                                                                          continue loop16;
                                                                                       }
                                                                                       if(!_loc21_)
                                                                                       {
                                                                                          §§push(_loc4_);
                                                                                          §§push(_loc4_.healthMax);
                                                                                          if(_loc20_ || param1)
                                                                                          {
                                                                                             §§push(§§pop() * 2);
                                                                                          }
                                                                                          §§pop().applyDamage(§§pop(),this,_loc5_,true);
                                                                                          §§goto(addr276);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr332);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop15;
                                                                              }
                                                                              §§goto(addr300);
                                                                              §§push(true);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr364);
                                                                           }
                                                                        }
                                                                        §§goto(addr365);
                                                                     }
                                                                     §§goto(addr256);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr353);
                                                         }
                                                      }
                                                      §§goto(addr316);
                                                   }
                                                }
                                             }
                                             continue loop4;
                                          }
                                       }
                                    }
                                 }
                                 addr358:
                                 return §§pop();
                              }
                           }
                        }
                        §§goto(addr349);
                     }
                  }
               }
               return false;
            }
         }
         §§goto(addr45);
      }
      
      public function §#K§(param1:§7B§, param2:§7B§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            if(param1)
            {
               while(true)
               {
                  param1.collisionEnded(param2);
                  addr72:
                  while(true)
                  {
                  }
                  addr49:
                  if(_loc3_ && _loc3_)
                  {
                     continue;
                  }
                  addr25:
                  return;
                  addr66:
               }
            }
            for(; param2; §§goto(addr72))
            {
               if(_loc4_)
               {
                  if(_loc3_)
                  {
                     continue;
                  }
                  param2.collisionEnded(param1);
               }
               §§goto(addr49);
            }
            §§goto(addr25);
         }
         §§goto(addr66);
      }
      
      protected function §!"u§(param1:§?"N§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            §§push(param2);
            if(_loc7_ || param2)
            {
               if(§§pop() == 0)
               {
                  if(!_loc8_)
                  {
                     return;
                  }
                  addr31:
                  §§push(param2);
                  if(_loc7_)
                  {
                     §§push(param3);
                     if(_loc7_)
                     {
                        addr50:
                        §§push(§§pop() - §§pop());
                        if(_loc7_ || param1)
                        {
                           §§push(param2);
                        }
                        var _loc5_:* = §§pop();
                        if(!(_loc8_ && param2))
                        {
                           if(isNaN(_loc5_))
                           {
                              if(_loc7_)
                              {
                                 §§push(0);
                                 if(!_loc8_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(!_loc8_)
                                    {
                                       _loc5_ = §§pop();
                                       if(_loc7_)
                                       {
                                          addr73:
                                          §§push(_loc5_);
                                          if(!_loc8_)
                                          {
                                             §§push(param4);
                                             if(_loc7_ || param3)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc7_ || param3)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(_loc7_ || param1)
                                                   {
                                                      addr111:
                                                      §§push(_loc5_ = §§pop());
                                                      if(_loc7_)
                                                      {
                                                         §§goto(addr114);
                                                      }
                                                   }
                                                }
                                                §§goto(addr125);
                                             }
                                             §§goto(addr111);
                                          }
                                       }
                                       §§goto(addr125);
                                    }
                                    addr114:
                                    if(§§pop() > 1)
                                    {
                                       if(!(_loc8_ && this))
                                       {
                                          addr125:
                                          _loc5_ = Number(1);
                                       }
                                    }
                                    var _loc6_:b2Vec2 = param1.§;!x§();
                                    if(!(_loc8_ && param3))
                                    {
                                       §§push(param1);
                                       §§push(§§findproperty(b2Vec2));
                                       §§push(_loc6_.x);
                                       if(_loc7_ || param3)
                                       {
                                          §§push(_loc5_);
                                          if(_loc7_)
                                          {
                                             §§goto(addr162);
                                          }
                                          §§goto(addr166);
                                       }
                                       §§goto(addr162);
                                    }
                                    addr162:
                                    §§push(§§pop() * §§pop());
                                    §§push(_loc6_.y);
                                    if(_loc7_)
                                    {
                                       addr166:
                                       §§push(§§pop() * _loc5_);
                                    }
                                    §§pop().§3l§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                    return;
                                 }
                                 §§goto(addr125);
                              }
                           }
                           §§goto(addr73);
                        }
                        §§goto(addr125);
                     }
                     §§push(§§pop() / §§pop());
                     if(_loc7_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
               }
               §§goto(addr31);
            }
            §§goto(addr50);
         }
         §§goto(addr31);
      }
      
      public function §5h§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§&#=§ = null;
         var _loc1_:* = int(this.§1!b§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§1!b§[_loc1_] as §&#=§;
            if(_loc3_ || this)
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
                           addr121:
                           while(true)
                           {
                              addr80:
                              while(true)
                              {
                                 §§push(_loc2_ is §<!2§);
                                 if(!(_loc3_ || _loc3_))
                                 {
                                    break;
                                 }
                                 if(!_loc3_)
                                 {
                                    continue loop2;
                                 }
                                 if(!_loc3_)
                                 {
                                    continue loop1;
                                 }
                              }
                              continue loop3;
                           }
                        }
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!_loc4_)
                           {
                              this.§5#<§(_loc1_,true);
                              addr103:
                              while(true)
                              {
                              }
                              addr103:
                           }
                           §§goto(addr103);
                        }
                        while(true)
                        {
                           §§push(_loc1_);
                           if(_loc3_ || _loc3_)
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc1_ = §§pop();
                           if(_loc3_ || _loc3_)
                           {
                              break;
                           }
                           §§goto(addr103);
                        }
                        if(!(_loc4_ && _loc1_))
                        {
                           if(true)
                           {
                              break;
                           }
                           §§goto(addr80);
                        }
                        §§goto(addr121);
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr103);
         }
      }
      
      public function §?"O§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§&#=§ = null;
         var _loc1_:* = int(this.§1!b§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§1!b§[_loc1_] as §&#=§;
            if(_loc4_ || _loc3_)
            {
               §§push(_loc2_ == null);
               if(!_loc3_)
               {
                  §§push(!§§pop());
                  if(!_loc3_)
                  {
                     if(§§pop())
                     {
                        loop5:
                        while(true)
                        {
                           §§pop();
                           addr114:
                           loop2:
                           while(true)
                           {
                              addr64:
                              while(true)
                              {
                                 §§push(_loc2_.§2g§());
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(_loc4_)
                                 {
                                    break loop2;
                                 }
                                 continue loop5;
                              }
                              continue loop5;
                           }
                        }
                        addr113:
                     }
                     loop1:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!_loc3_)
                           {
                              if(_loc4_ || _loc3_)
                              {
                                 this.§5#<§(_loc1_,true);
                              }
                              else
                              {
                                 §§goto(addr114);
                              }
                           }
                           loop3:
                           while(true)
                           {
                              addr44:
                              addr62:
                              while(true)
                              {
                                 §§push(_loc1_);
                                 if(_loc4_)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 _loc1_ = §§pop();
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 continue loop3;
                              }
                              while(false)
                              {
                                 continue loop1;
                              }
                              continue loop0;
                           }
                        }
                        §§goto(addr44);
                     }
                  }
               }
               §§goto(addr113);
            }
            §§goto(addr62);
         }
      }
      
      public function §!A§() : int
      {
         return this.§1!b§.length;
      }
      
      public function §6#O§(param1:§8!B§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:§&#=§ = null;
         var _loc5_:§94§ = null;
         var _loc6_:§-#'§ = null;
         var _loc7_:§-!5§ = null;
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            if(_loc8_ || this)
            {
               if(§§pop() >= this.§1!b§.length)
               {
                  §§push(Number(0));
                  break;
               }
               if(!(_loc4_ = this.§1!b§[_loc2_] as §&#=§))
               {
                  if(_loc9_ && param1)
                  {
                     addr63:
                  }
               }
               else
               {
                  §§push(_loc4_.§3#$§);
                  if(!_loc9_)
                  {
                     if(!§§pop())
                     {
                        if(_loc9_ && _loc3_)
                        {
                           continue;
                        }
                        §§goto(addr63);
                     }
                     else
                     {
                        §§push(_loc4_.§[#L§());
                     }
                     addr149:
                     §§push(_loc2_);
                     if(!(_loc9_ && param1))
                     {
                        §§push(§§pop() + 1);
                        if(_loc8_)
                        {
                           addr160:
                           §§push(Number(§§pop()));
                        }
                        _loc2_ = §§pop();
                        continue;
                     }
                     §§goto(addr160);
                  }
                  if(§§pop())
                  {
                     if(_loc9_)
                     {
                        continue;
                     }
                  }
                  else
                  {
                     §§push(_loc5_ = new §94§());
                     §§push(_loc4_.§"#,§());
                     if(!_loc9_)
                     {
                        §§push(§§pop() / (Math.PI / 180));
                     }
                     §§pop().angle = §§pop();
                     if(!(_loc9_ && this))
                     {
                        _loc5_.id = _loc4_.id;
                        while(true)
                        {
                           _loc5_.type = _loc4_.itemName;
                           while(_loc8_)
                           {
                              addr99:
                              if(!(_loc8_ || param1))
                              {
                                 continue;
                              }
                              if(false)
                              {
                                 loop5:
                                 while(true)
                                 {
                                    _loc5_.y = _loc4_.§3!t§().GetPosition().y;
                                    while(_loc8_)
                                    {
                                       param1.addObject(_loc5_);
                                       if(_loc9_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr99);
                                    }
                                    addr135:
                                    while(true)
                                    {
                                       continue loop5;
                                    }
                                 }
                                 continue;
                              }
                              §§goto(addr149);
                           }
                        }
                     }
                     while(true)
                     {
                        _loc5_.x = _loc4_.§3!t§().GetPosition().x;
                        §§goto(addr135);
                     }
                  }
               }
               §§goto(addr149);
            }
            break;
         }
         var _loc3_:* = §§pop();
         if(!_loc9_)
         {
            while(_loc3_ < this.§6!Z§.length)
            {
               _loc7_ = this.§6!Z§[_loc3_];
               _loc6_ = new §-#'§(_loc7_.type,_loc7_.id1,_loc7_.id2,_loc7_.point1,_loc7_.point2,_loc7_.§4C§,_loc7_.§9"r§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§?"B§,_loc7_.motorSpeed,_loc7_.§@[§,_loc7_.maxTorque);
               if(_loc8_)
               {
                  param1.§@"_§(_loc6_);
                  if(_loc9_)
                  {
                     continue;
                  }
               }
               §§push(_loc3_);
               if(_loc8_)
               {
                  §§push(§§pop() + 1);
                  if(_loc8_ || param1)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               _loc3_ = §§pop();
            }
         }
      }
      
      public function §-!!§(param1:Point, param2:Point) : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Array = [];
         var _loc4_:* = Number(0);
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(!(_loc5_ && param2))
            {
               if(!(_loc5_ && param2))
               {
                  if(§§pop() >= this.§1!b§.length)
                  {
                     if(_loc6_ || param2)
                     {
                        if(_loc6_ || param2)
                        {
                           break;
                        }
                        loop2:
                        while(true)
                        {
                           addr72:
                           while(true)
                           {
                              §§push(_loc4_);
                              if(_loc6_ || param2)
                              {
                                 addr82:
                                 §§push(§§pop() + 1);
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    addr83:
                                    while(true)
                                    {
                                       _loc4_ = §§pop();
                                    }
                                 }
                                 addr82:
                              }
                              §§goto(addr82);
                           }
                           addr118:
                           loop1:
                           while(true)
                           {
                              _loc3_.push(this.§1!b§[_loc4_]);
                              continue loop2;
                              addr84:
                              while(_loc5_ && param1)
                              {
                                 continue loop1;
                              }
                              continue loop0;
                           }
                        }
                     }
                     §§goto(addr84);
                  }
                  else if(this.§1!b§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
                  {
                     §§goto(addr118);
                  }
                  §§goto(addr72);
               }
               §§goto(addr82);
            }
            §§goto(addr83);
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§&#=§ = null;
         if(_loc4_ || this)
         {
            this.§4"R§ = param1;
            if(_loc4_ || this)
            {
               addr36:
               this.§`!l§(param1);
            }
            var _loc2_:* = Number(0);
            loop0:
            while(_loc2_ < this.§1!b§.length)
            {
               _loc3_ = this.§1!b§[_loc2_] as §&#=§;
               if(!_loc5_)
               {
                  §§push(Boolean(_loc3_));
                  if(_loc4_)
                  {
                     if(§§pop())
                     {
                        loop7:
                        while(true)
                        {
                           §§pop();
                           addr121:
                           loop8:
                           while(true)
                           {
                              addr87:
                              loop6:
                              while(true)
                              {
                                 §§push(_loc3_.§"!@§());
                                 if(_loc4_)
                                 {
                                    if(!_loc4_)
                                    {
                                       continue loop7;
                                    }
                                    addr94:
                                    §§push(Boolean(§§pop()));
                                    while(true)
                                    {
                                       break loop6;
                                       §§goto(addr94);
                                    }
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       _loc3_.sprite.visible = !this.§4"R§;
                                       addr103:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr97:
                                 }
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop() + 1);
                                       if(_loc4_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    _loc2_ = §§pop();
                                    if(!_loc5_)
                                    {
                                       if(_loc4_ || _loc2_)
                                       {
                                          break;
                                       }
                                       §§goto(addr97);
                                    }
                                    §§goto(addr103);
                                 }
                                 if(_loc5_)
                                 {
                                    continue loop8;
                                 }
                                 if(true)
                                 {
                                    break;
                                 }
                                 §§goto(addr87);
                              }
                              continue loop0;
                           }
                        }
                        addr120:
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr120);
               }
               §§goto(addr121);
            }
            return;
         }
         §§goto(addr36);
      }
      
      public function setCollisionsEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§%#T§ = param1;
         }
      }
      
      public function §1p§() : int
      {
         return this.§[!Y§;
      }
      
      public function §9#H§() : int
      {
         return this.§%"`§;
      }
      
      public function get damageScoreMultiplier() : int
      {
         return this.§2#G§.damageScoreMultiplier;
      }
   }
}
