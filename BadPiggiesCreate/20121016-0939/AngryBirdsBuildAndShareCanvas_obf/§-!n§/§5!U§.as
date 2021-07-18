package §-!n§
{
   import §=!M§.§9!P§;
   import com.rovio.assets.§>!]§;
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.media.Sound;
   import flash.media.SoundLoaderContext;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §5!U§
   {
      
      private static const §;""§:int = 128;
      
      private static var §@!;§:Boolean = true;
      
      private static var §#![§:int;
      
      private static var §,",§:Dictionary;
      
      private static var §+o§:Dictionary;
      
      private static var §@!L§:Dictionary;
      
      public static const §^@§:String = "Default_Channel";
      
      public static const §6!-§:Boolean = false;
      
      private static var §0h§:Boolean = true;
      
      private static var §%F§:EventDispatcher;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §;""§ = 128;
            loop0:
            while(true)
            {
               §@!;§ = true;
               while(true)
               {
                  §^@§ = "Default_Channel";
                  addr76:
                  while(_loc1_ || _loc1_)
                  {
                     §6!-§ = false;
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public function §5!U§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §0h§ = param1;
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §,",§ = new Dictionary();
            loop0:
            while(true)
            {
               §+o§ = new Dictionary();
               loop1:
               while(true)
               {
                  §@!L§ = new Dictionary();
                  while(_loc2_)
                  {
                     §#![§ = 0;
                     continue loop1;
                     if(!(_loc1_ && §5!U§))
                     {
                        return;
                        addr54:
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr54);
      }
      
      public static function §2R§(param1:String, param2:int, param3:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            if(§`!;§(param1) == null)
            {
               loop0:
               while(true)
               {
                  §§push(§#![§);
                  loop1:
                  while(true)
                  {
                     §§push(§;""§);
                     loop2:
                     while(§§pop() < §§pop())
                     {
                        while(true)
                        {
                           §§push(§#![§);
                           if(!(_loc5_ && §5!U§))
                           {
                              §§push(param2);
                              if(!_loc5_)
                              {
                                 if(!_loc6_)
                                 {
                                    continue loop2;
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc5_ && param2))
                                 {
                                    if(§§pop() >= §;""§)
                                    {
                                       if(_loc6_)
                                       {
                                          if(!_loc6_)
                                          {
                                             if(_loc5_)
                                             {
                                                break loop2;
                                             }
                                             if(!(_loc6_ || param2))
                                             {
                                                return;
                                             }
                                             addr147:
                                             continue;
                                          }
                                          if(_loc6_ || param2)
                                          {
                                             if(_loc6_ || param2)
                                             {
                                                §§push(§;""§);
                                                if(!(_loc5_ && param2))
                                                {
                                                   addr73:
                                                   §§push(int(§§pop() - §#![§));
                                                   break;
                                                }
                                                break;
                                             }
                                             continue loop0;
                                          }
                                          addr81:
                                          return;
                                          addr141:
                                       }
                                       addr77:
                                       if(_loc6_)
                                       {
                                          if(true)
                                          {
                                             addr149:
                                             var _loc4_:§6i§;
                                             (_loc4_ = new §6i§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§%E§);
                                             if(_loc6_)
                                             {
                                                _loc4_.addEventListener(ErrorEvent.ERROR,§[2§);
                                                while(true)
                                                {
                                                   if(!§@!;§)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         _loc4_.§9"+§();
                                                      }
                                                      loop5:
                                                      while(!_loc5_)
                                                      {
                                                         while(true)
                                                         {
                                                            §#![§ += param2;
                                                            if(!_loc5_)
                                                            {
                                                               if(_loc6_ || param2)
                                                               {
                                                                  break;
                                                               }
                                                               continue loop5;
                                                            }
                                                         }
                                                         return;
                                                      }
                                                      continue;
                                                   }
                                                   while(true)
                                                   {
                                                      §,",§[param1.toLowerCase()] = _loc4_;
                                                   }
                                                }
                                             }
                                             §§goto(addr190);
                                          }
                                       }
                                       else
                                       {
                                          addr109:
                                          §§push(§9!P§);
                                          §§push("WARNING: SoundEngine:addNewChannelControl() " + param1);
                                          if(_loc6_ || param2)
                                          {
                                             §§push(§§pop() + " failed because we already have more than ");
                                             if(_loc6_ || param1)
                                             {
                                                addr129:
                                                §§push(§§pop() + §;""§);
                                                if(!(_loc5_ && param3))
                                                {
                                                   addr138:
                                                   §§push(§§pop() + " reserved");
                                                }
                                                §§pop().log(§§pop());
                                                §§goto(addr141);
                                             }
                                             §§goto(addr138);
                                          }
                                          §§goto(addr129);
                                       }
                                       §§goto(addr81);
                                    }
                                    §§goto(addr149);
                                 }
                              }
                              §§goto(addr73);
                           }
                           break;
                        }
                        if(!_loc5_)
                        {
                           break loop1;
                        }
                        continue loop1;
                     }
                     if(§6!-§)
                     {
                        §§goto(addr109);
                     }
                     §§goto(addr81);
                  }
                  param2 = §§pop();
                  §§goto(addr77);
               }
            }
            §§goto(addr147);
         }
         §§goto(addr148);
      }
      
      public static function §`!;§(param1:String) : §6i§
      {
         return §,",§[param1.toLowerCase()];
      }
      
      public static function §="4§() : Vector.<String>
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §,",§)
         {
            if(_loc5_ || §5!U§)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public static function §-X§(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§6i§ = null;
         if(!_loc6_)
         {
            if(param1 == §@!;§)
            {
               if(_loc5_)
               {
                  return;
               }
            }
            §@!;§ = param1;
         }
         for each(_loc2_ in §,",§)
         {
            if(_loc5_ || param1)
            {
               if(§@!;§)
               {
                  if(_loc5_)
                  {
                     _loc2_.§0!m§();
                     if(!_loc5_)
                     {
                     }
                  }
               }
               else
               {
                  _loc2_.§9"+§();
               }
            }
         }
      }
      
      public static function §9&§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§6i§ = null;
         for each(_loc1_ in §,",§)
         {
            if(!_loc4_)
            {
               _loc1_.§9&§();
            }
         }
         if(_loc5_)
         {
            dispatchEvent(new §+![§(§+![§.§4?§));
         }
      }
      
      public static function §&!h§() : Boolean
      {
         return §@!;§;
      }
      
      private static function §^!p§(param1:String, param2:String) : §6i§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(!§0h§)
            {
               if(_loc4_ || _loc3_)
               {
                  §§goto(addr27);
               }
            }
            var _loc3_:§6i§ = §`!;§(param1);
            if(!(_loc5_ && param2))
            {
               if(!_loc3_)
               {
                  addr129:
                  if(_loc4_)
                  {
                     §§push(§6!-§);
                  }
                  §§push(§9!P§);
                  §§push("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2);
                  if(_loc4_)
                  {
                     §§push(§§pop() + " because this channel does not exist ");
                     if(!_loc5_)
                     {
                        addr149:
                        §§push(§§pop() + param1);
                     }
                     §§pop().log(§§pop());
                     §§goto(addr121);
                  }
                  §§goto(addr149);
               }
               else
               {
                  while(true)
                  {
                     §§push(_loc3_.§<s§());
                     if(_loc4_ || param2)
                     {
                        if(§§pop())
                        {
                           return _loc3_;
                        }
                        if(_loc4_)
                        {
                           addr81:
                           §§push(§6!-§);
                           if(_loc5_)
                           {
                              addr128:
                              if(§§pop())
                              {
                                 §§goto(addr129);
                              }
                              break;
                           }
                           if(§§pop())
                           {
                              if(!(_loc5_ && _loc3_))
                              {
                                 §§push(§9!P§);
                                 §§push("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2);
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop() + " this channel is full ");
                                    if(_loc4_)
                                    {
                                       addr101:
                                       §§push(§§pop() + param1);
                                    }
                                    §§pop().log(§§pop());
                                    addr104:
                                    if(_loc5_ && param1)
                                    {
                                       continue;
                                    }
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       §§goto(addr47);
                                    }
                                    else
                                    {
                                       §§goto(addr129);
                                    }
                                 }
                                 §§goto(addr101);
                              }
                              §§goto(addr104);
                           }
                           addr47:
                           §§push(null);
                           if(_loc4_)
                           {
                              return §§pop();
                           }
                           addr121:
                           return null;
                           §§goto(addr129);
                        }
                        §§goto(addr104);
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr121);
               }
            }
            §§goto(addr129);
         }
         addr27:
         return null;
      }
      
      public static function §4!H§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §7v§
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§+![§ = null;
         var _loc8_:§6i§;
         if(!(_loc8_ = §^!p§(param4,param2)))
         {
            if(_loc15_ || param1)
            {
               §§push(null);
               if(!_loc14_)
               {
                  return §§pop();
               }
            }
            else
            {
               §§goto(addr47);
            }
            §§goto(addr54);
         }
         addr47:
         if(§@!L§[param2])
         {
            if(_loc15_)
            {
               addr54:
               return null;
            }
         }
         var _loc9_:Sound;
         if((_loc9_ = §+o§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§!!8§);
            if(!_loc14_)
            {
               _loc9_.addEventListener(Event.ID3,§0"5§);
            }
            loop0:
            while(true)
            {
               _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§,!x§);
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§,!x§);
                     while(_loc15_)
                     {
                        if(!_loc14_)
                        {
                           §+o§[param2] = _loc9_;
                           if(!_loc14_)
                           {
                              if(true)
                              {
                                 break loop2;
                              }
                              continue loop2;
                           }
                           continue;
                        }
                        continue loop0;
                     }
                     continue loop1;
                  }
                  _loc11_ = new URLRequest(param1);
                  _loc12_ = new SoundLoaderContext(param3,true);
                  if(_loc15_)
                  {
                     _loc9_.load(_loc11_,_loc12_);
                  }
                  (_loc13_ = new §+![§(§+![§.§2-§)).§9O§ = param2;
                  if(_loc15_)
                  {
                     dispatchEvent(_loc13_);
                  }
               }
            }
         }
         var _loc10_:§7v§ = _loc8_.playSound(_loc9_,param2,param5,param6,param7);
         if(_loc15_)
         {
            §@!L§[param2] = _loc10_;
         }
         return _loc10_;
      }
      
      private static function §!!8§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§+![§ = new §+![§(§+![§.§-c§);
         if(_loc3_ || _loc3_)
         {
            _loc2_.§9O§ = §59§(Sound(param1.currentTarget));
         }
         do
         {
            dispatchEvent(_loc2_);
         }
         while(!_loc3_);
         
      }
      
      private static function §59§(param1:Sound) : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         var _loc4_:int = 0;
         var _loc5_:* = §+o§;
         while(true)
         {
            for(_loc2_ in _loc5_)
            {
               _loc3_ = §+o§[_loc2_];
               if(_loc7_ && §5!U§)
               {
                  break;
               }
               if(_loc3_ == param1)
               {
                  if(_loc6_)
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      private static function §0"5§(param1:Event) : void
      {
      }
      
      private static function §,!x§(param1:ErrorEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§2!g§ = new §2!g§(§2!g§.§1W§);
         §§push(§59§(Sound(param1.currentTarget)));
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(!_loc4_)
         {
            _loc2_.§9O§ = _loc3_;
         }
         loop0:
         while(true)
         {
            _loc2_.error = param1.text;
            loop1:
            while(true)
            {
               _loc2_.errorID = param1.errorID;
               loop2:
               while(true)
               {
                  delete §+o§[_loc3_];
                  loop3:
                  while(true)
                  {
                     if(!§@!L§[_loc3_])
                     {
                        while(true)
                        {
                           dispatchEvent(_loc2_);
                           if(_loc5_ || _loc2_)
                           {
                              addr51:
                              if(_loc5_)
                              {
                                 break;
                              }
                              continue loop1;
                           }
                           addr82:
                           while(!_loc4_)
                           {
                              if(_loc5_)
                              {
                                 continue loop0;
                              }
                              continue loop2;
                           }
                           continue loop3;
                        }
                     }
                     else
                     {
                        addr40:
                     }
                     continue loop1;
                     return;
                  }
               }
            }
         }
      }
      
      private static function §%E§(param1:DataEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            delete §@!L§[param1.data];
         }
         do
         {
            dispatchEvent(new §+![§(§+![§.SOUND_COMPLETE,param1.data));
         }
         while(!_loc3_);
         
      }
      
      private static function §[2§(param1:ErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && §5!U§))
         {
            dispatchEvent(param1);
         }
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §7v§
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc8_:Class = null;
         var _loc6_:§6i§;
         if(!(_loc6_ = §^!p§(param2,param1)))
         {
            if(_loc10_ || param2)
            {
               return null;
            }
         }
         var _loc7_:Sound;
         if((_loc7_ = §+o§[param1]) == null)
         {
            if(!(_loc8_ = §>!]§.§1!8§(param1,false) as Class))
            {
               if(!_loc9_)
               {
                  §9!P§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
                  if(_loc9_)
                  {
                     §§goto(addr76);
                  }
               }
               return null;
            }
            addr76:
            _loc7_ = new _loc8_();
            if(_loc10_)
            {
               §+o§[param1] = _loc7_;
            }
            §§goto(addr96);
         }
         addr96:
         return _loc6_.playSound(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §+!7§(param1:String = "Default_Channel") : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§6i§ = §`!;§(param1);
         if(_loc4_)
         {
            if(_loc2_ != null)
            {
               if(_loc4_)
               {
                  _loc2_.§9&§();
                  do
                  {
                     dispatchEvent(new §+![§(§+![§.§1!$§,"",param1));
                  }
                  while(!_loc4_);
                  
                  addr68:
               }
               §§goto(addr68);
            }
            return;
         }
         §§goto(addr68);
      }
      
      public static function §7!e§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = int(int(param1.charAt(param1.length - 1)));
         if(!_loc5_)
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
                     loop2:
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
                              loop5:
                              while(_loc4_)
                              {
                                 §§push(_loc3_);
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    if(!_loc4_)
                                    {
                                       continue loop4;
                                    }
                                    if(_loc5_)
                                    {
                                       continue loop0;
                                    }
                                    §§push(1);
                                    if(!_loc4_)
                                    {
                                       continue loop1;
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc4_ || param1))
                                    {
                                       continue loop3;
                                    }
                                    §§push(int(§§pop()));
                                 }
                                 _loc3_ = §§pop();
                                 while(true)
                                 {
                                    if(_loc4_ || _loc3_)
                                    {
                                       if(!_loc4_)
                                       {
                                          if(§6!-§)
                                          {
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          addr115:
                                          addr133:
                                       }
                                       §§push(param1);
                                       if(_loc4_)
                                       {
                                          §§push(§§pop().slice(0,param1.length - 1) + _loc3_);
                                       }
                                       param1 = §§pop();
                                       while(_loc4_)
                                       {
                                          §5!U§.playSound(param1,param2);
                                          if(_loc4_)
                                          {
                                             if(_loc4_)
                                             {
                                                return;
                                             }
                                             continue loop5;
                                          }
                                       }
                                       continue;
                                       return;
                                    }
                                    if(_loc5_)
                                    {
                                       break;
                                    }
                                    continue loop2;
                                 }
                                 §9!P§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
                                 break;
                              }
                              §§goto(addr115);
                           }
                        }
                     }
                  }
                  §§goto(addr133);
               }
            }
         }
         §§goto(addr135);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            §%F§.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §%F§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §%F§.removeEventListener(param1,param2,param3);
         }
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §%F§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §%F§.willTrigger(param1);
      }
   }
}
