package §3"#§
{
   import §0N§.§2!@§;
   import com.rovio.assets.§ !h§;
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.media.Sound;
   import flash.media.SoundLoaderContext;
   import flash.media.SoundMixer;
   import flash.media.SoundTransform;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §<!O§
   {
      
      private static const §?%§:int = 64;
      
      private static var §9"5§:Boolean = true;
      
      private static var §"!b§:int;
      
      private static var §]"§:Dictionary;
      
      private static var §@!Z§:Dictionary;
      
      private static var §!<§:Dictionary;
      
      public static const §>m§:String = "Default_Channel";
      
      public static const §4!N§:Boolean = false;
      
      private static var §,P§:Boolean = true;
      
      private static var §=L§:EventDispatcher;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §?%§ = 64;
            loop0:
            while(true)
            {
               §9"5§ = true;
               while(true)
               {
                  §>m§ = "Default_Channel";
                  loop2:
                  for(; !(_loc2_ && _loc1_); if(!(_loc2_ && §<!O§))
                  {
                     if(_loc1_)
                     {
                        return;
                        addr54:
                     }
                     continue loop0;
                  })
                  {
                     §4!N§ = false;
                     while(true)
                     {
                        §,P§ = true;
                        while(_loc1_ || §<!O§)
                        {
                           §=L§ = new EventDispatcher();
                           if(_loc1_ || _loc1_)
                           {
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      public function §<!O§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || §<!O§)
         {
            §,P§ = param1;
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §]"§ = new Dictionary();
         }
         loop0:
         while(true)
         {
            §@!Z§ = new Dictionary();
            loop1:
            do
            {
               §!<§ = new Dictionary();
               while(!_loc1_)
               {
                  §"!b§ = 0;
                  do
                  {
                     §;!D§(§>m§,4,1);
                  }
                  while(_loc1_);
                  
                  if(_loc2_)
                  {
                     continue loop1;
                  }
               }
               continue loop0;
            }
            while(_loc1_);
            
            return;
         }
      }
      
      public static function §;!D§(param1:String, param2:int, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            §§push(!param1);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc5_ || §<!O§)
                           {
                              if(_loc5_)
                              {
                                 break;
                              }
                              addr156:
                              while(true)
                              {
                                 §§push(§4d§(param1) == null);
                                 if(_loc5_ || param3)
                                 {
                                    if(!(_loc6_ && param1))
                                    {
                                       continue loop0;
                                    }
                                    continue;
                                 }
                                 continue loop3;
                              }
                           }
                           else
                           {
                              while(true)
                              {
                                 addr76:
                                 if(!(_loc5_ || param2))
                                 {
                                    continue;
                                 }
                                 if(false)
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       §§push(§"!b§);
                                       loop6:
                                       while(true)
                                       {
                                          §§push(§?%§);
                                          loop7:
                                          while(§§pop() < §§pop())
                                          {
                                             while(true)
                                             {
                                                §§push(§"!b§);
                                                if(!(_loc6_ && param3))
                                                {
                                                   §§push(param2);
                                                   if(_loc5_ || param3)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         continue loop7;
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc6_)
                                                      {
                                                         if(§§pop() < §?%§)
                                                         {
                                                            break loop5;
                                                         }
                                                         if(_loc5_)
                                                         {
                                                            §§push(§?%§);
                                                            if(!(_loc6_ && param3))
                                                            {
                                                               addr59:
                                                               if(_loc6_)
                                                               {
                                                                  continue loop6;
                                                               }
                                                               addr63:
                                                               §§push(int(§§pop() - §"!b§));
                                                            }
                                                            param2 = §§pop();
                                                         }
                                                         if(!_loc6_)
                                                         {
                                                            break;
                                                         }
                                                         continue;
                                                      }
                                                   }
                                                   §§goto(addr63);
                                                }
                                                §§goto(addr59);
                                             }
                                             if(!(_loc6_ && param2))
                                             {
                                                if(_loc6_)
                                                {
                                                   break;
                                                }
                                                §§goto(addr76);
                                             }
                                             return;
                                          }
                                          §§push(§4!N§);
                                          if(!(_loc5_ || param3))
                                          {
                                             continue loop3;
                                          }
                                          if(!§§pop())
                                          {
                                          }
                                          §§goto(addr108);
                                       }
                                    }
                                    addr85:
                                 }
                                 var _loc4_:§5!W§;
                                 (_loc4_ = new §5!W§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§2;§);
                                 if(!_loc6_)
                                 {
                                    _loc4_.addEventListener(ErrorEvent.ERROR,§ 3§);
                                 }
                                 §]"§[param1.toLowerCase()] = _loc4_;
                                 §"!b§ += param2;
                                 addr209:
                                 if(_loc5_)
                                 {
                                    if(_loc6_)
                                    {
                                       §§goto(addr209);
                                    }
                                    return;
                                 }
                                 addr203:
                                 §§goto(addr203);
                              }
                           }
                        }
                        §§goto(addr85);
                     }
                     return;
                  }
                  addr138:
               }
               §§goto(addr155);
            }
         }
         §§goto(addr156);
      }
      
      public static function §4d§(param1:String) : §5!W§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!param1)
            {
               if(!_loc2_)
               {
                  return null;
               }
            }
         }
         return §]"§[param1.toLowerCase()];
      }
      
      public static function §`"$§() : Vector.<String>
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §]"§)
         {
            if(!_loc5_)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public static function §!p§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(param1 != §9"5§)
            {
               loop0:
               while(true)
               {
                  §9"5§ = param1;
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        if(!(_loc2_ || param1))
                        {
                           break;
                        }
                        §>!9§(§9"5§);
                        if(_loc2_ || §<!O§)
                        {
                           return;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public static function §]t§(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§5!W§ = null;
         var _loc3_:int = 0;
         for each(_loc2_ in §]"§)
         {
            if(!(_loc5_ && param1))
            {
               if(param1)
               {
                  if(!(_loc5_ && param1))
                  {
                     _loc2_.§`!d§();
                     if(_loc5_ && _loc3_)
                     {
                     }
                  }
               }
               else
               {
                  _loc2_.§%!?§();
               }
            }
         }
      }
      
      protected static function §>!9§(param1:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(param1)
            {
               §§goto(addr21);
            }
            else
            {
               §§push(0);
            }
            §§goto(addr44);
         }
         addr21:
         §§push(1);
         if(!_loc3_)
         {
            §§push(Number(§§pop()));
            if(!(_loc3_ && _loc2_))
            {
               addr47:
               §§push(Number(§§pop()));
            }
         }
         else
         {
            addr44:
            §§push(Number(§§pop()));
            if(_loc4_)
            {
               §§goto(addr47);
            }
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            SoundMixer.soundTransform = new SoundTransform(_loc2_);
         }
      }
      
      public static function §'N§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§5!W§ = null;
         for each(_loc1_ in §]"§)
         {
            if(!(_loc4_ && _loc1_))
            {
               _loc1_.§'N§();
            }
         }
         if(!_loc4_)
         {
            dispatchEvent(new §@U§(§@U§.§1v§));
         }
      }
      
      public static function get §?!2§() : Boolean
      {
         return §9"5§;
      }
      
      private static function §7p§(param1:String, param2:String) : §5!W§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(!§,P§)
            {
               if(!_loc5_)
               {
                  §§goto(addr22);
               }
            }
            var _loc3_:§5!W§ = §4d§(param1);
            if(!_loc5_)
            {
               if(!_loc3_)
               {
                  if(!_loc5_)
                  {
                     addr128:
                     if(§4!N§)
                     {
                        addr129:
                        §§push(§2!@§);
                        §§push("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2);
                        if(_loc4_)
                        {
                           §§push(§§pop() + " because this channel does not exist ");
                           if(!(_loc5_ && _loc3_))
                           {
                              addr154:
                              §§push(§§pop() + param1);
                           }
                           §§pop().log(§§pop());
                           addr121:
                           return null;
                           addr119:
                           addr157:
                        }
                        §§goto(addr154);
                     }
                     §§goto(addr119);
                  }
                  §§goto(addr129);
               }
               else
               {
                  while(true)
                  {
                     §§push(_loc3_.§`K§());
                     if(!(_loc5_ && param2))
                     {
                        if(_loc4_ || §<!O§)
                        {
                           if(§§pop())
                           {
                              §§goto(addr32);
                           }
                           addr88:
                           if(§4!N§)
                           {
                              if(_loc4_)
                              {
                                 §§push(§2!@§);
                                 §§push("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2);
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    §§push(§§pop() + " this channel is full ");
                                    if(!_loc5_)
                                    {
                                       addr106:
                                       §§push(§§pop() + param1);
                                    }
                                    §§pop().log(§§pop());
                                    if(_loc5_ && param1)
                                    {
                                       continue;
                                    }
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    addr37:
                                    §§push(null);
                                    if(_loc4_)
                                    {
                                       return §§pop();
                                    }
                                    §§goto(addr121);
                                 }
                                 §§goto(addr106);
                              }
                              else
                              {
                                 §§goto(addr129);
                              }
                           }
                           §§goto(addr37);
                        }
                        else
                        {
                           §§goto(addr128);
                        }
                     }
                     §§goto(addr88);
                  }
                  §§goto(addr157);
               }
            }
            addr32:
            return _loc3_;
         }
         addr22:
         return null;
      }
      
      public static function §!!y§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §3![§
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§@U§ = null;
         var _loc8_:§5!W§;
         if(!(_loc8_ = §7p§(param4,param2)))
         {
            if(!(_loc14_ && param3))
            {
               §§push(null);
               if(_loc15_)
               {
                  return §§pop();
               }
            }
            else
            {
               addr58:
               return null;
            }
            return §§pop();
         }
         if(§!<§[param2])
         {
            if(_loc15_ || param3)
            {
               §§goto(addr58);
            }
         }
         var _loc9_:Sound;
         if((_loc9_ = §@!Z§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§3!F§);
            if(_loc15_ || param2)
            {
               _loc9_.addEventListener(Event.ID3,§=!V§);
               while(true)
               {
                  _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§[!=§);
                  addr121:
                  loop1:
                  while(true)
                  {
                     addr108:
                     while(true)
                     {
                        _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§[!=§);
                        continue loop1;
                     }
                  }
               }
               addr127:
            }
            while(true)
            {
               §@!Z§[param2] = _loc9_;
               if(_loc14_)
               {
                  continue;
               }
               if(_loc15_)
               {
                  if(_loc15_)
                  {
                     if(true)
                     {
                        break;
                     }
                  }
                  else
                  {
                     §§goto(addr127);
                  }
                  §§goto(addr108);
               }
               §§goto(addr121);
            }
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            if(!(_loc14_ && param1))
            {
               _loc9_.load(_loc11_,_loc12_);
            }
            (_loc13_ = new §@U§(§@U§.§;![§)).§7@§ = param2;
            if(_loc15_ || param1)
            {
               dispatchEvent(_loc13_);
            }
         }
         var _loc10_:§3![§ = _loc8_.playSound(_loc9_,param2,param5,param6,param7);
         if(_loc15_)
         {
            §!<§[param2] = _loc10_;
         }
         return _loc10_;
         §§goto(addr58);
      }
      
      private static function §3!F§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§@U§ = new §@U§(§@U§.§2!X§);
         if(!(_loc4_ && _loc2_))
         {
            _loc2_.§7@§ = §?!"§(Sound(param1.currentTarget));
         }
         do
         {
            dispatchEvent(_loc2_);
         }
         while(!(_loc3_ || param1));
         
      }
      
      private static function §?!"§(param1:Sound) : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §@!Z§)
         {
            _loc3_ = §@!Z§[_loc2_];
            if(_loc6_ || _loc2_)
            {
               if(_loc3_ == param1)
               {
                  if(_loc6_ || param1)
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      private static function §=!V§(param1:Event) : void
      {
      }
      
      private static function §[!=§(param1:ErrorEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§9"E§ = new §9"E§(§9"E§.§3!8§);
         §§push(§?!"§(Sound(param1.currentTarget)));
         if(_loc5_ || _loc3_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(!_loc4_)
         {
            _loc2_.§7@§ = _loc3_;
            loop0:
            while(true)
            {
               _loc2_.error = param1.text;
               while(true)
               {
                  _loc2_.errorID = param1.errorID;
                  while(_loc5_ || §<!O§)
                  {
                     delete §@!Z§[_loc3_];
                     loop3:
                     for(; _loc5_; while(_loc5_ || _loc2_)
                     {
                        §§goto(addr45);
                     })
                     {
                        while(true)
                        {
                           if(!§!<§[_loc3_])
                           {
                              while(true)
                              {
                                 dispatchEvent(_loc2_);
                                 if(_loc5_)
                                 {
                                    if(_loc5_)
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 continue loop3;
                              }
                           }
                           else
                           {
                              addr45:
                           }
                           continue loop0;
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr97);
      }
      
      private static function §2;§(param1:DataEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            delete §!<§[param1.data];
         }
         do
         {
            dispatchEvent(new §@U§(§@U§.SOUND_COMPLETE,param1.data));
         }
         while(_loc2_ && §<!O§);
         
      }
      
      private static function § 3§(param1:ErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || §<!O§)
         {
            dispatchEvent(param1);
         }
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §3![§
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:§5!W§;
         if(!(_loc6_ = §7p§(param2,param1)))
         {
            if(_loc8_)
            {
               return null;
            }
         }
         var _loc7_:Sound;
         if(!(_loc7_ = getSound(param1)))
         {
            if(!_loc9_)
            {
               return null;
            }
         }
         return _loc6_.playSound(_loc7_,param1,param3,param4,param5);
      }
      
      public static function getSound(param1:String, param2:Boolean = true) : Sound
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Class = null;
         var _loc3_:Sound = §@!Z§[param1];
         if(!_loc5_)
         {
            if(_loc3_ == null)
            {
               addr30:
               if(!(_loc4_ = § !h§.§["3§(param1,false,param2) as Class))
               {
                  if(!(_loc5_ && param2))
                  {
                     if(param2)
                     {
                        if(_loc6_ || _loc3_)
                        {
                           §2!@§.log("Sound not in AssetCache: " + param1);
                           if(_loc5_ && param2)
                           {
                              _loc3_ = new _loc4_();
                              §§goto(addr81);
                           }
                        }
                     }
                     return null;
                  }
               }
               addr81:
               if(!_loc5_)
               {
                  §@!Z§[param1] = _loc3_;
               }
               §§goto(addr101);
            }
            addr101:
            return _loc3_;
         }
         §§goto(addr30);
      }
      
      public static function §,!z§(param1:String = "Default_Channel") : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§5!W§ = §4d§(param1);
         if(!(_loc3_ && _loc2_))
         {
            if(_loc2_ != null)
            {
               if(_loc4_)
               {
                  _loc2_.§'N§();
               }
               do
               {
                  dispatchEvent(new §@U§(§@U§.§^"B§,"",param1));
               }
               while(_loc3_);
               
               addr65:
            }
            return;
         }
         §§goto(addr65);
      }
      
      public static function §`h§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = int(int(param1.charAt(param1.length - 1)));
         if(!_loc4_)
         {
            §§push(_loc3_);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  if(§§pop() != §§pop())
                  {
                     while(true)
                     {
                        §§push(Math.random() * _loc3_);
                        loop3:
                        while(true)
                        {
                           §§push(int(§§pop()));
                           loop4:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              addr129:
                              while(true)
                              {
                                 if(!_loc4_)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                       if(_loc5_)
                                       {
                                          if(_loc5_ || §<!O§)
                                          {
                                             §§push(1);
                                             if(!_loc4_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!(_loc4_ && §<!O§))
                                                {
                                                   §§push(int(§§pop()));
                                                   continue loop0;
                                                }
                                                continue loop3;
                                             }
                                             continue loop1;
                                          }
                                          continue loop4;
                                       }
                                       continue loop0;
                                    }
                                    addr49:
                                    if(!(_loc4_ && param2))
                                    {
                                       if(!_loc4_)
                                       {
                                          return;
                                       }
                                       addr150:
                                       §2!@§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
                                    }
                                    break;
                                    addr131:
                                 }
                                 addr148:
                                 if(§4!N§)
                                 {
                                    §§goto(addr150);
                                 }
                                 break;
                                 §§goto(addr150);
                              }
                              return;
                           }
                        }
                     }
                     addr122:
                  }
                  §§goto(addr148);
               }
            }
         }
         §§goto(addr131);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param3))
         {
            §=L§.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §=L§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §=L§.removeEventListener(param1,param2,param3);
         }
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §=L§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §=L§.willTrigger(param1);
      }
   }
}
