package §,§
{
   import § g§.§;!N§;
   import §!V§.§!!i§;
   import §&!8§.§%$§;
   import §&!8§.§+!6§;
   import §&!8§.§[g§;
   import §&!8§.§]V§;
   import §&<§.§<g§;
   import §+!9§.§1!3§;
   import §+!9§.§6!N§;
   import §+6§.§7i§;
   import §,!K§.§[V§;
   import §1!4§.§7!?§;
   import §1!4§.§do§;
   import §6!H§.b2Vec2;
   import §6;§.§%[§;
   import §9t§.§&!W§;
   import §9t§.§5t§;
   import §9t§.§=!>§;
   import §;A§.§]!A§;
   import §<a§.§2!P§;
   import §>^§.§!6§;
   import §^a§.DisplayObject;
   import §^a§.Sprite;
   import §`![§.§!!K§;
   import §`![§.§-!N§;
   import §`![§.§5!b§;
   import §`![§.§@;§;
   import §`h§.§@!Z§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class § p§
   {
      
      private static const §'!1§:int = 20;
      
      public static const §=j§:Number;
      
      public static const §3!G§:Number;
      
      public static const §]!E§:Number = 0.05;
      
      public static const §[!,§:Number;
      
      public static const §78§:Number;
      
      public static const §5k§:§!!i§;
      
      public static var §=d§:Number = 1;
      
      protected static var §9!?§:String = "BACKGROUND_BLUE_GRASS";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §'!1§ = 20;
            loop0:
            while(true)
            {
               §=j§ = §@!Z§.§?!L§;
               while(true)
               {
                  §3!G§ = §@!Z§.§"r§;
                  addr124:
                  while(true)
                  {
                     §]!E§ = 1 / 20;
                     while(true)
                     {
                        §[!,§ = §@!Z§.§"r§ * §]!E§;
                        while(_loc2_)
                        {
                           §§push(§§findproperty(§78§));
                           §§push(§=j§);
                           if(!_loc1_)
                           {
                              §§push(§§pop() * §]!E§);
                           }
                           §§pop().§78§ = §§pop();
                           while(_loc2_ || _loc1_)
                           {
                              continue loop0;
                           }
                        }
                     }
                  }
                  addr50:
                  if(!(_loc2_ || § p§))
                  {
                     continue;
                  }
                  §9!?§ = §!!K§.§,]§;
                  addr57:
                  if(!(_loc2_ || § p§))
                  {
                     while(!(_loc1_ && _loc2_))
                     {
                        §§goto(addr50);
                        §§goto(addr57);
                     }
                     loop6:
                     while(_loc2_)
                     {
                        while(true)
                        {
                           §=d§ = 1;
                           §§goto(addr43);
                           continue loop6;
                        }
                        return;
                     }
                     addr43:
                     §§goto(addr87);
                     addr76:
                  }
                  if(!_loc1_)
                  {
                     §§goto(addr38);
                  }
                  else
                  {
                     §§goto(addr124);
                  }
               }
            }
         }
         §§goto(addr78);
      }
      
      protected var §-D§:§+!6§;
      
      private var §,T§:§[g§;
      
      private var §@P§:Array = null;
      
      protected var §"I§:§<g§;
      
      public var mLevelEngine:§!f§;
      
      protected var §'!7§:§?s§;
      
      protected var §1!Z§:§[V§;
      
      protected var §4M§:§7!N§;
      
      protected var §^6§:§do§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §?T§:Boolean = false;
      
      protected var §;!K§:Boolean = false;
      
      protected var §;!g§:Boolean = false;
      
      public var §[!4§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §4j§:Number;
      
      public var §5!H§:Number;
      
      private var §<I§:Number;
      
      public var §82§:§-!N§;
      
      public var §;$§:Boolean = false;
      
      private var §>!6§:§1!D§;
      
      private var §0!C§:Sprite;
      
      protected var §3!h§:§!!K§;
      
      protected var §%!N§:§;!N§ = null;
      
      private var §`!#§:EventDispatcher;
      
      private var § !f§:Array;
      
      private var §'!L§:Array;
      
      protected var §+7§:§%[§;
      
      private var §+K§:§7i§;
      
      protected var §>!K§:§=!>§;
      
      protected var §^H§:§&!W§;
      
      private var §6g§:§5t§;
      
      private var §"!D§:§5t§;
      
      private var §1]§:§5t§;
      
      private var §!H§:Stage;
      
      private var §<9§:§@!%§;
      
      protected var §96§:§2!P§;
      
      protected var §@D§:§2!P§;
      
      protected var §`!e§:Number = 0.0;
      
      protected var §1N§:String;
      
      private var §&!§:Boolean;
      
      protected var §!!M§:Boolean;
      
      protected var §0v§:uint = 1.417339207E9;
      
      public var §;!3§:Boolean;
      
      public function § p§(param1:Stage)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§'!L§ = [];
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§`!#§ = new EventDispatcher();
                  while(true)
                  {
                     this.§82§ = new §-!N§();
                     addr111:
                     while(true)
                     {
                        this.§!H§ = param1;
                        continue loop1;
                     }
                     addr61:
                     if(!(_loc4_ || this))
                     {
                        continue;
                     }
                     loop8:
                     while(true)
                     {
                        this.§"!D§ = this.§[I§();
                        addr41:
                        addr54:
                        loop9:
                        while(_loc4_ || param1)
                        {
                           while(true)
                           {
                              this.§1]§ = this.§8q§();
                              if(_loc4_)
                              {
                                 addr27:
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                    continue loop8;
                                 }
                                 continue loop1;
                              }
                              continue loop9;
                           }
                           var _loc2_:Stage3D = param1.stage3Ds[0];
                           if(_loc4_)
                           {
                              this.§+7§ = new §%[§(§1!D§,param1,new Rectangle(0,0,§@!Z§.§?!L§,§@!Z§.§"r§),_loc2_);
                              loop11:
                              while(true)
                              {
                                 §@!Z§.§^Y§.addEventListener(Event.ENTER_FRAME,this.§+7§.§,,§);
                                 loop12:
                                 while(true)
                                 {
                                    _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§&!S§,false,0,true);
                                    while(true)
                                    {
                                       §§push(this.§+7§);
                                       addr212:
                                       while(true)
                                       {
                                          §§push(false);
                                          addr213:
                                          while(true)
                                          {
                                             §§pop().§^F§ = §§pop();
                                             continue loop12;
                                          }
                                       }
                                       while(!(_loc3_ && _loc3_))
                                       {
                                          continue loop11;
                                          loop21:
                                          while(!(_loc3_ && param1))
                                          {
                                             addr181:
                                             §§push(this.§+7§);
                                             if(!_loc3_)
                                             {
                                                addr154:
                                                if(_loc4_ || param1)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      §§pop().§ !a§();
                                                      if(!_loc3_)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            return;
                                                            addr168:
                                                         }
                                                         continue loop12;
                                                      }
                                                      continue;
                                                   }
                                                   §§goto(addr212);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(false);
                                                      if(_loc4_ || this)
                                                      {
                                                         §§pop().enableErrorChecking = §§pop();
                                                         break loop21;
                                                      }
                                                      break;
                                                      §§goto(addr154);
                                                   }
                                                   addr185:
                                                }
                                                §§goto(addr213);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§pop().§&G§ = 2;
                                                   continue loop21;
                                                   §§goto(addr181);
                                                }
                                                addr172:
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              §§goto(addr172);
                           }
                           §§goto(addr168);
                        }
                        addr76:
                        for(; _loc4_ || _loc2_; §§goto(addr54))
                        {
                           if(!_loc3_)
                           {
                              this.§6g§ = this.§2%§();
                              continue;
                           }
                           §§goto(addr111);
                        }
                        addr91:
                        while(_loc4_ || _loc3_)
                        {
                           §§goto(addr61);
                           §§goto(addr41);
                        }
                        while(true)
                        {
                           this.§^H§ = this.initAnimationManager(this.§>!K§);
                           §§goto(addr76);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr48);
      }
      
      public static function §`8§(param1:§[g§, param2:§[g§) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1.§,!b§);
         if(!(_loc5_ && § p§))
         {
            §§push(§§pop() - param2.§,!b§);
            if(_loc6_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(param1.§-I§);
         if(_loc6_)
         {
            §§push(§§pop() - param2.§-I§);
            if(_loc6_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         return §=w§(_loc3_,_loc4_);
      }
      
      public static function §=w§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§0!C§);
            while(true)
            {
               §§push(!§§pop());
               if(!(_loc1_ && _loc2_))
               {
                  if(§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§pop();
                        addr94:
                        while(true)
                        {
                           §§push(Boolean(this.§&!-§));
                           if(_loc2_ || _loc1_)
                           {
                              break;
                           }
                           continue loop3;
                        }
                     }
                     addr93:
                  }
                  loop1:
                  for(; §§pop(); §§goto(addr94))
                  {
                     if(!_loc1_)
                     {
                        this.§0!C§ = this.§>!6§.§%P§;
                     }
                     if(!(_loc2_ || _loc2_))
                     {
                        continue;
                     }
                     while(true)
                     {
                        break loop1;
                     }
                  }
                  continue;
               }
               §§goto(addr93);
            }
            return §§pop();
         }
         §§goto(addr70);
      }
      
      public function get §&!-§() : Sprite
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§>!6§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     while(true)
                     {
                        this.§>!6§ = this.§+7§.§-h§ as §1!D§;
                     }
                     addr68:
                  }
                  while(true)
                  {
                     §§push(this.§>!6§);
                     addr46:
                     while(true)
                     {
                        if(_loc2_)
                        {
                           §§pop().§;o§ = false;
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
               while(true)
               {
                  §§push(this.§>!6§);
                  if(!_loc1_)
                  {
                     break;
                  }
                  §§goto(addr46);
               }
               return §§pop();
            }
         }
         §§goto(addr68);
      }
      
      private function get §,%§() : DisplayObject
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§&!-§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc1_)
                  {
                     §§push(this.§&!-§);
                  }
                  else
                  {
                     §§goto(addr67);
                  }
               }
               §§goto(addr67);
            }
            return (§§pop() as §1!D§).§,%§;
         }
         addr67:
         return null;
      }
      
      public function get §#U§() : §&!W§
      {
         return this.§^H§;
      }
      
      public function get §],§() : §=!>§
      {
         return this.§>!K§;
      }
      
      public function get camera() : §[V§
      {
         return this.§1!Z§;
      }
      
      public function get objects() : §+!6§
      {
         return this.§-D§;
      }
      
      public function get particles() : §do§
      {
         return this.§^6§;
      }
      
      public function get background() : §<g§
      {
         return this.§"I§;
      }
      
      public function get slingshot() : §7!N§
      {
         return this.§4M§;
      }
      
      public function get activeObject() : §[g§
      {
         return this.§,T§;
      }
      
      public function get §@2§() : §?s§
      {
         return this.§'!7§;
      }
      
      public function get stage() : Stage
      {
         return this.§!H§;
      }
      
      public function get §>!f§() : §5t§
      {
         return this.§1]§;
      }
      
      protected function get §9!7§() : §5t§
      {
         return this.§6g§;
      }
      
      public function set activeObject(param1:§[g§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§,T§ = param1;
         }
      }
      
      public function set §"$§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§!!M§ = param1;
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§+K§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§+K§);
                     addr249:
                     while(true)
                     {
                        §§pop().dispose();
                        addr250:
                        while(true)
                        {
                        }
                     }
                     addr188:
                     if(!(_loc2_ || _loc2_))
                     {
                        continue;
                     }
                     addr195:
                     loop10:
                     for(; !(_loc1_ && _loc1_); §§goto(addr195))
                     {
                        §§push(§§pop().§],§);
                        loop11:
                        while(true)
                        {
                           §§pop().dispose();
                           addr206:
                           loop30:
                           while(true)
                           {
                              loop15:
                              while(true)
                              {
                                 §§push(this.§1]§);
                                 loop16:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop17:
                                    while(true)
                                    {
                                       if(!(_loc1_ && _loc1_))
                                       {
                                          if(_loc2_ || _loc2_)
                                          {
                                             §§push(§§pop());
                                             if(_loc2_ || _loc2_)
                                             {
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      loop19:
                                                      while(true)
                                                      {
                                                         if(!(_loc1_ && this))
                                                         {
                                                            §§push(this.§1]§);
                                                            if(_loc2_)
                                                            {
                                                               if(!(_loc2_ || _loc1_))
                                                               {
                                                                  continue loop16;
                                                               }
                                                               §§push(§§pop().§],§);
                                                               if(!(_loc1_ && this))
                                                               {
                                                                  continue loop11;
                                                               }
                                                               loop20:
                                                               while(true)
                                                               {
                                                                  if(!_loc1_)
                                                                  {
                                                                     §§pop().dispose();
                                                                     loop21:
                                                                     while(true)
                                                                     {
                                                                        addr24:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§+7§);
                                                                           if(_loc2_ || _loc2_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!(_loc1_ && this))
                                                                                 {
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          §§push(this.§+7§);
                                                                                          break loop21;
                                                                                       }
                                                                                       continue loop19;
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 addr49:
                                                                                 if(_loc1_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc1_ && this)
                                                                                       {
                                                                                          continue loop30;
                                                                                       }
                                                                                       if(!(_loc1_ && _loc1_))
                                                                                       {
                                                                                          §§push(this.§1]§);
                                                                                          continue loop20;
                                                                                       }
                                                                                       addr179:
                                                                                       loop14:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc1_ && _loc2_))
                                                                                          {
                                                                                             if(_loc1_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr188);
                                                                                          }
                                                                                          addr228:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§>!K§);
                                                                                             addr230:
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop().dispose();
                                                                                                addr231:
                                                                                                while(true)
                                                                                                {
                                                                                                   addr207:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§6g§);
                                                                                                      break loop10;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             continue loop14;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr250);
                                                                                    }
                                                                                    addr103:
                                                                                 }
                                                                              }
                                                                              return;
                                                                           }
                                                                           break loop21;
                                                                        }
                                                                     }
                                                                     §§pop().dispose();
                                                                     §§goto(addr49);
                                                                  }
                                                                  addr176:
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     addr177:
                                                                     while(true)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              continue loop15;
                                                                           }
                                                                           §§goto(addr179);
                                                                           addr94:
                                                                           if(!(_loc2_ || _loc2_))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 §§goto(addr24);
                                                                              }
                                                                              §§goto(addr103);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               continue loop30;
                                                               addr130:
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr130);
                                                            }
                                                         }
                                                         addr214:
                                                         while(!_loc1_)
                                                         {
                                                            §§push(this.§6g§);
                                                            if(!_loc2_)
                                                            {
                                                               break loop19;
                                                            }
                                                            §§goto(addr176);
                                                            §§push(§§pop().§],§);
                                                         }
                                                         §§goto(addr231);
                                                      }
                                                      §§push(Boolean(§§pop()));
                                                      addr79:
                                                      continue loop10;
                                                      if(_loc1_ && _loc1_)
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc1_ && _loc2_)
                                                      {
                                                         continue loop17;
                                                      }
                                                      §§goto(addr94);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr101);
                                                }
                                                §§goto(addr24);
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      §§goto(addr214);
                                                   }
                                                   addr213:
                                                }
                                                §§goto(addr177);
                                             }
                                             addr212:
                                          }
                                          break;
                                       }
                                       §§goto(addr213);
                                    }
                                    addr211:
                                    while(true)
                                    {
                                       §§goto(addr212);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§push(this.§6g§);
                     while(true)
                     {
                        §§goto(addr211);
                     }
                  }
               }
               while(true)
               {
                  §§push(this.§>!K§);
                  if(_loc2_ || this)
                  {
                     if(§§pop())
                     {
                        §§goto(addr228);
                     }
                     §§goto(addr207);
                  }
                  §§goto(addr230);
                  §§goto(addr250);
               }
            }
            §§goto(addr249);
         }
         §§goto(addr206);
      }
      
      protected function §2%§() : §5t§
      {
         return null;
      }
      
      protected function §[I§() : §5t§
      {
         return null;
      }
      
      protected function §8q§() : §5t§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§=!>§) : §&!W§
      {
         return new §&!W§(param1);
      }
      
      public function §;!i§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(§%[§.§`1§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     if(param1)
                     {
                        addr93:
                        if(_loc2_ || _loc3_)
                        {
                           §§push(§%[§.§`1§);
                           break;
                        }
                        break loop0;
                     }
                     §§push(§%[§.§`1§);
                     loop2:
                     while(true)
                     {
                        §§pop().stop();
                        addr65:
                        while(_loc2_)
                        {
                           continue loop2;
                        }
                        continue loop1;
                     }
                  }
                  §§pop().start();
                  §§goto(addr93);
               }
               break;
               if(_loc3_ && _loc3_)
               {
                  continue;
               }
               §§pop().color = 0;
               if(_loc3_)
               {
                  §§goto(addr65);
               }
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr93);
            }
            return;
         }
         §§goto(addr67);
      }
      
      public function §%d§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.sprite);
            if(!_loc3_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr54);
            }
            §§pop().visible = param1;
         }
         addr54:
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.sprite);
         }
      }
      
      public function §3!D§() : §;!N§
      {
         return this.§%!N§;
      }
      
      public function §=!2§(param1:§;!N§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§%!N§);
            while(true)
            {
               if(§§pop() != null)
               {
                  while(true)
                  {
                     §§push(this.§%!N§);
                     addr74:
                     while(true)
                     {
                        §§pop().removeEventListeners();
                        addr75:
                        while(true)
                        {
                        }
                     }
                  }
                  addr72:
               }
               addr53:
               while(true)
               {
                  this.§%!N§ = param1;
               }
            }
            addr70:
         }
         for(; this.mReadyToRun; if(!_loc2_)
         {
            continue;
         },if(_loc2_)
         {
            §§push(this.§%!N§);
            if(_loc2_)
            {
               if(!_loc3_)
               {
                  §§pop().addEventListeners();
                  §§goto(addr50);
               }
               else
               {
                  §§goto(addr70);
               }
            }
            §§goto(addr74);
         },§§goto(addr72))
         {
            if(_loc2_)
            {
               continue;
            }
            addr50:
            if(_loc2_)
            {
               break;
            }
            §§goto(addr75);
         }
      }
      
      public function §&;§() : §2!P§
      {
         return this.§96§;
      }
      
      public function §9S§(param1:§7i§, param2:Array, param3:Function) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            this.§+K§ = param1;
         }
         §§push(this.§+K§.§-x§);
         if(!_loc7_)
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
               if(!(_loc7_ && this))
               {
                  if(param3 != null)
                  {
                     if(!(_loc7_ && param3))
                     {
                        addr93:
                        if(_loc7_ && param3)
                        {
                           continue;
                        }
                        this.§`!#§.addEventListener(Event.INIT,param3);
                     }
                     while(true)
                     {
                        this.§'!L§.push(param3);
                        addr71:
                        while(true)
                        {
                        }
                     }
                     addr106:
                  }
                  while(this.§8!_§(param2))
                  {
                     if(!_loc7_)
                     {
                        if(!_loc7_)
                        {
                           if(_loc7_ && this)
                           {
                              _loc5_++;
                              continue loop0;
                              addr129:
                           }
                           this.§5c§();
                        }
                        else
                        {
                           §§goto(addr106);
                        }
                     }
                     if(_loc6_)
                     {
                        break;
                     }
                     §§goto(addr71);
                  }
                  return;
               }
               §§goto(addr93);
            }
            else
            {
               this.§>!K§.§;Y§(this.§+K§.§[j§(_loc5_));
            }
            §§goto(addr129);
         }
      }
      
      private function §8!_§(param1:Array) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:int = 0;
         var _loc3_:* = 0;
         if(!(_loc4_ && _loc2_))
         {
            §§push(this.§>!K§);
            loop0:
            while(true)
            {
               §§push(§§pop().§<h§());
               loop1:
               while(!§§pop())
               {
                  loop2:
                  while(true)
                  {
                     this.§ !f§ = param1.concat();
                     if(!(_loc4_ && this))
                     {
                        if(!(_loc4_ && _loc2_))
                        {
                           if(_loc4_)
                           {
                              loop3:
                              while(true)
                              {
                                 §§push(this.§>!K§);
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    continue loop0;
                                 }
                                 addr183:
                                 while(true)
                                 {
                                    §§push(§§pop().§true§);
                                    addr184:
                                    while(true)
                                    {
                                       §§push(1000);
                                       addr185:
                                       while(true)
                                       {
                                          §§push(§§pop() / §§pop());
                                          addr186:
                                          while(true)
                                          {
                                             §§push(int(§§pop()));
                                             continue loop3;
                                          }
                                       }
                                    }
                                 }
                              }
                              addr165:
                              _loc3_ = §§pop();
                              break;
                           }
                           §§push(false);
                           if(!_loc4_)
                           {
                              if(_loc5_)
                              {
                                 return §§pop();
                              }
                              continue loop1;
                           }
                        }
                        else
                        {
                           addr82:
                           if(!(_loc5_ || _loc3_))
                           {
                              this.initializeAnimations(param1);
                              §§goto(addr82);
                              addr118:
                           }
                           return true;
                        }
                        return §§pop();
                     }
                     if(!(_loc5_ || this))
                     {
                        break;
                     }
                     if(_loc4_ && _loc3_)
                     {
                        break loop1;
                     }
                     while(true)
                     {
                        continue loop2;
                     }
                  }
                  §§push(§!6§);
                  §§push("\n\nMain texture manager memory usage:\n   textures " + _loc2_);
                  if(_loc5_)
                  {
                     §§push(§§pop() + " kilobytes\n   bitmaps ");
                     if(_loc5_)
                     {
                        addr111:
                        §§push(§§pop() + _loc3_);
                        if(_loc5_)
                        {
                           §§push(§§pop() + " kilobytes\n\n");
                        }
                     }
                     §§pop().log(§§pop());
                     §§goto(addr118);
                  }
                  §§goto(addr111);
               }
               §§goto(addr183);
            }
         }
         §§goto(addr77);
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§^H§.initializeAnimations(param1);
         }
      }
      
      private function §&!S§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§>!K§.§3Z§();
            loop0:
            while(true)
            {
               §§push(this.§9!7§);
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
                                 §§push(this.§9!7§);
                                 if(_loc3_)
                                 {
                                    §§push(§§pop().§],§);
                                    loop6:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       loop7:
                                       while(!(_loc2_ && _loc2_))
                                       {
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop44:
                                                while(true)
                                                {
                                                   §§push(this.§9!7§);
                                                   addr330:
                                                   while(!_loc2_)
                                                   {
                                                      §§push(§§pop().§],§);
                                                      while(true)
                                                      {
                                                         §§pop().§3Z§();
                                                         addr334:
                                                         while(true)
                                                         {
                                                         }
                                                         addr110:
                                                         if(!(_loc2_ && this))
                                                         {
                                                            continue loop6;
                                                         }
                                                      }
                                                      continue loop44;
                                                   }
                                                   continue loop1;
                                                }
                                                addr328:
                                             }
                                             loop11:
                                             while(true)
                                             {
                                                §§push(this.§>!f§);
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   loop13:
                                                   while(_loc3_)
                                                   {
                                                      §§push(§§pop());
                                                      loop14:
                                                      while(true)
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
                                                                  §§push(this.§>!f§);
                                                                  if(!_loc2_)
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(§§pop().§],§);
                                                                     loop17:
                                                                     while(true)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        loop18:
                                                                        while(!_loc2_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 addr297:
                                                                                 loop42:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§>!f§);
                                                                                    addr299:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().§],§);
                                                                                       addr300:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().§3Z§();
                                                                                          addr301:
                                                                                          while(true)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       continue loop42;
                                                                                    }
                                                                                 }
                                                                                 addr297:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(this.§ !f§)
                                                                                 {
                                                                                    loop23:
                                                                                    while(true)
                                                                                    {
                                                                                       this.§8!_§(this.§ !f§);
                                                                                       addr283:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§ !f§ = null;
                                                                                          addr260:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc2_ && this))
                                                                                             {
                                                                                                continue loop0;
                                                                                             }
                                                                                             continue loop5;
                                                                                          }
                                                                                       }
                                                                                       loop30:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc3_ || param1))
                                                                                          {
                                                                                             continue loop23;
                                                                                          }
                                                                                          §§push(this.§%!N§);
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             §§pop().addEventListeners();
                                                                                             loop31:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   if(!(_loc3_ || _loc2_))
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc3_ || _loc3_))
                                                                                                         {
                                                                                                            continue loop16;
                                                                                                         }
                                                                                                         if(_loc2_ && this)
                                                                                                         {
                                                                                                            continue loop11;
                                                                                                         }
                                                                                                         addr255:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§%!N§);
                                                                                                            addr204:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() == null);
                                                                                                               if(!(_loc2_ && _loc2_))
                                                                                                               {
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(!§§pop());
                                                                                                               }
                                                                                                               addr216:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc3_ || param1)
                                                                                                                  {
                                                                                                                     continue loop14;
                                                                                                                  }
                                                                                                                  continue loop18;
                                                                                                               }
                                                                                                               continue loop3;
                                                                                                            }
                                                                                                            continue loop13;
                                                                                                            §§goto(addr255);
                                                                                                         }
                                                                                                      }
                                                                                                      addr241:
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   loop28:
                                                                                                   while(_loc3_)
                                                                                                   {
                                                                                                      §§push(this.mReadyToRun);
                                                                                                      if(_loc3_ || param1)
                                                                                                      {
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr216);
                                                                                                         }
                                                                                                      }
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            continue loop4;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               continue loop30;
                                                                                                            }
                                                                                                            addr133:
                                                                                                            loop32:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§6g§);
                                                                                                               if(_loc3_ || _loc3_)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§6g§);
                                                                                                                        addr146:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop().§<h§();
                                                                                                                           addr147:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc2_)
                                                                                                                              {
                                                                                                                                 break loop30;
                                                                                                                              }
                                                                                                                              addr149:
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr144:
                                                                                                                  }
                                                                                                                  loop34:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§1]§);
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(_loc2_)
                                                                                                                           {
                                                                                                                              continue loop31;
                                                                                                                           }
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              if(!_loc2_)
                                                                                                                              {
                                                                                                                                 if(!_loc3_)
                                                                                                                                 {
                                                                                                                                    break loop32;
                                                                                                                                 }
                                                                                                                                 §§push(this.§1]§);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().§],§);
                                                                                                                                    if(!_loc2_)
                                                                                                                                    {
                                                                                                                                       if(!_loc2_)
                                                                                                                                       {
                                                                                                                                          if(!§§pop())
                                                                                                                                          {
                                                                                                                                             return;
                                                                                                                                          }
                                                                                                                                          addr25:
                                                                                                                                          addr25:
                                                                                                                                          if(_loc3_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             §§push(this.§1]§);
                                                                                                                                             break loop34;
                                                                                                                                          }
                                                                                                                                          continue loop31;
                                                                                                                                       }
                                                                                                                                       continue loop17;
                                                                                                                                    }
                                                                                                                                    addr103:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!(_loc2_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          §§goto(addr110);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr300);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr144);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr147);
                                                                                                                        }
                                                                                                                        §§goto(addr25);
                                                                                                                     }
                                                                                                                     break;
                                                                                                                     §§goto(addr149);
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§goto(addr103);
                                                                                                                  }
                                                                                                                  addr102:
                                                                                                               }
                                                                                                               §§goto(addr146);
                                                                                                            }
                                                                                                            §§goto(addr328);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            continue loop28;
                                                                                                         }
                                                                                                         addr234:
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr260);
                                                                                                }
                                                                                                §§goto(addr133);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr204);
                                                                                       }
                                                                                       §§goto(addr283);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr201);
                                                                                 }
                                                                                 §§goto(addr301);
                                                                              }
                                                                           }
                                                                        }
                                                                        continue loop15;
                                                                     }
                                                                  }
                                                                  §§goto(addr299);
                                                               }
                                                               continue loop12;
                                                            }
                                                         }
                                                         §§goto(addr295);
                                                      }
                                                   }
                                                   continue loop7;
                                                }
                                             }
                                          }
                                       }
                                       continue loop2;
                                    }
                                 }
                                 §§goto(addr330);
                              }
                           }
                        }
                        §§goto(addr326);
                     }
                  }
               }
            }
         }
         §§goto(addr283);
      }
      
      private function §5c§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§`!#§.dispatchEvent(new Event(Event.INIT));
            do
            {
               this.§>!a§();
            }
            while(_loc1_ && this);
            
         }
      }
      
      private function §>!a§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Function = null;
         for each(_loc1_ in this.§'!L§)
         {
            if(_loc5_)
            {
               this.§`!#§.removeEventListener(Event.INIT,_loc1_);
            }
         }
         if(!(_loc4_ && this))
         {
            this.§'!L§ = [];
         }
      }
      
      public function init(param1:§!!K§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.mReadyToRun);
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
                  this.§'!7§ = new §?s§(this,param1);
                  while(true)
                  {
                     this.§1!Z§ = this.§4i§(param1);
                     loop5:
                     while(true)
                     {
                        this.§4j§ = 0;
                        addr254:
                        while(_loc3_ || _loc2_)
                        {
                           this.§5!H§ = 0;
                           while(true)
                           {
                              this.§<I§ = 0;
                              continue loop5;
                           }
                        }
                        §§goto(addr292);
                     }
                     if(_loc3_ || this)
                     {
                        return;
                     }
                  }
               }
               if(_loc2_ && this)
               {
                  continue;
               }
               if(§§pop())
               {
                  §§goto(addr166);
               }
               §§goto(addr107);
            }
         }
         §§goto(addr190);
      }
      
      protected function initReplay() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§96§ = new §2!P§(§@;§.§6!K§);
         }
      }
      
      protected function §,v§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(this.§6g§)
            {
               if(!(_loc2_ && _loc2_))
               {
                  §§push(false);
                  if(_loc3_ || param1)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr63:
                  return true;
               }
               return §§pop();
            }
         }
         §§goto(addr63);
      }
      
      protected function §9!D§(param1:String) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§1!3§ = null;
         if(!_loc4_)
         {
            if(this.§"!D§)
            {
               addr24:
               _loc2_ = §6!N§.§'!U§(param1);
               if(!(_loc4_ && param1))
               {
                  if(_loc2_)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        addr45:
                        §§push(Boolean(_loc2_.§>Z§));
                        if(_loc3_ || this)
                        {
                           if(§§pop())
                           {
                              if(!_loc4_)
                              {
                                 §§pop();
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    §§push(this.§"!D§.§!!Y§(_loc2_.§>Z§));
                                    if(_loc4_ && _loc2_)
                                    {
                                    }
                                    §§goto(addr97);
                                 }
                                 §§goto(addr115);
                              }
                              §§push(!§§pop());
                              if(_loc3_ || this)
                              {
                                 §§goto(addr97);
                              }
                              §§goto(addr116);
                           }
                        }
                        addr97:
                        if(§§pop())
                        {
                           if(_loc3_ || this)
                           {
                              addr116:
                              return false;
                              addr115:
                           }
                           else
                           {
                              §§goto(addr117);
                           }
                        }
                        §§goto(addr117);
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr117);
               }
               §§goto(addr45);
            }
            addr117:
            return true;
         }
         §§goto(addr24);
      }
      
      protected function §"l§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§1!3§ = null;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§6g§);
            loop0:
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
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(this.§,v§(param1));
                              while(true)
                              {
                                 §§push(!§§pop());
                                 addr118:
                                 if(!(_loc4_ && this))
                                 {
                                    loop20:
                                    for(; §§pop(); §§goto(addr118))
                                    {
                                       loop21:
                                       while(!(_loc4_ && this))
                                       {
                                          §§push(this.§"!D§);
                                          loop22:
                                          while(true)
                                          {
                                             §§pop().removeEventListener(Event.COMPLETE,this.§9I§);
                                             addr141:
                                             addr194:
                                             while(_loc3_ || this)
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§"!D§);
                                                   continue loop22;
                                                }
                                             }
                                             loop17:
                                             while(true)
                                             {
                                                loop18:
                                                while(true)
                                                {
                                                   §§push(this.§"!D§);
                                                   addr162:
                                                   addr260:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc3_ || param1)
                                                      {
                                                         addr170:
                                                         if(_loc4_ && param1)
                                                         {
                                                            break;
                                                         }
                                                         §§push(§§pop());
                                                         if(_loc4_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         if(!§§pop())
                                                         {
                                                            continue loop20;
                                                         }
                                                      }
                                                      loop24:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         addr182:
                                                         addr253:
                                                         for(; _loc3_; continue loop24)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               §§push(this.§9!D§(param1));
                                                               if(!(_loc4_ && _loc3_))
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        if(_loc3_ || this)
                                                                        {
                                                                           §§push(!§§pop());
                                                                           continue loop20;
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                     continue loop3;
                                                                  }
                                                                  continue;
                                                               }
                                                               continue loop20;
                                                            }
                                                            addr261:
                                                            while(true)
                                                            {
                                                               §§push(this.§6g§);
                                                               addr263:
                                                               while(true)
                                                               {
                                                                  §§pop().removeEventListener(Event.COMPLETE,this.§=!e§);
                                                                  addr268:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§6g§);
                                                                     continue loop0;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(this.§6g§);
                                                            while(true)
                                                            {
                                                               §§pop().addEventListener(Event.COMPLETE,this.§=!e§);
                                                               break loop21;
                                                               addr198:
                                                               loop15:
                                                               for(; _loc3_ || _loc2_; §§push(this.§6g§),if(_loc3_)
                                                               {
                                                                  §§pop().§,A§(param1);
                                                                  continue loop17;
                                                               })
                                                               {
                                                                  if(!(_loc3_ || param1))
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§pop().addEventListener(Event.CANCEL,this.§"J§);
                                                                     while(true)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           continue loop15;
                                                                        }
                                                                     }
                                                                     continue;
                                                                     addr219:
                                                                  }
                                                                  §§goto(addr263);
                                                                  §§goto(addr268);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         continue loop18;
                                                      }
                                                      §§goto(addr261);
                                                      §§goto(addr170);
                                                   }
                                                }
                                                §§goto(addr141);
                                             }
                                          }
                                       }
                                       while(!(_loc4_ && this))
                                       {
                                          §§goto(addr198);
                                          §§push(this.§6g§);
                                       }
                                       continue loop4;
                                    }
                                    return;
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§goto(addr260);
                     }
                  }
               }
            }
         }
         §§goto(addr158);
      }
      
      private function §=!e§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§6g§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§=!e§);
               while(true)
               {
                  §§push(this.§6g§);
                  if(!(_loc3_ || _loc2_))
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§"J§);
                  while(_loc3_)
                  {
                     this.§;!K§ = true;
                     loop3:
                     while(true)
                     {
                        §§push(this.§;!K§);
                        if(!_loc2_)
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc3_)
                           {
                              if(§§pop())
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§pop();
                                    addr83:
                                    while(true)
                                    {
                                       §§push(this.§;!g§);
                                       if(_loc3_)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(_loc3_ || _loc2_)
                                       {
                                          break;
                                       }
                                       continue loop6;
                                    }
                                 }
                                 addr82:
                              }
                              loop4:
                              for(; §§pop(); §§goto(addr83))
                              {
                                 if(!_loc2_)
                                 {
                                    while(true)
                                    {
                                       this.§,a§(this.§3!h§);
                                    }
                                    addr41:
                                 }
                                 while(true)
                                 {
                                    if(_loc3_ || _loc2_)
                                    {
                                       continue loop3;
                                    }
                                    continue loop4;
                                 }
                              }
                              §§goto(addr20);
                           }
                        }
                        §§goto(addr82);
                     }
                     if(_loc3_ || _loc2_)
                     {
                        addr20:
                     }
                     continue;
                     return;
                  }
               }
            }
         }
         §§goto(addr41);
      }
      
      private function §"J§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§6g§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§=!e§);
               while(true)
               {
                  §§push(this.§6g§);
                  if(_loc2_ && this)
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§"J§);
                  loop2:
                  while(!_loc2_)
                  {
                     while(true)
                     {
                        this.§?T§ = true;
                        if(!(_loc2_ && _loc3_))
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr73);
      }
      
      private function §9I§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§6g§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§9I§);
               while(true)
               {
                  §§push(this.§6g§);
                  if(!(_loc3_ || _loc2_))
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§2&§);
                  loop2:
                  for(; _loc3_; if(_loc2_ && _loc3_)
                  {
                     continue;
                  },§§push(this.§;!g§),if(!_loc2_)
                  {
                     if(!_loc2_)
                     {
                        §§goto(addr32);
                        §§push(Boolean(§§pop()));
                     }
                     §§goto(addr53);
                  },§§goto(addr32))
                  {
                     while(true)
                     {
                        this.§;!g§ = true;
                        loop4:
                        while(true)
                        {
                           §§push(this.§;!K§);
                           addr53:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc3_ || this)
                              {
                                 if(!§§pop())
                                 {
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc2_)
                                          {
                                             if(!_loc3_)
                                             {
                                                while(!_loc2_)
                                                {
                                                   continue loop2;
                                                   §§goto(addr73);
                                                }
                                                continue loop4;
                                                addr74:
                                             }
                                             this.§,a§(this.§3!h§);
                                          }
                                          break;
                                       }
                                       break;
                                       addr32:
                                       if(_loc3_ || _loc3_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr73);
                                    }
                                    return;
                                 }
                                 addr73:
                                 while(true)
                                 {
                                    §§pop();
                                 }
                                 addr73:
                                 §§goto(addr74);
                              }
                              §§goto(addr73);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr116);
      }
      
      private function §2&§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§6g§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§9I§);
               loop1:
               while(true)
               {
                  §§push(this.§6g§);
                  if(!(_loc3_ || param1))
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§2&§);
                  loop2:
                  while(true)
                  {
                     this.§;!g§ = true;
                     loop3:
                     while(_loc3_)
                     {
                        §§push(this.§;!K§);
                        if(_loc3_)
                        {
                           §§push(Boolean(§§pop()));
                           if(!(_loc2_ && _loc3_))
                           {
                              if(§§pop())
                              {
                                 loop7:
                                 while(true)
                                 {
                                    §§pop();
                                    addr83:
                                    loop6:
                                    while(true)
                                    {
                                       §§push(this.§;!g§);
                                       if(!(_loc2_ && this))
                                       {
                                          if(_loc2_)
                                          {
                                             continue loop7;
                                          }
                                          addr36:
                                          §§push(Boolean(§§pop()));
                                          while(true)
                                          {
                                             break loop6;
                                             §§goto(addr36);
                                          }
                                       }
                                       break;
                                    }
                                    while(§§pop())
                                    {
                                       if(!_loc2_)
                                       {
                                          if(!(_loc2_ && param1))
                                          {
                                             if(!_loc3_)
                                             {
                                                continue loop2;
                                             }
                                             this.§,a§(this.§3!h§);
                                          }
                                          else
                                          {
                                             §§goto(addr83);
                                          }
                                       }
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       continue loop3;
                                    }
                                    return;
                                 }
                                 addr82:
                              }
                              §§goto(addr37);
                           }
                        }
                        §§goto(addr82);
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr116);
      }
      
      public function get §-!7§() : §=!>§
      {
         return this.§>!K§;
      }
      
      protected function §,a§(param1:§!!K§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§!!M§ = false;
            loop0:
            while(true)
            {
               this.§;!3§ = false;
               loop1:
               while(true)
               {
                  §§push(§%[§.§6+§);
                  if(!(_loc3_ && _loc2_))
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(§%[§.§6+§);
                           addr207:
                           while(true)
                           {
                              §§pop().speed = 1;
                              addr219:
                              while(true)
                              {
                              }
                           }
                        }
                        addr205:
                     }
                     while(true)
                     {
                        this.mLevelEngine = new §!f§(this);
                        loop4:
                        while(!_loc3_)
                        {
                           §§push(this);
                           §§push(this);
                           §§push(param1.theme);
                           §§push(this.§'!7§.§-S§);
                           if(!_loc3_)
                           {
                              §§push(§§pop() / §]!E§);
                           }
                           §§pop().§"I§ = §§pop().§?!e§(§§pop(),§§pop(),this.§-!7§,this.§1!Z§.§%;§());
                           loop5:
                           while(true)
                           {
                              this.§"I§.§1L§(§@!Z§.§4!X§());
                              loop6:
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    break loop5;
                                 }
                                 this.§-D§ = this.initLevelObjectManager(param1);
                                 while(!_loc3_)
                                 {
                                    this.§4M§ = this.initLevelSlingshot(param1);
                                    continue loop1;
                                    while(!(_loc3_ && _loc3_))
                                    {
                                       if(_loc2_)
                                       {
                                          continue loop5;
                                       }
                                       continue loop6;
                                       while(!(_loc3_ && param1))
                                       {
                                          this.§^7§();
                                          loop11:
                                          while(!_loc3_)
                                          {
                                             while(true)
                                             {
                                                this.loadPreviousReplayData();
                                                loop15:
                                                do
                                                {
                                                   this.mReadyToRun = true;
                                                   while(true)
                                                   {
                                                      §§push(this.§%!N§);
                                                      if(!(_loc2_ || param1))
                                                      {
                                                         break;
                                                      }
                                                      if(!§§pop())
                                                      {
                                                         return;
                                                      }
                                                      addr24:
                                                      if(!_loc3_)
                                                      {
                                                         continue;
                                                      }
                                                      continue loop15;
                                                   }
                                                   §§pop().addEventListeners();
                                                }
                                                while(!_loc2_);
                                                
                                                if(!_loc3_)
                                                {
                                                   break;
                                                }
                                                continue loop11;
                                             }
                                             §§goto(addr24);
                                          }
                                       }
                                    }
                                 }
                                 continue loop4;
                              }
                           }
                           §§goto(addr205);
                        }
                        continue loop0;
                        §§goto(addr219);
                     }
                  }
                  §§goto(addr207);
               }
            }
         }
         §§goto(addr77);
      }
      
      protected function loadPreviousReplayData() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§1N§)
            {
               if(_loc1_ || _loc2_)
               {
                  addr99:
                  this.§@D§ = §2!P§.§,a§(this.§1N§);
               }
               loop0:
               while(true)
               {
                  §§push(this.§@D§);
                  while(true)
                  {
                     §§pop().speed = 1;
                     §§push(this.§@D§);
                     addr78:
                     continue loop0;
                     if(!_loc1_)
                     {
                        continue;
                     }
                     §§pop().play();
                     while(true)
                     {
                        this.§`!e§ = -1000;
                        while(_loc1_ || _loc1_)
                        {
                           this.§1N§ = null;
                           if(_loc1_ || _loc1_)
                           {
                              if(_loc1_)
                              {
                                 §§goto(addr19);
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
            addr19:
            return;
         }
         §§goto(addr99);
      }
      
      public function §=!S§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§1N§ = param1;
         }
      }
      
      public function isPlayingReplay() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§@D§ == null);
         if(_loc2_ || this)
         {
            return !§§pop();
         }
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§@D§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  for(; !param1; if(!(_loc3_ || param1))
                  {
                     continue;
                  })
                  {
                     §§push(this.§@D§);
                     if(_loc3_)
                     {
                        §§pop().speed = Math.max(this.§@D§.speed / 1.25,Math.pow(1 / 1.25,10));
                        if(!_loc2_)
                        {
                           if(_loc2_ && _loc3_)
                           {
                              break;
                           }
                           continue;
                        }
                        addr20:
                        return;
                        addr103:
                     }
                     §§pop().speed = Math.min(this.§@D§.speed * 1.25,Math.pow(1.25,2));
                     §§goto(addr103);
                  }
                  §§goto(addr81);
                  §§push(this.§@D§);
                  addr77:
               }
               §§goto(addr20);
            }
            §§goto(addr81);
         }
         §§goto(addr77);
      }
      
      public function resetReplaySpeed() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§@D§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     addr58:
                     this.§@D§.speed = 1;
                  }
               }
               return;
            }
         }
         §§goto(addr58);
      }
      
      protected function initLevelObjectManager(param1:§!!K§) : §+!6§
      {
         return new §+!6§(this,param1,new Sprite());
      }
      
      protected function §4i§(param1:§!!K§) : §[V§
      {
         return new §[V§(this,param1);
      }
      
      protected function §?!e§(param1:String, param2:Number, param3:§=!>§, param4:Number) : §<g§
      {
         return new §<g§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§!!K§) : §7!N§
      {
         return new §7!N§(this,param1,new Sprite());
      }
      
      protected function §]l§(param1:§&!W§, param2:§=!>§) : §do§
      {
         return new §do§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param1)
         {
            if(this.mReadyToRun)
            {
               if(!(_loc7_ && this))
               {
                  addr33:
                  this.clearLevel();
               }
            }
            var _loc3_:§!!K§ = this.§=!a§();
            var _loc4_:§5!b§;
            (_loc4_ = new §5!b§()).left = 0;
            if(_loc6_ || param2)
            {
               §§push(_loc4_);
               §§push(§[V§.§7!T§);
               if(_loc6_)
               {
                  §§push(-§§pop());
                  if(!(_loc7_ && _loc3_))
                  {
                     §§push(10);
                     if(_loc6_)
                     {
                        addr167:
                        §§push(§§pop() / §§pop());
                        if(!(_loc7_ && param2))
                        {
                           §§push(8);
                        }
                        §§pop().top = §§pop();
                        while(true)
                        {
                           §§push(_loc4_);
                           §§push(_loc4_.top);
                           if(!(_loc7_ && this))
                           {
                              §§push(§§pop() + §[V§.§7!T§);
                           }
                           §§pop().bottom = §§pop();
                           addr140:
                           loop1:
                           while(true)
                           {
                              §§push(_loc4_);
                              §§push(_loc4_.left);
                              if(!(_loc7_ && this))
                              {
                                 §§push(§§pop() + §[V§.§`"§);
                              }
                              §§pop().right = §§pop();
                              loop2:
                              while(true)
                              {
                                 _loc4_.y = -13.929;
                                 while(true)
                                 {
                                    _loc4_.x = §[V§.§`"§;
                                    loop4:
                                    while(_loc6_ || _loc3_)
                                    {
                                       continue loop2;
                                       while(true)
                                       {
                                          _loc4_.id = §[V§.§&J§;
                                          do
                                          {
                                             _loc3_.§1s§(_loc4_);
                                          }
                                          while(_loc7_);
                                          
                                          if(!_loc7_)
                                          {
                                             continue loop1;
                                          }
                                          continue loop4;
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                           }
                           if(_loc7_ && _loc3_)
                           {
                              continue;
                           }
                           if(false)
                           {
                              §§goto(addr78);
                           }
                           var _loc5_:§5!b§;
                           (_loc5_ = new §5!b§()).top = _loc4_.top;
                           if(_loc6_ || param2)
                           {
                              _loc5_.bottom = _loc4_.bottom;
                              _loc5_.left = 150;
                              §§push(_loc5_);
                              §§push(_loc5_.left);
                              if(_loc6_ || this)
                              {
                                 §§push(§§pop() + §[V§.§`"§);
                              }
                              §§pop().right = §§pop();
                              §§push(_loc5_);
                              §§push(_loc5_.top);
                              if(!(_loc7_ && param1))
                              {
                                 §§push(§§pop() + §[V§.§7!T§);
                              }
                              §§pop().bottom = §§pop();
                              addr391:
                              addr371:
                              if(!_loc7_)
                              {
                                 _loc5_.y = _loc4_.y;
                                 addr328:
                                 if(!_loc7_)
                                 {
                                    if(_loc6_ || param1)
                                    {
                                       §§push(_loc5_);
                                       §§push(_loc5_.left);
                                       if(_loc6_ || param2)
                                       {
                                          §§push(§[V§.§`"§);
                                          if(!(_loc7_ && param1))
                                          {
                                             §§push(§§pop() / 2);
                                          }
                                          §§push(§§pop() + §§pop());
                                       }
                                       §§pop().x = §§pop();
                                       _loc5_.id = §[V§.§6!B§;
                                       _loc3_.§1s§(_loc5_);
                                       this.§@!f§(_loc3_,param2);
                                       addr322:
                                       addr291:
                                       addr297:
                                       addr286:
                                       if(param1 != null)
                                       {
                                          addr273:
                                          if(_loc6_)
                                          {
                                             _loc3_.theme = param1;
                                             addr278:
                                             if(_loc6_)
                                             {
                                                addr199:
                                                this.init(_loc3_);
                                                if(!_loc7_)
                                                {
                                                   if(_loc6_ || param2)
                                                   {
                                                      if(_loc6_ || param1)
                                                      {
                                                         if(!(_loc7_ && this))
                                                         {
                                                            if(!(_loc6_ || param2))
                                                            {
                                                               §§goto(addr391);
                                                            }
                                                            return;
                                                         }
                                                         §§goto(addr328);
                                                      }
                                                      §§goto(addr322);
                                                   }
                                                   addr249:
                                                   if(!_loc7_)
                                                   {
                                                      _loc3_.theme = §9!?§;
                                                      addr254:
                                                      if(!(_loc7_ && param1))
                                                      {
                                                         if(_loc6_ || _loc3_)
                                                         {
                                                            addr268:
                                                            §§goto(addr199);
                                                         }
                                                         §§goto(addr291);
                                                      }
                                                      §§goto(addr278);
                                                   }
                                                   §§goto(addr273);
                                                }
                                                §§goto(addr254);
                                             }
                                             §§goto(addr297);
                                          }
                                          §§goto(addr286);
                                       }
                                       §§push(§9!?§);
                                       if(!(_loc7_ && param1))
                                       {
                                          §§push(null);
                                          if(!_loc7_)
                                          {
                                             if(§§pop() != §§pop())
                                             {
                                                §§goto(addr249);
                                             }
                                             §§goto(addr199);
                                          }
                                       }
                                       §§goto(addr322);
                                    }
                                    §§goto(addr371);
                                 }
                                 §§goto(addr391);
                              }
                              addr386:
                              §§goto(addr386);
                           }
                           §§goto(addr268);
                        }
                     }
                     §§push(§§pop() * §§pop());
                  }
               }
               §§goto(addr167);
            }
            §§goto(addr140);
         }
         §§goto(addr33);
      }
      
      protected function §@!f§(param1:§!!K§, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(param2)
            {
               if(_loc3_ || this)
               {
                  this.addFallingBirds(param1);
               }
            }
         }
      }
      
      protected function §=!a§() : §!!K§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§!!K§ = new §!!K§();
         if(_loc2_ || _loc1_)
         {
            _loc1_.§'f§ = -12;
         }
         return new §!!K§();
      }
      
      protected function §>C§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§0v§ ^= this.§0v§ << 21;
            do
            {
               §§push(this);
               §§push(this.§0v§);
               §§push(this.§0v§);
               if(_loc2_ || this)
               {
                  §§push(§§pop() >>> 35);
               }
               §§pop().§0v§ = §§pop() ^ §§pop();
               do
               {
                  this.§0v§ ^= this.§0v§ << 4;
               }
               while(!_loc2_);
               
            }
            while(_loc1_ && _loc1_);
            
         }
         return this.§0v§ * (1 / uint.MAX_VALUE);
      }
      
      protected function addFallingBirds(param1:§!!K§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:§]!A§ = null;
         if(_loc6_ || _loc3_)
         {
            §§push(this);
            §§push(0.33);
            if(_loc6_ || this)
            {
               §§push(§§pop() * uint.MAX_VALUE);
            }
            §§pop().§0v§ = §§pop();
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
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     §§push(0);
                     if(_loc6_)
                     {
                        _loc3_ = §§pop();
                        if(_loc6_)
                        {
                           loop3:
                           while(true)
                           {
                              §§push(_loc3_);
                              if(_loc6_)
                              {
                                 while(true)
                                 {
                                    §§push(5);
                                    if(!(_loc6_ || param1))
                                    {
                                       continue loop2;
                                    }
                                    if(§§pop() >= §§pop())
                                    {
                                       if(_loc7_ && param1)
                                       {
                                       }
                                       break;
                                    }
                                    §§push(this.§>C§());
                                    if(!_loc7_)
                                    {
                                       §§push(§§pop() * 5);
                                    }
                                    §§push(int(§§pop()));
                                    if(!_loc6_)
                                    {
                                       break loop3;
                                    }
                                    _loc4_ = §§pop();
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                    §§push(_loc5_ = new §]!A§());
                                    §§push(30 + _loc3_ * 10);
                                    if(_loc6_ || param1)
                                    {
                                       §§push(this.§>C§());
                                       if(_loc6_ || param1)
                                       {
                                          §§push(§§pop() * 9);
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§pop().x = §§pop();
                                    if(!_loc7_)
                                    {
                                       §§push(_loc2_);
                                       loop5:
                                       while(true)
                                       {
                                          §§push(0);
                                          loop6:
                                          while(true)
                                          {
                                             if(§§pop() != §§pop())
                                             {
                                                §§push(_loc5_);
                                                §§push(-100 + _loc2_ * 6);
                                                if(_loc6_)
                                                {
                                                   §§push(this.§>C§());
                                                   if(_loc6_)
                                                   {
                                                      §§push(§§pop() * 3);
                                                      if(!(_loc7_ && this))
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         if(_loc6_ || param1)
                                                         {
                                                            addr320:
                                                            §§push(§§pop() - _loc3_ * 8);
                                                         }
                                                         §§pop().y = §§pop();
                                                         loop7:
                                                         while(true)
                                                         {
                                                            if(!(_loc7_ && _loc2_))
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(_loc6_ || _loc2_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc6_ || _loc3_)
                                                                        {
                                                                           §§push(_loc2_);
                                                                           if(_loc6_ || this)
                                                                           {
                                                                              §§push(§§pop() + §§pop() * _loc3_);
                                                                              if(!_loc7_)
                                                                              {
                                                                                 §§push(_loc2_);
                                                                                 if(!(_loc7_ && _loc2_))
                                                                                 {
                                                                                    addr253:
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       addr251:
                                                                                       §§push(5);
                                                                                    }
                                                                                    §§push(int(§§pop()));
                                                                                    if(!(_loc7_ && this))
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       loop33:
                                                                                       for(; _loc6_ || param1; if(_loc7_ && _loc3_)
                                                                                       {
                                                                                          continue;
                                                                                       },if(§§pop() == §§pop())
                                                                                       {
                                                                                          if(!(_loc7_ && param1))
                                                                                          {
                                                                                             _loc5_.id = "BIRD_YELLOW";
                                                                                          }
                                                                                          §§goto(addr196);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          _loc5_.id = "BIRD_BLUE";
                                                                                       },§§goto(addr149))
                                                                                       {
                                                                                          _loc4_ = §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(2);
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop() >= §§pop())
                                                                                                {
                                                                                                   §§push(_loc4_);
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   if(!(_loc7_ && _loc3_))
                                                                                                   {
                                                                                                      §§push(3);
                                                                                                      if(!(_loc7_ && this))
                                                                                                      {
                                                                                                         continue loop33;
                                                                                                      }
                                                                                                      continue;
                                                                                                   }
                                                                                                   loop39:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         if(_loc6_ || _loc2_)
                                                                                                         {
                                                                                                            break loop33;
                                                                                                         }
                                                                                                         loop27:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(1);
                                                                                                            addr429:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  continue loop6;
                                                                                                               }
                                                                                                               §§push(§§pop() == §§pop());
                                                                                                               loop29:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  loop30:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        loop31:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           addr435:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc3_);
                                                                                                                              addr413:
                                                                                                                              while(_loc6_)
                                                                                                                              {
                                                                                                                                 §§push(2);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() == §§pop());
                                                                                                                                    addr417:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc6_)
                                                                                                                                       {
                                                                                                                                          continue loop31;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    break loop33;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop5;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           continue loop30;
                                                                                                                        }
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              addr381:
                                                                                                                              §§push(§§pop() == §§pop());
                                                                                                                              if(!(_loc6_ || _loc2_))
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              if(_loc6_)
                                                                                                                              {
                                                                                                                                 if(!(_loc6_ || _loc3_))
                                                                                                                                 {
                                                                                                                                    continue loop29;
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!§§pop())
                                                                                                                                    {
                                                                                                                                       _loc5_.id = "PIG_HELMET";
                                                                                                                                       loop24:
                                                                                                                                       while(!_loc7_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc7_ && this))
                                                                                                                                          {
                                                                                                                                             addr359:
                                                                                                                                             loop9:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc5_);
                                                                                                                                                §§push(45);
                                                                                                                                                §§push(this.§>C§());
                                                                                                                                                if(_loc6_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * 90);
                                                                                                                                                }
                                                                                                                                                §§pop().angle = §§pop() - §§pop();
                                                                                                                                                loop10:
                                                                                                                                                while(_loc6_)
                                                                                                                                                {
                                                                                                                                                   loop11:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      param1.addObject(_loc5_);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc7_ && param1))
                                                                                                                                                         {
                                                                                                                                                            if(_loc6_)
                                                                                                                                                            {
                                                                                                                                                               _loc3_++;
                                                                                                                                                               if(_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     if(false)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop11;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop3;
                                                                                                                                                                  }
                                                                                                                                                                  addr425:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop39;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop27;
                                                                                                                                                               }
                                                                                                                                                               continue;
                                                                                                                                                            }
                                                                                                                                                            addr149:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc7_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  loop14:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc5_);
                                                                                                                                                                     §§push(this.§>C§());
                                                                                                                                                                     if(_loc6_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * 360);
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().angle = §§pop();
                                                                                                                                                                     addr131:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc7_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc7_ && _loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop14;
                                                                                                                                                                           }
                                                                                                                                                                           addr196:
                                                                                                                                                                        }
                                                                                                                                                                        continue loop14;
                                                                                                                                                                     }
                                                                                                                                                                     if(!_loc7_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop11;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop10;
                                                                                                                                                                  }
                                                                                                                                                                  addr122:
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc7_)
                                                                                                                                                                     {
                                                                                                                                                                        break loop11;
                                                                                                                                                                     }
                                                                                                                                                                     if(_loc7_ && _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop24;
                                                                                                                                                                     }
                                                                                                                                                                     _loc5_.id = "BIRD_RED";
                                                                                                                                                                  }
                                                                                                                                                                  addr272:
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr122);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr131);
                                                                                                                                                      }
                                                                                                                                                      continue loop24;
                                                                                                                                                   }
                                                                                                                                                   continue loop7;
                                                                                                                                                }
                                                                                                                                                addr400:
                                                                                                                                                addr403:
                                                                                                                                                _loc5_.id = "PIG_MUSTACHE";
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc6_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      continue loop9;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr435);
                                                                                                                                                   §§goto(addr400);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc5_.y = 0;
                                                                                                                                                break loop24;
                                                                                                                                             }
                                                                                                                                             addr439:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          continue loop27;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr400);
                                                                                                                                 }
                                                                                                                                 addr398:
                                                                                                                              }
                                                                                                                              §§goto(addr417);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr398);
                                                                                                                        }
                                                                                                                        §§goto(addr425);
                                                                                                                     }
                                                                                                                     continue loop6;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr413);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr272);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc6_ || param1)
                                                                                          {
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                §§goto(addr381);
                                                                                             }
                                                                                             §§goto(addr429);
                                                                                          }
                                                                                          §§goto(addr416);
                                                                                       }
                                                                                       addr262:
                                                                                    }
                                                                                    §§goto(addr270);
                                                                                 }
                                                                                 §§push(§§pop() % §§pop());
                                                                              }
                                                                           }
                                                                           §§goto(addr253);
                                                                        }
                                                                        §§goto(addr251);
                                                                     }
                                                                     §§goto(addr262);
                                                                  }
                                                                  §§goto(addr270);
                                                               }
                                                               addr329:
                                                            }
                                                            §§goto(addr403);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr320);
                                             }
                                             §§goto(addr439);
                                          }
                                       }
                                    }
                                    §§goto(addr329);
                                 }
                                 addr478:
                                 return;
                                 addr446:
                              }
                              break;
                           }
                           continue loop1;
                        }
                        _loc2_++;
                        if(_loc6_)
                        {
                           continue loop0;
                        }
                        §§goto(addr478);
                     }
                     §§goto(addr446);
                  }
                  §§goto(addr478);
               }
            }
         }
      }
      
      public function §^7§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§<g§.§4!R§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     this.§?!M§(this.§"I§.§9!6§,false);
                     addr191:
                     while(true)
                     {
                     }
                  }
                  addr185:
               }
               loop3:
               while(true)
               {
                  this.§?!M§(this.§^6§.§#!g§(§do§.§`!Z§),false);
                  while(true)
                  {
                     this.§?!M§(this.§^6§.§#!g§(§do§.§[N§),true);
                     addr134:
                     loop7:
                     while(!(_loc2_ && _loc2_))
                     {
                        this.§?!M§(this.§4M§.sprite,true);
                        loop8:
                        for(; !_loc2_; if(_loc1_ || this)
                        {
                           continue loop0;
                        })
                        {
                           this.§?!M§(this.§^6§.§#!g§(§do§.§+!c§),true);
                           loop9:
                           while(true)
                           {
                              if(_loc1_)
                              {
                                 this.§?!M§(this.§"I§.§7J§,false);
                                 while(true)
                                 {
                                    if(_loc1_)
                                    {
                                       continue loop8;
                                    }
                                    continue loop9;
                                    addr41:
                                    if(!(_loc1_ || this))
                                    {
                                       continue;
                                    }
                                    if(_loc1_ || _loc1_)
                                    {
                                       return;
                                    }
                                    §§goto(addr185);
                                 }
                                 continue loop3;
                              }
                              addr161:
                              while(true)
                              {
                                 this.§?!M§(this.§^6§.§#!g§(§do§.§&!d§),true);
                                 addr151:
                                 while(true)
                                 {
                                    this.§?!M§(this.§-D§.§#!^§,true);
                                    continue loop7;
                                 }
                              }
                           }
                        }
                        §§goto(addr191);
                     }
                  }
               }
               §§push(§<g§.§4!R§);
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               if(§§pop())
               {
                  loop11:
                  while(!_loc2_)
                  {
                     this.§?!M§(this.§"I§.§]X§,false);
                     loop12:
                     while(!_loc2_)
                     {
                        while(true)
                        {
                           this.§?!M§(this.§^6§.§#!g§(§do§.§+Z§),true);
                           if(_loc1_ || this)
                           {
                              if(!_loc2_)
                              {
                                 break;
                              }
                              continue loop11;
                           }
                           continue loop12;
                        }
                        §§goto(addr41);
                     }
                     §§goto(addr134);
                  }
                  §§goto(addr151);
               }
               §§goto(addr23);
            }
         }
         §§goto(addr161);
      }
      
      protected function §?!M§(param1:Sprite, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.sprite);
            if(!(_loc4_ && param2))
            {
               if(!§§pop())
               {
               }
               §§goto(addr59);
            }
            §§pop().addChild(param1);
         }
         addr59:
         if(_loc3_ || _loc3_)
         {
            §§push(this.sprite);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Point = new Point();
         if(_loc5_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§@!Z§.§<X§);
               loop1:
               while(true)
               {
                  §§push(§§pop() / §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     loop3:
                     while(true)
                     {
                        param1 = §§pop();
                        loop4:
                        while(true)
                        {
                           §§push(param2);
                           if(_loc5_)
                           {
                              §§push(§@!Z§.§<X§);
                              if(_loc4_)
                              {
                                 break;
                              }
                              §§push(§§pop() / §§pop());
                              if(_loc5_)
                              {
                                 if(!_loc5_)
                                 {
                                    continue loop3;
                                 }
                                 if(_loc4_ && param1)
                                 {
                                    continue loop2;
                                 }
                                 if(_loc4_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(Number(§§pop()));
                              }
                           }
                           param2 = §§pop();
                           loop5:
                           do
                           {
                              _loc3_.x = (param1 / §[V§.§+!>§ + this.§1!Z§.§44§ - §[V§.§]!^§ / §[V§.§+!>§) * §]!E§;
                              while(!(_loc4_ && param1))
                              {
                                 _loc3_.y = (param2 / §[V§.§+!>§ + this.§1!Z§.§#8§ - §[V§.§!!g§ / §[V§.§+!>§) * §]!E§;
                                 if(!_loc4_)
                                 {
                                    continue loop5;
                                 }
                              }
                              continue loop4;
                           }
                           while(_loc4_);
                           
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         return _loc3_;
      }
      
      public function §=!A§(param1:Number, param2:Number) : Point
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Point = new Point();
         if(!(_loc5_ && this))
         {
            _loc3_.x = (param1 / §]!E§ + §[V§.§]!^§ / §[V§.§+!>§ - this.§1!Z§.§44§) * §[V§.§+!>§;
            if(_loc6_)
            {
               _loc3_.y = (param2 / §]!E§ + §[V§.§!!g§ / §[V§.§+!>§ - this.§1!Z§.§#8§) * §[V§.§+!>§;
               addr48:
            }
            var _loc4_:Number = Math.max(§@!Z§.§<X§,§@!Z§.§5I§);
            if(!_loc5_)
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
         §§goto(addr48);
      }
      
      public function §;!X§(param1:String, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§-D§.addObject(param1,param2,param3);
         }
      }
      
      public function §24§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§,%§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§,%§);
                     addr90:
                     loop4:
                     while(true)
                     {
                        §§pop().visible = true;
                        addr92:
                        while(true)
                        {
                           §§push(this.§,%§);
                           if(_loc2_ || this)
                           {
                              §§pop().alpha = 0;
                              continue loop0;
                           }
                           continue loop4;
                        }
                     }
                  }
               }
               while(true)
               {
                  this.§[!4§ = 0;
                  if(_loc2_ || _loc1_)
                  {
                     if(!(_loc1_ && _loc1_))
                     {
                        break;
                     }
                     §§goto(addr92);
                  }
                  §§goto(addr65);
                  §§goto(addr72);
               }
               return;
            }
            §§goto(addr90);
         }
         §§goto(addr72);
      }
      
      public function §,!V§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§<9§ = new §@!%§(§?9§.§;!d§,§?9§.§9V§);
         }
      }
      
      public function §<3§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§<9§ = null;
         }
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§"I§);
            if(!(_loc2_ && this))
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§"I§);
                     addr608:
                     while(true)
                     {
                        §§pop().dispose();
                        addr609:
                        while(true)
                        {
                           this.§"I§ = null;
                           continue loop0;
                        }
                        continue loop0;
                     }
                  }
               }
               while(true)
               {
                  §§push(this.§-D§);
                  if(_loc1_ || this)
                  {
                     if(§§pop())
                     {
                        addr570:
                        while(true)
                        {
                           §§push(this.§-D§);
                           addr572:
                           while(true)
                           {
                              §§pop().dispose();
                              addr573:
                              while(true)
                              {
                                 this.§-D§ = null;
                                 addr558:
                                 while(true)
                                 {
                                    this.§,T§ = null;
                                    addr553:
                                    while(true)
                                    {
                                    }
                                 }
                              }
                           }
                        }
                        addr570:
                     }
                     loop2:
                     while(true)
                     {
                        §§push(this.mLevelEngine);
                        if(!_loc2_)
                        {
                           if(§§pop())
                           {
                              loop3:
                              while(true)
                              {
                                 §§push(this.mLevelEngine);
                                 if(!_loc2_)
                                 {
                                    while(true)
                                    {
                                       if(§§pop().§9!;§)
                                       {
                                          loop29:
                                          while(!(_loc2_ && _loc1_))
                                          {
                                             while(true)
                                             {
                                                §§push(this.mLevelEngine);
                                                addr538:
                                                while(true)
                                                {
                                                   §§pop().clear();
                                                   while(!(_loc2_ && _loc1_))
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         this.mLevelEngine = null;
                                                         loop6:
                                                         while(true)
                                                         {
                                                            if(_loc1_ || _loc2_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(this.§'!7§);
                                                                  if(_loc1_ || _loc1_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§'!7§);
                                                                           addr503:
                                                                           while(true)
                                                                           {
                                                                              §§pop().clear();
                                                                              addr504:
                                                                              while(true)
                                                                              {
                                                                                 this.§'!7§ = null;
                                                                                 addr489:
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr501:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§4M§);
                                                                        if(_loc1_ || _loc2_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              while(_loc1_ || _loc2_)
                                                                              {
                                                                                 §§push(this.§4M§);
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().dispose();
                                                                                    while(true)
                                                                                    {
                                                                                       this.§4M§ = null;
                                                                                       addr460:
                                                                                       while(_loc1_)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              continue;
                                                                              addr474:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§1!Z§);
                                                                              if(_loc1_ || this)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    loop13:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§^6§);
                                                                                       if(!(_loc2_ && _loc1_))
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             while(this.sprite)
                                                                                             {
                                                                                                if(!(_loc2_ && this))
                                                                                                {
                                                                                                   if(!(_loc1_ || _loc1_))
                                                                                                   {
                                                                                                      loop16:
                                                                                                      while(!_loc2_)
                                                                                                      {
                                                                                                         addr410:
                                                                                                         if(_loc2_ && _loc1_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc2_)
                                                                                                               {
                                                                                                                  continue loop6;
                                                                                                               }
                                                                                                               §§goto(addr410);
                                                                                                            }
                                                                                                            continue loop6;
                                                                                                            addr434:
                                                                                                         }
                                                                                                         this.§^6§ = null;
                                                                                                         loop17:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc1_ || _loc2_)
                                                                                                            {
                                                                                                               continue loop3;
                                                                                                            }
                                                                                                            addr391:
                                                                                                            while(_loc1_ || this)
                                                                                                            {
                                                                                                               if(!(_loc2_ && _loc1_))
                                                                                                               {
                                                                                                                  §§push(this.§^6§);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop().dispose();
                                                                                                                     continue loop16;
                                                                                                                  }
                                                                                                                  addr407:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr578);
                                                                                                               }
                                                                                                               continue loop17;
                                                                                                            }
                                                                                                            §§goto(addr460);
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop13;
                                                                                                   }
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         if(_loc1_)
                                                                                                         {
                                                                                                            if(_loc2_)
                                                                                                            {
                                                                                                               continue loop29;
                                                                                                            }
                                                                                                            addr309:
                                                                                                            §§push(this.sprite);
                                                                                                            if(_loc1_ || this)
                                                                                                            {
                                                                                                               if(§§pop().numChildren <= 0)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§push(this.sprite);
                                                                                                            }
                                                                                                            §§pop().removeChildAt(0,true);
                                                                                                            §§goto(addr309);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr501);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr474);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§1!Z§ = null;
                                                                                                         continue loop13;
                                                                                                      }
                                                                                                      addr455:
                                                                                                   }
                                                                                                   §§goto(addr504);
                                                                                                }
                                                                                                §§goto(addr365);
                                                                                             }
                                                                                             addr323:
                                                                                             this.§4j§ = 0;
                                                                                             this.§5!H§ = 0;
                                                                                             this.mReadyToRun = false;
                                                                                             this.§&!§ = false;
                                                                                             addr293:
                                                                                             addr308:
                                                                                             if(_loc1_ || this)
                                                                                             {
                                                                                                this.§[!4§ = §?9§.§,C§;
                                                                                                addr276:
                                                                                                if(this.§&!-§)
                                                                                                {
                                                                                                   addr259:
                                                                                                   if(_loc1_)
                                                                                                   {
                                                                                                      if(_loc1_)
                                                                                                      {
                                                                                                         addr269:
                                                                                                         (this.§&!-§ as §1!D§).§<!#§.x = 0;
                                                                                                         addr270:
                                                                                                         addr268:
                                                                                                         §§push(this.§&!-§);
                                                                                                         if(_loc1_)
                                                                                                         {
                                                                                                            if(_loc1_ || _loc2_)
                                                                                                            {
                                                                                                               §§push((§§pop() as §1!D§).§<!#§);
                                                                                                               if(!_loc2_)
                                                                                                               {
                                                                                                                  §§push(0);
                                                                                                                  if(!(_loc2_ && _loc1_))
                                                                                                                  {
                                                                                                                     §§pop().y = §§pop();
                                                                                                                     addr254:
                                                                                                                     §§push(this.§,%§);
                                                                                                                     if(!_loc2_)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           addr223:
                                                                                                                           this.§,%§.visible = false;
                                                                                                                           addr225:
                                                                                                                           addr221:
                                                                                                                           if(!_loc2_)
                                                                                                                           {
                                                                                                                              addr210:
                                                                                                                              this.§@D§ = null;
                                                                                                                              this.§96§ = null;
                                                                                                                              addr202:
                                                                                                                              addr214:
                                                                                                                              if(_loc1_ || _loc2_)
                                                                                                                              {
                                                                                                                                 §§push(this.§6g§);
                                                                                                                                 if(!(_loc2_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       addr184:
                                                                                                                                       if(_loc1_)
                                                                                                                                       {
                                                                                                                                          addr188:
                                                                                                                                          this.§6g§.removeEventListener(Event.COMPLETE,this.§=!e§);
                                                                                                                                          addr193:
                                                                                                                                          if(_loc1_)
                                                                                                                                          {
                                                                                                                                             if(!_loc2_)
                                                                                                                                             {
                                                                                                                                                §§push(this.§6g§);
                                                                                                                                                if(!_loc2_)
                                                                                                                                                {
                                                                                                                                                   §§pop().removeEventListener(Event.CANCEL,this.§"J§);
                                                                                                                                                   addr163:
                                                                                                                                                   if(!_loc2_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc1_ || this)
                                                                                                                                                      {
                                                                                                                                                         addr125:
                                                                                                                                                         §§push(this.§"!D§);
                                                                                                                                                         if(!(_loc2_ && this))
                                                                                                                                                         {
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               addr136:
                                                                                                                                                               if(_loc1_)
                                                                                                                                                               {
                                                                                                                                                                  addr140:
                                                                                                                                                                  this.§"!D§.removeEventListener(Event.COMPLETE,this.§9I§);
                                                                                                                                                                  addr145:
                                                                                                                                                                  if(!(_loc2_ && _loc1_))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§"!D§);
                                                                                                                                                                     if(_loc1_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().removeEventListener(Event.CANCEL,this.§2&§);
                                                                                                                                                                        addr115:
                                                                                                                                                                        if(!(_loc2_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc1_)
                                                                                                                                                                           {
                                                                                                                                                                              addr94:
                                                                                                                                                                              this.§>!a§();
                                                                                                                                                                              addr97:
                                                                                                                                                                              if(!_loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§%[§.§`1§);
                                                                                                                                                                                 if(_loc1_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       addr73:
                                                                                                                                                                                       if(_loc1_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr77:
                                                                                                                                                                                          §%[§.§`1§.color = 0;
                                                                                                                                                                                          addr79:
                                                                                                                                                                                          if(!(_loc2_ && _loc2_))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc1_ || _loc1_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr40:
                                                                                                                                                                                                §§push(this.§%!N§);
                                                                                                                                                                                                if(_loc1_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc1_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc1_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr54:
                                                                                                                                                                                                               this.§%!N§.removeEventListeners();
                                                                                                                                                                                                               addr55:
                                                                                                                                                                                                               if(_loc1_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc1_ || this)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc2_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr28);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr145);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr73);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr79);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr270);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr184);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr55);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr28:
                                                                                                                                                                                                   this.mReadyToRun = false;
                                                                                                                                                                                                   if(_loc2_ && _loc1_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr55);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   return;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr54);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr293);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr97);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr115);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr40);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr77);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr202);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr323);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr136);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr140);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr163);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr259);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr94);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr140);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr254);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr193);
                                                                                                                                                }
                                                                                                                                                §§goto(addr188);
                                                                                                                                             }
                                                                                                                                             §§goto(addr276);
                                                                                                                                          }
                                                                                                                                          §§goto(addr214);
                                                                                                                                       }
                                                                                                                                       §§goto(addr225);
                                                                                                                                    }
                                                                                                                                    §§goto(addr125);
                                                                                                                                 }
                                                                                                                                 §§goto(addr188);
                                                                                                                              }
                                                                                                                              §§goto(addr221);
                                                                                                                           }
                                                                                                                           §§goto(addr323);
                                                                                                                        }
                                                                                                                        §§goto(addr210);
                                                                                                                     }
                                                                                                                     §§goto(addr223);
                                                                                                                  }
                                                                                                                  §§goto(addr269);
                                                                                                               }
                                                                                                               §§goto(addr268);
                                                                                                            }
                                                                                                            §§goto(addr276);
                                                                                                         }
                                                                                                         addr265:
                                                                                                         §§goto(addr265);
                                                                                                      }
                                                                                                      §§goto(addr309);
                                                                                                   }
                                                                                                   §§goto(addr308);
                                                                                                }
                                                                                                §§goto(addr254);
                                                                                             }
                                                                                             addr326:
                                                                                             §§goto(addr326);
                                                                                          }
                                                                                          §§goto(addr391);
                                                                                       }
                                                                                       §§goto(addr407);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr434);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().clear();
                                                                                 }
                                                                                 addr454:
                                                                              }
                                                                              §§goto(addr455);
                                                                              §§goto(addr462);
                                                                           }
                                                                        }
                                                                        §§goto(addr483);
                                                                     }
                                                                  }
                                                                  §§goto(addr503);
                                                               }
                                                               addr490:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr558);
                                                            }
                                                         }
                                                         continue loop2;
                                                      }
                                                      §§goto(addr570);
                                                   }
                                                   §§goto(addr573);
                                                }
                                             }
                                          }
                                          §§goto(addr609);
                                       }
                                       §§goto(addr536);
                                    }
                                    addr527:
                                 }
                                 §§goto(addr538);
                              }
                           }
                           §§goto(addr490);
                        }
                        §§goto(addr527);
                     }
                  }
                  §§goto(addr572);
                  §§goto(addr585);
               }
            }
            §§goto(addr608);
         }
         §§goto(addr570);
      }
      
      public function gameOver() : void
      {
      }
      
      public function §[!J§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§96§);
            if(_loc1_ || _loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     §§goto(addr57);
                  }
               }
               return null;
            }
            §§goto(addr57);
         }
         addr57:
         return this.§96§.toString();
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            §§push(this.mReadyToRun);
            if(_loc5_)
            {
               §§push(!§§pop());
               loop0:
               while(true)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        addr165:
                        while(true)
                        {
                           §§pop();
                           addr166:
                           while(true)
                           {
                              §§push(§%[§.§2U§());
                              addr128:
                              while(true)
                              {
                                 §§push(!§§pop());
                              }
                           }
                        }
                        addr165:
                     }
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc5_ || param3)
                              {
                                 §§push(0);
                                 break;
                              }
                              loop4:
                              while(_loc5_ || this)
                              {
                                 while(true)
                                 {
                                    addr90:
                                    while(true)
                                    {
                                       §§push(this.§@D§);
                                       loop6:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          addr94:
                                          while(!(_loc4_ && this))
                                          {
                                             if(_loc5_ || param1)
                                             {
                                                §§push(§§pop());
                                                if(!_loc5_)
                                                {
                                                   continue loop1;
                                                }
                                                if(§§pop())
                                                {
                                                   while(_loc5_)
                                                   {
                                                      continue loop0;
                                                      if(_loc4_ && this)
                                                      {
                                                         continue;
                                                      }
                                                      while(§§pop())
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            break loop6;
                                                         }
                                                         addr72:
                                                         if(_loc5_ || this)
                                                         {
                                                            break;
                                                         }
                                                         addr122:
                                                         while(true)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            continue loop4;
                                                            §§goto(addr72);
                                                         }
                                                         continue loop6;
                                                      }
                                                      §§push(this.§+!U§(param1,true,param2,param3));
                                                      if(_loc5_)
                                                      {
                                                         if(_loc5_ || param3)
                                                         {
                                                            return §§pop();
                                                         }
                                                         break loop3;
                                                      }
                                                      addr71:
                                                      return §§pop();
                                                      addr62:
                                                   }
                                                   continue loop3;
                                                }
                                                §§goto(addr62);
                                             }
                                             else
                                             {
                                                §§goto(addr165);
                                             }
                                          }
                                          §§goto(addr128);
                                       }
                                       §§goto(addr71);
                                    }
                                 }
                              }
                              §§goto(addr166);
                           }
                           §§goto(addr90);
                        }
                        return §§pop();
                     }
                  }
               }
            }
            §§goto(addr165);
         }
         §§goto(addr147);
      }
      
      protected function §+!U§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            if(this.§!!M§)
            {
               if(_loc7_ || param1)
               {
                  §§push(param1);
                  if(_loc7_ || param1)
                  {
                     §§push(§§pop() * 0.2);
                     if(!_loc6_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc6_)
                        {
                           addr44:
                           param1 = §§pop();
                           if(_loc7_ || param3)
                           {
                              §§push(§%[§.§6+§);
                              if(_loc7_)
                              {
                                 if(§§pop())
                                 {
                                    addr63:
                                    if(_loc7_)
                                    {
                                       addr59:
                                       §§push(§%[§.§6+§);
                                    }
                                    var _loc5_:* = Number(0);
                                    if(_loc7_)
                                    {
                                       §§push(this);
                                       §§push(this.§5!H§);
                                       if(_loc7_ || this)
                                       {
                                          §§push(§§pop() + param1);
                                       }
                                       §§pop().§5!H§ = §§pop();
                                       loop0:
                                       while(true)
                                       {
                                          §§push(param3);
                                          loop1:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                this.§-D§.§2!4§(param1);
                                                loop2:
                                                while(true)
                                                {
                                                   this.§4j§ = 0;
                                                   loop3:
                                                   while(true)
                                                   {
                                                      loop4:
                                                      while(true)
                                                      {
                                                         §§push(param2);
                                                         if(!_loc7_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            if(_loc6_ && param1)
                                                            {
                                                               continue loop2;
                                                            }
                                                            if(!_loc7_)
                                                            {
                                                               continue loop3;
                                                            }
                                                            if(_loc7_ || param2)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  this.§,!O§(param1,_loc5_);
                                                                  continue loop2;
                                                               }
                                                               addr186:
                                                               while(true)
                                                               {
                                                                  §§push(this.mLevelEngine.§^T§(this.§4j§));
                                                                  if(_loc7_)
                                                                  {
                                                                     addr166:
                                                                     §§push(Number(§§pop()));
                                                                     while(true)
                                                                     {
                                                                        _loc5_ = §§pop();
                                                                        addr167:
                                                                        while(true)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              break loop4;
                                                                           }
                                                                           this.§4M§.update(param1,param4);
                                                                           while(true)
                                                                           {
                                                                              this.§4j§ = _loc5_;
                                                                           }
                                                                        }
                                                                     }
                                                                     addr166:
                                                                  }
                                                                  §§goto(addr166);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               continue loop4;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr69:
                                                            §§push(param1);
                                                            if(!_loc6_)
                                                            {
                                                               return §§pop();
                                                            }
                                                         }
                                                         §§goto(addr166);
                                                      }
                                                      continue loop0;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr173);
                                 }
                                 §§goto(addr63);
                              }
                              §§pop().speed = 0.2;
                              §§goto(addr63);
                           }
                           §§goto(addr59);
                        }
                     }
                     §§goto(addr63);
                  }
                  §§goto(addr44);
               }
               §§goto(addr59);
            }
            §§goto(addr63);
         }
         §§goto(addr59);
      }
      
      private function §=;§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         §§push(§!f§.§`!;§);
         if(!_loc6_)
         {
            §§push(§§pop() * 1000);
            if(!_loc6_)
            {
               addr27:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            if(!(_loc6_ && param3))
            {
               if(this.§@D§)
               {
                  loop19:
                  while(true)
                  {
                     §§push(param1);
                     loop20:
                     while(true)
                     {
                        §§push(this.§@D§.speed);
                        loop21:
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           loop22:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              loop23:
                              while(true)
                              {
                                 param1 = §§pop();
                                 while(true)
                                 {
                                    §§push(this.§5!H§);
                                    if(_loc7_ || param3)
                                    {
                                       §§push(param1);
                                       if(!_loc7_)
                                       {
                                          break;
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc7_)
                                       {
                                          if(!(_loc7_ || param2))
                                          {
                                             continue loop23;
                                          }
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    if(!_loc6_)
                                    {
                                       if(_loc7_)
                                       {
                                          _loc5_ = §§pop();
                                          if(!(_loc6_ && param2))
                                          {
                                             continue loop19;
                                          }
                                          continue;
                                       }
                                       continue loop20;
                                    }
                                    continue loop22;
                                 }
                                 continue loop21;
                              }
                           }
                        }
                     }
                  }
               }
               else
               {
                  §§push(this.§+!U§(_loc4_,true,param2,param3));
                  if(!(_loc6_ && this))
                  {
                     if(!_loc6_)
                     {
                        if(_loc7_)
                        {
                           if(!(_loc6_ && this))
                           {
                              return §§pop();
                           }
                           §§goto(addr176);
                        }
                        §§goto(addr180);
                     }
                     §§goto(addr91);
                  }
               }
               §§goto(addr68);
            }
            §§goto(addr291);
         }
         §§goto(addr27);
      }
      
      private function §,!O§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Number = NaN;
         var _loc4_:* = NaN;
         if(_loc6_)
         {
            this.§"I§.update(param1);
            while(true)
            {
               this.§-D§.§5m§(param1,param2);
               loop1:
               while(true)
               {
                  this.§'=§();
                  loop2:
                  while(true)
                  {
                     §§push(this.§[!4§);
                     loop3:
                     while(true)
                     {
                        §§push(§?9§.§,C§);
                        loop4:
                        while(true)
                        {
                           if(§§pop() >= §§pop())
                           {
                              §§push(this.§,%§);
                              if(!(_loc5_ && param2))
                              {
                                 if(§§pop())
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       §§push(this.§,%§);
                                       addr127:
                                       while(true)
                                       {
                                          if(_loc6_ || _loc3_)
                                          {
                                             §§pop().visible = false;
                                             loop17:
                                             while(true)
                                             {
                                                if(_loc6_ || this)
                                                {
                                                   loop6:
                                                   while(true)
                                                   {
                                                      §§push(this.§<9§);
                                                      if(!_loc5_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               if(_loc6_ || _loc3_)
                                                               {
                                                                  addr91:
                                                                  if(!this.§<9§.§0!S§(this.§1!Z§,param1))
                                                                  {
                                                                     loop14:
                                                                     while(_loc6_)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           this.§<3§();
                                                                           addr102:
                                                                           while(true)
                                                                           {
                                                                              if(_loc5_ && this)
                                                                              {
                                                                                 continue loop17;
                                                                              }
                                                                              if(_loc5_)
                                                                              {
                                                                                 continue loop5;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 this.§1!Z§.§'!'§(param1);
                                                                                 while(!_loc5_)
                                                                                 {
                                                                                    continue loop1;
                                                                                    if(!(_loc5_ && param2))
                                                                                    {
                                                                                       return;
                                                                                       addr47:
                                                                                    }
                                                                                 }
                                                                                 addr169:
                                                                                 while(true)
                                                                                 {
                                                                                    addr112:
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop6;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop17;
                                                                           addr102:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§push(-Math.abs(this.§[!4§ - _loc3_));
                                                                              if(!_loc5_)
                                                                              {
                                                                                 if(_loc5_ && _loc3_)
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                                 §§push(_loc3_);
                                                                                 if(!(_loc5_ && this))
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc6_ || _loc3_)
                                                                                    {
                                                                                       §§push(§?9§.§5!]§);
                                                                                       if(!(_loc5_ && param1))
                                                                                       {
                                                                                          addr212:
                                                                                          if(!(_loc6_ || _loc3_))
                                                                                          {
                                                                                             continue loop4;
                                                                                          }
                                                                                          §§push(§§pop() / _loc3_);
                                                                                       }
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc6_ || param1)
                                                                                       {
                                                                                       }
                                                                                       addr230:
                                                                                       if(!(_loc5_ && this))
                                                                                       {
                                                                                          addr237:
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() / 2);
                                                                                                continue loop3;
                                                                                                §§goto(addr237);
                                                                                             }
                                                                                             addr251:
                                                                                          }
                                                                                          _loc4_ = §§pop();
                                                                                          break loop14;
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    §§goto(addr230);
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 §§goto(addr212);
                                                                              }
                                                                              §§goto(addr230);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                              }
                                                                              addr284:
                                                                           }
                                                                           §§goto(addr251);
                                                                        }
                                                                     }
                                                                     continue loop2;
                                                                     addr96:
                                                                  }
                                                                  §§goto(addr59);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(this);
                                                                     §§push(this.§[!4§);
                                                                     if(!(_loc5_ && param2))
                                                                     {
                                                                        §§push(§§pop() + param1);
                                                                     }
                                                                     §§pop().§[!4§ = §§pop();
                                                                  }
                                                                  addr271:
                                                               }
                                                               §§goto(addr284);
                                                            }
                                                            §§goto(addr102);
                                                         }
                                                         §§goto(addr59);
                                                      }
                                                      §§goto(addr91);
                                                   }
                                                   continue loop2;
                                                   addr74:
                                                }
                                                else
                                                {
                                                   addr165:
                                                }
                                                while(true)
                                                {
                                                   §§push(this.§,%§);
                                                   addr167:
                                                   while(true)
                                                   {
                                                      §§pop().alpha = _loc4_;
                                                   }
                                                }
                                                §§goto(addr169);
                                             }
                                          }
                                          §§goto(addr167);
                                       }
                                    }
                                 }
                                 §§goto(addr74);
                              }
                              §§goto(addr127);
                           }
                           §§goto(addr271);
                        }
                     }
                  }
               }
            }
            addr310:
         }
         while(true)
         {
            this.mLevelEngine.§"]§();
            for(; !_loc5_; this.§^6§.update(param1),if(_loc5_ && _loc3_)
            {
               continue;
            },§§goto(addr40))
            {
               if(!_loc5_)
               {
                  if(!_loc5_)
                  {
                     continue;
                  }
                  §§goto(addr310);
               }
               §§goto(addr96);
            }
            §§goto(addr102);
         }
         §§goto(addr47);
      }
      
      public function §@v§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.objects);
            loop0:
            while(true)
            {
               §§push(param1);
               addr93:
               while(true)
               {
                  §§push(1000);
                  addr94:
                  while(true)
                  {
                     §§push(§§pop() * §§pop());
                     addr95:
                     while(true)
                     {
                        §§pop().§2!4§(§§pop());
                        continue loop0;
                     }
                  }
               }
            }
            addr92:
         }
         while(true)
         {
            §§push(this.objects);
            if(_loc3_)
            {
               §§push(param1);
               if(!(_loc2_ && param1))
               {
                  if(_loc3_)
                  {
                     §§push(1000);
                     if(!(_loc2_ && param1))
                     {
                        addr69:
                        §§push(§§pop() * §§pop());
                        if(_loc3_)
                        {
                           §§pop().§6u§(§§pop());
                           while(!(_loc2_ && _loc3_))
                           {
                              this.§!&§();
                              if(!(_loc2_ && param1))
                              {
                                 return;
                              }
                           }
                           continue;
                        }
                        §§goto(addr93);
                     }
                     §§goto(addr94);
                  }
                  §§goto(addr95);
               }
               §§goto(addr69);
            }
            else
            {
               §§goto(addr92);
            }
         }
      }
      
      public function §'=§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§[g§ = null;
         if(_loc4_)
         {
            §§push(this.§5!H§);
            §§push(this.§<I§);
            if(_loc4_ || _loc1_)
            {
               §§push(§§pop() + 1000 / 30);
            }
            if(§§pop() > §§pop())
            {
               if(_loc4_)
               {
                  if(this.§@P§ != null)
                  {
                     §§goto(addr53);
                  }
                  this.§<I§ = this.§5!H§;
               }
            }
            §§goto(addr53);
         }
         addr53:
         var _loc2_:int = 0;
         for each(_loc1_ in this.§@P§)
         {
            if(_loc4_ || this)
            {
               _loc1_.addTrail();
            }
         }
         if(_loc5_ && _loc2_)
         {
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§[g§ = null;
         if(!_loc4_)
         {
            §§push(this);
            §§push(this.mPigsAnimationTimer1);
            if(!_loc4_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().mPigsAnimationTimer1 = §§pop();
            if(!_loc4_)
            {
               §§push(this.mPigsAnimationTimer1);
               if(!(_loc4_ && this))
               {
                  §§push(0);
                  if(_loc3_ || _loc2_)
                  {
                     if(§§pop() <= §§pop())
                     {
                        if(_loc3_)
                        {
                           addr51:
                           §§push(this.§-D§);
                           if(!_loc4_)
                           {
                              §§push(true);
                              if(_loc3_ || _loc2_)
                              {
                                 §§push(§§pop().isPigsAlive(§§pop()));
                                 if(_loc3_ || this)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc3_ || this)
                                       {
                                          addr79:
                                          §§push(this.§-D§);
                                          if(_loc3_)
                                          {
                                             §§push(true);
                                             if(_loc3_ || _loc2_)
                                             {
                                                addr91:
                                                §§push(§§pop().§9D§(§§pop()));
                                                if(_loc3_ || _loc2_)
                                                {
                                                   _loc2_ = §§pop();
                                                   if(_loc3_ || this)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            _loc2_.§5d§.mTryToScream = §%$§.§&!D§;
                                                            if(_loc4_ && _loc3_)
                                                            {
                                                            }
                                                            addr157:
                                                            §§push(this);
                                                            §§push(this.mPigsAnimationTimer2);
                                                            if(!(_loc4_ && _loc3_))
                                                            {
                                                               §§push(§§pop() - param1);
                                                            }
                                                            §§pop().mPigsAnimationTimer2 = §§pop();
                                                            if(_loc3_ || _loc3_)
                                                            {
                                                               addr180:
                                                               if(this.mPigsAnimationTimer2 <= 0)
                                                               {
                                                                  if(_loc3_ || _loc2_)
                                                                  {
                                                                     addr188:
                                                                     §§push(this.§-D§);
                                                                     if(_loc3_)
                                                                     {
                                                                        addr192:
                                                                        §§push(true);
                                                                        if(!(_loc4_ && param1))
                                                                        {
                                                                           §§goto(addr264);
                                                                        }
                                                                        addr206:
                                                                        _loc2_ = §§pop().§9D§(§§pop());
                                                                        if(!(_loc4_ && this))
                                                                        {
                                                                           if(_loc2_)
                                                                           {
                                                                              if(_loc3_ || this)
                                                                              {
                                                                                 _loc2_.§5d§.mTryToBlink = §%$§.§7I§;
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                 }
                                                                                 §§goto(addr264);
                                                                              }
                                                                           }
                                                                           §§goto(addr264);
                                                                        }
                                                                        §§push(this);
                                                                        §§push(250 + Math.random() * 500);
                                                                        if(_loc3_ || _loc3_)
                                                                        {
                                                                           §§push(§§pop() + 2000 / (3 + this.§-D§.§=!P§()));
                                                                        }
                                                                        §§pop().mPigsAnimationTimer2 = §§pop();
                                                                        §§goto(addr264);
                                                                     }
                                                                  }
                                                                  §§goto(addr204);
                                                               }
                                                               §§goto(addr264);
                                                            }
                                                            §§goto(addr188);
                                                         }
                                                      }
                                                      §§goto(addr157);
                                                   }
                                                   §§push(this);
                                                   §§push(500 + Math.random() * 1000);
                                                   if(!_loc4_)
                                                   {
                                                      §§push(§§pop() + 4000 / (3 + this.§-D§.§=!P§()));
                                                   }
                                                   §§pop().mPigsAnimationTimer1 = §§pop();
                                                   §§goto(addr157);
                                                }
                                                §§goto(addr206);
                                             }
                                             §§goto(addr264);
                                          }
                                          §§goto(addr204);
                                       }
                                       §§goto(addr188);
                                    }
                                    §§goto(addr157);
                                 }
                                 addr264:
                                 if(§§pop().isPigsAlive(§§pop()))
                                 {
                                    addr204:
                                    §§push(this.§-D§);
                                    §§push(true);
                                 }
                                 return;
                              }
                              §§goto(addr91);
                           }
                           §§goto(addr192);
                        }
                        §§goto(addr188);
                     }
                     §§goto(addr157);
                  }
               }
               §§goto(addr180);
            }
            §§goto(addr51);
         }
         §§goto(addr79);
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            §§push(param6);
            if(!(_loc8_ && param1))
            {
               §§push(-9999);
               loop0:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     loop1:
                     while(true)
                     {
                        §§push(§7!?§.§%!>§);
                        if(!(_loc8_ && this))
                        {
                           while(true)
                           {
                              §§push(int(§§pop()));
                           }
                           addr189:
                        }
                        loop2:
                        while(true)
                        {
                           param6 = §§pop();
                           addr191:
                           while(true)
                           {
                           }
                           addr147:
                           §§push(param1);
                           if(_loc8_)
                           {
                              continue;
                           }
                           §§push(0);
                           if(_loc8_)
                           {
                              continue loop0;
                           }
                           §§push(§§pop() > §§pop());
                           if(!_loc8_)
                           {
                              loop8:
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(_loc7_ || param3)
                                 {
                                    if(§§pop())
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          if(_loc7_ || param1)
                                          {
                                             §§pop();
                                             loop10:
                                             while(true)
                                             {
                                                if(_loc7_ || param2)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   §§push(this.§;!3§);
                                                   if(_loc7_ || param3)
                                                   {
                                                      if(!(_loc7_ || param2))
                                                      {
                                                         continue loop9;
                                                      }
                                                      addr40:
                                                      if(!(_loc8_ && param1))
                                                      {
                                                         §§push(!§§pop());
                                                         while(true)
                                                         {
                                                            addr49:
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  addr19:
                                                                  return;
                                                               }
                                                               if(_loc8_ && param2)
                                                               {
                                                                  continue loop10;
                                                               }
                                                               if(!_loc8_)
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     this.§=!T§(param1.toString(),param4,param5,800,param6,0,0);
                                                                     continue loop10;
                                                                  }
                                                                  addr159:
                                                                  while(true)
                                                                  {
                                                                     this.§%!N§.addScore(param1);
                                                                     addr153:
                                                                     while(true)
                                                                     {
                                                                        §§push(param3);
                                                                        addr129:
                                                                        while(true)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           if(!(_loc8_ && param1))
                                                                           {
                                                                              §§push(§§pop());
                                                                              break loop8;
                                                                           }
                                                                           addr139:
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                           }
                                                                           §§goto(addr40);
                                                                        }
                                                                        continue loop10;
                                                                     }
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!(_loc7_ || this))
                                                                  {
                                                                     break loop9;
                                                                  }
                                                                  §§goto(addr147);
                                                               }
                                                            }
                                                         }
                                                         addr48:
                                                      }
                                                      §§goto(addr129);
                                                   }
                                                   §§goto(addr49);
                                                }
                                                §§goto(addr153);
                                             }
                                             continue loop2;
                                          }
                                          §§goto(addr139);
                                       }
                                       §§goto(addr191);
                                       addr109:
                                    }
                                    §§goto(addr48);
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    continue;
                                 }
                                 §§goto(addr139);
                              }
                              addr99:
                           }
                           §§goto(addr109);
                        }
                     }
                  }
                  while(true)
                  {
                     §'-§.addScore(param1,param2);
                     §§goto(addr159);
                  }
               }
            }
            §§goto(addr189);
         }
         §§goto(addr191);
      }
      
      public function §=!T§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            §§push(param5);
            if(!(_loc9_ && this))
            {
               if(§§pop() == -9999)
               {
                  while(true)
                  {
                     §§push(§7!?§.§'!!§);
                     if(_loc8_ || param1)
                     {
                        addr90:
                        §§push(int(§§pop()));
                        while(true)
                        {
                           param5 = §§pop();
                           addr91:
                           while(true)
                           {
                           }
                        }
                        addr90:
                     }
                     §§goto(addr90);
                  }
                  addr70:
               }
               while(true)
               {
                  this.§^6§.addParticle(§7!?§.§@I§,§do§.§+Z§,§7!?§.§"L§,param2,param3,param4,param1,param5,param6,param7);
                  if(!(_loc8_ || param2))
                  {
                     continue;
                  }
                  if(_loc8_)
                  {
                     break;
                  }
                  §§goto(addr70);
               }
               return;
               addr59:
            }
            §§goto(addr90);
         }
         §§goto(addr59);
      }
      
      public function §?!C§(param1:§[g§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§@P§);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  continue;
               }
               if(_loc2_)
               {
                  this.§@P§ = new Array();
               }
               while(true)
               {
                  continue loop0;
                  addr38:
                  §§pop().push(param1);
                  if(!(_loc3_ && _loc2_))
                  {
                     return;
                     addr47:
                  }
               }
            }
         }
         §§goto(addr47);
      }
      
      public function §8§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§4M§.§8§();
            while(true)
            {
               this.§-D§.§&l§();
               §§goto(addr71);
            }
         }
         addr71:
         while(true)
         {
            this.§;!3§ = true;
            if(_loc1_ || this)
            {
               if(!(_loc2_ && this))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §,3§(param1:§[g§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§^6§.§#9§(§do§.§`!Z§);
            loop0:
            while(true)
            {
               §§push(this.§@P§);
               loop1:
               while(true)
               {
                  if(§§pop().indexOf(param1) < 0)
                  {
                     while(true)
                     {
                        §§push(this.§@P§);
                        if(_loc2_)
                        {
                           if(!_loc3_)
                           {
                              if(§§pop().length == 0)
                              {
                                 if(!(_loc3_ && param1))
                                 {
                                    if(!(_loc2_ || param1))
                                    {
                                       continue loop0;
                                    }
                                    this.§@P§ = null;
                                 }
                                 if(!(_loc3_ && this))
                                 {
                                    addr72:
                                    break;
                                 }
                                 addr80:
                                 while(true)
                                 {
                                    §§push(this.§@P§);
                                    addr82:
                                    while(true)
                                    {
                                       §§pop().splice(this.§@P§.indexOf(param1),1);
                                       continue loop0;
                                    }
                                 }
                              }
                              break;
                           }
                           continue loop1;
                        }
                        §§goto(addr82);
                     }
                     return;
                     addr28:
                  }
                  §§goto(addr80);
               }
            }
         }
         §§goto(addr72);
      }
      
      public function §1!f§(param1:§ 3§, param2:Number, param3:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            this.§,T§ = this.§-D§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
            if(_loc7_)
            {
               if(param1.name.toUpperCase() == "BIRD_GREEN")
               {
                  addr42:
                  §§push(§7!N§.§"O§);
                  if(_loc7_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc7_)
                     {
                        addr67:
                        §§push(Number(§§pop()));
                     }
                     else
                     {
                        addr59:
                        §§push(Number(§§pop()));
                        if(!(_loc8_ && this))
                        {
                           §§goto(addr67);
                        }
                     }
                     var _loc4_:* = §§pop();
                     if(!_loc8_)
                     {
                        §§push(param1.§<!J§);
                        loop0:
                        while(true)
                        {
                           §§push(1);
                           loop1:
                           while(true)
                           {
                              if(§§pop() > §§pop())
                              {
                                 if(!(_loc8_ && param2))
                                 {
                                    while(true)
                                    {
                                       §§push(this.§,T§);
                                       addr150:
                                       while(true)
                                       {
                                          §§pop().§!!3§(param1.§<!J§);
                                       }
                                    }
                                    addr148:
                                 }
                                 loop2:
                                 while(true)
                                 {
                                    loop3:
                                    while(true)
                                    {
                                       §§push(this.§,T§);
                                       if(!(_loc7_ || param1))
                                       {
                                          break;
                                       }
                                       §§pop().§5d§.§ !T§();
                                       while(true)
                                       {
                                          addr90:
                                          if(!(_loc7_ || param2))
                                          {
                                             continue;
                                          }
                                          if(!_loc7_)
                                          {
                                             continue loop2;
                                          }
                                          §§push(param1.§8M§);
                                          if(_loc7_ || param2)
                                          {
                                             §§push(Number(§§pop()));
                                             if(!_loc8_)
                                             {
                                                addr111:
                                                _loc4_ = §§pop();
                                                if(false)
                                                {
                                                   continue loop3;
                                                }
                                                addr154:
                                                §§push(_loc4_);
                                                if(!(_loc8_ && this))
                                                {
                                                   §§push(-§§pop());
                                                   if(_loc7_ || param1)
                                                   {
                                                      addr170:
                                                      §§push(§§pop() * param2);
                                                      if(_loc7_ || param3)
                                                      {
                                                         §§push(§§pop() * Math.cos(param3 / (180 / Math.PI)));
                                                         if(!_loc8_)
                                                         {
                                                            addr190:
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                   }
                                                   var _loc5_:* = §§pop();
                                                   §§push(_loc4_);
                                                   if(!(_loc8_ && param3))
                                                   {
                                                      §§push(§§pop() * param2);
                                                      if(!_loc8_)
                                                      {
                                                         addr204:
                                                         §§push(§§pop() * Math.sin(param3 / (180 / Math.PI)));
                                                         if(!(_loc8_ && param1))
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                      var _loc6_:* = §§pop();
                                                      if(!_loc8_)
                                                      {
                                                         this.§,T§.§5! §(new b2Vec2(_loc5_,_loc6_),false,true);
                                                         this.camera.§%!E§(§[V§.§"!-§);
                                                         addr263:
                                                         if(!(_loc8_ && param3))
                                                         {
                                                            §§push(this.§96§);
                                                            if(_loc7_ || this)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     addr244:
                                                                     this.§96§.§1!f§(this.mLevelEngine.currentStep,param1.x,param1.y,param2,param3);
                                                                  }
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§goto(addr263);
                                                                  }
                                                               }
                                                               return;
                                                            }
                                                            §§goto(addr244);
                                                            addr270:
                                                         }
                                                         addr290:
                                                         §§goto(addr290);
                                                      }
                                                      §§goto(addr270);
                                                   }
                                                   §§goto(addr204);
                                                }
                                                §§goto(addr190);
                                             }
                                             §§goto(addr170);
                                          }
                                          §§goto(addr111);
                                       }
                                    }
                                    §§goto(addr150);
                                 }
                              }
                              while(true)
                              {
                                 §§push(param1.§8M§);
                                 if(!_loc8_)
                                 {
                                    if(!_loc8_)
                                    {
                                       §§push(0);
                                       if(!_loc8_)
                                       {
                                          if(§§pop() != §§pop())
                                          {
                                             if(_loc7_ || param1)
                                             {
                                                §§goto(addr90);
                                             }
                                             §§goto(addr111);
                                          }
                                          break;
                                       }
                                       continue loop1;
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr111);
                              }
                              §§goto(addr154);
                           }
                        }
                     }
                     §§goto(addr148);
                  }
               }
               else
               {
                  §§push(§7!N§.§0C§);
                  if(_loc7_ || param2)
                  {
                     §§goto(addr59);
                  }
               }
               §§goto(addr67);
            }
         }
         §§goto(addr42);
      }
      
      public function activatePowerup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§&!§ = true;
         }
      }
      
      private function §!&§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§&!§);
            loop0:
            for(; §§pop(); if(!(_loc2_ || _loc2_))
            {
               continue;
            },if(§§pop())
            {
               §§goto(addr142);
            },§§goto(addr60))
            {
               loop1:
               while(true)
               {
                  this.§&!§ = false;
                  loop2:
                  while(true)
                  {
                     §§push(this.activeObject);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop() is §]V§);
                        loop4:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 §§pop();
                                 loop6:
                                 while(true)
                                 {
                                    §§push(this.activeObject);
                                    if(_loc2_ || _loc1_)
                                    {
                                       §§push((§§pop() as §]V§).§,B§);
                                       if(_loc1_)
                                       {
                                          continue loop0;
                                       }
                                       if(!(_loc2_ || this))
                                       {
                                          continue loop5;
                                       }
                                       if(_loc1_ && _loc2_)
                                       {
                                          continue loop4;
                                       }
                                       §§push(!§§pop());
                                       if(!_loc2_)
                                       {
                                          continue loop0;
                                       }
                                       loop7:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             this.§-D§.§&!!§();
                                             break;
                                          }
                                          if(!(_loc1_ && this))
                                          {
                                             if(_loc2_ || _loc1_)
                                             {
                                                §§push(this.activeObject);
                                                break loop6;
                                             }
                                             continue loop6;
                                          }
                                          addr142:
                                          loop11:
                                          while(true)
                                          {
                                             this.§;$§ = true;
                                             addr145:
                                             while(true)
                                             {
                                                if(_loc1_ && this)
                                                {
                                                   continue loop2;
                                                }
                                                if(_loc1_)
                                                {
                                                   break loop0;
                                                }
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(this.§96§);
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            addr42:
                                                            if(_loc1_ && this)
                                                            {
                                                               break loop7;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(this.§96§);
                                                               break loop13;
                                                               §§goto(addr42);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc1_)
                                                            {
                                                               continue loop11;
                                                            }
                                                            if(!_loc2_)
                                                            {
                                                               continue loop1;
                                                            }
                                                         }
                                                         addr55:
                                                      }
                                                      return;
                                                   }
                                                   break;
                                                   addr68:
                                                }
                                                while(true)
                                                {
                                                   §§pop().§;!2§(this.mLevelEngine.currentStep);
                                                   §§goto(addr55);
                                                }
                                             }
                                          }
                                       }
                                       while(!_loc1_)
                                       {
                                          §§goto(addr68);
                                       }
                                       §§goto(addr145);
                                    }
                                    break;
                                 }
                                 if(!_loc1_)
                                 {
                                    §§push(§§pop().activateSpecialPower(this.§7!h§));
                                    continue loop0;
                                 }
                                 continue loop3;
                              }
                           }
                           §§goto(addr111);
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      public function §5!M§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§-D§.§5!M§();
         }
      }
      
      public function §2!`§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§-D§.§66§();
         }
      }
      
      public function §]6§() : §!!K§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§!!K§ = new §!!K§();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.§8Z§ = this.§3!h§.§8Z§;
            while(true)
            {
               _loc1_.§!!<§ = this.§3!h§.§!!<§;
            }
            addr110:
         }
         loop1:
         do
         {
            this.§1!Z§.§5!T§(_loc1_);
            while(_loc2_)
            {
               this.§-D§.§&!=§(_loc1_);
               while(!(_loc3_ && this))
               {
                  this.§4M§.§]!Q§(_loc1_);
                  do
                  {
                     _loc1_.theme = this.§"I§.§0!-§();
                  }
                  while(_loc3_ && _loc3_);
                  
                  if(_loc2_)
                  {
                     continue loop1;
                  }
               }
            }
            §§goto(addr110);
         }
         while(!_loc2_);
         
         return _loc1_;
      }
      
      public function §#d§() : int
      {
         return this.§3!h§.§!!<§;
      }
      
      public function §4m§() : int
      {
         return this.§3!h§.§8Z§;
      }
      
      public function §<4§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§3!h§.§!!<§ = param1;
         }
      }
      
      public function §&X§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§3!h§.§8Z§ = param1;
         }
      }
      
      public function §9!0§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            §§push(this.§>!6§);
            if(_loc4_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§>!6§);
                     addr83:
                     while(true)
                     {
                        §§pop().§%x§(param1,param2);
                        addr86:
                        while(true)
                        {
                        }
                     }
                  }
                  addr81:
               }
               while(true)
               {
                  §§push(this.§1!Z§);
                  if(_loc4_)
                  {
                     if(§§pop())
                     {
                        if(_loc4_ || param1)
                        {
                           if(_loc3_ && param1)
                           {
                              continue;
                           }
                           if(!_loc3_)
                           {
                              §§push(this.§1!Z§);
                              break;
                           }
                           §§goto(addr81);
                        }
                        addr65:
                     }
                     return;
                  }
                  break;
               }
               §§pop().§'!'§(0);
               §§goto(addr65);
            }
            §§goto(addr83);
         }
         §§goto(addr86);
      }
      
      public function get §import§() : §!!K§
      {
         return this.§3!h§;
      }
      
      public function get §7!h§() : §+!6§
      {
         return this.§-D§;
      }
      
      protected function get §#@§() : §%[§
      {
         return this.§+7§;
      }
      
      public function get §2m§() : int
      {
         return §'!1§;
      }
   }
}
