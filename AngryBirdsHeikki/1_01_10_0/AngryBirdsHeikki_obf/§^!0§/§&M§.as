package §^!0§
{
   import §@R§.§4,§;
   import §]!6§.§false§;
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
   
   public class §&M§
   {
      
      private static const §2!S§:int = 128;
      
      private static var §5C§:Boolean = true;
      
      private static var §5!L§:int;
      
      private static var §'!Z§:Dictionary;
      
      private static var §%!M§:Dictionary;
      
      private static var §63§:Dictionary;
      
      public static const §'!Q§:String = "Default_Channel";
      
      public static const §>s§:Boolean = false;
      
      private static var §&!-§:Boolean = true;
      
      private static var §8§:EventDispatcher;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §2!S§ = 128;
            while(true)
            {
               §5C§ = true;
               loop1:
               while(true)
               {
                  §'!Q§ = "Default_Channel";
                  addr83:
                  while(true)
                  {
                     §>s§ = false;
                     continue loop1;
                  }
               }
            }
         }
      }
      
      public function §&M§()
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §&!-§ = param1;
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §'!Z§ = new Dictionary();
         }
         loop0:
         while(true)
         {
            §%!M§ = new Dictionary();
            loop1:
            do
            {
               §63§ = new Dictionary();
               while(_loc1_)
               {
                  §5!L§ = 0;
                  do
                  {
                     §1!V§(§'!Q§,4,1);
                  }
                  while(!_loc1_);
                  
                  if(!_loc2_)
                  {
                     continue loop1;
                  }
               }
               continue loop0;
            }
            while(!_loc1_);
            
            return;
         }
      }
      
      public static function §1!V§(param1:String, param2:int, param3:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            if(§2!W§(param1) == null)
            {
               loop0:
               while(true)
               {
                  §§push(§5!L§);
                  loop1:
                  while(true)
                  {
                     §§push(§2!S§);
                     loop2:
                     while(§§pop() < §§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§push(§5!L§);
                           if(!_loc5_)
                           {
                              §§push(param2);
                              if(_loc6_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc6_)
                                 {
                                    if(§§pop() >= §2!S§)
                                    {
                                       if(!(_loc5_ && param3))
                                       {
                                          if(!(_loc5_ && param2))
                                          {
                                             if(!_loc5_)
                                             {
                                                if(_loc6_ || param1)
                                                {
                                                   §§push(§2!S§);
                                                   if(_loc5_)
                                                   {
                                                      break;
                                                   }
                                                   addr60:
                                                   §§push(§5!L§);
                                                   if(!(_loc5_ && param2))
                                                   {
                                                      addr68:
                                                      §§push(int(§§pop() - §§pop()));
                                                      break;
                                                   }
                                                   continue loop2;
                                                }
                                                continue loop0;
                                             }
                                             addr83:
                                             return;
                                             addr126:
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                continue loop3;
                                             }
                                             addr85:
                                          }
                                       }
                                       addr77:
                                       if(!_loc5_)
                                       {
                                          if(_loc5_)
                                          {
                                             break loop2;
                                          }
                                          if(true)
                                          {
                                             break loop0;
                                          }
                                          §§goto(addr83);
                                       }
                                       if(!_loc6_)
                                       {
                                          §§goto(addr132);
                                       }
                                       §§push(§4,§);
                                       §§push("WARNING: SoundEngine:addNewChannelControl() " + param1);
                                       if(_loc6_)
                                       {
                                          §§push(§§pop() + " failed because we already have more than ");
                                          if(!_loc5_)
                                          {
                                             addr114:
                                             §§push(§§pop() + §2!S§);
                                             if(_loc6_ || param1)
                                             {
                                                addr123:
                                                §§push(§§pop() + " reserved");
                                             }
                                             §§pop().log(§§pop());
                                             §§goto(addr126);
                                          }
                                          §§goto(addr123);
                                       }
                                       §§goto(addr114);
                                    }
                                    break loop0;
                                 }
                                 §§goto(addr68);
                              }
                              §§goto(addr60);
                           }
                           break;
                        }
                        if(!(_loc6_ || §&M§))
                        {
                           continue loop1;
                        }
                        param2 = §§pop();
                        §§goto(addr77);
                     }
                     if(§>s§)
                     {
                        §§goto(addr77);
                     }
                     §§goto(addr83);
                  }
               }
               var _loc4_:§&^§;
               (_loc4_ = new §&^§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§[!^§);
               if(!_loc5_)
               {
                  _loc4_.addEventListener(ErrorEvent.ERROR,§4!&§);
                  do
                  {
                     if(!§5C§)
                     {
                        while(true)
                        {
                           _loc4_.§6!;§();
                           addr195:
                           while(true)
                           {
                           }
                        }
                        addr193:
                     }
                     while(true)
                     {
                        §'!Z§[param1.toLowerCase()] = _loc4_;
                        while(true)
                        {
                           if(_loc6_)
                           {
                              continue;
                           }
                           §§goto(addr193);
                        }
                        §§goto(addr195);
                     }
                  }
                  while(!_loc6_);
                  
               }
               return;
            }
            addr132:
            return;
         }
         §§goto(addr85);
      }
      
      public static function §2!W§(param1:String) : §&^§
      {
         return §'!Z§[param1.toLowerCase()];
      }
      
      public static function §,!!§() : Vector.<String>
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §'!Z§)
         {
            if(_loc6_)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public static function §6!=§(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§&^§ = null;
         if(!(_loc6_ && §&M§))
         {
            if(param1 == §5C§)
            {
               if(_loc5_)
               {
                  return;
               }
            }
            §5C§ = param1;
         }
         for each(_loc2_ in §'!Z§)
         {
            if(_loc5_)
            {
               if(!§5C§)
               {
                  _loc2_.§6!;§();
                  continue;
               }
               if(!(_loc5_ || _loc2_))
               {
                  continue;
               }
               _loc2_.§2!X§();
               if(_loc6_ && param1)
               {
                  continue;
               }
            }
         }
      }
      
      public static function §=!7§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§&^§ = null;
         for each(_loc1_ in §'!Z§)
         {
            if(!_loc4_)
            {
               _loc1_.§=!7§();
            }
         }
         if(!_loc4_)
         {
            dispatchEvent(new §^0§(§^0§.§#]§));
         }
      }
      
      public static function §`L§() : Boolean
      {
         return §5C§;
      }
      
      private static function §"!e§(param1:String, param2:String) : §&^§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            if(!§&!-§)
            {
               if(!(_loc4_ && §&M§))
               {
                  return null;
               }
            }
         }
         var _loc3_:§&^§ = §2!W§(param1);
         if(_loc5_)
         {
            if(!_loc3_)
            {
               if(!_loc4_)
               {
                  §§goto(addr134);
               }
               §§goto(addr158);
            }
            else
            {
               while(true)
               {
                  §§push(_loc3_.§`!Q§());
                  if(_loc5_)
                  {
                     if(!_loc4_)
                     {
                        if(§§pop())
                        {
                           return _loc3_;
                        }
                        if(!_loc5_)
                        {
                           continue;
                        }
                        if(_loc5_ || _loc3_)
                        {
                           addr97:
                           §§push(§>s§);
                           break;
                        }
                        §§goto(addr158);
                     }
                     else
                     {
                        §§goto(addr134);
                     }
                  }
                  break;
               }
               if(§§pop())
               {
                  §§push(§4,§);
                  §§push("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2);
                  if(!_loc4_)
                  {
                     §§push(§§pop() + " this channel is full ");
                     if(_loc5_ || param1)
                     {
                        addr114:
                        §§push(§§pop() + param1);
                     }
                     §§pop().log(§§pop());
                     if(_loc5_ || §&M§)
                     {
                        addr48:
                        §§push(null);
                        if(!(_loc4_ && param2))
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        §§goto(addr135);
                     }
                     §§goto(addr134);
                  }
                  §§goto(addr114);
               }
               §§goto(addr48);
            }
            return null;
         }
         §§goto(addr97);
      }
      
      public static function §3l§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §4E§
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§^0§ = null;
         var _loc8_:§&^§;
         if(!(_loc8_ = §"!e§(param4,param2)))
         {
            if(!_loc14_)
            {
               §§push(null);
               if(!_loc14_)
               {
                  return §§pop();
               }
            }
            else
            {
               addr53:
               return null;
            }
            return §§pop();
         }
         if(§63§[param2])
         {
            if(_loc15_ || param1)
            {
               §§goto(addr53);
            }
         }
         var _loc9_:Sound;
         if((_loc9_ = §%!M§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§1_§);
            if(_loc15_ || param1)
            {
               _loc9_.addEventListener(Event.ID3,§&!5§);
               while(true)
               {
                  _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§?!0§);
                  addr126:
                  loop1:
                  while(true)
                  {
                     addr113:
                     while(true)
                     {
                        _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§?!0§);
                        continue loop1;
                     }
                  }
                  addr104:
                  if(!(_loc15_ || param1))
                  {
                     continue;
                  }
                  if(false)
                  {
                     §§goto(addr113);
                  }
                  §§goto(addr133);
               }
            }
            while(true)
            {
               §%!M§[param2] = _loc9_;
               if(_loc14_ && §&M§)
               {
                  continue;
               }
               if(_loc15_)
               {
                  §§goto(addr104);
               }
               §§goto(addr126);
            }
            addr133:
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            if(!_loc14_)
            {
               _loc9_.load(_loc11_,_loc12_);
            }
            (_loc13_ = new §^0§(§^0§.§]t§)).§5=§ = param2;
            if(_loc15_)
            {
               dispatchEvent(_loc13_);
            }
            §§goto(addr164);
         }
         addr164:
         var _loc10_:§4E§ = _loc8_.§6!#§(_loc9_,param2,param5,param6,param7);
         if(!(_loc14_ && param3))
         {
            §63§[param2] = _loc10_;
         }
         return _loc10_;
         §§goto(addr53);
      }
      
      private static function §1_§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§^0§ = new §^0§(§^0§.§7j§);
         if(_loc4_ || _loc2_)
         {
            _loc2_.§5=§ = §=!a§(Sound(param1.currentTarget));
            do
            {
               dispatchEvent(_loc2_);
            }
            while(_loc3_);
            
         }
      }
      
      private static function §=!a§(param1:Sound) : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         var _loc4_:int = 0;
         var _loc5_:* = §%!M§;
         while(true)
         {
            for(_loc2_ in _loc5_)
            {
               _loc3_ = §%!M§[_loc2_];
               if(_loc6_ && _loc2_)
               {
                  break;
               }
               if(_loc3_ == param1)
               {
                  if(_loc7_ || _loc2_)
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      private static function §&!5§(param1:Event) : void
      {
      }
      
      private static function §?!0§(param1:ErrorEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§?W§ = new §?W§(§?W§.§>m§);
         §§push(§=!a§(Sound(param1.currentTarget)));
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            _loc2_.§5=§ = _loc3_;
            while(true)
            {
               _loc2_.error = param1.text;
               addr126:
               while(true)
               {
                  _loc2_.errorID = param1.errorID;
               }
            }
            addr130:
         }
         loop2:
         while(true)
         {
            delete §%!M§[_loc3_];
            loop3:
            while(true)
            {
               if(§63§[_loc3_])
               {
                  if(_loc5_ || _loc2_)
                  {
                     continue loop2;
                  }
                  continue;
               }
               addr40:
               while(true)
               {
                  dispatchEvent(_loc2_);
                  if(_loc4_ && _loc2_)
                  {
                     continue loop3;
                  }
                  if(_loc5_)
                  {
                     return;
                  }
                  §§goto(addr126);
               }
            }
         }
      }
      
      private static function §[!^§(param1:DataEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            delete §63§[param1.data];
            do
            {
               dispatchEvent(new §^0§(§^0§.SOUND_COMPLETE,param1.data));
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      private static function §4!&§(param1:ErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            dispatchEvent(param1);
         }
      }
      
      public static function §6!#§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §4E§
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc8_:Class = null;
         var _loc6_:§&^§;
         if(!(_loc6_ = §"!e§(param2,param1)))
         {
            if(_loc10_ || param3)
            {
               return null;
            }
         }
         var _loc7_:Sound;
         if((_loc7_ = §%!M§[param1]) == null)
         {
            if(!(_loc8_ = §false§.§5#§(param1,false) as Class))
            {
               if(!(_loc9_ && param3))
               {
                  §4,§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
                  if(_loc9_ && §&M§)
                  {
                     §§goto(addr86);
                  }
               }
               return null;
            }
            addr86:
            _loc7_ = new _loc8_();
            if(_loc10_ || param1)
            {
               §%!M§[param1] = _loc7_;
            }
            §§goto(addr111);
         }
         addr111:
         return _loc6_.§6!#§(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §7!<§(param1:String = "Default_Channel") : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§&^§ = §2!W§(param1);
         if(_loc3_)
         {
            if(_loc2_ != null)
            {
               do
               {
                  _loc2_.§=!7§();
                  do
                  {
                     dispatchEvent(new §^0§(§^0§.§?!1§,"",param1));
                  }
                  while(_loc4_);
                  
               }
               while(_loc4_ && param1);
               
               addr66:
            }
            return;
         }
         §§goto(addr66);
      }
      
      public static function §<!_§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(!(_loc5_ && param1))
         {
            §§push(_loc3_);
            loop0:
            while(true)
            {
               §§push(0);
               addr161:
               while(§§pop() != §§pop())
               {
                  while(true)
                  {
                     §§push(Math.random() * _loc3_);
                     addr129:
                     while(true)
                     {
                        §§push(int(§§pop()));
                        continue loop0;
                     }
                  }
               }
               addr162:
               if(§>s§)
               {
                  addr164:
                  §4,§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
                  addr169:
               }
               return;
            }
         }
         §§goto(addr123);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param3)
         {
            §8§.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §8§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && §&M§))
         {
            §8§.removeEventListener(param1,param2,param3);
         }
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §8§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §8§.willTrigger(param1);
      }
   }
}
