package §!X§
{
   import § !G§.§ #§;
   import § `§.§2w§;
   import § `§.§5L§;
   import § `§.§const§;
   import §#!F§.§78§;
   import §%J§.§`u§;
   import §+3§.§ 7§;
   import §+3§.§`#§;
   import §,h§.§+0§;
   import §,h§.§0q§;
   import §,h§.§4!9§;
   import §,h§.§6M§;
   import §-!@§.§<!D§;
   import §0! §.§7o§;
   import §0! §.§<2§;
   import §0!G§.b2Vec2;
   import §31§.§%B§;
   import §=?§.§^!M§;
   import §?h§.§<I§;
   import §?m§.§7?§;
   import §@b§.§;M§;
   import §]!F§.§%H§;
   import §]!F§.§&!]§;
   import §]!F§.§'A§;
   import §]!F§.§7e§;
   import §]@§.DisplayObject;
   import §]@§.Sprite;
   import §`C§.§9!'§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §86§
   {
      
      private static const §4!A§:int = 20;
      
      public static const §super§:Number;
      
      public static const §=D§:Number;
      
      public static const §7!4§:Number = 0.05;
      
      public static const § !?§:Number;
      
      public static const §[<§:Number;
      
      public static const §@r§:§78§;
      
      protected static var §0!1§:String = "BACKGROUND_BLUE_GRASS";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §4!A§ = 20;
         }
         loop0:
         while(true)
         {
            §super§ = §7?§.§;#§;
            while(true)
            {
               §=D§ = §7?§.§0h§;
               continue loop0;
               addr106:
               loop3:
               while(!(_loc2_ && §86§))
               {
                  § !?§ = §7?§.§0h§ * §7!4§;
                  loop4:
                  while(true)
                  {
                     if(_loc2_)
                     {
                        continue loop3;
                     }
                     if(!(_loc1_ || _loc1_))
                     {
                        break;
                     }
                     §§push(§§findproperty(§[<§));
                     §§push(§super§);
                     if(!(_loc2_ && _loc1_))
                     {
                        §§push(§§pop() * §7!4§);
                     }
                     §§pop().§[<§ = §§pop();
                     loop5:
                     while(true)
                     {
                        §@r§ = new §78§(13 - 3);
                        while(true)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              continue loop4;
                           }
                           continue loop5;
                           addr58:
                           §0!1§ = §&!]§.§ get§;
                           if(_loc1_ || _loc1_)
                           {
                              return;
                           }
                        }
                        continue loop4;
                     }
                  }
                  continue loop0;
               }
            }
         }
      }
      
      protected var §[!&§:§6M§;
      
      private var §"!Z§:§+0§;
      
      private var § s§:Array = null;
      
      protected var §4a§:§%B§;
      
      public var mLevelEngine:§,!'§;
      
      protected var §0o§:§ 6§;
      
      protected var §]!M§:§<I§;
      
      protected var §3V§:§#K§;
      
      protected var §+!Z§:§<2§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §;8§:Boolean = false;
      
      protected var §13§:Boolean = false;
      
      protected var §?Z§:Boolean = false;
      
      public var §2n§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §5!P§:Number;
      
      public var §#5§:Number;
      
      private var §=m§:Number;
      
      public var §#v§:§%H§;
      
      public var §+"§:Boolean = false;
      
      private var §0!^§:§7]§;
      
      private var §4!0§:Sprite;
      
      protected var §6!Q§:§&!]§;
      
      protected var §#!>§:§<!D§ = null;
      
      private var §;!>§:EventDispatcher;
      
      private var § !@§:Array;
      
      private var §=!+§:Array;
      
      protected var §,a§:§9!'§;
      
      private var §3z§:§;M§;
      
      protected var §8!M§:§2w§;
      
      protected var §>n§:§5L§;
      
      private var §==§:§const§;
      
      private var §=S§:§const§;
      
      private var §@I§:§const§;
      
      private var §6$§:Stage;
      
      private var §8!-§:§65§;
      
      protected var §;_§:§^!M§;
      
      protected var §5!>§:§^!M§;
      
      protected var § use§:Number = 0.0;
      
      protected var §#l§:String;
      
      private var §;1§:Boolean;
      
      protected var §&!+§:Boolean;
      
      protected var §^?§:uint = 1.417339207E9;
      
      public var §[4§:Boolean;
      
      public function §86§(param1:Stage)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            this.§=!+§ = [];
            while(true)
            {
               super();
               addr106:
               while(true)
               {
                  this.§;!>§ = new EventDispatcher();
               }
            }
            addr110:
         }
         loop2:
         while(true)
         {
            this.§#v§ = new §%H§();
            while(true)
            {
               this.§6$§ = param1;
               while(_loc4_)
               {
                  this.§8!M§ = §2w§.§%!O§;
                  continue loop2;
                  loop6:
                  while(_loc4_ || param1)
                  {
                     this.§==§ = this.§8N§();
                     loop7:
                     while(true)
                     {
                        loop8:
                        while(true)
                        {
                           this.§=S§ = this.§[!F§();
                           while(_loc4_)
                           {
                              this.§@I§ = this.§+!M§();
                              if(_loc3_)
                              {
                                 continue;
                              }
                              if(!_loc4_)
                              {
                                 continue loop7;
                              }
                              if(_loc3_)
                              {
                                 break loop8;
                              }
                              if(!_loc3_)
                              {
                                 if(false)
                                 {
                                    continue loop8;
                                 }
                                 var _loc2_:Stage3D = param1.stage3Ds[0];
                                 if(_loc4_ || this)
                                 {
                                    this.§,a§ = new §9!'§(§7]§,param1,new Rectangle(0,0,§7?§.§;#§,§7?§.§0h§),_loc2_);
                                 }
                                 §7?§.§>!M§.addEventListener(Event.ENTER_FRAME,this.§,a§.§<!%§);
                                 _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§"$§,false,0,true);
                                 addr203:
                                 this.§,a§.§&?§ = false;
                                 addr227:
                                 addr217:
                                 addr202:
                                 if(!_loc3_)
                                 {
                                    addr180:
                                    §§push(this.§,a§);
                                    if(_loc4_ || _loc2_)
                                    {
                                       §§push(false);
                                       if(!(_loc3_ && param1))
                                       {
                                          §§pop().enableErrorChecking = §§pop();
                                          addr196:
                                          if(_loc4_)
                                          {
                                             addr167:
                                             this.§,a§.§">§ = 2;
                                             addr169:
                                             if(_loc4_ || param1)
                                             {
                                                §§push(this.§,a§);
                                                if(!_loc3_)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      §§pop().§1!Y§();
                                                      if(_loc4_ || param1)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            if(_loc3_ && this)
                                                            {
                                                               §§goto(addr227);
                                                            }
                                                            return;
                                                         }
                                                         §§goto(addr217);
                                                      }
                                                      §§goto(addr169);
                                                   }
                                                   §§goto(addr180);
                                                }
                                                §§goto(addr167);
                                             }
                                             §§goto(addr196);
                                          }
                                          §§goto(addr227);
                                       }
                                       §§goto(addr203);
                                    }
                                    §§goto(addr202);
                                 }
                                 addr253:
                                 §§goto(addr253);
                              }
                              else
                              {
                                 §§goto(addr110);
                              }
                           }
                           continue loop2;
                        }
                        continue loop6;
                     }
                  }
               }
            }
         }
      }
      
      public static function §6!M§(param1:§+0§, param2:§+0§) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1.§33§);
         if(!_loc5_)
         {
            §§push(§§pop() - param2.§33§);
            if(_loc6_ || _loc3_)
            {
               addr41:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(param1.§&5§);
            if(_loc6_ || param2)
            {
               §§push(§§pop() - param2.§&5§);
               if(_loc6_ || param2)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc4_:* = §§pop();
            return §]a§(_loc3_,_loc4_);
         }
         §§goto(addr41);
      }
      
      public static function §]a§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§4!0§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr83:
                        do
                        {
                           §§push(Boolean(this.§#!Z§));
                           if(!(_loc1_ || _loc1_))
                           {
                              continue loop2;
                           }
                        }
                        while(_loc1_);
                        
                        continue loop1;
                     }
                  }
                  loop4:
                  while(§§pop())
                  {
                     if(!_loc2_)
                     {
                        if(!(_loc2_ && this))
                        {
                           this.§4!0§ = this.§0!^§.§98§;
                           addr76:
                           while(true)
                           {
                              break loop4;
                           }
                           addr76:
                        }
                        else
                        {
                           §§goto(addr83);
                        }
                     }
                     §§goto(addr76);
                  }
                  while(true)
                  {
                     §§push(this.§4!0§);
                     if(_loc1_)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr76);
      }
      
      public function get §#!Z§() : Sprite
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§0!^§);
            loop0:
            do
            {
               if(!§§pop())
               {
                  if(_loc1_)
                  {
                     this.§0!^§ = this.§,a§.§'Q§ as §7]§;
                  }
                  while(true)
                  {
                     §§push(this.§0!^§);
                     loop2:
                     while(true)
                     {
                        §§pop().§^f§ = false;
                        if(!(_loc1_ || _loc2_))
                        {
                           break;
                        }
                        while(true)
                        {
                           addr24:
                           while(true)
                           {
                              §§push(this.§0!^§);
                              if(_loc1_)
                              {
                                 break;
                              }
                              continue loop2;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
               §§goto(addr24);
            }
            while(!(_loc1_ || this));
            
            return §§pop();
         }
         §§goto(addr61);
      }
      
      private function get §%!X§() : DisplayObject
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§#!Z§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§goto(addr53);
                  }
               }
               return null;
            }
            §§goto(addr53);
         }
         addr53:
         return (this.§#!Z§ as §7]§).§%!X§;
      }
      
      public function get §true§() : §5L§
      {
         return this.§>n§;
      }
      
      public function get §=]§() : §2w§
      {
         return this.§8!M§;
      }
      
      public function get camera() : §<I§
      {
         return this.§]!M§;
      }
      
      public function get objects() : §6M§
      {
         return this.§[!&§;
      }
      
      public function get particles() : §<2§
      {
         return this.§+!Z§;
      }
      
      public function get background() : §%B§
      {
         return this.§4a§;
      }
      
      public function get slingshot() : §#K§
      {
         return this.§3V§;
      }
      
      public function get activeObject() : §+0§
      {
         return this.§"!Z§;
      }
      
      public function get §%-§() : § 6§
      {
         return this.§0o§;
      }
      
      public function get stage() : Stage
      {
         return this.§6$§;
      }
      
      public function get §9m§() : §const§
      {
         return this.§@I§;
      }
      
      protected function get §=!'§() : §const§
      {
         return this.§==§;
      }
      
      public function set activeObject(param1:§+0§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§"!Z§ = param1;
         }
      }
      
      public function set §8_§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§&!+§ = param1;
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§3z§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§3z§);
                     addr244:
                     while(true)
                     {
                        §§pop().dispose();
                        addr245:
                        while(true)
                        {
                        }
                     }
                     addr194:
                     if(!(_loc2_ || _loc1_))
                     {
                        continue;
                     }
                     loop12:
                     while(true)
                     {
                        §§push(this.§@I§);
                        loop13:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop14:
                           while(true)
                           {
                              §§push(§§pop());
                              if(!_loc1_)
                              {
                                 if(§§pop())
                                 {
                                    loop15:
                                    while(true)
                                    {
                                       §§pop();
                                       loop16:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             §§push(this.§@I§);
                                             if(_loc2_)
                                             {
                                                §§push(§§pop().§=]§);
                                                if(!_loc2_)
                                                {
                                                   break;
                                                }
                                                if(_loc1_)
                                                {
                                                   break loop15;
                                                }
                                                continue loop15;
                                             }
                                             continue loop13;
                                          }
                                          loop17:
                                          while(true)
                                          {
                                             §§pop().dispose();
                                             loop18:
                                             while(true)
                                             {
                                                if(!_loc1_)
                                                {
                                                   if(!_loc1_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(this.§,a§);
                                                         if(!(_loc1_ && _loc2_))
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               return;
                                                            }
                                                            if(!(_loc1_ && _loc2_))
                                                            {
                                                               if(_loc2_ || _loc2_)
                                                               {
                                                                  addr56:
                                                                  this.§,a§.dispose();
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc2_ || _loc1_))
                                                                     {
                                                                        break loop17;
                                                                     }
                                                                     §§push(this.§@I§);
                                                                     continue loop13;
                                                                  }
                                                                  addr103:
                                                               }
                                                            }
                                                            if(!(_loc1_ && this))
                                                            {
                                                               break loop18;
                                                            }
                                                            continue loop18;
                                                            addr25:
                                                         }
                                                         §§goto(addr56);
                                                      }
                                                      addr29:
                                                   }
                                                   while(true)
                                                   {
                                                      if(!(_loc1_ && _loc2_))
                                                      {
                                                         §§push(this.§==§);
                                                         while(_loc2_ || this)
                                                         {
                                                            §§push(§§pop().§=]§);
                                                            break loop15;
                                                         }
                                                         addr183:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr245);
                                                      }
                                                      addr205:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         break loop16;
                                                      }
                                                   }
                                                   addr174:
                                                }
                                                addr192:
                                                while(true)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      §§goto(addr194);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(this.§8!M§);
                                                         addr225:
                                                         while(true)
                                                         {
                                                            §§pop().dispose();
                                                            addr226:
                                                            loop28:
                                                            while(true)
                                                            {
                                                               addr202:
                                                               while(true)
                                                               {
                                                                  §§goto(addr205);
                                                                  continue loop28;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr223:
                                                   }
                                                }
                                                §§goto(addr245);
                                             }
                                             if(!_loc1_)
                                             {
                                                addr66:
                                                §§goto(addr25);
                                             }
                                             else
                                             {
                                                loop8:
                                                while(!(_loc1_ && _loc2_))
                                                {
                                                   §§push(this.§==§);
                                                   if(!(_loc1_ && _loc1_))
                                                   {
                                                      §§push(§§pop().§=]§);
                                                      if(_loc2_ || _loc1_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         while(true)
                                                         {
                                                            if(_loc2_ || this)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                                  §§goto(addr174);
                                                               }
                                                               addr172:
                                                            }
                                                            break;
                                                            addr87:
                                                            if(!(_loc1_ && _loc2_))
                                                            {
                                                               if(_loc2_ || this)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        §§goto(addr29);
                                                                     }
                                                                     §§goto(addr103);
                                                                  }
                                                                  addr101:
                                                               }
                                                               break loop16;
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            continue loop8;
                                                         }
                                                         addr208:
                                                      }
                                                      break loop15;
                                                   }
                                                   §§goto(addr183);
                                                }
                                                §§goto(addr226);
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          break loop14;
                                       }
                                    }
                                    while(true)
                                    {
                                       §§pop().dispose();
                                       §§goto(addr192);
                                    }
                                 }
                                 §§goto(addr101);
                              }
                              break;
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 §§goto(addr208);
                              }
                              §§goto(addr172);
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(this.§8!M§);
                  if(!_loc1_)
                  {
                     if(§§pop())
                     {
                        §§goto(addr223);
                     }
                     §§goto(addr202);
                  }
                  §§goto(addr225);
                  §§goto(addr245);
               }
            }
            §§goto(addr244);
         }
         §§goto(addr66);
      }
      
      protected function §8N§() : §const§
      {
         return null;
      }
      
      protected function §[!F§() : §const§
      {
         return null;
      }
      
      protected function §+!M§() : §const§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§2w§) : §5L§
      {
         return new §5L§(param1);
      }
      
      public function §'![§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(§9!'§.§7!Z§);
            loop0:
            while(§§pop())
            {
               loop1:
               while(!param1)
               {
                  §§push(§9!'§.§7!Z§);
                  loop2:
                  while(true)
                  {
                     §§pop().stop();
                     addr71:
                     addr99:
                     while(!_loc2_)
                     {
                        if(_loc2_ && _loc3_)
                        {
                           break loop1;
                        }
                        continue loop2;
                     }
                     break loop0;
                  }
               }
               §§goto(addr98);
               §§push(§9!'§.§7!Z§);
            }
            return;
         }
         §§goto(addr80);
      }
      
      public function §@^§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.sprite);
            if(!(_loc3_ && _loc2_))
            {
               if(§§pop())
               {
                  if(!(_loc3_ && this))
                  {
                     addr57:
                     this.sprite.visible = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr57);
      }
      
      public function §-!P§(param1:§<!D§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§#!>§);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  while(true)
                  {
                     §§push(this.§#!>§);
                     addr90:
                     while(true)
                     {
                        §§pop().removeEventListeners();
                        addr91:
                        while(true)
                        {
                        }
                     }
                  }
                  addr88:
               }
               while(true)
               {
                  this.§#!>§ = param1;
                  loop5:
                  while(this.mReadyToRun)
                  {
                     if(!(_loc2_ && this))
                     {
                        if(_loc2_)
                        {
                           continue;
                        }
                        if(_loc3_)
                        {
                           while(true)
                           {
                              §§push(this.§#!>§);
                              if(_loc3_ || this)
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop0;
                                 }
                                 §§pop().addEventListeners();
                                 while(true)
                                 {
                                    if(_loc3_ || _loc3_)
                                    {
                                       break loop5;
                                    }
                                 }
                              }
                              else
                              {
                                 §§goto(addr90);
                              }
                              §§goto(addr91);
                           }
                           addr49:
                        }
                        else
                        {
                           §§goto(addr88);
                        }
                        §§goto(addr90);
                     }
                     §§goto(addr61);
                  }
                  return;
               }
            }
         }
         §§goto(addr49);
      }
      
      public function §=8§() : §^!M§
      {
         return this.§;_§;
      }
      
      public function §9!§(param1:§;M§, param2:Array, param3:Function) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param1)
         {
            this.§3z§ = param1;
         }
         §§push(this.§3z§.§=_§);
         if(_loc7_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:int = 0;
         loop0:
         while(true)
         {
            if(_loc5_ >= _loc4_)
            {
               if(_loc7_ || param3)
               {
                  if(_loc7_ || param1)
                  {
                     if(param3 != null)
                     {
                        while(true)
                        {
                           this.§;!>§.addEventListener(Event.INIT,param3);
                           addr127:
                           while(true)
                           {
                              this.§=!+§.push(param3);
                              addr99:
                              while(true)
                              {
                              }
                           }
                        }
                        addr121:
                     }
                     for(; this.§'!5§(param2); §§goto(addr99))
                     {
                        if(_loc7_ || param1)
                        {
                           if(!(_loc6_ && this))
                           {
                              this.§,!#§();
                           }
                           §§goto(addr127);
                        }
                        if(!(_loc7_ || param3))
                        {
                           continue;
                        }
                        if(!_loc6_)
                        {
                           if(_loc7_ || this)
                           {
                              break;
                           }
                           addr150:
                           _loc5_++;
                           continue loop0;
                        }
                        §§goto(addr121);
                     }
                     return;
                  }
                  continue;
               }
               §§goto(addr127);
            }
            else
            {
               this.§8!M§.§7!<§(this.§3z§.§"T§(_loc5_));
            }
            §§goto(addr150);
         }
      }
      
      private function §'!5§(param1:Array) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         if(!(_loc5_ && _loc2_))
         {
            §§push(this.§8!M§);
            loop0:
            while(true)
            {
               §§push(§§pop().§+!^§());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     if(!_loc5_)
                     {
                        §§push(this.§8!M§);
                        while(true)
                        {
                           §§push(§§pop().§[!G§);
                           addr173:
                           while(true)
                           {
                              §§push(1000);
                              addr174:
                              while(true)
                              {
                                 §§push(§§pop() / §§pop());
                                 addr175:
                                 while(true)
                                 {
                                    §§push(int(§§pop()));
                                    addr176:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                    }
                                 }
                              }
                           }
                        }
                        addr172:
                     }
                  }
                  else
                  {
                     while(true)
                     {
                        this.§ !@§ = param1.concat();
                        if(!_loc4_)
                        {
                           if(_loc5_ && this)
                           {
                              break;
                           }
                           continue;
                        }
                        if(_loc4_ || this)
                        {
                           §§push(false);
                           if(_loc4_)
                           {
                              return §§pop();
                           }
                           addr52:
                           while(true)
                           {
                              if(_loc4_ || this)
                              {
                                 break loop1;
                              }
                              continue loop1;
                           }
                        }
                     }
                     loop11:
                     while(true)
                     {
                        if(!(_loc5_ && param1))
                        {
                           addr79:
                           if(_loc4_)
                           {
                              break;
                           }
                           addr153:
                           while(true)
                           {
                              §§push(§ #§);
                              §§push("\n\nMain texture manager memory usage:\n   textures " + _loc2_);
                              if(!(_loc5_ && _loc2_))
                              {
                                 §§push(§§pop() + " kilobytes\n   bitmaps ");
                                 if(!_loc5_)
                                 {
                                    addr108:
                                    §§push(§§pop() + _loc3_);
                                    if(_loc4_ || param1)
                                    {
                                       addr117:
                                       §§push(§§pop() + " kilobytes\n\n");
                                    }
                                    §§pop().log(§§pop());
                                    while(true)
                                    {
                                       this.initializeAnimations(param1);
                                       continue loop11;
                                    }
                                    addr120:
                                 }
                                 §§goto(addr117);
                              }
                              §§goto(addr108);
                              §§goto(addr79);
                           }
                        }
                        §§goto(addr120);
                     }
                     while(true)
                     {
                        §§goto(addr52);
                     }
                     addr91:
                  }
                  while(true)
                  {
                     §§push(this.§8!M§);
                     if(!_loc5_)
                     {
                        continue loop0;
                     }
                     §§goto(addr172);
                     §§goto(addr176);
                  }
                  continue loop0;
               }
               return §§pop();
            }
         }
         §§goto(addr91);
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§>n§.initializeAnimations(param1);
         }
      }
      
      private function §"$§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§8!M§.§6y§();
            loop0:
            while(true)
            {
               §§push(this.§=!'§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
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
                              loop5:
                              while(true)
                              {
                                 §§push(this.§=!'§);
                                 if(_loc2_ || _loc3_)
                                 {
                                    §§push(§§pop().§=]§);
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       addr340:
                                       while(true)
                                       {
                                          loop48:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop49:
                                                while(true)
                                                {
                                                   §§push(this.§=!'§);
                                                   addr344:
                                                   while(!_loc3_)
                                                   {
                                                      §§push(§§pop().§=]§);
                                                      while(true)
                                                      {
                                                         §§pop().§6y§();
                                                         addr348:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      continue loop49;
                                                   }
                                                   continue loop1;
                                                }
                                                addr342:
                                             }
                                             while(true)
                                             {
                                                §§push(this.§9m§);
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
                                                         if(§§pop())
                                                         {
                                                            loop14:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  §§push(this.§9m§);
                                                                  if(_loc2_)
                                                                  {
                                                                     §§push(§§pop().§=]§);
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        addr311:
                                                                        while(true)
                                                                        {
                                                                           loop45:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 loop46:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§9m§);
                                                                                    addr315:
                                                                                    while(_loc2_)
                                                                                    {
                                                                                       §§push(§§pop().§=]§);
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().§6y§();
                                                                                          addr319:
                                                                                          while(true)
                                                                                          {
                                                                                          }
                                                                                          addr86:
                                                                                          if(!(_loc3_ && this))
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc3_ && _loc3_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         while(_loc2_)
                                                                                                         {
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                         loop23:
                                                                                                         while(!_loc3_)
                                                                                                         {
                                                                                                            if(_loc2_ || _loc2_)
                                                                                                            {
                                                                                                               this.§,!#§();
                                                                                                               addr257:
                                                                                                               while(!(_loc3_ && _loc2_))
                                                                                                               {
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  this.§ !@§ = null;
                                                                                                                  continue loop23;
                                                                                                                  §§goto(addr257);
                                                                                                               }
                                                                                                               addr257:
                                                                                                               addr303:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr319);
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§#!>§);
                                                                                                               loop26:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() == null);
                                                                                                                  if(!(_loc3_ && this))
                                                                                                                  {
                                                                                                                     §§push(!§§pop());
                                                                                                                     loop27:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        if(!(_loc2_ || param1))
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           continue loop3;
                                                                                                                        }
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc3_)
                                                                                                                                    {
                                                                                                                                       §§push(this.§#!>§);
                                                                                                                                       if(!_loc2_)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                          addr216:
                                                                                                                                       }
                                                                                                                                       §§pop().addEventListeners();
                                                                                                                                       while(!_loc3_)
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       continue loop15;
                                                                                                                                    }
                                                                                                                                    §§goto(addr257);
                                                                                                                                 }
                                                                                                                                 continue loop26;
                                                                                                                                 addr209:
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§==§);
                                                                                                                                 if(!_loc3_)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc3_)
                                                                                                                                          {
                                                                                                                                             if(_loc2_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                if(_loc3_)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                §§push(this.§==§);
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§pop().§+!^§();
                                                                                                                                                   §§goto(addr144);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr209);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr216);
                                                                                                                                          addr57:
                                                                                                                                          if(!(_loc2_ || param1))
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          if(_loc3_ && param1)
                                                                                                                                          {
                                                                                                                                             loop43:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(this.mReadyToRun);
                                                                                                                                                if(!_loc3_)
                                                                                                                                                {
                                                                                                                                                   addr159:
                                                                                                                                                   if(_loc2_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc3_ && _loc3_)
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      if(!_loc3_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc2_ || param1)
                                                                                                                                                         {
                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                            continue loop27;
                                                                                                                                                         }
                                                                                                                                                         continue loop2;
                                                                                                                                                      }
                                                                                                                                                      continue loop4;
                                                                                                                                                   }
                                                                                                                                                   addr243:
                                                                                                                                                   while(_loc2_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§pop();
                                                                                                                                                         continue loop43;
                                                                                                                                                      }
                                                                                                                                                      continue loop48;
                                                                                                                                                      §§goto(addr159);
                                                                                                                                                   }
                                                                                                                                                   continue loop14;
                                                                                                                                                }
                                                                                                                                                continue loop27;
                                                                                                                                             }
                                                                                                                                             continue loop12;
                                                                                                                                          }
                                                                                                                                          §§goto(addr24);
                                                                                                                                       }
                                                                                                                                       §§goto(addr348);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§goto(addr75);
                                                                                                                                          addr153:
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr143);
                                                                                                                              }
                                                                                                                              addr200:
                                                                                                                              if(!(_loc3_ && _loc2_))
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              continue loop45;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop13;
                                                                                                                  }
                                                                                                                  §§goto(addr243);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr144:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc2_ || this))
                                                                                                            {
                                                                                                               continue loop46;
                                                                                                            }
                                                                                                            if(!(_loc3_ && _loc3_))
                                                                                                            {
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  continue loop5;
                                                                                                               }
                                                                                                               this.§'!5§(this.§ !@§);
                                                                                                               §§goto(addr303);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr342);
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop46;
                                                                                                         addr283:
                                                                                                      }
                                                                                                      §§push(this.§@I§);
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         if(_loc2_ || _loc2_)
                                                                                                         {
                                                                                                            if(_loc2_)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            addr75:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§@I§);
                                                                                                                  }
                                                                                                                  addr76:
                                                                                                               }
                                                                                                               §§goto(addr24);
                                                                                                            }
                                                                                                            addr75:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().§=]§);
                                                                                                            if(_loc3_ && _loc2_)
                                                                                                            {
                                                                                                               continue loop16;
                                                                                                            }
                                                                                                            §§goto(addr86);
                                                                                                         }
                                                                                                         §§goto(addr24);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().§=]§);
                                                                                                         continue loop16;
                                                                                                         §§goto(addr123);
                                                                                                      }
                                                                                                      addr123:
                                                                                                      §§goto(addr75);
                                                                                                   }
                                                                                                   continue loop45;
                                                                                                   addr121:
                                                                                                }
                                                                                                §§goto(addr103);
                                                                                                §§push(this.§@I§);
                                                                                             }
                                                                                             addr24:
                                                                                          }
                                                                                          continue;
                                                                                          return;
                                                                                       }
                                                                                       continue loop46;
                                                                                    }
                                                                                    continue loop11;
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(this.§ !@§)
                                                                                 {
                                                                                    §§goto(addr283);
                                                                                 }
                                                                                 §§goto(addr219);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr315);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr311);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       if(!(_loc2_ || this))
                                       {
                                          continue;
                                       }
                                       §§pop().§6y§();
                                       §§goto(addr121);
                                    }
                                 }
                                 §§goto(addr344);
                              }
                           }
                        }
                        §§goto(addr340);
                     }
                  }
               }
            }
         }
         §§goto(addr218);
      }
      
      private function §,!#§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§;!>§.dispatchEvent(new Event(Event.INIT));
            do
            {
               this.§0f§();
            }
            while(!_loc2_);
            
         }
      }
      
      private function §0f§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Function = null;
         var _loc3_:* = this.§=!+§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc5_ || _loc3_)
            {
               this.§;!>§.removeEventListener(Event.INIT,_loc1_);
            }
         }
         if(!_loc4_)
         {
            this.§=!+§ = [];
         }
      }
      
      public function init(param1:§&!]§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this.mReadyToRun);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     this.clearLevel();
                     addr292:
                     while(true)
                     {
                     }
                  }
                  addr290:
               }
               while(true)
               {
                  this.§0o§ = new § 6§(this,param1);
                  loop4:
                  while(true)
                  {
                     this.§]!M§ = this.§18§(param1);
                     loop5:
                     while(true)
                     {
                        this.§5!P§ = 0;
                        while(true)
                        {
                           this.§#5§ = 0;
                           continue loop5;
                           addr96:
                           if(_loc2_ && _loc2_)
                           {
                              continue;
                           }
                           loop22:
                           while(true)
                           {
                              this.initReplay();
                              loop23:
                              while(true)
                              {
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    if(_loc3_)
                                    {
                                       if(!_loc2_)
                                       {
                                          if(_loc3_)
                                          {
                                             §7@§.init();
                                             if(_loc2_)
                                             {
                                                continue;
                                             }
                                             if(_loc3_)
                                             {
                                                addr36:
                                                if(_loc3_ || _loc3_)
                                                {
                                                   return;
                                                }
                                                while(true)
                                                {
                                                   this.mReadyToRun = false;
                                                   addr234:
                                                   loop10:
                                                   while(true)
                                                   {
                                                      this.§;8§ = false;
                                                      addr229:
                                                      while(true)
                                                      {
                                                         this.mPigsAnimationTimer1 = 2000;
                                                         continue loop10;
                                                      }
                                                   }
                                                   §§goto(addr36);
                                                }
                                                addr239:
                                             }
                                             else
                                             {
                                                loop17:
                                                while(!(_loc2_ && _loc3_))
                                                {
                                                   this.§?Z§ = this.§&Y§(param1.theme);
                                                   loop18:
                                                   while(true)
                                                   {
                                                      §§push(this.§13§);
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         loop19:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     this.§0I§(param1.theme);
                                                                     addr190:
                                                                     while(true)
                                                                     {
                                                                        if(_loc3_ || this)
                                                                        {
                                                                           if(_loc3_ || param1)
                                                                           {
                                                                              continue loop18;
                                                                           }
                                                                           addr161:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§?Z§);
                                                                              if(_loc3_)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                              }
                                                                              if(_loc2_ && this)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(!_loc2_)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              continue loop19;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              §§goto(addr162);
                                                                           }
                                                                           addr162:
                                                                        }
                                                                        continue loop23;
                                                                     }
                                                                     while(!_loc2_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           this.§13§ = this.§2r§(param1.theme);
                                                                           continue loop17;
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        this.§;1§ = false;
                                                                        §§goto(addr239);
                                                                     }
                                                                     addr190:
                                                                     addr68:
                                                                     addr244:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        this.§&O§(param1);
                                                                        while(true)
                                                                        {
                                                                           if(_loc2_)
                                                                           {
                                                                              break loop23;
                                                                           }
                                                                           if(_loc3_)
                                                                           {
                                                                              continue loop22;
                                                                           }
                                                                           addr203:
                                                                           while(!_loc2_)
                                                                           {
                                                                              continue loop4;
                                                                           }
                                                                           continue loop5;
                                                                        }
                                                                        addr143:
                                                                     }
                                                                     §§goto(addr190);
                                                                  }
                                                               }
                                                               addr126:
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr161);
                                                   }
                                                }
                                                §§goto(addr292);
                                             }
                                             while(!(_loc2_ && _loc2_))
                                             {
                                                this.mPigsAnimationTimer2 = 1000;
                                                §§goto(addr203);
                                                §§goto(addr89);
                                             }
                                             §§goto(addr234);
                                          }
                                          else
                                          {
                                             §§goto(addr290);
                                          }
                                       }
                                       §§goto(addr229);
                                    }
                                    §§goto(addr143);
                                 }
                                 §§goto(addr68);
                              }
                              addr198:
                              while(true)
                              {
                                 this.§6!Q§ = param1;
                                 §§goto(addr190);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr192);
      }
      
      protected function initReplay() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§;_§ = new §^!M§(§7e§.§^"§);
         }
      }
      
      protected function §2r§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(this.§==§)
            {
               if(_loc3_)
               {
                  §§push(false);
                  if(!(_loc2_ && param1))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr58:
                  return true;
               }
               return §§pop();
            }
         }
         §§goto(addr58);
      }
      
      protected function §&Y§(param1:String) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§`#§ = null;
         if(!(_loc3_ && param1))
         {
            if(this.§=S§)
            {
               addr30:
               _loc2_ = § 7§.§[!>§(param1);
               if(_loc4_ || _loc2_)
               {
                  if(_loc2_)
                  {
                     if(!(_loc3_ && this))
                     {
                        addr61:
                        §§push(Boolean(_loc2_.§5N§));
                        if(_loc4_ || param1)
                        {
                           if(§§pop())
                           {
                              if(_loc4_ || _loc2_)
                              {
                                 §§pop();
                                 if(_loc4_)
                                 {
                                    §§push(this.§=S§.§return§(_loc2_.§5N§));
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       §§push(!§§pop());
                                       if(_loc4_ || param1)
                                       {
                                          addr113:
                                          if(§§pop())
                                          {
                                             if(!_loc3_)
                                             {
                                                addr116:
                                                §§push(false);
                                             }
                                             else
                                             {
                                                §§goto(addr118);
                                             }
                                          }
                                          §§goto(addr118);
                                       }
                                    }
                                    return §§pop();
                                 }
                                 §§goto(addr118);
                              }
                           }
                        }
                        §§goto(addr113);
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr118);
               }
               §§goto(addr61);
            }
            addr118:
            return true;
         }
         §§goto(addr30);
      }
      
      protected function §0I§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§`#§ = null;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§==§);
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr291:
                           while(true)
                           {
                              §§push(this.§2r§(param1));
                              addr265:
                              while(true)
                              {
                                 §§push(!§§pop());
                                 addr266:
                                 while(!(_loc3_ && param1))
                                 {
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        addr290:
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop12:
                           while(true)
                           {
                              §§push(this.§=S§);
                              loop13:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc4_)
                                 {
                                    §§push(§§pop());
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          loop24:
                                          while(true)
                                          {
                                             if(_loc3_ && _loc2_)
                                             {
                                                continue loop12;
                                             }
                                             §§push(this.§&Y§(param1));
                                             if(_loc4_ || _loc3_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   continue;
                                                }
                                                if(_loc4_ || param1)
                                                {
                                                   addr134:
                                                   §§push(!§§pop());
                                                   if(_loc4_ || _loc2_)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         loop14:
                                                         while(§§pop())
                                                         {
                                                            loop15:
                                                            while(!(_loc3_ && param1))
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  §§push(this.§=S§);
                                                                  loop16:
                                                                  while(true)
                                                                  {
                                                                     §§pop().removeEventListener(Event.COMPLETE,this.§5,§);
                                                                     loop17:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§=S§);
                                                                        loop18:
                                                                        while(_loc4_)
                                                                        {
                                                                           §§pop().removeEventListener(Event.CANCEL,this.§[X§);
                                                                           while(true)
                                                                           {
                                                                              addr84:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§=S§);
                                                                                 loop21:
                                                                                 while(_loc4_)
                                                                                 {
                                                                                    §§pop().addEventListener(Event.COMPLETE,this.§5,§);
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc4_ || _loc3_)
                                                                                       {
                                                                                          §§push(this.§=S§);
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             continue loop18;
                                                                                          }
                                                                                          continue loop21;
                                                                                       }
                                                                                       continue loop24;
                                                                                    }
                                                                                    continue loop12;
                                                                                 }
                                                                                 continue loop16;
                                                                              }
                                                                              continue loop15;
                                                                              if(!(_loc4_ || this))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(_loc3_ && _loc2_)
                                                                              {
                                                                                 continue loop17;
                                                                              }
                                                                              if(!(_loc4_ || this))
                                                                              {
                                                                                 continue loop15;
                                                                              }
                                                                              if(!(_loc3_ && param1))
                                                                              {
                                                                                 if(!(_loc3_ && param1))
                                                                                 {
                                                                                    if(false)
                                                                                    {
                                                                                       §§goto(addr84);
                                                                                    }
                                                                                    _loc2_ = § 7§.§[!>§(param1);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             addr313:
                                                                                             this.§=S§.§>=§(_loc2_.§5N§);
                                                                                             break loop14;
                                                                                          }
                                                                                          break loop14;
                                                                                       }
                                                                                       break loop14;
                                                                                    }
                                                                                    §§goto(addr313);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§==§);
                                                                                    addr255:
                                                                                    loop11:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().removeEventListener(Event.CANCEL,this.§8!2§);
                                                                                       addr260:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§==§);
                                                                                          addr246:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().addEventListener(Event.COMPLETE,this.§switch§);
                                                                                             addr201:
                                                                                             if(_loc4_ || param1)
                                                                                             {
                                                                                                continue loop11;
                                                                                             }
                                                                                          }
                                                                                          continue loop11;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§==§);
                                                                                 addr230:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().addEventListener(Event.CANCEL,this.§8!2§);
                                                                                    §§push(this.§==§);
                                                                                    addr242:
                                                                                    break loop15;
                                                                                    if(!(_loc4_ || this))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§goto(addr201);
                                                                                 }
                                                                                 §§goto(addr246);
                                                                              }
                                                                           }
                                                                        }
                                                                        continue loop13;
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr260);
                                                            }
                                                            loop29:
                                                            while(true)
                                                            {
                                                               if(_loc4_ || this)
                                                               {
                                                                  §§goto(addr242);
                                                               }
                                                               else
                                                               {
                                                                  while(!_loc3_)
                                                                  {
                                                                     §§push(this.§==§);
                                                                     continue loop29;
                                                                  }
                                                                  §§goto(addr291);
                                                                  addr275:
                                                               }
                                                               §§goto(addr279);
                                                            }
                                                            §§goto(addr255);
                                                         }
                                                         return;
                                                         addr143:
                                                      }
                                                      §§goto(addr265);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr290);
                                                §§goto(addr291);
                                             }
                                             §§goto(addr134);
                                          }
                                          §§goto(addr266);
                                       }
                                       addr182:
                                    }
                                    §§goto(addr143);
                                 }
                                 §§goto(addr182);
                              }
                              continue loop2;
                           }
                        }
                        §§goto(addr275);
                     }
                  }
               }
               if(!(_loc4_ || _loc2_))
               {
                  continue;
               }
               §§pop().§>=§(param1);
               §§goto(addr226);
            }
         }
         §§goto(addr260);
      }
      
      private function §switch§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this.§==§);
            loop0:
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§switch§);
               addr133:
               loop1:
               while(true)
               {
                  §§push(this.§==§);
                  if(_loc3_)
                  {
                     continue loop0;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§8!2§);
                  loop2:
                  while(true)
                  {
                     this.§13§ = true;
                     loop3:
                     while(true)
                     {
                        §§push(this.§13§);
                        if(_loc2_ || _loc2_)
                        {
                           §§push(Boolean(§§pop()));
                           loop4:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop7:
                                 while(true)
                                 {
                                    §§pop();
                                    addr97:
                                    while(!_loc3_)
                                    {
                                       §§push(this.§?Z§);
                                       if(!_loc3_)
                                       {
                                          if(!_loc2_)
                                          {
                                             continue loop4;
                                          }
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(_loc3_ && _loc3_)
                                       {
                                       }
                                       continue loop7;
                                    }
                                    continue loop3;
                                 }
                                 addr96:
                              }
                              while(§§pop())
                              {
                                 if(_loc2_ || _loc3_)
                                 {
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       this.§&O§(this.§6!Q§);
                                    }
                                    else
                                    {
                                       §§goto(addr97);
                                    }
                                 }
                                 if(_loc2_)
                                 {
                                    if(_loc2_ || this)
                                    {
                                       break;
                                    }
                                    continue loop1;
                                 }
                                 continue loop2;
                              }
                              return;
                           }
                        }
                        §§goto(addr96);
                     }
                  }
               }
            }
         }
         §§goto(addr133);
      }
      
      private function §8!2§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§==§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§switch§);
               while(true)
               {
                  §§push(this.§==§);
                  if(_loc2_)
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§8!2§);
                  do
                  {
                     this.§;8§ = true;
                  }
                  while(_loc2_);
                  
                  if(!_loc2_)
                  {
                     return;
                     addr42:
                  }
               }
            }
         }
         §§goto(addr42);
      }
      
      private function §5,§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§==§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§5,§);
               loop1:
               while(true)
               {
                  §§push(this.§==§);
                  if(_loc2_ && _loc3_)
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§[X§);
                  while(true)
                  {
                     this.§?Z§ = true;
                     loop3:
                     while(!(_loc2_ && _loc2_))
                     {
                        §§push(this.§13§);
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop5:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§pop();
                                    addr73:
                                    while(true)
                                    {
                                       §§push(this.§?Z§);
                                       if(_loc3_)
                                       {
                                          if(_loc2_)
                                          {
                                             continue loop6;
                                          }
                                          if(!_loc3_)
                                          {
                                             break;
                                          }
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(_loc2_)
                                       {
                                          continue loop4;
                                       }
                                    }
                                    continue loop5;
                                 }
                              }
                              while(§§pop())
                              {
                                 if(!_loc2_)
                                 {
                                    if(_loc3_)
                                    {
                                       this.§&O§(this.§6!Q§);
                                    }
                                    else
                                    {
                                       §§goto(addr73);
                                    }
                                 }
                                 if(!_loc2_)
                                 {
                                    if(_loc3_ || param1)
                                    {
                                       addr65:
                                       break;
                                    }
                                    continue loop1;
                                 }
                                 continue loop3;
                              }
                              return;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      private function §[X§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§==§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§5,§);
               loop1:
               while(true)
               {
                  §§push(this.§==§);
                  if(_loc2_)
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§[X§);
                  while(true)
                  {
                     this.§?Z§ = true;
                     loop3:
                     while(_loc3_)
                     {
                        if(_loc2_)
                        {
                           continue loop1;
                        }
                        §§push(this.§13§);
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop5:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop8:
                                 while(§§pop())
                                 {
                                    if(_loc3_ || _loc2_)
                                    {
                                       while(true)
                                       {
                                          this.§&O§(this.§6!Q§);
                                       }
                                       addr70:
                                    }
                                    while(true)
                                    {
                                       if(_loc3_ || _loc3_)
                                       {
                                          break loop8;
                                       }
                                       loop7:
                                       while(!_loc2_)
                                       {
                                          §§push(this.§?Z§);
                                          if(!(_loc2_ && param1))
                                          {
                                             if(_loc2_)
                                             {
                                                continue loop5;
                                             }
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(!(_loc2_ && this))
                                          {
                                             continue loop4;
                                          }
                                          addr88:
                                          while(true)
                                          {
                                             §§pop();
                                             continue loop7;
                                          }
                                       }
                                       continue loop3;
                                    }
                                 }
                                 return;
                                 addr51:
                              }
                              §§goto(addr88);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      public function get §7!_§() : §2w§
      {
         return this.§8!M§;
      }
      
      protected function §&O§(param1:§&!]§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§&!+§ = false;
            loop0:
            while(true)
            {
               this.§[4§ = false;
               while(true)
               {
                  §§push(§9!'§.§`!@§);
                  if(!_loc3_)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(§9!'§.§`!@§);
                           addr212:
                           while(true)
                           {
                              §§pop().speed = 1;
                              addr224:
                              while(true)
                              {
                              }
                           }
                           addr162:
                           if(_loc2_ || _loc2_)
                           {
                              this.§3V§ = this.initLevelSlingshot(param1);
                              continue loop0;
                           }
                        }
                     }
                     loop3:
                     while(true)
                     {
                        this.mLevelEngine = new §,!'§(this);
                        addr203:
                        while(true)
                        {
                           §§push(this);
                           §§push(this);
                           §§push(param1.theme);
                           §§push(this.§0o§.§[w§);
                           if(_loc2_)
                           {
                              §§push(§§pop() / §7!4§);
                           }
                           §§pop().§4a§ = §§pop().§,T§(§§pop(),§§pop(),this.§7!_§,this.§]!M§.§6!0§());
                           loop5:
                           while(true)
                           {
                              this.§4a§.§?B§(§7?§.§`!>§());
                              loop6:
                              while(true)
                              {
                                 this.§[!&§ = this.initLevelObjectManager(param1);
                                 addr148:
                                 while(true)
                                 {
                                    if(_loc2_ || param1)
                                    {
                                       continue loop5;
                                    }
                                    continue loop6;
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr212);
                  addr88:
                  if(!(_loc2_ || _loc3_))
                  {
                     continue;
                  }
                  while(true)
                  {
                     this.loadPreviousReplayData();
                     loop15:
                     for(; !_loc3_; while(true)
                     {
                        if(_loc3_ && _loc2_)
                        {
                           continue loop15;
                        }
                        addr53:
                        if(_loc2_ || _loc2_)
                        {
                           §§push(this.§#!>§);
                           if(_loc2_ || this)
                           {
                              if(§§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    if(!_loc3_)
                                    {
                                       §§push(this.§#!>§);
                                       break;
                                    }
                                    continue;
                                 }
                                 addr41:
                              }
                              return;
                           }
                           break;
                        }
                        addr100:
                        while(_loc2_)
                        {
                           §§goto(addr88);
                           §§goto(addr53);
                        }
                        while(!(_loc3_ && param1))
                        {
                           this.§in §();
                           §§goto(addr86);
                        }
                        addr86:
                        §§goto(addr203);
                     },§§pop().addEventListeners(),§§goto(addr41))
                     {
                        if(!(_loc2_ || _loc2_))
                        {
                           continue loop0;
                        }
                        if(!_loc3_)
                        {
                           if(_loc2_ || this)
                           {
                              this.mReadyToRun = true;
                              continue;
                           }
                           §§goto(addr224);
                        }
                        §§goto(addr148);
                     }
                     addr127:
                     while(true)
                     {
                        this.§]!M§.init();
                        §§goto(addr100);
                     }
                  }
               }
            }
         }
         §§goto(addr95);
      }
      
      protected function loadPreviousReplayData() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(this.§#l§)
            {
               loop0:
               while(true)
               {
                  this.§5!>§ = §^!M§.§&O§(this.§#l§);
                  loop1:
                  while(true)
                  {
                     §§push(this.§5!>§);
                     while(true)
                     {
                        §§pop().speed = 1;
                        §§push(this.§5!>§);
                        addr81:
                        continue loop0;
                        if(!(_loc1_ && this))
                        {
                           §§pop().play();
                           loop4:
                           while(!_loc1_)
                           {
                              this.§ use§ = -1000;
                              loop5:
                              while(_loc2_)
                              {
                                 while(true)
                                 {
                                    this.§#l§ = null;
                                    if(_loc2_)
                                    {
                                       if(!_loc1_)
                                       {
                                          break;
                                       }
                                       continue loop4;
                                    }
                                    continue loop5;
                                 }
                                 return;
                              }
                              continue loop0;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
            §§goto(addr25);
         }
         §§goto(addr54);
      }
      
      public function §8#§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§#l§ = param1;
         }
      }
      
      public function isPlayingReplay() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§5!>§ == null);
         if(_loc2_)
         {
            return !§§pop();
         }
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§5!>§);
            while(§§pop())
            {
               while(param1)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr73:
                     §§push(this.§5!>§);
                     break;
                  }
               }
               break;
               §§pop().speed = Math.min(this.§5!>§.speed * 1.25,Math.pow(1.25,2));
               §§goto(addr97);
            }
            return;
         }
         §§goto(addr73);
      }
      
      public function resetReplaySpeed() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§5!>§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr48:
                     this.§5!>§.speed = 1;
                  }
               }
               return;
            }
         }
         §§goto(addr48);
      }
      
      protected function initLevelObjectManager(param1:§&!]§) : §6M§
      {
         return new §6M§(this,param1,new Sprite());
      }
      
      protected function §18§(param1:§&!]§) : §<I§
      {
         return new §<I§(this,param1);
      }
      
      protected function §,T§(param1:String, param2:Number, param3:§2w§, param4:Number) : §%B§
      {
         return new §%B§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§&!]§) : §#K§
      {
         return new §#K§(this,param1,new Sprite());
      }
      
      protected function §-t§(param1:§5L§, param2:§2w§) : §<2§
      {
         return new §<2§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            if(this.mReadyToRun)
            {
               if(!_loc7_)
               {
                  this.clearLevel();
               }
            }
         }
         var _loc3_:§&!]§ = this.§7B§();
         var _loc4_:§'A§;
         (_loc4_ = new §'A§()).left = 0;
         if(_loc6_)
         {
            §§push(_loc4_);
            §§push(§<I§.§0!2§);
            if(_loc6_)
            {
               §§push(-§§pop());
               if(_loc6_)
               {
                  §§push(10);
                  if(!(_loc7_ && this))
                  {
                     addr137:
                     §§push(§§pop() / §§pop());
                     if(!(_loc7_ && this))
                     {
                        §§push(8);
                     }
                     §§pop().top = §§pop();
                     while(true)
                     {
                        §§push(_loc4_);
                        §§push(_loc4_.top);
                        if(_loc6_)
                        {
                           §§push(§§pop() + §<I§.§0!2§);
                        }
                        §§pop().bottom = §§pop();
                        loop1:
                        for(; !(_loc7_ && param2); loop3:
                        while(!(_loc7_ && param1))
                        {
                           _loc4_.x = §<I§.§]!;§;
                           loop4:
                           while(true)
                           {
                              loop5:
                              while(true)
                              {
                                 _loc4_.id = §<I§.§3!E§;
                                 while(_loc6_)
                                 {
                                    _loc3_.§&[§(_loc4_);
                                    if(_loc6_ || this)
                                    {
                                       if(!_loc7_)
                                       {
                                          if(_loc6_)
                                          {
                                             if(true)
                                             {
                                                break loop5;
                                             }
                                             continue loop5;
                                          }
                                          continue loop3;
                                       }
                                       continue loop4;
                                    }
                                 }
                                 §§goto(addr92);
                              }
                              var _loc5_:§'A§;
                              (_loc5_ = new §'A§()).top = _loc4_.top;
                              if(_loc6_)
                              {
                                 _loc5_.bottom = _loc4_.bottom;
                                 loop7:
                                 while(true)
                                 {
                                    _loc5_.left = 150;
                                    addr336:
                                    while(true)
                                    {
                                       §§push(_loc5_);
                                       §§push(_loc5_.left);
                                       if(!_loc7_)
                                       {
                                          §§push(§§pop() + §<I§.§]!;§);
                                       }
                                       §§pop().right = §§pop();
                                       continue loop7;
                                    }
                                 }
                              }
                              §§goto(addr201);
                           }
                        })
                        {
                           §§push(_loc4_);
                           §§push(_loc4_.left);
                           if(!_loc7_)
                           {
                              §§push(§§pop() + §<I§.§]!;§);
                           }
                           §§pop().right = §§pop();
                           while(true)
                           {
                              _loc4_.y = -13.929;
                              continue loop1;
                           }
                        }
                     }
                  }
                  §§push(§§pop() * §§pop());
               }
            }
            §§goto(addr137);
         }
         §§goto(addr69);
      }
      
      protected function §'!,§(param1:§&!]§, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            if(param2)
            {
               if(!_loc4_)
               {
                  this.§0!5§(param1);
               }
            }
         }
      }
      
      protected function §7B§() : §&!]§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§&!]§ = new §&!]§();
         if(_loc3_ || this)
         {
            _loc1_.§0!;§ = -12;
         }
         return new §&!]§();
      }
      
      protected function §5j§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§^?§ ^= this.§^?§ << 21;
            while(true)
            {
               §§push(this);
               §§push(this.§^?§);
               §§push(this.§^?§);
               if(!_loc1_)
               {
                  §§push(§§pop() >>> 35);
               }
               §§pop().§^?§ = §§pop() ^ §§pop();
               while(!_loc1_)
               {
                  this.§^?§ ^= this.§^?§ << 4;
                  if(_loc2_ || _loc1_)
                  {
                     return this.§^?§ * (1 / uint.MAX_VALUE);
                     addr58:
                  }
               }
            }
         }
         §§goto(addr58);
      }
      
      protected function §0!5§(param1:§&!]§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         var _loc5_:§`u§ = null;
         if(!_loc7_)
         {
            §§push(this);
            §§push(0.33);
            if(_loc6_ || _loc3_)
            {
               §§push(§§pop() * uint.MAX_VALUE);
            }
            §§pop().§^?§ = §§pop();
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            loop1:
            while(true)
            {
               §§push(10);
               loop2:
               while(§§pop() < §§pop())
               {
                  §§push(0);
                  if(!_loc7_)
                  {
                     _loc3_ = §§pop();
                     if(!_loc6_)
                     {
                        continue loop0;
                     }
                     do
                     {
                        §§push(_loc3_);
                     }
                     while(_loc6_ || _loc3_);
                     
                     continue loop1;
                     addr443:
                  }
                  while(true)
                  {
                     §§push(5);
                     if(!(_loc7_ && param1))
                     {
                        if(§§pop() >= §§pop())
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop2;
                  }
                  if(_loc7_)
                  {
                     break;
                  }
                  _loc2_++;
                  if(_loc7_ && _loc3_)
                  {
                     break;
                  }
                  continue loop0;
               }
               return;
            }
         }
      }
      
      private function §>>§() : void
      {
      }
      
      public function §in §() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(§%B§.§0#§);
            while(true)
            {
               if(§§pop())
               {
                  addr209:
                  if(!(_loc1_ && _loc1_))
                  {
                     this.§"Q§(this.§4a§.§`!L§,false);
                  }
                  while(true)
                  {
                  }
                  addr209:
               }
               addr171:
               while(true)
               {
                  this.§"Q§(this.§+!Z§.§`Q§(§<2§.§`!J§),false);
                  loop3:
                  while(_loc2_)
                  {
                     this.§"Q§(this.§+!Z§.§`Q§(§<2§.§&!H§),true);
                     while(true)
                     {
                        this.§"Q§(this.§+!Z§.§`Q§(§<2§.§^#§),true);
                        loop5:
                        while(true)
                        {
                           this.§"Q§(this.§[!&§.§;!C§,true);
                           loop6:
                           while(true)
                           {
                              this.§"Q§(this.§3V§.sprite,true);
                              loop7:
                              while(_loc2_)
                              {
                                 this.§"Q§(this.§+!Z§.§`Q§(§<2§.§]!X§),true);
                                 while(true)
                                 {
                                    if(!(_loc1_ && this))
                                    {
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       this.§"Q§(this.§4a§.§@Y§,false);
                                       continue loop6;
                                    }
                                    continue loop7;
                                    addr52:
                                    if(!(_loc1_ && this))
                                    {
                                       addr59:
                                       return;
                                    }
                                 }
                                 continue loop3;
                              }
                              continue loop5;
                           }
                        }
                     }
                  }
                  §§goto(addr209);
               }
            }
            addr185:
         }
         while(true)
         {
            §§push(§%B§.§0#§);
            loop11:
            while(true)
            {
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        this.§"Q§(this.§4a§.§ !Y§,false);
                        addr88:
                        while(true)
                        {
                        }
                     }
                     addr82:
                  }
                  while(true)
                  {
                     this.§"Q§(this.§+!Z§.§`Q§(§<2§.§<X§),true);
                     while(true)
                     {
                        if(!_loc1_)
                        {
                           if(!_loc1_)
                           {
                              continue loop11;
                           }
                           §§goto(addr170);
                        }
                        else
                        {
                           §§goto(addr82);
                        }
                        if(_loc2_)
                        {
                           §§goto(addr52);
                        }
                        §§goto(addr106);
                     }
                     §§goto(addr88);
                  }
               }
               else
               {
                  §§goto(addr185);
               }
               §§goto(addr209);
            }
            §§goto(addr171);
         }
      }
      
      private function §"Q§(param1:Sprite, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            §§push(this.sprite);
            if(_loc4_)
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     addr53:
                     this.sprite.addChild(param1);
                  }
               }
               return;
            }
         }
         §§goto(addr53);
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Point = new Point();
         if(_loc4_)
         {
            §§push(param1);
            if(!(_loc5_ && this))
            {
               §§push(§7?§.§&Z§);
               while(true)
               {
                  §§push(§§pop() / §§pop());
                  addr158:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                  }
                  addr115:
                  §§push(§7?§.§&Z§);
                  if(!(_loc4_ || _loc3_))
                  {
                     continue;
                  }
                  §§push(§§pop() / §§pop());
                  if(_loc4_)
                  {
                     addr127:
                     if(!(_loc5_ && param1))
                     {
                        addr135:
                        param2 = §§pop();
                        loop4:
                        while(true)
                        {
                           _loc3_.x = (param1 / §<I§.§,0§ + this.§]!M§.§[!L§ - §<I§.§5!S§ / §<I§.§,0§) * §7!4§;
                           loop5:
                           while(_loc4_ || param1)
                           {
                              while(true)
                              {
                                 _loc3_.y = (param2 / §<I§.§,0§ + this.§]!M§.§<!F§ - §<I§.§+!G§ / §<I§.§,0§) * §7!4§;
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    continue loop4;
                                 }
                                 continue loop5;
                              }
                              return _loc3_;
                           }
                           addr160:
                           while(true)
                           {
                              §§push(param2);
                              if(!(_loc5_ && _loc3_))
                              {
                                 if(_loc5_ && param2)
                                 {
                                    break;
                                 }
                                 §§goto(addr115);
                              }
                              §§goto(addr127);
                           }
                           §§goto(addr158);
                        }
                     }
                     while(true)
                     {
                        param1 = §§pop();
                        §§goto(addr160);
                     }
                     addr159:
                  }
                  §§goto(addr135);
               }
            }
            §§goto(addr159);
         }
         §§goto(addr98);
      }
      
      public function §]4§(param1:Number, param2:Number) : Point
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Point = new Point();
         if(_loc6_ || param2)
         {
            _loc3_.x = (param1 / §7!4§ + §<I§.§5!S§ / §<I§.§,0§ - this.§]!M§.§[!L§) * §<I§.§,0§;
            if(!(_loc5_ && this))
            {
               _loc3_.y = (param2 / §7!4§ + §<I§.§+!G§ / §<I§.§,0§ - this.§]!M§.§<!F§) * §<I§.§,0§;
               addr53:
            }
            var _loc4_:Number = Math.max(§7?§.§&Z§,§7?§.§1H§);
            if(_loc6_ || param2)
            {
               _loc3_.x *= _loc4_;
               do
               {
                  _loc3_.y *= _loc4_;
               }
               while(_loc5_ && _loc3_);
               
            }
            return _loc3_;
         }
         §§goto(addr53);
      }
      
      public function §]3§(param1:String, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            this.§[!&§.addObject(param1,param2,param3);
         }
      }
      
      public function §,!0§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§%!X§);
            if(_loc1_ || this)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§%!X§);
                     addr89:
                     while(true)
                     {
                        §§pop().visible = true;
                        addr91:
                        loop4:
                        while(true)
                        {
                           §§push(this.§%!X§);
                           if(_loc1_ || _loc2_)
                           {
                              §§pop().alpha = 0;
                              while(!_loc1_)
                              {
                                 continue loop0;
                              }
                              addr66:
                              while(true)
                              {
                                 this.§2n§ = 0;
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       break;
                                    }
                                    continue loop4;
                                 }
                                 §§goto(addr64);
                                 §§goto(addr66);
                              }
                              addr64:
                              return;
                              addr23:
                           }
                        }
                     }
                  }
               }
               §§goto(addr23);
            }
            §§goto(addr89);
         }
         §§goto(addr91);
      }
      
      public function §<H§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§8!-§ = new §65§(§!j§.§!2§,§!j§.§2!0§);
         }
      }
      
      public function §^7§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§8!-§ = null;
         }
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§4a§);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§4a§);
                     addr614:
                     while(true)
                     {
                        §§pop().dispose();
                        addr615:
                        while(true)
                        {
                           this.§4a§ = null;
                           addr591:
                           while(true)
                           {
                           }
                        }
                     }
                     loop25:
                     while(true)
                     {
                        if(_loc1_ && _loc1_)
                        {
                           continue loop0;
                        }
                        this.mLevelEngine = null;
                        loop26:
                        while(true)
                        {
                           if(_loc1_)
                           {
                              continue loop25;
                           }
                           addr527:
                           if(_loc2_ || this)
                           {
                              addr534:
                              loop8:
                              while(true)
                              {
                                 §§push(this.§0o§);
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    if(§§pop())
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          if(_loc2_ || this)
                                          {
                                             §§push(this.§0o§);
                                             while(true)
                                             {
                                                §§pop().clear();
                                                loop22:
                                                while(true)
                                                {
                                                   this.§0o§ = null;
                                                   loop23:
                                                   while(true)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         continue loop26;
                                                      }
                                                      if(_loc2_)
                                                      {
                                                         addr498:
                                                         while(true)
                                                         {
                                                            §§push(this.§3V§);
                                                            if(!(_loc1_ && this))
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  loop11:
                                                                  while(true)
                                                                  {
                                                                     if(_loc2_ || this)
                                                                     {
                                                                        §§push(this.§3V§);
                                                                        while(true)
                                                                        {
                                                                           §§pop().dispose();
                                                                           loop20:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc1_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    this.§3V§ = null;
                                                                                    loop31:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          continue loop22;
                                                                                       }
                                                                                       addr465:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§]!M§);
                                                                                          if(!(_loc1_ && _loc2_))
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!(_loc1_ && _loc1_))
                                                                                                {
                                                                                                   addr457:
                                                                                                   this.§]!M§.clear();
                                                                                                }
                                                                                                loop13:
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§]!M§ = null;
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         continue loop23;
                                                                                                      }
                                                                                                      addr410:
                                                                                                      if(!(_loc1_ && this))
                                                                                                      {
                                                                                                         if(!_loc1_)
                                                                                                         {
                                                                                                            continue loop9;
                                                                                                         }
                                                                                                         continue loop13;
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop23;
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§+!Z§);
                                                                                                if(!(_loc2_ || _loc1_))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(!_loc1_)
                                                                                                   {
                                                                                                      §§goto(addr410);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr429:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§+!Z§ = null;
                                                                                                         addr380:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc1_ && _loc1_)
                                                                                                            {
                                                                                                               continue loop31;
                                                                                                            }
                                                                                                            if(_loc1_ && _loc2_)
                                                                                                            {
                                                                                                               continue loop20;
                                                                                                            }
                                                                                                            if(_loc1_)
                                                                                                            {
                                                                                                               continue loop11;
                                                                                                            }
                                                                                                            addr396:
                                                                                                         }
                                                                                                      }
                                                                                                      addr429:
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(this.sprite)
                                                                                                   {
                                                                                                      if(_loc2_ || this)
                                                                                                      {
                                                                                                         if(!_loc1_)
                                                                                                         {
                                                                                                            if(_loc2_ || this)
                                                                                                            {
                                                                                                               addr335:
                                                                                                               §§push(this.sprite);
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  if(§§pop().numChildren <= 0)
                                                                                                                  {
                                                                                                                     addr344:
                                                                                                                     this.§5!P§ = 0;
                                                                                                                     this.§#5§ = 0;
                                                                                                                     this.mReadyToRun = false;
                                                                                                                     this.§;1§ = false;
                                                                                                                     this.§2n§ = §!j§.§?M§;
                                                                                                                     addr334:
                                                                                                                     addr347:
                                                                                                                     addr329:
                                                                                                                     addr324:
                                                                                                                     addr319:
                                                                                                                     if(this.§#!Z§)
                                                                                                                     {
                                                                                                                        addr305:
                                                                                                                        (this.§#!Z§ as §7]§).§ !N§.x = 0;
                                                                                                                        addr289:
                                                                                                                        addr294:
                                                                                                                        addr291:
                                                                                                                        if(!(_loc1_ && _loc1_))
                                                                                                                        {
                                                                                                                           §§push(this.§#!Z§);
                                                                                                                           if(!(_loc1_ && this))
                                                                                                                           {
                                                                                                                              if(_loc2_ || _loc2_)
                                                                                                                              {
                                                                                                                                 §§push((§§pop() as §7]§).§ !N§);
                                                                                                                                 if(_loc2_)
                                                                                                                                 {
                                                                                                                                    §§push(0);
                                                                                                                                    if(_loc2_)
                                                                                                                                    {
                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                       addr284:
                                                                                                                                       §§push(this.§%!X§);
                                                                                                                                       if(_loc2_)
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             addr248:
                                                                                                                                             this.§%!X§.visible = false;
                                                                                                                                             addr246:
                                                                                                                                             if(!(_loc1_ && _loc1_))
                                                                                                                                             {
                                                                                                                                                addr235:
                                                                                                                                                this.§5!>§ = null;
                                                                                                                                                this.§;_§ = null;
                                                                                                                                                addr239:
                                                                                                                                                addr234:
                                                                                                                                                if(this.§==§)
                                                                                                                                                {
                                                                                                                                                   addr220:
                                                                                                                                                   if(_loc2_)
                                                                                                                                                   {
                                                                                                                                                      addr224:
                                                                                                                                                      this.§==§.removeEventListener(Event.COMPLETE,this.§switch§);
                                                                                                                                                      addr229:
                                                                                                                                                      §§push(this.§==§);
                                                                                                                                                      if(!_loc1_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc1_)
                                                                                                                                                         {
                                                                                                                                                            §§pop().removeEventListener(Event.CANCEL,this.§8!2§);
                                                                                                                                                            addr215:
                                                                                                                                                            if(this.§=S§)
                                                                                                                                                            {
                                                                                                                                                               addr188:
                                                                                                                                                               this.§=S§.removeEventListener(Event.COMPLETE,this.§5,§);
                                                                                                                                                               addr193:
                                                                                                                                                               addr186:
                                                                                                                                                               if(_loc2_)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc1_ && _loc1_))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§=S§);
                                                                                                                                                                     if(_loc2_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc1_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           §§pop().removeEventListener(Event.CANCEL,this.§[X§);
                                                                                                                                                                           addr167:
                                                                                                                                                                           if(_loc2_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc2_ || _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr141:
                                                                                                                                                                                 this.§0f§();
                                                                                                                                                                                 addr144:
                                                                                                                                                                                 §§push(§9!'§.§7!Z§);
                                                                                                                                                                                 if(!(_loc1_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       addr115:
                                                                                                                                                                                       if(!_loc1_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc1_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr127:
                                                                                                                                                                                                      §9!'§.§7!Z§.color = 0;
                                                                                                                                                                                                      addr129:
                                                                                                                                                                                                      if(!(_loc1_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc1_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr45:
                                                                                                                                                                                                               §§push(this.§#!>§);
                                                                                                                                                                                                               if(_loc2_ || _loc2_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc1_ && _loc2_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc1_ && _loc2_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc2_ || _loc2_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr81:
                                                                                                                                                                                                                                 this.§#!>§.removeEventListeners();
                                                                                                                                                                                                                                 addr82:
                                                                                                                                                                                                                                 if(!(_loc1_ && _loc1_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc1_ && _loc2_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc1_ && this))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr24:
                                                                                                                                                                                                                                          this.mReadyToRun = false;
                                                                                                                                                                                                                                          if(!(_loc1_ && this))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc2_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc2_ || this))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr375:
                                                                                                                                                                                                                                                   §§goto(addr335);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                return;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr193);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr82);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr334);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr115);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr129);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr347);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr167);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr144);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr82);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr24);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr81);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr239);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr220);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr215);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr329);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr324);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr289);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr284);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr186);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr45);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr127);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr246);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr215);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr188);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr289);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr229);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr141);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr239);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr224);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr234);
                                                                                                                                                }
                                                                                                                                                §§goto(addr215);
                                                                                                                                             }
                                                                                                                                             §§goto(addr319);
                                                                                                                                          }
                                                                                                                                          §§goto(addr235);
                                                                                                                                       }
                                                                                                                                       §§goto(addr248);
                                                                                                                                    }
                                                                                                                                    §§goto(addr305);
                                                                                                                                 }
                                                                                                                                 §§goto(addr294);
                                                                                                                              }
                                                                                                                              §§goto(addr334);
                                                                                                                           }
                                                                                                                           §§goto(addr291);
                                                                                                                        }
                                                                                                                        §§goto(addr344);
                                                                                                                     }
                                                                                                                     §§goto(addr284);
                                                                                                                     addr343:
                                                                                                                  }
                                                                                                                  §§push(this.sprite);
                                                                                                               }
                                                                                                               §§pop().removeChildAt(0,true);
                                                                                                               §§goto(addr375);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr591);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr429);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr380);
                                                                                                   }
                                                                                                   §§goto(addr343);
                                                                                                   §§goto(addr396);
                                                                                                }
                                                                                                continue loop31;
                                                                                             }
                                                                                             addr428:
                                                                                             §§pop().dispose();
                                                                                             §§goto(addr429);
                                                                                          }
                                                                                          §§goto(addr457);
                                                                                          §§goto(addr465);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr489:
                                                                              }
                                                                              addr552:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.mLevelEngine);
                                                                                 break loop9;
                                                                              }
                                                                           }
                                                                        }
                                                                        addr486:
                                                                     }
                                                                     addr586:
                                                                     while(true)
                                                                     {
                                                                        this.§[!&§ = null;
                                                                        break loop11;
                                                                     }
                                                                  }
                                                                  while(!_loc1_)
                                                                  {
                                                                     this.§"!Z§ = null;
                                                                     while(true)
                                                                     {
                                                                        addr535:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.mLevelEngine);
                                                                           if(_loc2_)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.mLevelEngine);
                                                                                 if(!(_loc1_ && _loc2_))
                                                                                 {
                                                                                    if(!§§pop().§?!X§)
                                                                                    {
                                                                                    }
                                                                                    §§goto(addr552);
                                                                                 }
                                                                                 break loop9;
                                                                              }
                                                                           }
                                                                           break loop9;
                                                                        }
                                                                     }
                                                                     §§goto(addr527);
                                                                  }
                                                                  §§goto(addr615);
                                                                  addr572:
                                                               }
                                                               §§goto(addr437);
                                                            }
                                                            §§goto(addr486);
                                                            §§goto(addr498);
                                                         }
                                                         addr466:
                                                      }
                                                      §§goto(addr567);
                                                   }
                                                   continue loop26;
                                                }
                                             }
                                             addr519:
                                          }
                                          §§goto(addr541);
                                       }
                                       while(true)
                                       {
                                          §§pop().clear();
                                          continue loop25;
                                       }
                                    }
                                    §§goto(addr466);
                                 }
                                 §§goto(addr519);
                              }
                           }
                           §§goto(addr572);
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(this.§[!&§);
                  if(!_loc1_)
                  {
                     if(§§pop())
                     {
                        if(!_loc1_)
                        {
                           addr585:
                           this.§[!&§.dispose();
                        }
                        §§goto(addr586);
                     }
                     §§goto(addr535);
                  }
                  §§goto(addr585);
                  §§goto(addr591);
               }
            }
            §§goto(addr614);
         }
         §§goto(addr489);
      }
      
      public function gameOver() : void
      {
      }
      
      public function §^!N§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§;_§);
            if(!(_loc1_ && this))
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc1_)
                  {
                     §§goto(addr63);
                  }
               }
               return null;
            }
            §§goto(addr63);
         }
         addr63:
         return this.§;_§.toString();
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(this.mReadyToRun);
            if(_loc4_)
            {
               §§push(!§§pop());
            }
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(§9!'§.§%C§());
                           loop4:
                           while(true)
                           {
                              §§push(!§§pop());
                              addr108:
                              if(!(_loc4_ || param2))
                              {
                                 continue;
                              }
                              if(_loc5_)
                              {
                                 continue loop0;
                              }
                              §§push(§§pop());
                              if(!_loc4_)
                              {
                                 continue loop1;
                              }
                              if(§§pop())
                              {
                                 loop11:
                                 while(true)
                                 {
                                    §§pop();
                                    loop10:
                                    while(true)
                                    {
                                       §§push(this.§5!>§);
                                       if(_loc5_ && param2)
                                       {
                                          break;
                                       }
                                       §§push(§§pop().§#I§);
                                       if(_loc4_ || param2)
                                       {
                                          if(!_loc4_)
                                          {
                                             continue loop2;
                                          }
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(!_loc5_)
                                       {
                                          if(_loc5_)
                                          {
                                             while(!§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§5!>§);
                                                   break loop10;
                                                }
                                             }
                                             addr130:
                                             return 0;
                                             addr129:
                                             addr128:
                                          }
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc5_ && this))
                                                {
                                                   if(_loc4_ || param2)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         break;
                                                      }
                                                      addr89:
                                                      §§push(this.§5a§(param1,param2,param3));
                                                      if(!_loc5_)
                                                      {
                                                         return §§pop();
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§goto(addr102);
                                                      }
                                                      addr131:
                                                   }
                                                }
                                                else
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      continue loop10;
                                                   }
                                                   if(!(_loc5_ && this))
                                                   {
                                                      addr19:
                                                      §§push(this.§>!&§(param1,true,param2,param3));
                                                      if(_loc4_)
                                                      {
                                                         return §§pop();
                                                      }
                                                      §§goto(addr89);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr129);
                                                   }
                                                }
                                                §§goto(addr130);
                                             }
                                             §§goto(addr19);
                                          }
                                          continue loop3;
                                          addr56:
                                       }
                                       continue loop11;
                                    }
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(_loc5_)
                                       {
                                          continue loop11;
                                       }
                                       §§goto(addr108);
                                    }
                                    continue loop4;
                                 }
                              }
                              §§goto(addr56);
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr128);
                  }
               }
            }
         }
         §§goto(addr131);
      }
      
      protected function §>!&§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param2))
         {
            if(this.§&!+§)
            {
               if(_loc6_)
               {
                  §§push(param1);
                  if(_loc6_)
                  {
                     §§push(§§pop() * 0.2);
                     if(_loc6_ || param1)
                     {
                        §§push(Number(§§pop()));
                        if(_loc6_)
                        {
                           addr43:
                           param1 = §§pop();
                           if(!_loc7_)
                           {
                              §§push(§9!'§.§`!@§);
                              if(_loc6_)
                              {
                                 if(§§pop())
                                 {
                                    addr62:
                                    if(!(_loc7_ && this))
                                    {
                                       addr58:
                                       §§push(§9!'§.§`!@§);
                                    }
                                    var _loc5_:* = Number(0);
                                    if(!_loc7_)
                                    {
                                       §§push(this);
                                       §§push(this.§#5§);
                                       if(!(_loc7_ && param3))
                                       {
                                          §§push(§§pop() + param1);
                                       }
                                       §§pop().§#5§ = §§pop();
                                    }
                                    loop0:
                                    while(true)
                                    {
                                       §§push(param3);
                                       loop1:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc7_)
                                             {
                                                §§push(this);
                                                §§push(this.§5!P§);
                                                if(!(_loc7_ && param1))
                                                {
                                                   §§push(§§pop() + param1);
                                                }
                                                §§pop().§5!P§ = §§pop();
                                             }
                                             loop2:
                                             while(true)
                                             {
                                                §§push(this.mLevelEngine.§6!E§(this.§5!P§));
                                                if(!(_loc7_ && param1))
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                                while(true)
                                                {
                                                   _loc5_ = §§pop();
                                                   addr191:
                                                   addr68:
                                                   while(true)
                                                   {
                                                      this.§3V§.update(param1,param4);
                                                      loop5:
                                                      while(true)
                                                      {
                                                         this.§5!P§ = _loc5_;
                                                         while(!_loc7_)
                                                         {
                                                            continue loop1;
                                                            if(_loc6_ || param2)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               continue loop5;
                                                            }
                                                         }
                                                         continue loop2;
                                                      }
                                                   }
                                                   §§push(param1);
                                                   if(_loc6_ || this)
                                                   {
                                                      return §§pop();
                                                   }
                                                }
                                             }
                                          }
                                          else
                                          {
                                             this.§[!&§.§2l§(param1);
                                             while(true)
                                             {
                                                this.§5!P§ = 0;
                                                addr153:
                                                while(true)
                                                {
                                                   continue loop1;
                                                }
                                             }
                                             addr161:
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr62);
                              }
                              §§pop().speed = 0.2;
                              §§goto(addr62);
                           }
                           §§goto(addr58);
                        }
                     }
                     §§goto(addr62);
                  }
                  §§goto(addr43);
               }
               §§goto(addr58);
            }
         }
         §§goto(addr62);
      }
      
      private function §5a§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:Number = NaN;
         §§push(§,!'§.§false§);
         if(!_loc7_)
         {
            §§push(§§pop() * 1000);
            if(_loc6_ || param1)
            {
               addr31:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            if(_loc6_)
            {
               if(this.§5!>§)
               {
                  loop17:
                  while(true)
                  {
                     §§push(param1);
                     if(!_loc7_)
                     {
                        §§push(this.§5!>§.speed);
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           addr272:
                           §§push(param1);
                           if(_loc7_ && param2)
                           {
                              continue;
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc6_ || this)
                           {
                              if(!(_loc7_ && this))
                              {
                                 if(_loc6_)
                                 {
                                    addr298:
                                    _loc5_ = §§pop();
                                    if(!_loc6_)
                                    {
                                       while(true)
                                       {
                                          §§push(this.§#5§);
                                          if(!(_loc7_ && param1))
                                          {
                                             §§goto(addr272);
                                          }
                                          §§goto(addr298);
                                       }
                                       continue;
                                       addr326:
                                    }
                                    if(_loc7_)
                                    {
                                       continue loop17;
                                    }
                                    loop26:
                                    while(true)
                                    {
                                       §§push(this.§#5§);
                                       if(!(_loc7_ && param3))
                                       {
                                          if(_loc6_ || param2)
                                          {
                                             §§push(_loc4_);
                                             if(_loc6_ || param1)
                                             {
                                                §§push(§§pop() + §§pop());
                                                loop16:
                                                while(true)
                                                {
                                                   §§push(_loc5_);
                                                   loop12:
                                                   while(true)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         if(§§pop() >= §§pop())
                                                         {
                                                            loop6:
                                                            while(true)
                                                            {
                                                               §§push(_loc5_);
                                                               loop25:
                                                               while(true)
                                                               {
                                                                  §§push(this.§ use§);
                                                                  if(!_loc7_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + _loc4_);
                                                                     }
                                                                     addr210:
                                                                  }
                                                                  loop15:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc7_ && this))
                                                                     {
                                                                        if(§§pop() > §§pop())
                                                                        {
                                                                           loop8:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§5!>§);
                                                                              if(!_loc7_)
                                                                              {
                                                                                 §§pop().step(this);
                                                                                 loop9:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this);
                                                                                    §§push(this.§ use§);
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       §§push(§§pop() + _loc4_);
                                                                                    }
                                                                                    §§pop().§ use§ = §§pop();
                                                                                    addr165:
                                                                                    addr71:
                                                                                    addr74:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc7_ && this)
                                                                                       {
                                                                                          continue loop9;
                                                                                       }
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       loop2:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             loop3:
                                                                                             while(true)
                                                                                             {
                                                                                                this.§>!&§(_loc4_,false,param2,param3);
                                                                                                addr234:
                                                                                                addr256:
                                                                                                while(true)
                                                                                                {
                                                                                                   continue loop26;
                                                                                                }
                                                                                                addr256:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop() > §§pop())
                                                                                                   {
                                                                                                      break loop3;
                                                                                                   }
                                                                                                   continue loop3;
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§5!>§);
                                                                                             }
                                                                                             addr257:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr257);
                                                                                          }
                                                                                          addr259:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().step(this);
                                                                                             addr261:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this);
                                                                                                §§push(this.§ use§);
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   §§push(§§pop() + _loc4_);
                                                                                                }
                                                                                                §§pop().§ use§ = §§pop();
                                                                                                continue loop2;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§push(this.§#5§);
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc6_ || param3))
                                                                                       {
                                                                                          continue loop16;
                                                                                       }
                                                                                       §§push(_loc5_);
                                                                                       if(_loc7_ && param2)
                                                                                       {
                                                                                          continue loop15;
                                                                                       }
                                                                                       if(_loc7_ && param3)
                                                                                       {
                                                                                          continue loop12;
                                                                                       }
                                                                                       if(§§pop() < §§pop())
                                                                                       {
                                                                                          if(!(_loc7_ && param2))
                                                                                          {
                                                                                             if(_loc6_ || param2)
                                                                                             {
                                                                                                §§push(this);
                                                                                                §§push(_loc5_);
                                                                                                if(_loc6_ || this)
                                                                                                {
                                                                                                   §§push(§§pop() - this.§#5§);
                                                                                                }
                                                                                                §§pop().§>!&§(§§pop(),true,param2,param3);
                                                                                                addr127:
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   if(_loc7_ && param2)
                                                                                                   {
                                                                                                      continue loop8;
                                                                                                   }
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      continue loop6;
                                                                                                   }
                                                                                                   if(!(_loc7_ && param3))
                                                                                                   {
                                                                                                      addr56:
                                                                                                      §§push(param1);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc6_ || param1))
                                                                                                         {
                                                                                                            continue loop25;
                                                                                                         }
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         addr252:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc4_);
                                                                                                            addr253:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               addr254:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr256);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      return §§pop();
                                                                                                      addr58:
                                                                                                   }
                                                                                                   §§goto(addr234);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr165);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr261);
                                                                                          }
                                                                                          §§goto(addr127);
                                                                                       }
                                                                                       §§goto(addr56);
                                                                                       §§goto(addr71);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr259);
                                                                           }
                                                                        }
                                                                        §§goto(addr71);
                                                                     }
                                                                     §§goto(addr256);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(this.§#5§);
                                                         }
                                                         §§goto(addr252);
                                                      }
                                                      §§goto(addr253);
                                                   }
                                                }
                                                addr201:
                                             }
                                             §§goto(addr210);
                                          }
                                          §§goto(addr254);
                                       }
                                       §§goto(addr201);
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 addr324:
                              }
                              while(true)
                              {
                                 param1 = §§pop();
                                 §§goto(addr326);
                              }
                           }
                           §§goto(addr298);
                        }
                     }
                     §§goto(addr324);
                  }
               }
               else
               {
                  §§push(this.§>!&§(_loc4_,true,param2,param3));
                  if(!_loc7_)
                  {
                     if(!(_loc7_ && param3))
                     {
                        return §§pop();
                     }
                     §§goto(addr74);
                  }
               }
               §§goto(addr58);
            }
            §§goto(addr303);
         }
         §§goto(addr31);
      }
      
      private function §[!"§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Number = NaN;
         var _loc4_:* = NaN;
         if(!_loc5_)
         {
            this.§4a§.update(param1);
         }
         loop0:
         while(true)
         {
            this.§[!&§.§<!@§(param1,param2);
            loop1:
            while(true)
            {
               this.§`!0§();
               loop2:
               while(true)
               {
                  §§push(this.§2n§);
                  loop3:
                  while(true)
                  {
                     §§push(§!j§.§?M§);
                     addr258:
                     while(true)
                     {
                        if(§§pop() >= §§pop())
                        {
                           §§push(this.§%!X§);
                           if(!(_loc5_ && this))
                           {
                              if(_loc6_)
                              {
                                 if(§§pop())
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       if(!(_loc5_ && param2))
                                       {
                                          if(!(_loc5_ && param2))
                                          {
                                             §§push(this.§%!X§);
                                             while(true)
                                             {
                                                if(_loc6_ || param1)
                                                {
                                                   §§pop().visible = false;
                                                   loop24:
                                                   while(true)
                                                   {
                                                      addr85:
                                                      loop10:
                                                      while(true)
                                                      {
                                                         §§push(this.§8!-§);
                                                         if(_loc6_ || param2)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               loop11:
                                                               while(true)
                                                               {
                                                                  if(_loc6_ || param1)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(this.§8!-§);
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop().§`X§(this.§]!M§,param1))
                                                                        {
                                                                           loop20:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 this.§^7§();
                                                                                 loop21:
                                                                                 while(true)
                                                                                 {
                                                                                    addr75:
                                                                                    addr51:
                                                                                    while(true)
                                                                                    {
                                                                                       this.§]!M§.§]!S§(param1);
                                                                                       loop13:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                this.mLevelEngine.§2!@§();
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      if(_loc5_ && _loc3_)
                                                                                                      {
                                                                                                         break loop20;
                                                                                                      }
                                                                                                      continue;
                                                                                                   }
                                                                                                   continue loop20;
                                                                                                }
                                                                                                continue loop20;
                                                                                             }
                                                                                             loop15:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(-Math.abs(this.§2n§ - _loc3_));
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   if(_loc6_ || this)
                                                                                                   {
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr241:
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      addr243:
                                                                                                      _loc4_ = §§pop();
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§%!X§);
                                                                                                         addr171:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§%!X§);
                                                                                                                  addr174:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop().alpha = _loc4_;
                                                                                                                     break loop13;
                                                                                                                  }
                                                                                                                  continue loop11;
                                                                                                               }
                                                                                                               addr172:
                                                                                                            }
                                                                                                            addr117:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               continue loop10;
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr243);
                                                                                                      }
                                                                                                      addr244:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() / 2);
                                                                                                      }
                                                                                                      addr248:
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   continue loop15;
                                                                                                }
                                                                                             }
                                                                                             continue loop3;
                                                                                          }
                                                                                          continue loop5;
                                                                                       }
                                                                                       addr176:
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr117);
                                                                                       }
                                                                                       continue loop21;
                                                                                    }
                                                                                    if(!(_loc5_ && param1))
                                                                                    {
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          return;
                                                                                       }
                                                                                       continue loop2;
                                                                                    }
                                                                                    continue loop24;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this);
                                                                                    §§push(this.§2n§);
                                                                                    if(!(_loc5_ && _loc3_))
                                                                                    {
                                                                                       §§push(§§pop() + param1);
                                                                                    }
                                                                                    §§pop().§2n§ = §§pop();
                                                                                    break loop20;
                                                                                 }
                                                                                 addr259:
                                                                              }
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                        §§goto(addr75);
                                                                     }
                                                                  }
                                                                  §§goto(addr172);
                                                               }
                                                               continue loop0;
                                                            }
                                                            §§goto(addr75);
                                                         }
                                                         §§goto(addr107);
                                                      }
                                                      continue loop1;
                                                   }
                                                }
                                                §§goto(addr171);
                                             }
                                             addr158:
                                          }
                                          §§goto(addr244);
                                       }
                                       §§goto(addr176);
                                    }
                                 }
                                 §§goto(addr85);
                              }
                              §§goto(addr174);
                           }
                           §§goto(addr158);
                        }
                        §§goto(addr259);
                     }
                  }
               }
            }
         }
      }
      
      public function §7!;§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.objects);
            loop0:
            while(true)
            {
               §§push(param1);
               addr83:
               while(true)
               {
                  §§push(1000);
                  addr84:
                  while(true)
                  {
                     §§push(§§pop() * §§pop());
                     addr85:
                     while(true)
                     {
                        §§pop().§2l§(§§pop());
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      public function §`!0§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§+0§ = null;
         if(!(_loc5_ && _loc3_))
         {
            §§push(this.§#5§);
            §§push(this.§=m§);
            if(_loc4_)
            {
               §§push(§§pop() + 1000 / 30);
            }
            if(§§pop() > §§pop())
            {
               if(!_loc5_)
               {
                  if(this.§ s§ != null)
                  {
                     §§goto(addr53);
                  }
                  this.§=m§ = this.§#5§;
               }
            }
            §§goto(addr53);
         }
         addr53:
         for each(_loc1_ in this.§ s§)
         {
            if(!_loc5_)
            {
               _loc1_.addTrail();
            }
         }
         if(_loc5_)
         {
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§+0§ = null;
         if(_loc4_ || this)
         {
            §§push(this);
            §§push(this.mPigsAnimationTimer1);
            if(_loc4_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().mPigsAnimationTimer1 = §§pop();
            if(_loc4_ || _loc3_)
            {
               §§push(this.mPigsAnimationTimer1);
               if(!(_loc3_ && param1))
               {
                  §§push(0);
                  if(!(_loc3_ && _loc3_))
                  {
                     if(§§pop() <= §§pop())
                     {
                        if(!(_loc3_ && param1))
                        {
                           §§push(this.§[!&§);
                           if(!(_loc3_ && this))
                           {
                              §§push(true);
                              if(_loc4_ || param1)
                              {
                                 §§push(§§pop().isPigsAlive(§§pop()));
                                 if(!_loc3_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc4_ || _loc3_)
                                       {
                                          §§push(this.§[!&§);
                                          if(_loc4_ || this)
                                          {
                                             addr104:
                                             §§push(true);
                                             if(!_loc3_)
                                             {
                                                §§push(§§pop().§+l§(§§pop()));
                                                if(_loc4_)
                                                {
                                                   _loc2_ = §§pop();
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      _loc2_.§2P§.mTryToScream = §0q§.§<!6§;
                                                      if(_loc4_ || param1)
                                                      {
                                                      }
                                                      addr159:
                                                      §§push(this);
                                                      §§push(this.mPigsAnimationTimer2);
                                                      if(!_loc3_)
                                                      {
                                                         §§push(§§pop() - param1);
                                                      }
                                                      §§pop().mPigsAnimationTimer2 = §§pop();
                                                      if(!_loc3_)
                                                      {
                                                         addr172:
                                                         if(this.mPigsAnimationTimer2 <= 0)
                                                         {
                                                            if(_loc4_ || _loc3_)
                                                            {
                                                               addr180:
                                                               §§push(this.§[!&§);
                                                               if(_loc4_ || param1)
                                                               {
                                                                  addr189:
                                                                  §§push(true);
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§goto(addr247);
                                                                  }
                                                                  addr198:
                                                                  _loc2_ = §§pop().§+l§(§§pop());
                                                                  if(_loc4_)
                                                                  {
                                                                     _loc2_.§2P§.mTryToBlink = §0q§.§?r§;
                                                                     if(_loc4_ || _loc2_)
                                                                     {
                                                                     }
                                                                     §§goto(addr247);
                                                                  }
                                                                  §§push(this);
                                                                  §§push(250 + Math.random() * 500);
                                                                  if(_loc4_ || _loc2_)
                                                                  {
                                                                     §§push(§§pop() + 2000 / (3 + this.§[!&§.§%!-§()));
                                                                  }
                                                                  §§pop().mPigsAnimationTimer2 = §§pop();
                                                                  §§goto(addr247);
                                                               }
                                                            }
                                                            §§goto(addr196);
                                                         }
                                                         §§goto(addr247);
                                                      }
                                                      §§goto(addr196);
                                                   }
                                                   §§push(this);
                                                   §§push(500 + Math.random() * 1000);
                                                   if(_loc4_)
                                                   {
                                                      §§push(§§pop() + 4000 / (3 + this.§[!&§.§%!-§()));
                                                   }
                                                   §§pop().mPigsAnimationTimer1 = §§pop();
                                                   §§goto(addr159);
                                                }
                                                §§goto(addr198);
                                             }
                                             §§goto(addr247);
                                          }
                                          §§goto(addr189);
                                       }
                                       §§goto(addr196);
                                    }
                                    §§goto(addr159);
                                 }
                                 §§goto(addr247);
                              }
                              addr247:
                              if(§§pop().isPigsAlive(§§pop()))
                              {
                                 addr196:
                                 §§push(this.§[!&§);
                                 §§push(true);
                              }
                              return;
                           }
                           §§goto(addr104);
                        }
                        §§goto(addr196);
                     }
                     §§goto(addr159);
                  }
               }
               §§goto(addr172);
            }
            §§goto(addr180);
         }
         §§goto(addr172);
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && this))
         {
            §§push(param6);
            if(_loc8_ || this)
            {
               §§push(-9999);
               loop0:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     if(!(_loc7_ && param1))
                     {
                        §§push(§7o§.§?2§);
                        if(!_loc7_)
                        {
                           while(true)
                           {
                              §§push(int(§§pop()));
                           }
                           addr170:
                        }
                        loop1:
                        while(true)
                        {
                           param6 = §§pop();
                           addr126:
                           addr172:
                           while(true)
                           {
                              §§push(param1);
                              if(_loc8_)
                              {
                                 continue loop0;
                              }
                              continue loop1;
                           }
                           loop2:
                           while(true)
                           {
                              addr133:
                              while(true)
                              {
                                 §7@§.addScore(param1,param2);
                                 loop4:
                                 while(true)
                                 {
                                    this.§#!>§.addScore(param1);
                                    loop5:
                                    while(true)
                                    {
                                       §§push(param3);
                                       addr122:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          loop7:
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
                                                      if(_loc7_)
                                                      {
                                                         break;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         loop11:
                                                         while(_loc8_ || param3)
                                                         {
                                                            §§pop();
                                                            continue loop4;
                                                            while(true)
                                                            {
                                                               §§push(this.§[4§);
                                                               if(!_loc7_)
                                                               {
                                                                  §§push(!§§pop());
                                                               }
                                                               if(!(_loc8_ || param1))
                                                               {
                                                                  continue loop11;
                                                               }
                                                               if(_loc8_)
                                                               {
                                                                  while(§§pop())
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        if(!_loc8_)
                                                                        {
                                                                           continue loop5;
                                                                        }
                                                                        this.§`,§(param1.toString(),param4,param5,800,param6,0,0);
                                                                     }
                                                                     if(_loc7_)
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     if(!_loc7_)
                                                                     {
                                                                        if(!(_loc7_ && param2))
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop2;
                                                                     }
                                                                     §§goto(addr126);
                                                                  }
                                                                  return;
                                                                  addr44:
                                                               }
                                                               §§goto(addr125);
                                                               §§goto(addr126);
                                                            }
                                                         }
                                                         continue loop7;
                                                         addr104:
                                                      }
                                                      §§goto(addr44);
                                                   }
                                                   continue;
                                                   addr99:
                                                }
                                                while(true)
                                                {
                                                   §§pop();
                                                }
                                                addr125:
                                                §§goto(addr126);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr172);
                  }
                  §§goto(addr133);
               }
            }
            §§goto(addr170);
         }
         §§goto(addr119);
      }
      
      public function §`,§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
         {
            §§push(param5);
            if(_loc9_)
            {
               if(§§pop() == -9999)
               {
                  if(_loc9_)
                  {
                     addr61:
                     §§push(§7o§.§<!M§);
                     if(_loc9_ || this)
                     {
                        addr80:
                        §§push(int(§§pop()));
                     }
                     param5 = §§pop();
                  }
                  while(true)
                  {
                     §§goto(addr24);
                  }
               }
               addr24:
               while(true)
               {
                  this.§+!Z§.addParticle(§7o§.§>!#§,§<2§.§<X§,§7o§.§%!C§,param2,param3,param4,param1,param5,param6,param7);
                  if(_loc9_)
                  {
                     break;
                  }
                  continue loop0;
               }
               return;
            }
            §§goto(addr80);
         }
         §§goto(addr61);
      }
      
      public function §7$§(param1:§+0§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this.§ s§);
            while(true)
            {
               if(§§pop() == null)
               {
                  while(true)
                  {
                     this.§ s§ = new Array();
                     addr69:
                     while(true)
                     {
                     }
                  }
                  addr65:
               }
               while(true)
               {
                  §§push(this.§ s§);
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§pop().push(param1);
                  if(!_loc2_)
                  {
                     if(!_loc2_)
                     {
                        return;
                        addr50:
                     }
                     §§goto(addr65);
                  }
                  §§goto(addr69);
               }
            }
         }
         §§goto(addr50);
      }
      
      public function §9K§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§3V§.§9K§();
            while(true)
            {
               this.§[!&§.§0!Q§();
               loop1:
               while(_loc2_ || _loc2_)
               {
                  while(true)
                  {
                     this.§[4§ = true;
                     if(!_loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr67);
      }
      
      public function §-M§(param1:§+0§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§+!Z§.§-!9§(§<2§.§`!J§);
            loop0:
            while(true)
            {
               §§push(this.§ s§);
               if(_loc2_ || _loc3_)
               {
                  if(§§pop().indexOf(param1) >= 0)
                  {
                     if(!_loc3_)
                     {
                        §§push(this.§ s§);
                        while(true)
                        {
                           §§pop().splice(this.§ s§.indexOf(param1),1);
                        }
                        addr74:
                     }
                     while(true)
                     {
                     }
                     addr90:
                  }
                  while(true)
                  {
                     §§push(this.§ s§);
                     if(!_loc3_)
                     {
                        if(§§pop().length != 0)
                        {
                           break;
                        }
                        if(_loc2_)
                        {
                           if(!_loc3_)
                           {
                              this.§ s§ = null;
                              continue loop0;
                           }
                           continue;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr19);
               }
               §§goto(addr74);
            }
         }
         addr19:
      }
      
      public function §7_§(param1:§9k§, param2:Number, param3:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || param3)
         {
            this.§"!Z§ = this.§[!&§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
            if(!_loc8_)
            {
               if(param1.name.toUpperCase() == "BIRD_GREEN")
               {
                  addr47:
                  §§push(§#K§.§ true§);
                  if(!_loc8_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc8_ && param1)
                     {
                     }
                  }
                  addr77:
                  §§push(Number(§§pop()));
               }
               else
               {
                  §§push(§#K§.§3u§);
                  if(_loc7_ || param2)
                  {
                     §§push(Number(§§pop()));
                     if(_loc7_ || this)
                     {
                        §§goto(addr77);
                     }
                  }
               }
               var _loc4_:* = §§pop();
               if(!_loc8_)
               {
                  §§push(param1.§3x§);
                  loop0:
                  while(true)
                  {
                     §§push(1);
                     loop1:
                     while(true)
                     {
                        if(§§pop() > §§pop())
                        {
                           loop2:
                           while(true)
                           {
                              §§push(this.§"!Z§);
                              loop3:
                              while(true)
                              {
                                 §§pop().§8!Z§(param1.§3x§);
                                 addr183:
                                 while(true)
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       §§push(this.§"!Z§);
                                       if(_loc8_ && param1)
                                       {
                                          break;
                                          addr166:
                                       }
                                       §§pop().§2P§.§2!>§();
                                       loop6:
                                       while(!(_loc8_ && param1))
                                       {
                                          while(true)
                                          {
                                             if(_loc8_ && param2)
                                             {
                                                continue loop6;
                                             }
                                             if(false)
                                             {
                                                continue loop5;
                                             }
                                             addr184:
                                             §§push(_loc4_);
                                             if(!(_loc8_ && param1))
                                             {
                                                addr192:
                                                §§push(-§§pop());
                                                if(!(_loc8_ && param1))
                                                {
                                                   addr200:
                                                   §§push(§§pop() * param2);
                                                   if(!_loc7_)
                                                   {
                                                   }
                                                   addr216:
                                                   var _loc5_:Number = §§pop();
                                                   addr215:
                                                   §§push(_loc4_);
                                                   if(!(_loc8_ && param2))
                                                   {
                                                      §§push(§§pop() * param2);
                                                      if(_loc7_)
                                                      {
                                                         §§push(§§pop() * Math.sin(param3 / (180 / Math.PI)));
                                                         if(!_loc7_)
                                                         {
                                                         }
                                                         addr241:
                                                         var _loc6_:* = §§pop();
                                                         if(!_loc8_)
                                                         {
                                                            this.§"!Z§.§`o§(new b2Vec2(_loc5_,_loc6_),false,true);
                                                         }
                                                         loop10:
                                                         while(true)
                                                         {
                                                            this.camera.§-a§(§<I§.§0!'§);
                                                            while(true)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  §§push(this.§;_§);
                                                                  if(!(_loc8_ && this))
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(!(_loc8_ && param1))
                                                                        {
                                                                           if(!_loc8_)
                                                                           {
                                                                              §§push(this.§;_§);
                                                                              break;
                                                                           }
                                                                           continue;
                                                                        }
                                                                        addr281:
                                                                     }
                                                                     return;
                                                                  }
                                                                  break;
                                                               }
                                                               continue loop10;
                                                            }
                                                            §§pop().§7_§(this.mLevelEngine.currentStep,param1.x,param1.y,param2,param3);
                                                            §§goto(addr281);
                                                         }
                                                      }
                                                      §§push(Number(§§pop()));
                                                   }
                                                   §§goto(addr241);
                                                }
                                                §§push(§§pop() * Math.cos(param3 / (180 / Math.PI)));
                                                if(_loc7_)
                                                {
                                                   §§goto(addr215);
                                                }
                                             }
                                             §§goto(addr216);
                                          }
                                       }
                                       continue loop2;
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                        }
                        loop7:
                        while(true)
                        {
                           §§push(param1.§2v§);
                           if(!(_loc8_ && param3))
                           {
                              §§push(0);
                              if(!_loc7_)
                              {
                                 continue loop1;
                              }
                              if(§§pop() != §§pop())
                              {
                                 if(!(_loc8_ && param2))
                                 {
                                    if(_loc7_ || this)
                                    {
                                       while(true)
                                       {
                                          §§push(param1.§2v§);
                                          if(_loc8_ && param1)
                                          {
                                             break;
                                          }
                                          §§push(Number(§§pop()));
                                          if(_loc8_ && param2)
                                          {
                                             break loop7;
                                          }
                                          continue loop0;
                                       }
                                       §§goto(addr200);
                                       addr110:
                                    }
                                    else
                                    {
                                       §§goto(addr183);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr135);
                                 }
                                 §§goto(addr166);
                              }
                              §§goto(addr184);
                           }
                           break;
                        }
                        §§goto(addr192);
                     }
                  }
               }
               §§goto(addr110);
            }
         }
         §§goto(addr47);
      }
      
      public function activatePowerup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§;1§ = true;
         }
      }
      
      private function § set§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§;1§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     break;
                  }
                  while(true)
                  {
                     addr57:
                     if(_loc1_ || _loc2_)
                     {
                        addr66:
                        this.§;_§.§99§(this.mLevelEngine.currentStep);
                        if(_loc2_ && this)
                        {
                           loop9:
                           while(true)
                           {
                              loop10:
                              while(true)
                              {
                                 loop11:
                                 while(true)
                                 {
                                    §§push(this.§;_§);
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       if(!§§pop())
                                       {
                                          §§goto(addr19);
                                       }
                                       if(_loc2_ && _loc2_)
                                       {
                                          continue loop9;
                                       }
                                       if(!_loc1_)
                                       {
                                          continue;
                                       }
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          if(_loc1_ || _loc1_)
                                          {
                                             §§goto(addr57);
                                          }
                                          else
                                          {
                                             loop7:
                                             while(true)
                                             {
                                                if(_loc1_)
                                                {
                                                   §§push(this.activeObject);
                                                   if(_loc1_ || this)
                                                   {
                                                      §§push((§§pop() as §4!9§).§;J§);
                                                      if(!(_loc2_ && this))
                                                      {
                                                         §§push(!§§pop());
                                                         if(!(_loc2_ && _loc1_))
                                                         {
                                                            addr123:
                                                            if(!(_loc2_ && this))
                                                            {
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     this.§[!&§.§&e§();
                                                                     continue loop11;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(this.activeObject);
                                                                     addr134:
                                                                     addr163:
                                                                     while(!(_loc2_ && _loc1_))
                                                                     {
                                                                        addr141:
                                                                        §§push(§§pop().activateSpecialPower(this.§<J§));
                                                                        while(_loc1_ || this)
                                                                        {
                                                                           if(!_loc1_)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           if(!§§pop())
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                           if(_loc2_)
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              this.§+"§ = true;
                                                                              continue loop10;
                                                                           }
                                                                           §§goto(addr141);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           continue loop7;
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() is §4!9§);
                                                                        break loop7;
                                                                        §§goto(addr134);
                                                                     }
                                                                  }
                                                               }
                                                               addr130:
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr144);
                                                      }
                                                      §§goto(addr123);
                                                   }
                                                   §§goto(addr134);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                   }
                                                   addr175:
                                                }
                                                §§goto(addr163);
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   §§goto(addr167);
                                                }
                                                §§goto(addr130);
                                             }
                                          }
                                       }
                                       §§goto(addr132);
                                    }
                                    break;
                                 }
                                 §§goto(addr66);
                              }
                           }
                        }
                     }
                     continue;
                     addr19:
                     return;
                  }
               }
               while(true)
               {
                  this.§;1§ = false;
                  §§goto(addr175);
               }
            }
            return;
         }
         §§goto(addr156);
      }
      
      public function §>B§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§[!&§.§>B§();
         }
      }
      
      public function §;`§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§[!&§.§<v§();
         }
      }
      
      public function §"d§() : §&!]§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§&!]§ = new §&!]§();
         if(_loc3_)
         {
            _loc1_.§7z§ = this.§6!Q§.§7z§;
            loop0:
            while(true)
            {
               _loc1_.§;!L§ = this.§6!Q§.§;!L§;
               addr105:
               while(true)
               {
                  this.§]!M§.§0§(_loc1_);
                  while(true)
                  {
                     this.§[!&§.§%!B§(_loc1_);
                     continue loop0;
                     addr44:
                     if(_loc3_ || _loc1_)
                     {
                        return _loc1_;
                        addr61:
                     }
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      public function §8F§() : int
      {
         return this.§6!Q§.§;!L§;
      }
      
      public function §'P§() : int
      {
         return this.§6!Q§.§7z§;
      }
      
      public function §>,§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§6!Q§.§;!L§ = param1;
         }
      }
      
      public function §^I§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§6!Q§.§7z§ = param1;
         }
      }
      
      public function §`D§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            §§push(this.§0!^§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     addr78:
                     this.§0!^§.§try§(param1,param2);
                     addr81:
                     while(true)
                     {
                     }
                     addr81:
                  }
                  §§goto(addr81);
               }
               while(true)
               {
                  §§push(this.§]!M§);
                  if(!_loc3_)
                  {
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           if(!(_loc3_ && param1))
                           {
                              §§push(this.§]!M§);
                              break;
                           }
                           continue;
                        }
                        addr58:
                     }
                     return;
                  }
                  break;
               }
               §§pop().§]!S§(0);
               §§goto(addr58);
            }
         }
         §§goto(addr78);
      }
      
      public function get §;&§() : §&!]§
      {
         return this.§6!Q§;
      }
      
      public function get §<J§() : §6M§
      {
         return this.§[!&§;
      }
      
      protected function get §#!J§() : §9!'§
      {
         return this.§,a§;
      }
      
      public function get §"w§() : int
      {
         return §4!A§;
      }
   }
}
