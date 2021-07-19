package §"O§
{
   import §!"W§.§@!X§;
   import §!"e§.§`"W§;
   import §%#W§.§["m§;
   import §'y§.§^!B§;
   import §+D§.§ #^§;
   import §+D§.§^"m§;
   import §,"N§.§6"w§;
   import §,"N§.§@#B§;
   import §5§.§0§;
   import §6!H§.§,#E§;
   import §6!H§.§8!r§;
   import §7P§.§=1§;
   import §;! §.§!Z§;
   import §;"3§.§+H§;
   import §<w§.§6#'§;
   import §="2§.§?!r§;
   import §?m§.§+"2§;
   import §[!m§.§+5§;
   import §[!m§.§[!j§;
   import §^#>§.§15§;
   import §^#>§.§8"f§;
   import §^#>§.§;x§;
   import com.angrybirds.§,!q§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class §^#]§ extends EventDispatcher
   {
      
      public static const §5!&§:int = 0;
      
      public static const §4F§:int = 1;
      
      public static const §%"-§:int = 2;
      
      public static const §-!l§:int = 3;
      
      public static const §1!Z§:int = 4;
      
      public static const §%#'§:String = "event_powerup_used";
      
      private static const §4#1§:int = 25;
      
      public static var §>!e§:Boolean = false;
      
      public static var §>"V§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §5!&§ = 0;
            while(true)
            {
               §4F§ = 1;
               loop1:
               while(true)
               {
                  §%"-§ = 2;
                  addr114:
                  while(true)
                  {
                     §-!l§ = 3;
                     addr99:
                     while(true)
                     {
                        §1!Z§ = 4;
                        continue loop1;
                     }
                  }
               }
               if(_loc1_ && _loc2_)
               {
                  continue;
               }
               §4#1§ = 25;
               §§goto(addr66);
            }
         }
         §§goto(addr61);
      }
      
      private var §?H§:Number = 0;
      
      private var §@!s§:Number;
      
      private var §'f§:Number;
      
      private var §]#<§:Number;
      
      private var get:Timer;
      
      protected var §+!b§:§+"2§;
      
      protected var §4#J§:§@#B§;
      
      protected var §=#=§:§ #^§;
      
      protected var §#"1§:§5#F§;
      
      protected var §3"7§:Vector.<§-#§>;
      
      protected var §0I§:§["m§;
      
      public function §^#]§(param1:§ #^§, param2:§5#F§, param3:§@#B§, param4:§["m§)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§=#=§ = param1;
            addr92:
            while(true)
            {
               this.§#"1§ = param2;
               continue loop0;
            }
         }
      }
      
      public function set §3-§(param1:§+"2§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§+!b§ = param1;
         }
      }
      
      public function get §0";§() : Boolean
      {
         return §>!e§;
      }
      
      public function set §0";§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §>!e§ = param1;
         }
      }
      
      private function init() : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:String = null;
         var _loc5_:* = 0;
         var _loc6_:§8!r§ = null;
         var _loc7_:§^"m§ = null;
         var _loc8_:§-#§ = null;
         if(!(_loc9_ && _loc3_))
         {
            this.§'f§ = this.§=#=§.width - §4#1§;
            loop0:
            while(true)
            {
               this.§]#<§ = this.§=#=§.height;
               while(true)
               {
                  this.§@!s§ = this.§=#=§.x;
                  continue loop0;
                  addr64:
                  if(!(_loc9_ && _loc3_))
                  {
                     if(false)
                     {
                        loop4:
                        while(true)
                        {
                           this.get.addEventListener(TimerEvent.TIMER_COMPLETE,this.§2U§);
                           addr81:
                           while(true)
                           {
                              this.§3"7§ = new Vector.<§-#§>(0);
                              if(_loc9_ && _loc2_)
                              {
                                 continue;
                              }
                              if(_loc10_ || _loc1_)
                              {
                                 if(_loc9_)
                                 {
                                    continue loop0;
                                 }
                                 §§goto(addr64);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    continue loop4;
                                 }
                                 addr89:
                              }
                           }
                        }
                     }
                     var _loc1_:Vector.<String> = new <String>[§6"w§.§,!4§,§6"w§.§3"F§,§6"w§.§ !p§];
                     var _loc2_:Vector.<§8!r§> = this.§4#J§.§]"<§.§;#?§.§^"'§;
                     var _loc3_:int = 0;
                     loop6:
                     while(true)
                     {
                        §§push(_loc3_);
                        loop7:
                        while(§§pop() < _loc1_.length)
                        {
                           _loc4_ = _loc1_[_loc3_];
                           if(!(_loc10_ || _loc2_))
                           {
                              break;
                           }
                           §§push(0);
                           if(_loc10_ || _loc1_)
                           {
                              _loc5_ = §§pop();
                              if(!(_loc9_ && this))
                              {
                                 do
                                 {
                                    §§push(_loc5_);
                                 }
                                 while(_loc10_ || _loc1_);
                                 
                                 continue;
                                 addr295:
                              }
                              break;
                           }
                           while(true)
                           {
                              if(§§pop() >= _loc2_.length)
                              {
                                 if(_loc9_ && _loc2_)
                                 {
                                    break loop7;
                                 }
                                 continue loop6;
                              }
                              §§push((_loc6_ = _loc2_[_loc5_]).§7!%§);
                              if(!(_loc9_ && this))
                              {
                                 §§push(§,#E§.§00§);
                                 if(_loc10_)
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(_loc10_ || _loc1_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc9_ && _loc1_))
                                          {
                                             §§pop();
                                             if(!(_loc9_ && _loc2_))
                                             {
                                                addr240:
                                                if(_loc6_.§="A§ == _loc4_)
                                                {
                                                   if(!(_loc9_ && _loc3_))
                                                   {
                                                      break;
                                                   }
                                                }
                                                else
                                                {
                                                   _loc5_++;
                                                }
                                             }
                                             §§goto(addr295);
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr240);
                           }
                           if(!(_loc7_ = §^"m§(this.§=#=§.getItemByName("Button_PowerUp" + _loc3_))))
                           {
                              if(!_loc9_)
                              {
                                 break loop6;
                              }
                           }
                           (_loc8_ = new §-#§(_loc7_,_loc6_.§="A§)).addEventListener(§-#§.§8"C§,this.§>#5§);
                           if(!_loc9_)
                           {
                              this.§3"7§.push(_loc8_);
                              if(!_loc9_)
                              {
                                 _loc3_++;
                              }
                           }
                           continue loop6;
                        }
                        return;
                     }
                     throw new Error("--#PowerupsUIManager[init]:: Not enough visuals for powerups, missing[" + _loc6_.§="A§ + "]");
                  }
               }
            }
         }
         §§goto(addr81);
      }
      
      public function dispose() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§-#§ = null;
         if(_loc4_ || _loc1_)
         {
            this.disable();
         }
         loop0:
         while(true)
         {
            this.§3"7§.length = 0;
            while(true)
            {
               addr55:
               while(true)
               {
                  this.§#"1§ = null;
                  do
                  {
                     this.§0I§ = null;
                  }
                  while(_loc3_ && _loc3_);
                  
                  if(_loc3_ && _loc3_)
                  {
                     break;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public function enable() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§7!#§();
            if(_loc2_)
            {
               this.§;"N§(0);
            }
         }
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            if(_loc1_ >= this.§3"7§.length)
            {
               loop1:
               while(true)
               {
                  this.§4#J§.§]"<§.addEventListener(§@!X§.§1c§,this.§=!E§);
                  loop2:
                  while(true)
                  {
                     this.§=#=§.addEventListener(§6#'§.§+!>§,this.onUIInteraction);
                     loop3:
                     do
                     {
                        this.§#"1§.view.addEventListener(§6#'§.§+!>§,this.onUIInteraction);
                        for(; _loc2_; §8"f§(§,!q§.§9!,§).§=j§.addEventListener(§+H§.§=Z§,this.§ #R§),if(!_loc3_)
                        {
                           continue loop3;
                        })
                        {
                           if(_loc3_)
                           {
                              continue loop1;
                           }
                           if(_loc2_)
                           {
                              continue;
                           }
                           addr100:
                           if(_loc2_)
                           {
                              continue loop0;
                           }
                        }
                        continue loop2;
                     }
                     while(!_loc2_);
                     
                     return;
                  }
               }
            }
            else
            {
               this.§3"7§[_loc1_].isDisabled = false;
            }
            while(true)
            {
               _loc1_++;
               §§goto(addr100);
            }
         }
      }
      
      public function disable() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §8"f§(§,!q§.§9!,§).§=j§.removeEventListener(§+H§.§=Z§,this.§ #R§);
            loop0:
            while(true)
            {
               this.§=#=§.removeEventListener(§6#'§.§+!>§,this.onUIInteraction);
               addr92:
               if(!(_loc1_ || this))
               {
                  continue;
               }
               this.get.stop();
               loop3:
               while(true)
               {
                  addr71:
                  addr46:
                  while(true)
                  {
                     this.§4#J§.§]"<§.removeEventListener(§@!X§.§1c§,this.§=!E§);
                     do
                     {
                        §>"V§ = §>!e§;
                     }
                     while(_loc2_ && _loc2_);
                     
                     if(_loc1_ || _loc1_)
                     {
                        break;
                     }
                     continue loop3;
                  }
                  if(!(_loc2_ && this))
                  {
                     addr53:
                     if(!(_loc1_ || _loc2_))
                     {
                        while(true)
                        {
                           this.§#"1§.view.removeEventListener(§6#'§.§+!>§,this.onUIInteraction);
                           addr112:
                           while(true)
                           {
                              if(this.get)
                              {
                                 if(_loc2_ && this)
                                 {
                                    continue loop3;
                                 }
                                 §§goto(addr92);
                              }
                              else
                              {
                                 §§goto(addr71);
                              }
                           }
                           continue loop0;
                           §§goto(addr53);
                        }
                        addr121:
                     }
                     return;
                  }
                  §§goto(addr112);
               }
            }
         }
         §§goto(addr121);
      }
      
      public function § !J§(param1:uint) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§-#§ = null;
         if(_loc3_ || this)
         {
            if(param1 < this.§3"7§.length)
            {
               _loc2_ = this.§3"7§[param1];
               addr41:
               if(!_loc4_)
               {
                  return _loc2_.dataID;
               }
            }
            return "";
         }
         §§goto(addr41);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(§,!q§.§9!,§.slingshot.mSlingShotState == §;x§.§?R§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop3:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop6:
                        while(true)
                        {
                           this.get.reset();
                           loop7:
                           while(true)
                           {
                              if(!(_loc2_ && _loc3_))
                              {
                                 this.get.start();
                                 addr107:
                                 loop5:
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       if(_loc3_)
                                       {
                                          addr44:
                                          while(true)
                                          {
                                             this.§;"N§(param1);
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                break;
                                             }
                                             continue loop5;
                                             §§goto(addr44);
                                          }
                                          return;
                                          addr24:
                                       }
                                       continue loop6;
                                    }
                                    continue loop7;
                                 }
                                 addr86:
                                 while(true)
                                 {
                                 }
                                 while(true)
                                 {
                                    §§pop();
                                    §§goto(addr107);
                                 }
                                 addr107:
                                 addr106:
                              }
                              else
                              {
                                 §§goto(addr107);
                              }
                              while(true)
                              {
                                 §§push(!this.get.running);
                                 if(!(_loc2_ && param1))
                                 {
                                    continue loop0;
                                 }
                                 §§goto(addr106);
                              }
                              continue loop3;
                           }
                        }
                        addr76:
                     }
                     §§goto(addr24);
                  }
                  addr74:
               }
               §§goto(addr107);
            }
         }
         §§goto(addr76);
      }
      
      protected function §8"h§(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(§>!e§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  §§push(this.§?H§);
                  loop1:
                  for(; !(_loc3_ && _loc2_); loop4:
                  while(true)
                  {
                     §§push(this.§?H§);
                     if(!(_loc3_ && _loc3_))
                     {
                        if(_loc2_ || _loc3_)
                        {
                           §§push(0);
                           if(!_loc3_)
                           {
                              if(§§pop() <= §§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    if(!(_loc3_ && this))
                                    {
                                       while(true)
                                       {
                                          this.§?H§ = 0;
                                          for(; !_loc3_; §§pop().setVisibility(§§pop()),if(!(_loc3_ && param1))
                                          {
                                             continue loop5;
                                          })
                                          {
                                             if(!_loc3_)
                                             {
                                                §§push(this.§=#=§);
                                                if(_loc2_ || param1)
                                                {
                                                   §§push(false);
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr371);
                                                }
                                                §§goto(addr370);
                                             }
                                             else
                                             {
                                                §§goto(addr126);
                                             }
                                          }
                                          continue loop4;
                                       }
                                       addr104:
                                    }
                                    break;
                                    if(_loc3_ && _loc2_)
                                    {
                                       continue;
                                    }
                                    if(!_loc3_)
                                    {
                                       while(true)
                                       {
                                          §§push(true);
                                          continue loop0;
                                       }
                                       addr28:
                                    }
                                    else
                                    {
                                       if(!_loc3_)
                                       {
                                          if(!(_loc3_ && param1))
                                          {
                                             §§goto(addr112);
                                          }
                                          else
                                          {
                                             §§goto(addr236);
                                          }
                                       }
                                       §§goto(addr235);
                                    }
                                 }
                                 §§goto(addr343);
                              }
                              §§goto(addr28);
                           }
                           else
                           {
                              §§goto(addr125);
                           }
                        }
                        break;
                     }
                     continue loop1;
                  },§§goto(addr164))
                  {
                     §§push(0);
                     while(§§pop() > §§pop())
                     {
                        while(!_loc3_)
                        {
                           §§push(this);
                           §§push(this.§?H§);
                           if(_loc2_ || this)
                           {
                              §§push(0.5);
                              if(_loc2_)
                              {
                                 §§push(§§pop() * param1);
                              }
                              §§push(§§pop() - §§pop());
                           }
                           §§pop().§?H§ = §§pop();
                           continue loop1;
                        }
                        loop17:
                        while(true)
                        {
                           if(!(_loc3_ && param1))
                           {
                              §§push(this);
                              §§push(this.§'f§);
                              if(_loc2_ || this)
                              {
                                 §§push(§§pop() - 20);
                              }
                              §§pop().§?H§ = §§pop();
                              break;
                           }
                           loop7:
                           while(true)
                           {
                              §§push(this.§?H§);
                              while(true)
                              {
                                 §§push(this.§'f§);
                                 if(_loc2_ || _loc2_)
                                 {
                                    §§push(20);
                                    loop9:
                                    while(true)
                                    {
                                       if(_loc2_ || this)
                                       {
                                          §§push(§§pop() - §§pop());
                                       }
                                       else
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             §§push(§§pop() - §§pop());
                                             addr342:
                                             while(true)
                                             {
                                                if(§§pop() < §§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this);
                                                      §§push(this.§?H§);
                                                      if(_loc2_)
                                                      {
                                                         §§push(0.5);
                                                         if(!_loc3_)
                                                         {
                                                            §§push(§§pop() * param1);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      §§pop().§?H§ = §§pop();
                                                      continue loop7;
                                                   }
                                                   addr343:
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this.§?H§);
                                                      addr239:
                                                      while(true)
                                                      {
                                                         §§push(this.§'f§);
                                                         addr241:
                                                         while(_loc2_ || param1)
                                                         {
                                                            continue loop9;
                                                         }
                                                         continue loop10;
                                                      }
                                                   }
                                                   addr236:
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 if(§§pop() <= §§pop())
                                 {
                                    break loop17;
                                 }
                                 continue loop17;
                              }
                           }
                        }
                        §§goto(addr290);
                        §§push(true);
                     }
                     while(true)
                     {
                        §§push(false);
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                        if(_loc2_)
                        {
                           return §§pop();
                        }
                        §§goto(addr148);
                     }
                  }
                  while(true)
                  {
                     §§goto(addr340);
                  }
               }
               §§goto(addr368);
            }
            return §§pop();
         }
         §§goto(addr104);
      }
      
      protected function §>#5§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§'"&§();
         }
      }
      
      protected function §'"&§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:int = 0;
         var _loc3_:§-#§ = null;
         var _loc1_:Boolean = false;
         if(!_loc4_)
         {
            if(!§>!e§)
            {
               if(!_loc4_)
               {
                  _loc2_ = 0;
                  addr32:
                  while(true)
                  {
                     if(_loc2_ >= this.§3"7§.length)
                     {
                        if(!_loc4_)
                        {
                           break;
                        }
                        §§goto(addr103);
                     }
                     _loc3_ = this.§3"7§[_loc2_];
                     if(_loc4_ && _loc3_)
                     {
                        continue;
                     }
                     §§push(_loc3_.§'"Q§);
                     if(_loc5_)
                     {
                        if(§§pop())
                        {
                           if(_loc5_)
                           {
                              addr65:
                              _loc1_ = true;
                              if(!_loc5_)
                              {
                                 continue;
                              }
                           }
                           break;
                        }
                        _loc2_++;
                        continue;
                     }
                     §§goto(addr65);
                  }
               }
               §§goto(addr32);
            }
            §§push(this.§#"1§);
            if(!(_loc4_ && _loc1_))
            {
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     addr101:
                     this.§#"1§.§&#0§(_loc1_);
                  }
               }
               addr103:
               return;
            }
            §§goto(addr101);
         }
         §§goto(addr32);
      }
      
      protected function §;"N§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Rectangle = null;
         if(_loc5_)
         {
            this.§#"1§.update(param1);
         }
         §§push(this.§8"h§(param1));
         if(!(_loc4_ && param1))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc5_)
         {
            if(_loc2_)
            {
               _loc3_ = new Rectangle(this.§'f§ - this.§?H§ - 20,0,this.§'f§ + 30,this.§]#<§);
               addr52:
               if(_loc5_)
               {
                  this.§=#=§.mClip.scrollRect = _loc3_;
               }
            }
            return;
         }
         §§goto(addr52);
      }
      
      public function §8!p§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§#"1§.§`!^§);
            loop0:
            while(§§pop() != true)
            {
               loop1:
               while(true)
               {
                  §§push(§>!e§);
                  if(!(_loc1_ || _loc1_))
                  {
                     break;
                  }
                  if(!§§pop())
                  {
                     §>!e§ = true;
                     loop2:
                     while(true)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           if(!_loc2_)
                           {
                              continue;
                           }
                           addr72:
                           while(true)
                           {
                              §>!e§ = false;
                           }
                        }
                        while(true)
                        {
                           if(_loc1_ || _loc2_)
                           {
                              continue loop2;
                           }
                           continue loop1;
                        }
                     }
                     if(!(_loc2_ && _loc2_))
                     {
                        return;
                        addr35:
                     }
                     break loop0;
                  }
                  §§goto(addr72);
               }
            }
            return;
         }
         §§goto(addr35);
      }
      
      public function §&!O§(param1:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§8"f§(§,!q§.§9!,§).§2!o§());
         if(_loc4_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ < §15§.§5u§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§#"1§);
                  loop1:
                  while(true)
                  {
                     §§push(§§pop().§`!^§);
                     loop2:
                     while(true)
                     {
                        §§push(true);
                        if(!_loc3_)
                        {
                           §§push(§§pop() == §§pop());
                           while(true)
                           {
                              §§push(§§pop());
                              addr194:
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§push(false);
                                 if(_loc3_ && _loc3_)
                                 {
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop5:
                                          while(true)
                                          {
                                             §§pop();
                                             while(true)
                                             {
                                                §§push(param1);
                                                if(_loc4_)
                                                {
                                                   §§push(!§§pop());
                                                   if(_loc4_ || param1)
                                                   {
                                                      addr173:
                                                      if(_loc3_ && param1)
                                                      {
                                                         continue loop5;
                                                      }
                                                      if(_loc3_)
                                                      {
                                                         break;
                                                      }
                                                      loop7:
                                                      while(!§§pop())
                                                      {
                                                         loop8:
                                                         while(true)
                                                         {
                                                            §§push(this.§#"1§);
                                                            loop9:
                                                            while(!_loc3_)
                                                            {
                                                               §§pop().§`!^§ = false;
                                                               loop10:
                                                               for(; !(_loc3_ && _loc2_); loop11:
                                                               while(true)
                                                               {
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     if(_loc3_ && _loc2_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §>!e§ = true;
                                                                     loop12:
                                                                     while(_loc4_ || this)
                                                                     {
                                                                        this.§=!,§();
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc3_ && param1))
                                                                           {
                                                                              continue loop11;
                                                                           }
                                                                           continue loop12;
                                                                           addr73:
                                                                           this.§'"&§();
                                                                           if(!(_loc3_ && param1))
                                                                           {
                                                                              return;
                                                                           }
                                                                        }
                                                                        continue loop11;
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                                  continue loop10;
                                                               },if(_loc4_)
                                                               {
                                                                  §§goto(addr158);
                                                               },continue loop0)
                                                               {
                                                                  if(_loc3_ && _loc3_)
                                                                  {
                                                                     break loop7;
                                                                  }
                                                                  §§push(this.§#"1§);
                                                                  if(_loc3_ && _loc3_)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  if(!(_loc3_ && this))
                                                                  {
                                                                     if(_loc4_ || param1)
                                                                     {
                                                                        §§pop().show();
                                                                        continue;
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                                  addr193:
                                                                  §§goto(addr194);
                                                                  §§push(§§pop().enabled);
                                                               }
                                                               §§push(this.§#"1§);
                                                               break;
                                                            }
                                                            §§pop().show();
                                                            §§goto(addr213);
                                                         }
                                                      }
                                                      if(!(_loc4_ || param1))
                                                      {
                                                         §§goto(addr242);
                                                      }
                                                      §§goto(addr193);
                                                      §§push(this.§#"1§);
                                                   }
                                                   §§goto(addr194);
                                                }
                                                §§goto(addr173);
                                             }
                                             continue loop2;
                                          }
                                       }
                                       §§goto(addr182);
                                    }
                                    addr235:
                                 }
                                 if(§§pop() == §§pop())
                                 {
                                    §§goto(addr210);
                                 }
                              }
                              continue;
                              addr158:
                              return;
                           }
                        }
                        §§goto(addr235);
                     }
                  }
                  addr243:
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
            addr242:
            return;
         }
         §§goto(addr243);
      }
      
      public function §##A§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(§>!e§)
            {
               loop0:
               while(true)
               {
                  this.get.reset();
                  while(true)
                  {
                     this.get.start();
                     while(!(_loc2_ && this))
                     {
                        loop6:
                        while(_loc1_ || _loc2_)
                        {
                           this.§'"&§();
                           if(!_loc2_)
                           {
                              addr33:
                              if(!_loc1_)
                              {
                                 while(true)
                                 {
                                    if(_loc1_)
                                    {
                                       this.§>"W§();
                                       continue loop6;
                                    }
                                    continue loop0;
                                    §§goto(addr33);
                                 }
                                 addr51:
                              }
                              return;
                              addr35:
                           }
                        }
                     }
                  }
               }
            }
            while(true)
            {
               §§push(this.§#"1§);
               if(_loc1_ || _loc2_)
               {
                  §§push(§>!e§);
                  if(!(_loc2_ && this))
                  {
                     if(§§pop())
                     {
                        addr83:
                        §§push(true);
                        if(_loc2_)
                        {
                        }
                     }
                     else
                     {
                        §§push(false);
                     }
                  }
                  §§pop().hide(§§pop());
                  §§goto(addr89);
               }
               §§goto(addr83);
            }
         }
         §§goto(addr35);
      }
      
      public function §=!,§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:§-#§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§3"7§.length)
         {
            _loc1_ = this.§3"7§[_loc2_];
            if(!(_loc3_ && _loc1_))
            {
               _loc1_.isDisabled = false;
               if(_loc3_)
               {
                  continue;
               }
            }
            _loc2_++;
         }
      }
      
      public function §>"W§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:§-#§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§3"7§.length)
         {
            _loc1_ = this.§3"7§[_loc2_];
            if(_loc3_)
            {
               _loc1_.isDisabled = true;
               if(!(_loc3_ || this))
               {
                  continue;
               }
            }
            _loc2_++;
         }
      }
      
      private function § #R§(param1:§+H§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(!param1.allowNextPowerUp)
            {
               this.§>"W§();
               if(_loc2_ || _loc3_)
               {
                  if(!(_loc2_ || _loc3_))
                  {
                     addr71:
                     this.§=!,§();
                     addr73:
                  }
                  else
                  {
                     addr67:
                  }
                  return;
               }
               §§goto(addr73);
            }
            §§goto(addr71);
         }
         §§goto(addr67);
      }
      
      private function §2U§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §>!e§ = false;
         }
      }
      
      public function §0"[§(param1:String) : int
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:§[!j§ = null;
         var _loc6_:§0#2§ = null;
         var _loc2_:§8!r§ = this.§4#J§.§]"<§.§;#?§.§<Z§(param1);
         if(_loc7_ || _loc2_)
         {
            if(_loc2_ == null)
            {
               if(!(_loc8_ && _loc2_))
               {
                  §§goto(addr47);
               }
            }
            §§push(this.§4#J§.§]"<§.§ #D§(_loc2_.§="A§));
            if(_loc7_)
            {
               §§push(Boolean(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(this.§4#J§.§]"<§.§8#K§(_loc2_.§="A§));
            if(_loc7_)
            {
               §§push(int(§§pop()));
            }
            var _loc4_:*;
            §§push(_loc4_ = §§pop());
            if(_loc7_)
            {
               §§push(0);
               if(!(_loc8_ && this))
               {
                  §§push(§§pop() <= §§pop());
                  if(_loc7_ || _loc3_)
                  {
                     §§push(§§pop());
                     if(_loc7_ || _loc3_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc8_ && param1))
                           {
                              §§pop();
                              if(_loc7_)
                              {
                                 §§push(_loc3_);
                                 if(_loc7_)
                                 {
                                    §§push(false);
                                    if(!_loc8_)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(!(_loc8_ && this))
                                       {
                                          addr125:
                                          if(§§pop())
                                          {
                                             if(!(_loc8_ && param1))
                                             {
                                                _loc5_ = new §!Z§(§`"W§.§?z§,§+5§.§>!g§,§^!B§.§0#"§,_loc2_.§="A§);
                                                if(_loc7_ || this)
                                                {
                                                   §4#;§.singleton.popupManager.openPopup(_loc5_,true,true,true);
                                                   if(!_loc7_)
                                                   {
                                                      addr164:
                                                      this.§%v§(param1,false);
                                                      if(!_loc8_)
                                                      {
                                                         §§push(_loc2_.§+'§);
                                                         if(_loc7_)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            if(!(_loc8_ && _loc3_))
                                                            {
                                                               addr431:
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
                                                                        if(_loc7_ || this)
                                                                        {
                                                                           §§push(§8"f§(§,!q§.§9!,§).§2!o§());
                                                                           loop16:
                                                                           while(true)
                                                                           {
                                                                              §§push(§15§.§5u§);
                                                                              loop17:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() >= §§pop());
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       addr415:
                                                                                       loop5:
                                                                                       while(!§§pop())
                                                                                       {
                                                                                          loop6:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc2_.§7!%§);
                                                                                             loop7:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§,#E§.§00§);
                                                                                                loop8:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() == §§pop());
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      loop19:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         if(_loc7_ || param1)
                                                                                                         {
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               continue loop14;
                                                                                                            }
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               loop20:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     if(!_loc7_)
                                                                                                                     {
                                                                                                                        break loop15;
                                                                                                                     }
                                                                                                                     §§push(_loc2_.§7!%§);
                                                                                                                     loop21:
                                                                                                                     while(_loc7_)
                                                                                                                     {
                                                                                                                        §§push(§,#E§.§'"d§);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc8_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() == §§pop());
                                                                                                                              if(!(_loc7_ || _loc2_))
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr460:
                                                                                                                              }
                                                                                                                              continue loop20;
                                                                                                                              break loop19;
                                                                                                                           }
                                                                                                                           break;
                                                                                                                           addr252:
                                                                                                                           §§push(§=1§.§+"§);
                                                                                                                           if(_loc8_)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           if(§§pop() == §§pop())
                                                                                                                           {
                                                                                                                              if(!(_loc8_ && this))
                                                                                                                              {
                                                                                                                                 if(_loc8_ && param1)
                                                                                                                                 {
                                                                                                                                    addr371:
                                                                                                                                    loop30:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§,!q§.§9!,§);
                                                                                                                                       if(_loc7_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().slingshot);
                                                                                                                                          if(_loc7_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().getCurrentBirdType());
                                                                                                                                             if(!_loc7_)
                                                                                                                                             {
                                                                                                                                                continue loop21;
                                                                                                                                             }
                                                                                                                                             §§goto(addr252);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().getBirdCount());
                                                                                                                                                if(_loc7_ || this)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc7_ || param1))
                                                                                                                                                   {
                                                                                                                                                      continue loop16;
                                                                                                                                                   }
                                                                                                                                                   loop29:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(0);
                                                                                                                                                      if(_loc7_ || param1)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc7_)
                                                                                                                                                         {
                                                                                                                                                            continue loop17;
                                                                                                                                                         }
                                                                                                                                                         if(§§pop() > §§pop())
                                                                                                                                                         {
                                                                                                                                                            continue loop30;
                                                                                                                                                         }
                                                                                                                                                         if(_loc8_ && _loc3_)
                                                                                                                                                         {
                                                                                                                                                            break loop5;
                                                                                                                                                         }
                                                                                                                                                         §§push(§-!l§);
                                                                                                                                                         if(!(_loc8_ && param1))
                                                                                                                                                         {
                                                                                                                                                            return §§pop();
                                                                                                                                                         }
                                                                                                                                                         addr506:
                                                                                                                                                         addr506:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§15§.§5u§);
                                                                                                                                                            break loop29;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() >= §§pop());
                                                                                                                                                      break loop8;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr329:
                                                                                                                                          }
                                                                                                                                          §§goto(addr482);
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§goto(addr329);
                                                                                                                                    }
                                                                                                                                    addr328:
                                                                                                                                 }
                                                                                                                                 §§push(§1!Z§);
                                                                                                                                 if(_loc7_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    return §§pop();
                                                                                                                                 }
                                                                                                                                 §§goto(addr482);
                                                                                                                              }
                                                                                                                              loop4:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 dispatchEvent(new Event(§%#'§));
                                                                                                                                 if(!_loc7_)
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 if(!_loc8_)
                                                                                                                                 {
                                                                                                                                    break loop15;
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    addr496:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §?!r§.§"#_§("powerup_selected");
                                                                                                                                       continue loop4;
                                                                                                                                    }
                                                                                                                                    continue loop4;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr482:
                                                                                                                              return §§pop();
                                                                                                                              addr500:
                                                                                                                           }
                                                                                                                           loop26:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §8"f§(§,!q§.§9!,§).§=j§.§0"[§(param1);
                                                                                                                              loop27:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 addr216:
                                                                                                                                 addr196:
                                                                                                                                 loop11:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§4#J§);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop().§]"<§.§#"0§ = "";
                                                                                                                                       if(!(_loc8_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          if(_loc8_)
                                                                                                                                          {
                                                                                                                                             continue loop27;
                                                                                                                                          }
                                                                                                                                          §§push(this.§4#J§);
                                                                                                                                          if(!(_loc7_ || _loc3_))
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          if(!§§pop().userProgress.hasTutorialBeenSeen(param1))
                                                                                                                                          {
                                                                                                                                             (_loc6_ = §4#;§.singleton.tutorialPopupManager).§,!c§(param1,§+5§.TOP);
                                                                                                                                             addr453:
                                                                                                                                             §§push(_loc2_.§+'§);
                                                                                                                                             if(!_loc8_)
                                                                                                                                             {
                                                                                                                                                addr457:
                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                if(_loc7_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr460);
                                                                                                                                                }
                                                                                                                                                break loop8;
                                                                                                                                             }
                                                                                                                                             break loop8;
                                                                                                                                          }
                                                                                                                                          if(!_loc8_)
                                                                                                                                          {
                                                                                                                                             if(_loc7_)
                                                                                                                                             {
                                                                                                                                                addr189:
                                                                                                                                                if(_loc7_ || this)
                                                                                                                                                {
                                                                                                                                                   break loop11;
                                                                                                                                                }
                                                                                                                                                continue loop6;
                                                                                                                                             }
                                                                                                                                             continue loop26;
                                                                                                                                          }
                                                                                                                                          §§goto(addr506);
                                                                                                                                          §§push(§8"f§(§,!q§.§9!,§).§2!o§());
                                                                                                                                       }
                                                                                                                                       addr527:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          this.§##A§();
                                                                                                                                          §§goto(addr529);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop27;
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    this.§0I§.§]"m§(param1);
                                                                                                                                    if(_loc7_ || this)
                                                                                                                                    {
                                                                                                                                       if(!(_loc8_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          if(false)
                                                                                                                                          {
                                                                                                                                             §§goto(addr216);
                                                                                                                                          }
                                                                                                                                          §§goto(addr453);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr355);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr527);
                                                                                                                                    §§goto(addr189);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop8;
                                                                                                                     }
                                                                                                                     continue loop7;
                                                                                                                  }
                                                                                                                  continue loop15;
                                                                                                               }
                                                                                                            }
                                                                                                            while(§§pop())
                                                                                                            {
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                                  addr418:
                                                                                                                  if(_loc7_ || param1)
                                                                                                                  {
                                                                                                                     §§goto(addr328);
                                                                                                                     §§push(§,!q§.§9!,§);
                                                                                                                  }
                                                                                                                  §§push(§4F§);
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                     return §§pop();
                                                                                                                  }
                                                                                                                  §§goto(addr482);
                                                                                                               }
                                                                                                               §§goto(addr355);
                                                                                                            }
                                                                                                            §§goto(addr232);
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            addr464:
                                                                                                            §§pop();
                                                                                                            if(_loc7_ || this)
                                                                                                            {
                                                                                                               §§goto(addr472);
                                                                                                            }
                                                                                                            §§goto(addr529);
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      break;
                                                                                                      addr380:
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                addr509:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(_loc7_ || this)
                                                                                                      {
                                                                                                         §§goto(addr527);
                                                                                                      }
                                                                                                      §§goto(addr529);
                                                                                                   }
                                                                                                   §§goto(addr496);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       this.§##A§();
                                                                                       §§goto(addr418);
                                                                                    }
                                                                                    addr414:
                                                                                 }
                                                                                 §§goto(addr509);
                                                                              }
                                                                           }
                                                                        }
                                                                        break;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(§5!&§);
                                                                        if(_loc8_ && this)
                                                                        {
                                                                           §§goto(addr506);
                                                                        }
                                                                        §§goto(addr482);
                                                                     }
                                                                     addr495:
                                                                  }
                                                                  §§goto(addr414);
                                                               }
                                                               addr432:
                                                            }
                                                            §§goto(addr457);
                                                         }
                                                         §§goto(addr464);
                                                      }
                                                      §§goto(addr196);
                                                   }
                                                }
                                                return §%"-§;
                                             }
                                             §§goto(addr495);
                                          }
                                          §§goto(addr164);
                                       }
                                       §§goto(addr460);
                                    }
                                    §§goto(addr432);
                                 }
                                 §§goto(addr431);
                              }
                              §§goto(addr500);
                           }
                           §§goto(addr415);
                        }
                        §§goto(addr125);
                     }
                     §§goto(addr431);
                  }
                  §§goto(addr380);
               }
               §§goto(addr508);
            }
            §§goto(addr344);
         }
         addr47:
         throw new Error("Unknown powerup: " + param1);
      }
      
      public function §%v§(param1:String, param2:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§-#§ = null;
         var _loc4_:int = 0;
         while(true)
         {
            if(_loc4_ >= this.§3"7§.length)
            {
               return;
            }
            _loc3_ = this.§3"7§[_loc4_];
            if(!(_loc6_ && this))
            {
               if(_loc3_.dataID != param1)
               {
                  do
                  {
                     _loc4_++;
                  }
                  while(_loc6_ && param1);
                  
                  if(_loc5_ || _loc3_)
                  {
                     if(_loc5_ || param1)
                     {
                        if(false)
                        {
                           §§goto(addr72);
                        }
                        continue;
                     }
                  }
                  break;
               }
               §§push(_loc3_);
               §§push(param2);
               if(_loc5_ || _loc3_)
               {
                  §§push(!§§pop());
               }
               §§pop().isDisabled = §§pop();
               break;
            }
            break;
         }
         addr72:
      }
      
      private function §7!#§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= this.§3"7§.length)
            {
               if(!(_loc2_ || _loc1_))
               {
                  continue;
               }
               if(!(_loc3_ && _loc3_))
               {
                  break;
               }
            }
            else
            {
               this.§3"7§[_loc1_].count = this.§4#J§.§]"<§.§8#K§(this.§3"7§[_loc1_].dataID);
            }
            _loc1_++;
         }
      }
      
      private function §=!E§(param1:§@!X§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§3"7§.length)
            {
               if(!(_loc3_ || this))
               {
                  continue;
               }
               if(!_loc4_)
               {
                  if(!(_loc4_ && param1))
                  {
                     if(!_loc4_)
                     {
                        return;
                     }
                     break;
                  }
                  return;
                  addr96:
               }
            }
            else if(this.§3"7§[_loc2_].dataID == param1.§6#R§)
            {
               break;
            }
            _loc2_++;
         }
         this.§3"7§[_loc2_].count = this.§4#J§.§]"<§.§8#K§(this.§3"7§[_loc2_].dataID);
         §§goto(addr96);
      }
      
      protected function onUIInteraction(param1:§6#'§) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:* = null;
         var _loc4_:* = 0;
         var _loc5_:* = false;
         if(!(_loc8_ && _loc2_))
         {
            §§push(param1.§=!k§);
            loop0:
            while(§§pop().indexOf("USE_POWERUP_") != -1)
            {
               loop1:
               while(true)
               {
                  §§push(int(parseInt(param1.§=!k§.substr(String("USE_POWERUP_").length))));
                  loop2:
                  while(true)
                  {
                     _loc2_ = §§pop();
                     if(!(_loc8_ && this))
                     {
                        §§push(this.§ !J§(_loc2_));
                        if(!(_loc8_ && this))
                        {
                           §§push(§§pop());
                           if(_loc7_)
                           {
                              addr166:
                              if(_loc8_)
                              {
                                 continue loop0;
                              }
                              _loc3_ = §§pop();
                              if(_loc7_ || _loc3_)
                              {
                                 if(!(_loc7_ || param1))
                                 {
                                    continue loop1;
                                 }
                                 §§push(this.§0"[§(_loc3_));
                                 if(_loc7_)
                                 {
                                    §§push(int(§§pop()));
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       addr134:
                                       addr42:
                                       while(true)
                                       {
                                          _loc4_ = §§pop();
                                       }
                                       if(_loc8_ && _loc2_)
                                       {
                                          continue;
                                       }
                                       if(!_loc7_)
                                       {
                                          continue loop2;
                                       }
                                       §§push(§5!&§);
                                       if(!_loc8_)
                                       {
                                          if(!(_loc8_ && param1))
                                          {
                                             if(!_loc7_)
                                             {
                                                §§goto(addr134);
                                             }
                                             if(§§pop() == §§pop())
                                             {
                                                if(_loc7_ || _loc2_)
                                                {
                                                   return;
                                                }
                                                break loop2;
                                             }
                                             break loop0;
                                          }
                                          loop6:
                                          while(true)
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(!_loc8_)
                                             {
                                                if(!§§pop())
                                                {
                                                   if(!(_loc8_ && _loc2_))
                                                   {
                                                      §§pop();
                                                      if(!_loc8_)
                                                      {
                                                         §§push(_loc4_);
                                                         loop7:
                                                         for(; _loc7_ || _loc3_; §§push(_loc4_),if(_loc8_ && _loc2_)
                                                         {
                                                            continue;
                                                         },§§goto(addr42))
                                                         {
                                                            §§push(§-!l§);
                                                            while(true)
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               if(!_loc7_)
                                                               {
                                                                  break;
                                                               }
                                                               loop9:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     continue loop7;
                                                                  }
                                                                  if(!(_loc8_ && _loc3_))
                                                                  {
                                                                     addr108:
                                                                     §§push(this.§#"1§);
                                                                     if(_loc7_ || param1)
                                                                     {
                                                                        §§pop().§@#D§();
                                                                        if(!(_loc8_ && param1))
                                                                        {
                                                                           return;
                                                                        }
                                                                        addr242:
                                                                        §§push(this.§#"1§);
                                                                        if(_loc7_ || this)
                                                                        {
                                                                           §§push(false);
                                                                           if(!(_loc8_ && this))
                                                                           {
                                                                              var _loc6_:*;
                                                                              §§push(_loc6_ = §§pop());
                                                                              if(_loc7_ || param1)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 if(_loc7_ || _loc3_)
                                                                                 {
                                                                                    addr276:
                                                                                    _loc5_ = §§pop();
                                                                                    §§push(_loc6_);
                                                                                 }
                                                                                 if(!(_loc8_ && _loc3_))
                                                                                 {
                                                                                    addr286:
                                                                                    §§pop().§`!^§ = §§pop();
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       §§push(this.§#"1§);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(true);
                                                                                          addr356:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().visible = §§pop();
                                                                                             addr357:
                                                                                             loop15:
                                                                                             while(true)
                                                                                             {
                                                                                                §?!r§.§"#_§("misc_menubuttonproceed_1");
                                                                                                addr350:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                   }
                                                                                                   continue loop15;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr355:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       loop12:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§8!p§();
                                                                                          addr325:
                                                                                          loop20:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§#"1§);
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                loop16:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc5_);
                                                                                                   if(_loc7_ || this)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop().§`!^§ = §§pop();
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            continue loop20;
                                                                                                         }
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               break loop9;
                                                                                                            }
                                                                                                            if(_loc7_ || _loc2_)
                                                                                                            {
                                                                                                               break loop2;
                                                                                                            }
                                                                                                            §§goto(addr350);
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            continue loop12;
                                                                                                         }
                                                                                                         continue loop16;
                                                                                                      }
                                                                                                      addr307:
                                                                                                   }
                                                                                                   §§goto(addr357);
                                                                                                }
                                                                                                addr299:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr355);
                                                                                             }
                                                                                             §§goto(addr356);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr352:
                                                                                 }
                                                                                 §§goto(addr307);
                                                                              }
                                                                              §§goto(addr276);
                                                                           }
                                                                           §§goto(addr286);
                                                                        }
                                                                     }
                                                                     §§goto(addr299);
                                                                  }
                                                                  §§goto(addr357);
                                                               }
                                                               while(true)
                                                               {
                                                                  §?!r§.§"#_§("misc_menubuttonback_1");
                                                                  §§goto(addr330);
                                                               }
                                                            }
                                                            _loc5_ = §§pop();
                                                            §§goto(addr335);
                                                         }
                                                         while(true)
                                                         {
                                                            continue loop6;
                                                         }
                                                         addr135:
                                                      }
                                                      §§goto(addr325);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr99);
                                             }
                                             break;
                                          }
                                          addr239:
                                          if(!§§pop())
                                          {
                                             if(_loc7_)
                                             {
                                                §§goto(addr242);
                                             }
                                             §§goto(addr352);
                                          }
                                          else
                                          {
                                             §§goto(addr334);
                                             §§push(true);
                                          }
                                          §§goto(addr335);
                                       }
                                       §§goto(addr96);
                                    }
                                 }
                                 §§goto(addr135);
                              }
                              §§goto(addr325);
                           }
                           addr221:
                           if(§§pop() == "OPEN_POWERUP_MENU")
                           {
                              if(!(_loc8_ && param1))
                              {
                                 §§push(this.§0";§);
                                 if(!(_loc8_ && this))
                                 {
                                    §§goto(addr239);
                                 }
                                 §§goto(addr334);
                              }
                              §§goto(addr325);
                           }
                           §§goto(addr291);
                        }
                        §§goto(addr166);
                     }
                     break;
                  }
                  addr291:
                  return;
               }
            }
            §§goto(addr221);
            §§push(param1.§=!k§);
         }
         §§goto(addr108);
      }
   }
}
