package §"!&§
{
   import § !Y§.§[!%§;
   import §3"#§.§<!O§;
   import flash.media.Sound;
   
   public class §="D§
   {
      
      public static const §4-§:String = "collision";
      
      public static const §^!i§:String = "launch";
      
      public static const §@"-§:String = "special";
      
      public static const §1"6§:String = "selection";
      
      public static const §-!4§:String = "unselection";
      
      public static const §5§:String = "collisionSound";
      
      public static const §-h§:String = "damageSound";
      
      public static const §9!K§:String = "destroyedSound";
      
      public static const §3g§:String = "rollingSound";
      
      public static const §06§:String = "enter_atmosphere";
      
      public static const §?+§:String = "exit_atmosphere";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §4-§ = "collision";
            while(true)
            {
               §^!i§ = "launch";
               while(!(_loc2_ && §="D§))
               {
                  §@"-§ = "special";
                  loop2:
                  while(true)
                  {
                     §1"6§ = "selection";
                     loop3:
                     while(true)
                     {
                        §-!4§ = "unselection";
                        loop4:
                        while(true)
                        {
                           §5§ = "collisionSound";
                           while(_loc1_)
                           {
                              §-h§ = "damageSound";
                              while(!(_loc2_ && _loc1_))
                              {
                                 if(!_loc2_)
                                 {
                                    §9!K§ = "destroyedSound";
                                    continue loop3;
                                 }
                                 continue loop4;
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
                  loop8:
                  while(!(_loc2_ && _loc2_))
                  {
                     §06§ = "enter_atmosphere";
                     while(true)
                     {
                        if(!_loc1_)
                        {
                           continue loop8;
                        }
                        if(_loc1_)
                        {
                           if(!_loc1_)
                           {
                              break;
                           }
                           continue;
                        }
                        §§goto(addr72);
                     }
                     §§goto(addr84);
                  }
               }
            }
         }
         §§goto(addr115);
      }
      
      private var §2!f§:§[!%§;
      
      private var §7"§:§[!%§;
      
      private var §`8§:§[!%§;
      
      private var §'T§:§[!%§;
      
      private var §0!p§:§[!%§;
      
      public function §="D§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§2!f§ = new §[!%§();
            do
            {
               this.§7"§ = new §[!%§();
               continue loop0;
            }
            while(_loc2_ && this);
            
            return;
         }
      }
      
      public function §?O§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§-!0§(param1);
            loop0:
            while(true)
            {
               this.§7!j§(param1);
               while(true)
               {
                  if(param1.audioChannels)
                  {
                     loop2:
                     for(; !_loc2_; if(!(_loc2_ && param1))
                     {
                        continue loop0;
                     })
                     {
                        this.§^!j§(param1);
                        while(true)
                        {
                           addr55:
                           while(_loc3_ || _loc3_)
                           {
                              continue loop2;
                           }
                        }
                     }
                     continue;
                  }
                  while(true)
                  {
                     if(!param1.sampleSettings)
                     {
                        while(true)
                        {
                           this.§;!k§(param1);
                           if(_loc3_)
                           {
                              if(!_loc2_)
                              {
                                 break;
                              }
                              addr42:
                              while(true)
                              {
                                 this.§5k§(param1);
                              }
                           }
                           §§goto(addr55);
                        }
                        return;
                        addr29:
                        addr37:
                     }
                     §§goto(addr42);
                     §§goto(addr96);
                  }
               }
               if(!(_loc3_ || this))
               {
                  continue;
               }
               §§goto(addr29);
            }
         }
         §§goto(addr37);
      }
      
      private function §-!0§(param1:Object) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:Vector.<String> = null;
         var _loc4_:String = null;
         for(_loc2_ in param1.audioGroups)
         {
            _loc3_ = new Vector.<String>();
            if(_loc9_)
            {
               var _loc7_:int = 0;
               if(_loc9_ || _loc3_)
               {
                  var _loc8_:* = param1.audioGroups[_loc2_];
                  if(_loc9_ || _loc2_)
                  {
                     for each(_loc4_ in _loc8_)
                     {
                        if(_loc10_)
                        {
                           continue;
                        }
                     }
                     addr93:
                     if(!(_loc10_ && param1))
                     {
                        this.§2!f§[_loc2_] = _loc3_;
                        addr101:
                     }
                     continue;
                     addr90:
                  }
                  while(true)
                  {
                     _loc3_.push(_loc4_);
                     §§goto(addr90);
                  }
               }
               §§goto(addr93);
            }
            §§goto(addr101);
         }
      }
      
      private function §^!j§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         for(_loc2_ in param1.audioChannels)
         {
            if(_loc5_)
            {
               this.§7"§[_loc2_] = param1.audioChannels[_loc2_];
            }
         }
      }
      
      private function §5k§(param1:Object) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:Object = null;
         var _loc4_:Sound = null;
         var _loc5_:int = 0;
         var _loc6_:* = param1.sampleSettings;
         for(; §§hasnext(_loc6_,_loc5_); if(_loc4_ = §<!O§.getSound(_loc2_,false))
         {
         })
         {
            _loc2_ = §§nextname(_loc5_,_loc6_);
            _loc3_ = param1.sampleSettings[_loc2_];
            if(_loc7_ || this)
            {
               if(_loc3_.channel)
               {
                  while(true)
                  {
                     this.§7"§[_loc2_] = _loc3_.channel.toString();
                     addr113:
                     while(true)
                     {
                     }
                  }
                  addr106:
               }
               loop3:
               while(true)
               {
                  if(_loc3_.volume)
                  {
                     if(_loc7_)
                     {
                        if(!_loc8_)
                        {
                           while(true)
                           {
                              this.§`8§[_loc2_] = parseFloat(_loc3_.volume);
                              addr102:
                              loop4:
                              while(true)
                              {
                                 addr52:
                                 while(true)
                                 {
                                    §§push(this.§%y§(_loc2_));
                                    if(_loc7_ || _loc3_)
                                    {
                                       §§push(§§pop());
                                    }
                                    _loc2_ = §§pop();
                                    if(!(_loc8_ && _loc3_))
                                    {
                                       break;
                                    }
                                    continue loop4;
                                 }
                                 if(!_loc8_)
                                 {
                                    if(true)
                                    {
                                       break loop3;
                                    }
                                    continue loop3;
                                 }
                                 §§goto(addr106);
                              }
                           }
                           addr94:
                        }
                        §§goto(addr113);
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr52);
               }
               continue;
            }
            §§goto(addr94);
         }
      }
      
      private function §7!j§(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         if(_loc6_ || param1)
         {
            if(!param1.sampleNameMappings)
            {
               if(!(_loc5_ && _loc3_))
               {
                  return;
               }
            }
         }
         for(_loc2_ in param1.sampleNameMappings)
         {
            if(_loc6_)
            {
               this.§'T§[_loc2_] = param1.sampleNameMappings[_loc2_].toString();
            }
         }
      }
      
      protected function §;!k§(param1:Object) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc4_:* = null;
         loop0:
         for(_loc4_ in param1.audioChannelSettings)
         {
            loop1:
            while(true)
            {
               _loc2_ = param1.audioChannelSettings[_loc4_].numChannels;
               loop2:
               while(true)
               {
                  _loc3_ = param1.audioChannelSettings[_loc4_].volume;
                  while(true)
                  {
                     addr63:
                     while(true)
                     {
                        §<!O§.§;!D§(_loc4_,_loc2_,_loc3_);
                        addr69:
                        while(!_loc7_)
                        {
                           continue loop1;
                        }
                        continue loop2;
                     }
                     addr44:
                     continue loop0;
                     if(!(_loc8_ || param1))
                     {
                        continue;
                     }
                     if(true)
                     {
                        continue loop0;
                     }
                     §§goto(addr63);
                  }
               }
            }
         }
      }
      
      protected function §!!J§(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Vector.<String> = this.§2!f§[param1];
         if(!(_loc3_ && _loc2_))
         {
            if(!_loc2_)
            {
               if(_loc4_ || _loc2_)
               {
                  return null;
               }
            }
         }
         return _loc2_[Math.floor(Math.random() * _loc2_.length)];
      }
      
      protected function §?!^§(param1:String) : String
      {
         return this.§7"§[param1];
      }
      
      protected function §#j§(param1:String) : Number
      {
         return this.§`8§[param1];
      }
      
      protected function §%y§(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§'T§[param1]);
            if(!(_loc2_ && _loc2_))
            {
               if(!§§pop())
               {
                  if(_loc3_ || _loc2_)
                  {
                     addr65:
                     §§pop();
                     §§push(param1);
                     if(_loc3_)
                     {
                        return §§pop();
                     }
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      protected function §'l§(param1:String) : Number
      {
         return this.§0!p§[param1];
      }
      
      public function playSound(param1:String, param2:int = 0, param3:Number = 0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         §§push(this.§!!J§(param1));
         if(!_loc8_)
         {
            §§push(§§pop());
         }
         var _loc4_:*;
         §§push(_loc4_ = §§pop());
         if(!_loc8_)
         {
            if(!§§pop())
            {
               if(_loc9_)
               {
                  §§push(param1);
                  if(!_loc8_)
                  {
                     addr33:
                     §§push(§§pop());
                     if(!(_loc8_ && this))
                     {
                        _loc4_ = §§pop();
                        addr42:
                        §§push(this.§?!^§(_loc4_));
                        if(_loc8_ && param2)
                        {
                        }
                        addr53:
                        var _loc5_:* = §§pop();
                        §§push(this.§#j§(_loc4_));
                        if(_loc9_ || this)
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc6_:* = §§pop();
                        if(_loc9_ || param2)
                        {
                           if(isNaN(_loc6_))
                           {
                              if(!_loc8_)
                              {
                                 _loc6_ = Number(-1);
                              }
                           }
                        }
                        §§push(this.§%y§(_loc4_));
                        if(!_loc8_)
                        {
                           §§push(§§pop());
                        }
                        var _loc7_:*;
                        §§push(_loc7_ = §§pop());
                        if(_loc9_)
                        {
                           if(!§§pop())
                           {
                              if(!_loc8_)
                              {
                                 return;
                              }
                              addr146:
                              §<!O§.playSound(_loc7_,§<!O§.§>m§,param2,_loc6_);
                           }
                           else
                           {
                              addr132:
                              if(_loc5_ != null)
                              {
                                 §<!O§.playSound(_loc7_,_loc5_,param2,_loc6_,param3);
                                 if(!_loc9_)
                                 {
                                    addr153:
                                 }
                                 return;
                              }
                              if(!_loc8_)
                              {
                                 §§goto(addr146);
                              }
                           }
                           §§goto(addr153);
                        }
                        §§goto(addr132);
                     }
                     §§push(§§pop());
                  }
                  §§goto(addr53);
               }
            }
            §§goto(addr42);
         }
         §§goto(addr33);
      }
      
      public function §,!z§(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§!!J§(param1));
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc5_)
         {
            §§push(_loc2_);
            if(!(_loc5_ && _loc2_))
            {
               if(!§§pop())
               {
                  if(!_loc5_)
                  {
                     §§push(param1);
                     if(_loc4_)
                     {
                        §§push(§§pop());
                        if(_loc4_)
                        {
                           _loc2_ = §§pop();
                           addr43:
                           §§push(this.§?!^§(_loc2_));
                           if(!(_loc5_ && this))
                           {
                              addr63:
                              §§push(§§pop());
                           }
                           var _loc3_:* = §§pop();
                           if(!(_loc5_ && _loc3_))
                           {
                              if(_loc3_ != null)
                              {
                                 §<!O§.§,!z§(_loc3_);
                                 if(_loc4_ || _loc2_)
                                 {
                                    if(_loc5_ && param1)
                                    {
                                       addr111:
                                       §<!O§.§,!z§(§<!O§.§>m§);
                                       addr115:
                                    }
                                    return;
                                 }
                                 §§goto(addr115);
                              }
                           }
                           §§goto(addr111);
                        }
                     }
                  }
               }
               §§goto(addr43);
            }
            §§goto(addr63);
         }
         §§goto(addr43);
      }
   }
}
