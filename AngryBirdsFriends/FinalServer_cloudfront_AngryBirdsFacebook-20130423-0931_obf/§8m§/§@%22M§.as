package §8m§
{
   import §+!c§.§;!=§;
   import com.rovio.assets.§?q§;
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
   
   public class §@"M§
   {
      
      private static const §#"#§:int = 128;
      
      private static var §9g§:Boolean = true;
      
      private static var §9R§:int;
      
      private static var §4b§:Dictionary;
      
      private static var §#!c§:Dictionary;
      
      private static var § !-§:Dictionary;
      
      public static const §0+§:String = "Default_Channel";
      
      public static const §&c§:Boolean = false;
      
      private static var §+"=§:Boolean = true;
      
      private static var §8A§:EventDispatcher;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §#"#§ = 128;
            loop0:
            while(true)
            {
               §9g§ = true;
               addr89:
               while(true)
               {
                  §0+§ = "Default_Channel";
                  addr84:
                  while(true)
                  {
                     §&c§ = false;
                     continue loop0;
                  }
               }
            }
         }
         loop4:
         while(true)
         {
            §+"=§ = true;
            while(!_loc1_)
            {
               §8A§ = new EventDispatcher();
               if(!_loc2_)
               {
                  continue;
               }
               if(_loc2_)
               {
                  if(!_loc1_)
                  {
                     break loop4;
                  }
                  §§goto(addr84);
               }
               §§goto(addr72);
            }
            §§goto(addr89);
         }
      }
      
      public function §@"M§()
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §+"=§ = param1;
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §4b§ = new Dictionary();
            loop0:
            while(true)
            {
               §#!c§ = new Dictionary();
               loop1:
               while(true)
               {
                  § !-§ = new Dictionary();
                  while(true)
                  {
                     §9R§ = 0;
                     loop3:
                     while(!_loc2_)
                     {
                        continue loop1;
                        while(true)
                        {
                           §set §(§0+§,4,1);
                           if(_loc1_)
                           {
                              continue loop0;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      public static function §set §(param1:String, param2:int, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || §@"M§)
         {
            if(§^!5§(param1) == null)
            {
               loop0:
               while(true)
               {
                  §§push(§9R§);
                  loop1:
                  while(true)
                  {
                     §§push(§#"#§);
                     loop2:
                     while(§§pop() < §§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§push(§9R§);
                           if(_loc5_)
                           {
                              §§push(param2);
                              if(_loc5_)
                              {
                                 if(!_loc5_)
                                 {
                                    continue loop2;
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc5_)
                                 {
                                    if(§§pop() >= §#"#§)
                                    {
                                       if(!(_loc6_ && param2))
                                       {
                                          if(_loc5_ || param3)
                                          {
                                             if(!(_loc5_ || param3))
                                             {
                                                break loop2;
                                             }
                                             §§push(§#"#§);
                                             if(_loc5_)
                                             {
                                                break;
                                             }
                                             addr66:
                                             if(_loc5_ || param1)
                                             {
                                                break loop1;
                                             }
                                             continue loop1;
                                          }
                                          addr87:
                                          while(true)
                                          {
                                             continue loop3;
                                          }
                                       }
                                       addr74:
                                       if(!_loc6_)
                                       {
                                          if(_loc5_ || §@"M§)
                                          {
                                             if(false)
                                             {
                                                §§goto(addr85);
                                             }
                                             addr152:
                                             var _loc4_:§;!`§;
                                             (_loc4_ = new §;!`§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§ k§);
                                             if(_loc5_ || param1)
                                             {
                                                _loc4_.addEventListener(ErrorEvent.ERROR,§0w§);
                                                loop4:
                                                while(true)
                                                {
                                                   if(!§9g§)
                                                   {
                                                      while(true)
                                                      {
                                                         _loc4_.§#!z§();
                                                         addr218:
                                                         while(true)
                                                         {
                                                         }
                                                         addr184:
                                                         if(!_loc5_)
                                                         {
                                                            continue;
                                                         }
                                                         return;
                                                         addr196:
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §4b§[param1.toLowerCase()] = _loc4_;
                                                      loop8:
                                                      while(!_loc6_)
                                                      {
                                                         continue loop4;
                                                         while(true)
                                                         {
                                                            §9R§ += param2;
                                                            if(_loc6_)
                                                            {
                                                               continue loop8;
                                                            }
                                                            §§goto(addr184);
                                                         }
                                                         §§goto(addr196);
                                                      }
                                                      §§goto(addr218);
                                                   }
                                                }
                                             }
                                             §§goto(addr212);
                                          }
                                          else
                                          {
                                             addr94:
                                             if(!(_loc5_ || §@"M§))
                                             {
                                                continue loop0;
                                             }
                                             if(_loc6_)
                                             {
                                                §§goto(addr150);
                                             }
                                             §§push(§;!=§);
                                             §§push("WARNING: SoundEngine:addNewChannelControl() ");
                                             if(_loc5_)
                                             {
                                                §§push(§§pop() + param1);
                                                if(!(_loc6_ && param2))
                                                {
                                                   §§push(" failed because we already have more than ");
                                                   if(_loc5_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc6_)
                                                      {
                                                         §§push(§§pop() + §#"#§);
                                                         if(_loc5_ || param2)
                                                         {
                                                            addr141:
                                                            §§push(§§pop() + " reserved");
                                                         }
                                                         §§pop().log(§§pop());
                                                         break loop0;
                                                      }
                                                   }
                                                   §§goto(addr141);
                                                }
                                             }
                                             §§goto(addr141);
                                          }
                                       }
                                       break loop0;
                                    }
                                    §§goto(addr152);
                                 }
                                 addr65:
                                 §§goto(addr66);
                                 §§push(int(§§pop()));
                              }
                              addr64:
                              §§goto(addr65);
                              §§push(§§pop() - §§pop());
                           }
                           break;
                        }
                        §§goto(addr64);
                        §§push(§9R§);
                     }
                     if(§&c§)
                     {
                        §§goto(addr94);
                     }
                     §§goto(addr85);
                  }
                  param2 = §§pop();
                  §§goto(addr74);
               }
               addr85:
               return;
            }
            addr150:
            return;
         }
         §§goto(addr87);
      }
      
      public static function §^!5§(param1:String) : §;!`§
      {
         return §4b§[param1.toLowerCase()];
      }
      
      public static function §'"Y§() : Vector.<String>
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §4b§)
         {
            if(_loc5_)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public static function §'!v§(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§;!`§ = null;
         if(_loc5_ || param1)
         {
            if(param1 == §9g§)
            {
               if(!_loc6_)
               {
                  return;
               }
            }
         }
         §9g§ = param1;
         var _loc3_:int = 0;
         for each(_loc2_ in §4b§)
         {
            if(!_loc6_)
            {
               if(§9g§)
               {
                  if(_loc5_ || _loc3_)
                  {
                     _loc2_.§^!s§();
                     if(_loc6_ && §@"M§)
                     {
                        continue;
                     }
                  }
               }
               else
               {
                  _loc2_.§#!z§();
               }
            }
         }
      }
      
      public static function §3!s§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§;!`§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = §4b§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc4_ || _loc3_)
            {
               _loc1_.§3!s§();
            }
         }
         if(!(_loc5_ && _loc2_))
         {
            dispatchEvent(new §&!e§(§&!e§.§2!w§));
         }
      }
      
      public static function §]I§() : Boolean
      {
         return §9g§;
      }
      
      private static function §+!-§(param1:String, param2:String) : §;!`§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(!§+"=§)
            {
               if(_loc5_)
               {
                  §§goto(addr23);
               }
            }
            var _loc3_:§;!`§ = §^!5§(param1);
            if(_loc5_)
            {
               if(!_loc3_)
               {
                  addr148:
                  if(§&c§)
                  {
                     addr149:
                     §§push(§;!=§);
                     §§push("WARNING: SoundEngine->PlaySound() can not play new sound request ");
                     if(_loc5_ || param2)
                     {
                        §§push(param2);
                        if(!_loc4_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc5_)
                           {
                              §§push(§§pop() + " because this channel does not exist ");
                              if(_loc5_ || _loc3_)
                              {
                                 addr174:
                                 §§push(§§pop() + param1);
                              }
                           }
                           §§pop().log(§§pop());
                           addr129:
                           return null;
                           addr127:
                        }
                     }
                     §§goto(addr174);
                  }
                  §§goto(addr127);
               }
               else
               {
                  §§push(_loc3_.§5[§());
                  if(!(_loc4_ && §@"M§))
                  {
                     if(!(_loc4_ && §@"M§))
                     {
                        if(§§pop())
                        {
                           return _loc3_;
                        }
                        if(_loc5_ || param1)
                        {
                           addr86:
                           if(§&c§)
                           {
                              if(_loc5_)
                              {
                                 addr89:
                                 §§push(§;!=§);
                                 §§push("WARNING: SoundEngine->PlaySound() can not play new sound request  ");
                                 if(!(_loc4_ && param1))
                                 {
                                    §§push(param2);
                                    if(_loc5_ || _loc3_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc5_ || §@"M§)
                                       {
                                          §§push(§§pop() + " this channel is full ");
                                          if(_loc5_ || param2)
                                          {
                                             addr123:
                                             §§push(§§pop() + param1);
                                          }
                                          §§pop().log(§§pop());
                                          addr38:
                                          §§push(null);
                                          if(_loc5_)
                                          {
                                             return §§pop();
                                          }
                                          §§goto(addr129);
                                          addr126:
                                       }
                                    }
                                 }
                                 §§goto(addr123);
                              }
                              §§goto(addr126);
                           }
                           §§goto(addr38);
                        }
                        else
                        {
                           §§goto(addr149);
                        }
                     }
                     else
                     {
                        §§goto(addr148);
                     }
                     §§goto(addr129);
                  }
                  §§goto(addr86);
               }
            }
            §§goto(addr89);
         }
         addr23:
         return null;
      }
      
      public static function §!8§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §7!>§
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§&!e§ = null;
         var _loc8_:§;!`§;
         if(!(_loc8_ = §+!-§(param4,param2)))
         {
            if(_loc15_ || param3)
            {
               §§push(null);
               if(!(_loc14_ && param1))
               {
                  return §§pop();
               }
            }
            else
            {
               §§goto(addr57);
            }
            §§goto(addr69);
         }
         addr57:
         if(§ !-§[param2])
         {
            if(!(_loc14_ && param1))
            {
               addr69:
               return null;
            }
         }
         var _loc9_:Sound;
         if((_loc9_ = §#!c§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§`!U§);
            if(!(_loc14_ && param2))
            {
               _loc9_.addEventListener(Event.ID3,§7!"§);
               loop0:
               while(true)
               {
                  _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§=T§);
                  addr136:
                  while(true)
                  {
                     addr116:
                     while(true)
                     {
                        _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§=T§);
                        continue loop0;
                     }
                  }
               }
            }
            while(true)
            {
               §#!c§[param2] = _loc9_;
               if(!_loc14_)
               {
                  if(!_loc14_)
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr136);
               }
               §§goto(addr122);
            }
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            if(_loc15_)
            {
               _loc9_.load(_loc11_,_loc12_);
            }
            (_loc13_ = new §&!e§(§&!e§.§%!<§)).§+h§ = param2;
            if(!(_loc14_ && §@"M§))
            {
               dispatchEvent(_loc13_);
            }
         }
         var _loc10_:§7!>§ = _loc8_.§3"C§(_loc9_,param2,param5,param6,param7);
         if(_loc15_)
         {
            § !-§[param2] = _loc10_;
         }
         return _loc10_;
      }
      
      private static function §`!U§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§&!e§ = new §&!e§(§&!e§.§2-§);
         if(_loc3_ || param1)
         {
            _loc2_.§+h§ = §8"[§(Sound(param1.currentTarget));
            do
            {
               dispatchEvent(_loc2_);
            }
            while(_loc4_ && _loc2_);
            
         }
      }
      
      private static function §8"[§(param1:Sound) : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         var _loc4_:int = 0;
         var _loc5_:* = §#!c§;
         while(true)
         {
            for(_loc2_ in _loc5_)
            {
               _loc3_ = §#!c§[_loc2_];
               if(!(_loc7_ || _loc3_))
               {
                  break;
               }
               if(_loc3_ == param1)
               {
                  if(!(_loc6_ && param1))
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      private static function §7!"§(param1:Event) : void
      {
      }
      
      private static function §=T§(param1:ErrorEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§!2§ = new §!2§(§!2§.§,3§);
         §§push(§8"[§(Sound(param1.currentTarget)));
         if(!(_loc5_ && _loc3_))
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(!(_loc5_ && _loc3_))
         {
            _loc2_.§+h§ = _loc3_;
            loop0:
            while(true)
            {
               _loc2_.error = param1.text;
               while(true)
               {
                  _loc2_.errorID = param1.errorID;
                  loop5:
                  while(!(_loc5_ && _loc3_))
                  {
                     loop6:
                     while(true)
                     {
                        dispatchEvent(_loc2_);
                        if(!_loc4_)
                        {
                           continue loop5;
                        }
                        if(!_loc5_)
                        {
                           if(_loc4_)
                           {
                              addr69:
                              if(!(_loc5_ && §@"M§))
                              {
                                 continue loop0;
                              }
                              addr124:
                              while(true)
                              {
                                 delete §#!c§[_loc3_];
                                 §§goto(addr69);
                              }
                           }
                           while(true)
                           {
                              if(!§ !-§[_loc3_])
                              {
                                 continue loop6;
                              }
                           }
                        }
                        while(true)
                        {
                           §7!>§(§ !-§[_loc3_]).§7s§();
                           continue loop5;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr124);
      }
      
      private static function § k§(param1:DataEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            delete § !-§[param1.data];
            do
            {
               dispatchEvent(new §&!e§(§&!e§.SOUND_COMPLETE,param1.data));
            }
            while(!(_loc2_ || §@"M§));
            
         }
      }
      
      private static function §0w§(param1:ErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            dispatchEvent(param1);
         }
      }
      
      public static function §3"C§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §7!>§
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc8_:Class = null;
         var _loc6_:§;!`§;
         if(!(_loc6_ = §+!-§(param2,param1)))
         {
            if(!(_loc10_ && param1))
            {
               return null;
            }
         }
         var _loc7_:Sound;
         if((_loc7_ = §#!c§[param1]) == null)
         {
            if(!(_loc8_ = §?q§.§ q§(param1,false) as Class))
            {
               if(!(_loc10_ && §@"M§))
               {
                  §§push(§;!=§);
                  §§push("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: ");
                  if(!(_loc10_ && param2))
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
                  if(_loc10_)
                  {
                     §§goto(addr97);
                  }
               }
               return null;
            }
            addr97:
            _loc7_ = new _loc8_();
            if(_loc9_)
            {
               §#!c§[param1] = _loc7_;
            }
            §§goto(addr107);
         }
         addr107:
         return _loc6_.§3"C§(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §]!n§(param1:String = "Default_Channel") : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§;!`§ = §^!5§(param1);
         if(!(_loc3_ && §@"M§))
         {
            if(_loc2_ != null)
            {
               do
               {
                  _loc2_.§3!s§();
                  do
                  {
                     dispatchEvent(new §&!e§(§&!e§.§=A§,"",param1));
                  }
                  while(!_loc4_);
                  
               }
               while(!(_loc4_ || param1));
               
               addr76:
            }
            return;
         }
         §§goto(addr76);
      }
      
      public static function §"!0§(param1:String, param2:String = "Default_Channel") : void
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
               addr144:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc4_)
                     {
                        §§goto(addr147);
                     }
                     §§goto(addr156);
                  }
                  else
                  {
                     loop2:
                     while(true)
                     {
                        §§push(Math.random() * _loc3_);
                        addr127:
                        while(true)
                        {
                           §§push(int(§§pop()));
                           loop4:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              loop5:
                              while(true)
                              {
                                 if(!_loc4_)
                                 {
                                    break loop4;
                                 }
                                 §§push(_loc3_);
                                 if(!_loc5_)
                                 {
                                    continue loop0;
                                 }
                                 addr106:
                                 if(!_loc4_)
                                 {
                                    continue loop4;
                                 }
                                 _loc3_ = §§pop();
                                 while(_loc4_)
                                 {
                                    §§push(param1);
                                    if(_loc4_ || param2)
                                    {
                                       §§push(§§pop().slice(0,param1.length - 1) + _loc3_);
                                    }
                                    param1 = §§pop();
                                    do
                                    {
                                       §@"M§.§3"C§(param1,param2);
                                    }
                                    while(_loc5_);
                                    
                                    if(_loc4_ || param1)
                                    {
                                       if(_loc4_)
                                       {
                                          return;
                                       }
                                       continue loop5;
                                    }
                                 }
                                 §§goto(addr156);
                              }
                              continue loop0;
                           }
                           if(_loc5_ && §@"M§)
                           {
                              break loop2;
                           }
                           continue loop2;
                        }
                     }
                  }
                  §§goto(addr149);
               }
            }
         }
         addr147:
         if(§&c§)
         {
            addr149:
            §§push(§;!=§);
            §§push("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: ");
            if(_loc4_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().log(§§pop());
            addr156:
         }
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            §8A§.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §8A§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            §8A§.removeEventListener(param1,param2,param3);
         }
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §8A§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §8A§.willTrigger(param1);
      }
   }
}
