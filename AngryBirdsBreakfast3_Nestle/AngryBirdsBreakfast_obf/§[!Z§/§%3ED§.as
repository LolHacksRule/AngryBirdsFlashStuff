package §[!Z§
{
   import §24§.;
   import com.rovio.assets.§=!V§;
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
   
   public class §>D§
   {
      
      private static const §?!&§:int = 64;
      
      private static var §[!y§:Boolean = true;
      
      private static var §`"1§:int;
      
      private static var §["1§:Dictionary;
      
      private static var §&N§:Dictionary;
      
      private static var §57§:Dictionary;
      
      public static const §]!<§:String = "Default_Channel";
      
      public static const §<! §:Boolean = false;
      
      private static var §&"2§:Boolean = true;
      
      private static var §4S§:EventDispatcher;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §?!&§ = 64;
         }
         loop0:
         while(true)
         {
            §[!y§ = true;
            while(true)
            {
               §]!<§ = "Default_Channel";
               loop2:
               for(; _loc2_; if(_loc1_ && §>D§)
               {
                  continue;
               },if(!_loc2_)
               {
                  continue loop0;
               },§§goto(addr67))
               {
                  §<! § = false;
                  loop3:
                  while(true)
                  {
                     §&"2§ = true;
                     while(true)
                     {
                        if(_loc2_ || §>D§)
                        {
                           continue loop2;
                        }
                        continue loop3;
                        addr67:
                        §4S§ = new EventDispatcher();
                        if(_loc2_ || _loc1_)
                        {
                           return;
                        }
                     }
                     continue loop2;
                  }
               }
            }
         }
      }
      
      public function §>D§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
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
            §&"2§ = param1;
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §["1§ = new Dictionary();
            while(true)
            {
               §&N§ = new Dictionary();
               while(_loc1_)
               {
                  §57§ = new Dictionary();
                  if(!(_loc2_ && _loc2_))
                  {
                     return;
                     addr58:
                  }
               }
            }
         }
         while(true)
         {
            §`"1§ = 0;
            while(!_loc2_)
            {
               §0"6§(§]!<§,4,1);
               if(!(_loc1_ || _loc2_))
               {
                  continue;
               }
               §§goto(addr51);
            }
         }
         §§goto(addr58);
      }
      
      public static function §0"6§(param1:String, param2:int, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param3)
         {
            §§push(!param1);
            if(!_loc6_)
            {
               if(!§§pop())
               {
                  loop6:
                  while(true)
                  {
                     §§pop();
                     loop7:
                     while(true)
                     {
                        §§push(§<d§(param1) == null);
                        if(!_loc6_)
                        {
                           addr127:
                           §§push(!§§pop());
                           while(true)
                           {
                              §§goto(addr127);
                           }
                           addr128:
                        }
                        loop1:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc5_ || §>D§)
                              {
                                 break;
                              }
                              addr138:
                              while(true)
                              {
                              }
                              addr138:
                           }
                           loop2:
                           while(true)
                           {
                              §§push(§`"1§);
                              loop3:
                              while(true)
                              {
                                 §§push(§?!&§);
                                 loop4:
                                 while(true)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       if(_loc6_)
                                       {
                                          break;
                                       }
                                       §§push(§<! §);
                                       if(!(_loc6_ && param3))
                                       {
                                          if(!(_loc6_ && param1))
                                          {
                                             if(!§§pop())
                                             {
                                             }
                                             break;
                                          }
                                          continue loop6;
                                       }
                                       continue loop1;
                                    }
                                    while(true)
                                    {
                                       §§push(§`"1§);
                                       if(_loc5_)
                                       {
                                          if(!(_loc5_ || param1))
                                          {
                                             continue loop3;
                                          }
                                          §§push(param2);
                                          if(_loc5_ || param3)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc5_)
                                             {
                                                if(§§pop() < §?!&§)
                                                {
                                                   break loop2;
                                                }
                                                if(_loc5_)
                                                {
                                                   §§push(§?!&§);
                                                   if(!_loc6_)
                                                   {
                                                      addr55:
                                                      §§push(§`"1§);
                                                      if(!_loc5_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      addr59:
                                                      param2 = §§pop() - §§pop();
                                                   }
                                                   §§goto(addr59);
                                                }
                                                if(!(_loc6_ && param3))
                                                {
                                                   break;
                                                }
                                                continue;
                                             }
                                             §§goto(addr59);
                                          }
                                          §§goto(addr55);
                                       }
                                       §§goto(addr59);
                                    }
                                    if(!(_loc5_ || param3))
                                    {
                                       break;
                                    }
                                    if(!(_loc6_ && param2))
                                    {
                                       if(!_loc6_)
                                       {
                                          if(true)
                                          {
                                             break loop2;
                                          }
                                          continue loop2;
                                       }
                                       continue loop7;
                                    }
                                    §§goto(addr138);
                                 }
                                 return;
                              }
                           }
                           var _loc4_:§&b§;
                           (_loc4_ = new §&b§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§,!§);
                           if(!_loc6_)
                           {
                              _loc4_.addEventListener(ErrorEvent.ERROR,§&!+§);
                              §["1§[param1.toLowerCase()] = _loc4_;
                              addr204:
                           }
                           addr198:
                           §`"1§ += param2;
                           if(!(_loc6_ && §>D§))
                           {
                              if(_loc6_)
                              {
                                 §§goto(addr204);
                              }
                              return;
                           }
                           §§goto(addr198);
                        }
                        return;
                     }
                  }
                  addr145:
               }
               §§goto(addr128);
            }
            §§goto(addr145);
         }
         §§goto(addr138);
      }
      
      public static function §<d§(param1:String) : §&b§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!param1)
            {
               if(_loc2_)
               {
                  §§goto(addr42);
               }
            }
            return §["1§[param1.toLowerCase()];
         }
         addr42:
         return null;
      }
      
      public static function §"X§() : Vector.<String>
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §["1§)
         {
            if(_loc6_ || _loc2_)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public static function §,"§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(param1 != §[!y§)
            {
               loop0:
               while(true)
               {
                  §[!y§ = param1;
                  while(true)
                  {
                     if(_loc3_)
                     {
                        if(!_loc3_)
                        {
                           break;
                        }
                        §'N§(§[!y§);
                        if(!_loc2_)
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
      
      public static function §%Q§(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§&b§ = null;
         for each(_loc2_ in §["1§)
         {
            if(_loc6_)
            {
               if(!param1)
               {
                  _loc2_.§'D§();
                  continue;
               }
               if(!_loc5_)
               {
                  _loc2_.§&",§();
                  if(_loc5_)
                  {
                     continue;
                  }
               }
            }
         }
      }
      
      protected static function §'N§(param1:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
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
            if(!(_loc3_ && _loc3_))
            {
               addr47:
               §§push(Number(§§pop()));
            }
         }
         else
         {
            addr44:
            §§push(Number(§§pop()));
            if(!_loc3_)
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
      
      public static function §>!%§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§&b§ = null;
         for each(_loc1_ in §["1§)
         {
            if(_loc5_ || _loc1_)
            {
               _loc1_.§>!%§();
            }
         }
         if(_loc5_)
         {
            dispatchEvent(new §4<§(§4<§.§7![§));
         }
      }
      
      public static function get §3!%§() : Boolean
      {
         return §[!y§;
      }
      
      private static function §%p§(param1:String, param2:String) : §&b§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(!§&"2§)
            {
               if(_loc5_ || _loc3_)
               {
                  §§goto(addr28);
               }
            }
            var _loc3_:§&b§ = §<d§(param1);
            if(_loc5_ || §>D§)
            {
               if(_loc3_)
               {
                  loop0:
                  while(true)
                  {
                     §§push(_loc3_.§]!U§());
                     if(_loc5_ || §>D§)
                     {
                        if(§§pop())
                        {
                           break;
                        }
                        if(!_loc4_)
                        {
                           §§push(§<! §);
                        }
                        while(true)
                        {
                           §§push(§#7§);
                           §§push("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2);
                           if(_loc5_)
                           {
                              §§push(§§pop() + " this channel is full ");
                              if(_loc5_)
                              {
                                 addr107:
                                 §§push(§§pop() + param1);
                              }
                              §§pop().log(§§pop());
                              if(!_loc5_)
                              {
                                 continue loop0;
                              }
                              if(_loc5_)
                              {
                                 if(_loc5_ || §>D§)
                                 {
                                    addr48:
                                    §§push(null);
                                    if(_loc5_)
                                    {
                                       return §§pop();
                                    }
                                 }
                                 else
                                 {
                                    addr129:
                                    if(§<! §)
                                    {
                                       addr130:
                                       §§push(§#7§);
                                       §§push("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2);
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          §§push(§§pop() + " because this channel does not exist ");
                                          if(_loc5_ || param1)
                                          {
                                             addr160:
                                             §§push(§§pop() + param1);
                                          }
                                          §§pop().log(§§pop());
                                          addr124:
                                          return null;
                                          addr122:
                                       }
                                       §§goto(addr160);
                                    }
                                    §§goto(addr122);
                                 }
                                 §§goto(addr124);
                              }
                              §§goto(addr130);
                           }
                           §§goto(addr107);
                        }
                        addr97:
                     }
                     if(!(_loc4_ && param2))
                     {
                        if(§§pop())
                        {
                           §§goto(addr97);
                        }
                        §§goto(addr48);
                     }
                     §§goto(addr129);
                  }
                  return _loc3_;
               }
               §§goto(addr129);
            }
            §§goto(addr97);
         }
         addr28:
         return null;
      }
      
      public static function §%V§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §`v§
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§4<§ = null;
         var _loc8_:§&b§;
         if(!(_loc8_ = §%p§(param4,param2)))
         {
            if(_loc15_ || §>D§)
            {
               §§push(null);
               if(!_loc14_)
               {
                  return §§pop();
               }
            }
            else
            {
               addr52:
               if(§57§[param2])
               {
                  if(!_loc14_)
                  {
                     §§goto(addr59);
                  }
               }
               var _loc9_:Sound;
               if((_loc9_ = §&N§[param2]) == null)
               {
                  (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§4"5§);
                  if(_loc15_)
                  {
                     _loc9_.addEventListener(Event.ID3,§ &§);
                  }
                  while(true)
                  {
                     _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§4!1§);
                     while(!_loc14_)
                     {
                        while(true)
                        {
                           _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§4!1§);
                           do
                           {
                              §&N§[param2] = _loc9_;
                           }
                           while(!(_loc15_ || param3));
                           
                           if(!(_loc14_ && §>D§))
                           {
                              if(true)
                              {
                                 _loc11_ = new URLRequest(param1);
                                 _loc12_ = new SoundLoaderContext(param3,true);
                                 if(!(_loc14_ && param2))
                                 {
                                    _loc9_.load(_loc11_,_loc12_);
                                 }
                                 (_loc13_ = new §4<§(§4<§.§1!N§)).§@!z§ = param2;
                              }
                              else
                              {
                                 addr174:
                              }
                              continue;
                              if(_loc15_ || param3)
                              {
                                 dispatchEvent(_loc13_);
                              }
                              var _loc10_:§`v§ = _loc8_.§9!q§(_loc9_,param2,param5,param6,param7);
                              if(!_loc14_)
                              {
                                 §57§[param2] = _loc10_;
                              }
                              return _loc10_;
                           }
                           break;
                        }
                     }
                  }
               }
               §§goto(addr174);
            }
            addr59:
            return null;
         }
         §§goto(addr52);
      }
      
      private static function §4"5§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§4<§ = new §4<§(§4<§.§1!`§);
         if(!(_loc4_ && _loc3_))
         {
            _loc2_.§@!z§ = §!n§(Sound(param1.currentTarget));
         }
         do
         {
            dispatchEvent(_loc2_);
         }
         while(_loc4_ && _loc2_);
         
      }
      
      private static function §!n§(param1:Sound) : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §&N§)
         {
            _loc3_ = §&N§[_loc2_];
            if(!(_loc7_ && §>D§))
            {
               if(_loc3_ == param1)
               {
                  if(!_loc7_)
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      private static function § &§(param1:Event) : void
      {
      }
      
      private static function §4!1§(param1:ErrorEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§1!%§ = new §1!%§(§1!%§.§2B§);
         §§push(§!n§(Sound(param1.currentTarget)));
         if(!(_loc5_ && §>D§))
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(!_loc5_)
         {
            _loc2_.§@!z§ = _loc3_;
            loop0:
            while(true)
            {
               _loc2_.error = param1.text;
               do
               {
                  _loc2_.errorID = param1.errorID;
                  do
                  {
                     delete §&N§[_loc3_];
                     loop3:
                     do
                     {
                        if(§57§[_loc3_])
                        {
                           while(_loc4_)
                           {
                              §`v§(§57§[_loc3_]).§,^§();
                              while(true)
                              {
                              }
                              if(_loc4_ || _loc2_)
                              {
                                 continue loop3;
                              }
                           }
                           continue loop0;
                        }
                        while(true)
                        {
                           dispatchEvent(_loc2_);
                           if(!_loc4_)
                           {
                              continue;
                           }
                           §§goto(addr50);
                        }
                     }
                     while(_loc5_ && _loc3_);
                     
                  }
                  while(!_loc4_);
                  
               }
               while(!(_loc4_ || param1));
               
               return;
            }
         }
         §§goto(addr97);
      }
      
      private static function §,!§(param1:DataEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            delete §57§[param1.data];
         }
         do
         {
            dispatchEvent(new §4<§(§4<§.SOUND_COMPLETE,param1.data));
         }
         while(!_loc3_);
         
      }
      
      private static function §&!+§(param1:ErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            dispatchEvent(param1);
         }
      }
      
      public static function §9!q§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §`v§
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:§&b§;
         if(!(_loc6_ = §%p§(param2,param1)))
         {
            if(_loc9_)
            {
               return null;
            }
         }
         var _loc7_:Sound;
         if(!(_loc7_ = §#!L§(param1)))
         {
            if(!_loc8_)
            {
               return null;
            }
         }
         return _loc6_.§9!q§(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §#!L§(param1:String, param2:Boolean = true) : Sound
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Class = null;
         var _loc3_:Sound = §&N§[param1];
         if(_loc5_ || §>D§)
         {
            if(_loc3_ == null)
            {
               addr34:
               if(!(_loc4_ = §=!V§.§?!O§(param1,false,param2) as Class))
               {
                  if(_loc5_ || param2)
                  {
                     if(param2)
                     {
                        if(_loc5_)
                        {
                           addr66:
                           §#7§.log("Sound not in AssetCache: " + param1);
                           if(!_loc5_)
                           {
                              §§goto(addr75);
                           }
                        }
                     }
                     return null;
                  }
                  §§goto(addr66);
               }
               addr75:
               _loc3_ = new _loc4_();
               if(!(_loc6_ && _loc3_))
               {
                  §&N§[param1] = _loc3_;
               }
               §§goto(addr100);
            }
            addr100:
            return _loc3_;
         }
         §§goto(addr34);
      }
      
      public static function §6A§(param1:String = "Default_Channel") : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§&b§ = §<d§(param1);
         if(_loc3_)
         {
            if(_loc2_ != null)
            {
               loop0:
               while(true)
               {
                  _loc2_.§>!%§();
                  addr67:
                  while(true)
                  {
                     dispatchEvent(new §4<§(§4<§.§>[§,"",param1));
                     if(_loc3_)
                     {
                        if(!_loc4_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr34);
               }
            }
            addr34:
            return;
         }
         §§goto(addr67);
      }
      
      public static function §4W§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = int(int(param1.charAt(param1.length - 1)));
         if(_loc4_)
         {
            §§push(_loc3_);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc4_ || param1)
                     {
                        §§goto(addr152);
                     }
                     §§goto(addr159);
                  }
                  else
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
                              while(true)
                              {
                                 §§push(_loc3_);
                                 if(!_loc5_)
                                 {
                                    if(!(_loc4_ || §>D§))
                                    {
                                       continue loop4;
                                    }
                                    if(_loc5_)
                                    {
                                       continue loop0;
                                    }
                                    §§push(1);
                                    if(_loc5_ && param2)
                                    {
                                       continue loop1;
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc5_)
                                    {
                                       continue loop3;
                                    }
                                    §§push(int(§§pop()));
                                 }
                                 _loc3_ = §§pop();
                                 loop6:
                                 while(!(_loc5_ && _loc3_))
                                 {
                                    if(_loc5_ && param2)
                                    {
                                       break loop5;
                                    }
                                    §§push(param1);
                                    if(_loc4_)
                                    {
                                       §§push(§§pop().slice(0,param1.length - 1) + _loc3_);
                                    }
                                    param1 = §§pop();
                                    while(true)
                                    {
                                       if(_loc4_ || param1)
                                       {
                                          if(!(_loc5_ && param1))
                                          {
                                             if(!_loc4_)
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          continue loop2;
                                       }
                                       continue loop6;
                                    }
                                    §§goto(addr159);
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr154);
               }
            }
         }
         addr152:
         if(§<! §)
         {
            addr154:
            §#7§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            addr159:
         }
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            §4S§.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §4S§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §4S§.removeEventListener(param1,param2,param3);
         }
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §4S§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §4S§.willTrigger(param1);
      }
   }
}
