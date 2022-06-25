package §5!c§
{
   import §"x§.§-8§;
   import com.rovio.assets.§`!t§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.media.Sound;
   import flash.media.SoundLoaderContext;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §9'§
   {
      
      private static const §%8§:int = 128;
      
      private static var §<!&§:Boolean = true;
      
      private static var §<%§:int;
      
      private static var §2C§:Dictionary;
      
      private static var §^!g§:Dictionary;
      
      public static const § ^§:String = "Default_Channel";
      
      public static const §!§:Boolean = false;
      
      private static var §!d§:Boolean = true;
      
      private static var §=O§:EventDispatcher;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §%8§ = 128;
            loop0:
            while(true)
            {
               §<!&§ = true;
               addr94:
               while(true)
               {
                  § ^§ = "Default_Channel";
                  addr77:
                  if(!(_loc1_ && §9'§))
                  {
                     §!d§ = true;
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr89);
      }
      
      public function §9'§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §!d§ = param1;
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §2C§ = new Dictionary();
            loop0:
            do
            {
               §^!g§ = new Dictionary();
               while(true)
               {
                  §<%§ = 0;
                  while(!(_loc1_ && §9'§))
                  {
                     §+!S§(§ ^§,4,1);
                     if(_loc2_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      public static function §+!S§(param1:String, param2:int, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            if(§<!5§(param1) == null)
            {
               loop0:
               while(true)
               {
                  §§push(§<%§);
                  loop1:
                  while(true)
                  {
                     §§push(§%8§);
                     loop2:
                     while(true)
                     {
                        if(§§pop() >= §§pop())
                        {
                           if(_loc6_ && param3)
                           {
                              break;
                           }
                           while(true)
                           {
                              if(§!§)
                              {
                                 if(_loc6_ && param3)
                                 {
                                    break loop2;
                                 }
                                 §§push(§-8§);
                                 §§push("WARNING: SoundEngine:addNewChannelControl() ");
                                 if(_loc5_ || §9'§)
                                 {
                                    §§push(§§pop() + param1);
                                    if(!_loc6_)
                                    {
                                       §§push(" failed because we already have more than ");
                                       if(_loc5_ || param3)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(_loc5_ || §9'§)
                                          {
                                             addr151:
                                             §§push(§§pop() + §%8§);
                                             if(!(_loc6_ && param1))
                                             {
                                                §§push(" reserved");
                                             }
                                             §§pop().log(§§pop());
                                             break loop2;
                                          }
                                          §§goto(addr151);
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                 }
                                 §§goto(addr151);
                              }
                           }
                        }
                        else
                        {
                           while(true)
                           {
                              §§push(§<%§);
                              if(!(_loc6_ && param2))
                              {
                                 §§push(param2);
                                 if(_loc5_)
                                 {
                                    if(!(_loc5_ || param1))
                                    {
                                       continue loop2;
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc6_ && param3))
                                    {
                                       if(§§pop() >= §%8§)
                                       {
                                          if(_loc5_)
                                          {
                                             §§push(§%8§);
                                             if(_loc5_ || §9'§)
                                             {
                                                addr59:
                                                if(!(_loc5_ || param1))
                                                {
                                                   continue loop1;
                                                }
                                                addr68:
                                                §§push(int(§§pop() - §<%§));
                                             }
                                             param2 = §§pop();
                                          }
                                          if(!_loc5_)
                                          {
                                             if(_loc6_)
                                             {
                                                break loop2;
                                             }
                                             continue;
                                          }
                                          if(!_loc5_)
                                          {
                                             §§goto(addr165);
                                          }
                                          if(false)
                                          {
                                             break;
                                          }
                                       }
                                       var _loc4_:§-!t§ = new §-!t§(param1,param2,param3);
                                       if(!_loc6_)
                                       {
                                          if(!§<!&§)
                                          {
                                             addr223:
                                             _loc4_.§]T§();
                                          }
                                          §2C§[param1.toLowerCase()] = _loc4_;
                                          addr213:
                                          if(_loc5_ || param1)
                                          {
                                             §<%§ += param2;
                                             if(!(_loc6_ && param1))
                                             {
                                                if(!_loc5_)
                                                {
                                                   §§goto(addr223);
                                                }
                                                return;
                                             }
                                             §§goto(addr213);
                                          }
                                       }
                                       §§goto(addr223);
                                    }
                                 }
                                 §§goto(addr68);
                              }
                              §§goto(addr59);
                           }
                        }
                        §§goto(addr76);
                     }
                     continue loop0;
                  }
               }
               addr76:
               return;
            }
            addr165:
            return;
         }
         §§goto(addr92);
      }
      
      public static function §<!5§(param1:String) : §-!t§
      {
         return §2C§[param1.toLowerCase()];
      }
      
      public static function §[!f§(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§-!t§ = null;
         if(!_loc6_)
         {
            if(param1 == §<!&§)
            {
               if(_loc5_ || _loc2_)
               {
                  §§goto(addr31);
               }
            }
            §<!&§ = param1;
            var _loc3_:int = 0;
            for each(_loc2_ in §2C§)
            {
               if(_loc5_ || _loc3_)
               {
                  if(!§<!&§)
                  {
                     _loc2_.§]T§();
                     continue;
                  }
                  if(_loc5_ || _loc2_)
                  {
                     _loc2_.§"!G§();
                     if(_loc6_)
                     {
                        continue;
                     }
                  }
               }
            }
            return;
         }
         addr31:
      }
      
      public static function §0D§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§-!t§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in §2C§)
         {
            if(!(_loc5_ && _loc2_))
            {
               _loc1_.§0D§();
            }
         }
      }
      
      public static function §5h§() : Boolean
      {
         return §<!&§;
      }
      
      private static function §!!§(param1:String, param2:String) : §-!t§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(!§!d§)
            {
               if(!(_loc4_ && _loc3_))
               {
                  return null;
               }
            }
         }
         var _loc3_:§-!t§ = §<!5§(param1);
         if(!_loc4_)
         {
            if(!_loc3_)
            {
               if(!(_loc4_ && param1))
               {
                  addr153:
                  if(§!§)
                  {
                     addr154:
                     §§push(§-8§);
                     §§push("WARNING: SoundEngine->PlaySound() can not play new sound request ");
                     if(!(_loc4_ && param1))
                     {
                        §§push(param2);
                        if(_loc5_ || _loc3_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc5_)
                           {
                              §§push(§§pop() + " because this channel does not exist ");
                              if(_loc5_ || param1)
                              {
                                 addr194:
                                 §§push(§§pop() + param1);
                              }
                           }
                           §§pop().log(§§pop());
                           addr141:
                           return null;
                           addr139:
                           addr196:
                        }
                     }
                     §§goto(addr194);
                  }
                  §§goto(addr139);
               }
               §§goto(addr196);
            }
            else
            {
               while(true)
               {
                  §§push(_loc3_.§ !"§());
                  if(!(_loc4_ && §9'§))
                  {
                     if(_loc5_ || param2)
                     {
                        if(§§pop())
                        {
                           return _loc3_;
                        }
                        if(_loc5_ || _loc3_)
                        {
                           addr84:
                           if(§!§)
                           {
                              if(_loc5_)
                              {
                                 if(!(_loc5_ || §9'§))
                                 {
                                    continue;
                                 }
                                 if(_loc5_)
                                 {
                                    §§push(§-8§);
                                    §§push("WARNING: SoundEngine->PlaySound() can not play new sound request  ");
                                    if(!(_loc4_ && param1))
                                    {
                                       §§push(param2);
                                       if(_loc5_ || _loc3_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(_loc5_ || param1)
                                          {
                                             addr131:
                                             §§push(§§pop() + " this channel is full ");
                                             if(_loc5_)
                                             {
                                                addr135:
                                                §§push(§§pop() + param1);
                                             }
                                             §§pop().log(§§pop());
                                             §§push(null);
                                             if(!_loc4_)
                                             {
                                                return §§pop();
                                             }
                                             §§goto(addr141);
                                             addr138:
                                          }
                                       }
                                       §§goto(addr135);
                                    }
                                    §§goto(addr131);
                                 }
                                 else
                                 {
                                    §§goto(addr154);
                                 }
                              }
                              §§goto(addr138);
                           }
                           §§goto(addr131);
                        }
                        §§goto(addr141);
                     }
                     else
                     {
                        §§goto(addr153);
                     }
                  }
                  §§goto(addr84);
               }
               §§goto(addr141);
            }
         }
         §§goto(addr131);
      }
      
      public static function §&!<§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §try§
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc10_:URLRequest = null;
         var _loc11_:SoundLoaderContext = null;
         var _loc12_:§ !p§ = null;
         var _loc8_:§-!t§;
         if(!(_loc8_ = §!!§(param4,param2)))
         {
            if(_loc13_ || §9'§)
            {
               return null;
            }
         }
         var _loc9_:Sound;
         if((_loc9_ = §^!g§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§>]§);
            if(_loc13_ || param1)
            {
               _loc9_.addEventListener(Event.ID3,§'!W§);
            }
            loop0:
            while(true)
            {
               _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§@!W§);
               while(true)
               {
                  addr95:
                  while(true)
                  {
                     _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§@!W§);
                     do
                     {
                        §^!g§[param2] = _loc9_;
                     }
                     while(_loc14_);
                     
                     if(!_loc13_)
                     {
                        break;
                     }
                     continue loop0;
                  }
               }
            }
         }
         return _loc8_.playSound(_loc9_,param2,param5,param6,param7);
      }
      
      private static function §>]§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§ !p§ = new § !p§(§ !p§.§,m§);
         if(_loc3_)
         {
            _loc2_.§>3§ = §`!r§(Sound(param1.currentTarget));
         }
         do
         {
            dispatchEvent(_loc2_);
         }
         while(_loc4_ && §9'§);
         
      }
      
      private static function §`!r§(param1:Sound) : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         var _loc4_:int = 0;
         var _loc5_:* = §^!g§;
         while(true)
         {
            for(_loc2_ in _loc5_)
            {
               _loc3_ = §^!g§[_loc2_];
               if(_loc6_ && _loc2_)
               {
                  break;
               }
               if(_loc3_ == param1)
               {
                  if(_loc7_)
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      private static function §'!W§(param1:Event) : void
      {
      }
      
      private static function §@!W§(param1:ErrorEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§ E§ = new § E§(§ E§.§88§);
         if(!(_loc3_ && _loc2_))
         {
            _loc2_.§>3§ = §`!r§(Sound(param1.currentTarget));
            while(true)
            {
               _loc2_.error = param1.text;
               addr56:
               if(_loc3_ && _loc3_)
               {
                  continue;
               }
               return;
               addr73:
            }
         }
         while(true)
         {
            _loc2_.errorID = param1.errorID;
            while(!(_loc3_ && param1))
            {
               dispatchEvent(_loc2_);
               if(!(_loc4_ || param1))
               {
                  continue;
               }
               §§goto(addr56);
            }
         }
         §§goto(addr73);
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §try§
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc8_:Class = null;
         var _loc6_:§-!t§;
         if(!(_loc6_ = §!!§(param2,param1)))
         {
            if(_loc10_)
            {
               return null;
            }
         }
         var _loc7_:Sound;
         if((_loc7_ = §^!g§[param1]) == null)
         {
            if(!(_loc8_ = §`!t§.§=J§(param1,false) as Class))
            {
               if(!(_loc9_ && param2))
               {
                  §§push(§-8§);
                  §§push("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: ");
                  if(!_loc9_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
                  if(_loc10_ || param3)
                  {
                     return null;
                  }
               }
            }
            _loc7_ = new _loc8_();
            if(_loc10_)
            {
               §^!g§[param1] = _loc7_;
            }
         }
         return _loc6_.playSound(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §7!,§(param1:String = "Default_Channel") : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§-!t§ = §<!5§(param1);
         if(_loc3_)
         {
            if(_loc2_ != null)
            {
               if(!(_loc4_ && _loc2_))
               {
                  _loc2_.§0D§();
               }
            }
         }
      }
      
      public static function §!!`§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = int(int(param1.charAt(param1.length - 1)));
         if(!(_loc5_ && _loc3_))
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
                     if(!(_loc5_ && param1))
                     {
                        if(§!§)
                        {
                           addr155:
                           §§push(§-8§);
                           §§push("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: ");
                           if(!_loc5_)
                           {
                              §§push(§§pop() + param1);
                           }
                           §§pop().log(§§pop());
                           addr162:
                        }
                        return;
                     }
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
                              while(true)
                              {
                                 if(_loc4_)
                                 {
                                    §§push(_loc3_);
                                    if(_loc4_)
                                    {
                                       §§push(1);
                                       if(!(_loc4_ || §9'§))
                                       {
                                          continue loop1;
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(!_loc4_)
                                       {
                                          continue loop3;
                                       }
                                       §§push(int(§§pop()));
                                    }
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       if(_loc4_)
                                       {
                                          _loc3_ = §§pop();
                                          do
                                          {
                                             §§push(param1);
                                             if(_loc4_ || param2)
                                             {
                                                §§push(§§pop().slice(0,param1.length - 1) + _loc3_);
                                             }
                                             param1 = §§pop();
                                             do
                                             {
                                                §9'§.playSound(param1,param2);
                                             }
                                             while(_loc5_);
                                             
                                          }
                                          while(!(_loc4_ || param2));
                                          
                                          if(_loc4_)
                                          {
                                             if(!(_loc5_ && param1))
                                             {
                                                if(_loc4_)
                                                {
                                                   return;
                                                }
                                                break;
                                             }
                                             continue loop2;
                                          }
                                          continue;
                                       }
                                       continue loop0;
                                    }
                                    continue loop4;
                                 }
                              }
                              §§goto(addr162);
                           }
                        }
                     }
                  }
                  §§goto(addr155);
               }
            }
         }
         §§goto(addr155);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            §=O§.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §=O§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §=O§.removeEventListener(param1,param2,param3);
         }
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §=O§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §=O§.willTrigger(param1);
      }
   }
}
