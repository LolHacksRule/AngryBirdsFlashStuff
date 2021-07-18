package §2"Y§
{
   import §1!i§.§,#_§;
   import §="2§.§?!r§;
   import flash.media.Sound;
   
   public class §%"3§
   {
      
      public static const §^f§:String = "collision";
      
      public static const §5"P§:String = "launch";
      
      public static const §!!B§:String = "special";
      
      public static const §0F§:String = "selection";
      
      public static const § !O§:String = "unselection";
      
      public static const §4"#§:String = "collisionSound";
      
      public static const §2l§:String = "damageSound";
      
      public static const §@#A§:String = "destroyedSound";
      
      public static const §`#_§:String = "rollingSound";
      
      public static const §`$§:String = "enter_atmosphere";
      
      public static const §<!H§:String = "exit_atmosphere";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §^f§ = "collision";
            while(true)
            {
               §5"P§ = "launch";
               addr138:
               while(true)
               {
                  §!!B§ = "special";
                  loop2:
                  while(true)
                  {
                     §0F§ = "selection";
                     addr118:
                     while(true)
                     {
                        § !O§ = "unselection";
                        continue loop2;
                     }
                  }
               }
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               §4"#§ = "collisionSound";
               while(true)
               {
                  §2l§ = "damageSound";
                  loop6:
                  for(; !(_loc1_ && _loc1_); if(!(_loc2_ || _loc2_))
                  {
                     continue;
                  },§§goto(addr49))
                  {
                     §@#A§ = "destroyedSound";
                     while(_loc2_)
                     {
                        §`#_§ = "rollingSound";
                        loop8:
                        while(_loc2_)
                        {
                           if(_loc2_)
                           {
                              if(!_loc1_)
                              {
                                 while(true)
                                 {
                                    §`$§ = "enter_atmosphere";
                                    while(_loc2_)
                                    {
                                       continue loop6;
                                       §<!H§ = "exit_atmosphere";
                                       if(_loc2_ || _loc1_)
                                       {
                                          return;
                                       }
                                    }
                                    continue loop8;
                                 }
                                 addr70:
                              }
                              else
                              {
                                 §§goto(addr138);
                              }
                           }
                           §§goto(addr99);
                        }
                     }
                     §§goto(addr118);
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      private var §@#S§:§,#_§;
      
      private var §?!I§:§,#_§;
      
      private var §1!Y§:§,#_§;
      
      private var §8"=§:§,#_§;
      
      private var § !t§:§,#_§;
      
      public function §%"3§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            loop0:
            while(true)
            {
               this.§@#S§ = new §,#_§();
               loop1:
               while(true)
               {
                  this.§?!I§ = new §,#_§();
                  loop2:
                  while(true)
                  {
                     this.§1!Y§ = new §,#_§();
                     loop3:
                     while(_loc1_)
                     {
                        this.§8"=§ = new §,#_§();
                        loop4:
                        while(!_loc2_)
                        {
                           continue loop0;
                           while(true)
                           {
                              this.§ !t§ = new §,#_§();
                              if(!_loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 continue loop3;
                              }
                              continue loop4;
                           }
                           return;
                        }
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr57);
      }
      
      public function §7!f§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§`"V§(param1);
            loop0:
            while(true)
            {
               this.§>#1§(param1);
               addr68:
               if(!(_loc2_ || _loc3_))
               {
                  continue;
               }
               this.§-#$§(param1);
               loop5:
               while(!_loc3_)
               {
                  while(true)
                  {
                     this.§>!_§(param1);
                     if(_loc2_ || _loc2_)
                     {
                        break;
                     }
                     continue loop5;
                  }
                  return;
               }
               while(true)
               {
                  loop4:
                  while(true)
                  {
                     if(param1.sampleSettings)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           addr61:
                           if(!(_loc3_ && _loc2_))
                           {
                              §§goto(addr68);
                           }
                           else
                           {
                              while(_loc2_ || _loc3_)
                              {
                                 this.§6"I§(param1);
                                 continue loop4;
                                 §§goto(addr61);
                              }
                              while(true)
                              {
                                 if(param1.audioChannels)
                                 {
                                    continue;
                                 }
                                 continue loop4;
                              }
                              addr85:
                              addr110:
                           }
                        }
                        §§goto(addr78);
                     }
                     §§goto(addr28);
                  }
                  continue loop0;
               }
               addr78:
            }
         }
         §§goto(addr110);
      }
      
      private function §`"V§(param1:Object) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:Vector.<String> = null;
         var _loc4_:String = null;
         for(_loc2_ in param1.audioGroups)
         {
            _loc3_ = new Vector.<String>();
            if(!_loc10_)
            {
               var _loc7_:int = 0;
               if(!_loc10_)
               {
                  var _loc8_:* = param1.audioGroups[_loc2_];
                  if(!_loc9_)
                  {
                  }
                  for each(_loc4_ in _loc8_)
                  {
                     if(_loc9_ || param1)
                     {
                        _loc3_.push(_loc4_);
                     }
                  }
               }
               if(_loc10_ && this)
               {
                  continue;
               }
            }
            this.§@#S§[_loc2_] = _loc3_;
         }
      }
      
      private function §6"I§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         for(_loc2_ in param1.audioChannels)
         {
            if(_loc5_ || this)
            {
               this.§?!I§[_loc2_] = param1.audioChannels[_loc2_];
            }
         }
      }
      
      private function §-#$§(param1:Object) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:Object = null;
         var _loc4_:Sound = null;
         for(_loc2_ in param1.sampleSettings)
         {
            _loc3_ = param1.sampleSettings[_loc2_];
            if(_loc7_ || _loc2_)
            {
               this.§?!I§[_loc2_] = _loc3_.channel.toString();
               loop1:
               while(true)
               {
                  addr86:
                  while(true)
                  {
                     if(_loc3_.volume)
                     {
                        continue loop1;
                     }
                     loop5:
                     while(true)
                     {
                        §§push(this.§!"j§(_loc2_));
                        if(!(_loc8_ && _loc3_))
                        {
                           §§push(§§pop());
                        }
                        _loc2_ = §§pop();
                        if(_loc7_)
                        {
                           if(!(_loc8_ && _loc3_))
                           {
                              break;
                           }
                           continue loop1;
                        }
                        addr105:
                        while(true)
                        {
                           continue loop5;
                        }
                     }
                  }
               }
            }
            while(false)
            {
               §§goto(addr86);
            }
            if(_loc4_ = §?!r§.§1"Z§(_loc2_,false))
            {
            }
         }
      }
      
      private function §>#1§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         if(!_loc6_)
         {
            if(!param1.sampleNameMappings)
            {
               if(!(_loc6_ && param1))
               {
                  return;
               }
            }
         }
         for(_loc2_ in param1.sampleNameMappings)
         {
            if(!(_loc6_ && this))
            {
               this.§8"=§[_loc2_] = param1.sampleNameMappings[_loc2_].toString();
            }
         }
      }
      
      protected function §>!_§(param1:Object) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc4_:* = null;
         loop0:
         for(_loc4_ in param1.audioChannelSettings)
         {
            while(true)
            {
               _loc2_ = param1.audioChannelSettings[_loc4_].numChannels;
               while(!(_loc7_ && param1))
               {
                  _loc3_ = param1.audioChannelSettings[_loc4_].volume;
                  loop3:
                  while(_loc8_ || this)
                  {
                     loop4:
                     do
                     {
                        §?!r§.§,"d§(_loc4_,_loc2_,_loc3_);
                        while(_loc8_)
                        {
                           this.§ !t§[_loc4_] = _loc3_;
                           if(!(_loc7_ && this))
                           {
                              continue loop4;
                           }
                        }
                        continue loop3;
                     }
                     while(false);
                     
                     continue loop0;
                  }
               }
            }
         }
      }
      
      protected function §+!3§(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Vector.<String> = this.§@#S§[param1];
         if(!(_loc3_ && param1))
         {
            if(!_loc2_)
            {
               if(!_loc3_)
               {
                  return null;
               }
            }
         }
         return _loc2_[Math.floor(Math.random() * _loc2_.length)];
      }
      
      protected function §0"3§(param1:String) : String
      {
         return this.§?!I§[param1];
      }
      
      protected function §+!9§(param1:String) : Number
      {
         return this.§1!Y§[param1];
      }
      
      protected function §!"j§(param1:String) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§8"=§[param1]);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(!_loc3_)
                  {
                     addr49:
                     §§pop();
                     addr50:
                     §§push(param1);
                     if(_loc3_)
                     {
                     }
                     §§goto(addr54);
                  }
                  §§push(§§pop());
               }
               addr54:
               return §§pop();
            }
            §§goto(addr49);
         }
         §§goto(addr50);
      }
      
      protected function §%y§(param1:String) : Number
      {
         return this.§ !t§[param1];
      }
      
      public function §"#_§(param1:String, param2:int = 0, param3:Number = 0) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(this.§+!3§(param1));
         if(_loc7_)
         {
            §§push(§§pop());
         }
         var _loc4_:*;
         §§push(_loc4_ = §§pop());
         if(!_loc8_)
         {
            if(!§§pop())
            {
               if(_loc7_ || param1)
               {
                  §§push(param1);
                  if(_loc7_ || this)
                  {
                     addr42:
                     §§push(§§pop());
                     if(!_loc8_)
                     {
                        addr45:
                        _loc4_ = §§pop();
                        addr46:
                        §§push(this.§0"3§(_loc4_));
                        if(_loc7_ || param1)
                        {
                           addr56:
                           §§push(§§pop());
                        }
                        var _loc5_:* = §§pop();
                        §§push(this.§+!9§(_loc4_));
                        if(_loc7_)
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc6_:* = §§pop();
                        if(_loc7_ || param3)
                        {
                           if(isNaN(_loc6_))
                           {
                              while(true)
                              {
                                 _loc6_ = Number(-1);
                                 addr158:
                                 while(true)
                                 {
                                 }
                              }
                              addr155:
                           }
                           loop2:
                           while(true)
                           {
                              §§push(this.§!"j§(_loc4_));
                              if(!_loc8_)
                              {
                                 §§push(§§pop());
                              }
                              loop3:
                              while(true)
                              {
                                 _loc4_ = §§pop();
                                 while(true)
                                 {
                                    §§push(_loc5_);
                                    if(!_loc8_)
                                    {
                                       if(§§pop() != null)
                                       {
                                          §?!r§.§"#_§(_loc4_,_loc5_,param2,_loc6_,param3);
                                          if(_loc7_ || param2)
                                          {
                                             if(!(_loc7_ || param2))
                                             {
                                                break;
                                             }
                                             if(_loc8_)
                                             {
                                                continue;
                                             }
                                             if(_loc8_)
                                             {
                                                continue loop2;
                                             }
                                             if(!_loc8_)
                                             {
                                                break loop2;
                                             }
                                             §§goto(addr155);
                                          }
                                          addr83:
                                          return;
                                          addr131:
                                       }
                                       break;
                                    }
                                    continue loop3;
                                 }
                                 §?!r§.§"#_§(_loc4_,§?!r§.§2!1§,param2,_loc6_);
                                 §§goto(addr131);
                              }
                           }
                        }
                        §§goto(addr83);
                     }
                     §§goto(addr56);
                  }
                  §§goto(addr45);
               }
            }
            §§goto(addr46);
         }
         §§goto(addr42);
      }
      
      public function §9"4§(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§+!3§(param1));
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc5_)
         {
            §§push(_loc2_);
            if(!(_loc5_ && _loc3_))
            {
               if(!§§pop())
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     addr41:
                     §§push(param1);
                     if(!(_loc5_ && _loc2_))
                     {
                        addr59:
                        §§push(§§pop());
                        if(_loc4_)
                        {
                           _loc2_ = §§pop();
                           addr63:
                           §§push(this.§0"3§(_loc2_));
                           if(_loc5_ && param1)
                           {
                           }
                           addr74:
                           var _loc3_:* = §§pop();
                           if(_loc4_ || _loc2_)
                           {
                              if(_loc3_ != null)
                              {
                                 §?!r§.§9"4§(_loc3_);
                                 if(_loc5_)
                                 {
                                    addr120:
                                 }
                                 return;
                              }
                              if(_loc4_ || _loc3_)
                              {
                                 §?!r§.§9"4§(§?!r§.§2!1§);
                              }
                           }
                           §§goto(addr120);
                        }
                        §§push(§§pop());
                     }
                     §§goto(addr74);
                  }
               }
               §§goto(addr63);
            }
            §§goto(addr59);
         }
         §§goto(addr41);
      }
   }
}
