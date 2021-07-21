package §'V§
{
   import § A§.*;
   
   public class §7I§
   {
      
      public static const §,S§:Function;
      
      public static const §[!M§:Function;
      
      public static const §#"0§:Function;
      
      public static const §7L§:Function;
      
      public static const §%"'§:Function;
      
      public static const §;!C§:Function;
      
      public static const §'!!§:Function;
      
      public static const §@!!§:Function;
      
      public static const §="!§:Function;
      
      private static var §+!u§:§7I§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §,S§ = §&"@§.easeIn;
            loop0:
            while(true)
            {
               §[!M§ = §,c§.easeIn;
               loop1:
               while(true)
               {
                  §#"0§ = §,c§.easeOut;
                  while(true)
                  {
                     §7L§ = §@!t§.easeOut;
                     loop3:
                     for(; !(_loc1_ && _loc1_); while(!(_loc1_ && §7I§))
                     {
                        continue loop1;
                        §="!§ = §%"!§.easeIn;
                        if(_loc1_ && _loc1_)
                        {
                           continue;
                        }
                        §§goto(addr36);
                     })
                     {
                        §%"'§ = §@!t§.easeIn;
                        while(true)
                        {
                           §;!C§ = §;%§.easeOut;
                           while(!_loc1_)
                           {
                              continue loop0;
                              while(true)
                              {
                                 if(_loc2_ || _loc2_)
                                 {
                                    while(true)
                                    {
                                       §@!!§ = §%"!§.easeOut;
                                       continue loop3;
                                    }
                                    return;
                                    addr43:
                                    addr86:
                                 }
                                 break;
                                 addr36:
                                 if(!(_loc2_ || §7I§))
                                 {
                                    continue;
                                 }
                                 §§goto(addr43);
                              }
                           }
                        }
                     }
                  }
                  if(!(_loc2_ || §7I§))
                  {
                     continue;
                  }
                  §§goto(addr63);
               }
            }
         }
         §§goto(addr86);
      }
      
      protected var §4@§:Vector.<§%!"§>;
      
      protected var §`!-§:Boolean;
      
      protected var §!!p§:Boolean = true;
      
      public function §7I§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§4@§ = new Vector.<§%!"§>();
         }
         do
         {
            super();
         }
         while(_loc2_);
         
      }
      
      public static function get §[E§() : §7I§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(§+!u§);
            if(_loc1_)
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     §+!u§ = new §7I§();
                     addr48:
                     §§push(§+!u§);
                  }
               }
               §§goto(addr48);
            }
            return §§pop();
         }
         §§goto(addr48);
      }
      
      public function set §?p§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§!!p§ = param1;
         }
      }
      
      public function §^!=§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§%!"§ = null;
         var _loc1_:* = int(this.§4@§.length - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§4@§[_loc1_];
            if(!(_loc3_ && _loc1_))
            {
               if(_loc2_.§5"6§)
               {
                  while(true)
                  {
                     this.§4@§.splice(_loc1_,1);
                     addr93:
                     while(true)
                     {
                        addr71:
                        while(true)
                        {
                           _loc2_.dispose();
                           addr74:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr78:
               }
               while(true)
               {
                  §§push(_loc1_);
                  if(!_loc3_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc1_ = §§pop();
                  if(_loc3_)
                  {
                     continue;
                  }
                  if(_loc4_ || _loc1_)
                  {
                     if(_loc4_)
                     {
                        if(true)
                        {
                           break;
                        }
                     }
                     else
                     {
                        §§goto(addr78);
                     }
                     §§goto(addr71);
                  }
               }
               continue;
            }
            §§goto(addr93);
         }
      }
      
      public function § ";§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : §%!"§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            param5 = param5 || §&"@§.easeIn;
            var _loc6_:§[!c§;
            (_loc6_ = new §[!c§(param1,param2,param3,param4,param5)).§?p§ = this.§!!p§;
            if(!_loc8_)
            {
               this.§4@§.push(_loc6_);
            }
            return _loc6_;
         }
         §§goto(addr23);
      }
      
      public function §]g§(... rest) : §%!"§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:§8a§ = null;
         var _loc3_:static = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(_loc7_ || rest)
            {
               _loc4_ = this.§4@§.indexOf(_loc2_);
               if(!_loc8_)
               {
                  this.§4@§.splice(_loc4_,1);
               }
            }
         }
         _loc3_ = new static(rest,true);
         if(!_loc8_)
         {
            _loc3_.§?p§ = this.§!!p§;
         }
         do
         {
            this.§4@§.push(_loc3_);
         }
         while(_loc8_);
         
         return _loc3_;
      }
      
      public function §5!@§(... rest) : §%!"§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:§8a§ = null;
         var _loc3_:static = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(_loc8_)
            {
               _loc4_ = this.§4@§.indexOf(_loc2_);
               if(!_loc7_)
               {
                  this.§4@§.splice(_loc4_,1);
               }
            }
         }
         _loc3_ = new static(rest,false);
         if(_loc8_ || _loc2_)
         {
            _loc3_.§?p§ = this.§!!p§;
            do
            {
               this.§4@§.push(_loc3_);
            }
            while(!_loc8_);
            
         }
         return _loc3_;
      }
      
      public function pause() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§`!-§ = true;
         }
      }
      
      public function resume() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§`!-§ = false;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§%!"§ = null;
         if(_loc5_)
         {
            if(this.§`!-§)
            {
               if(_loc5_)
               {
                  return;
               }
            }
         }
         var _loc2_:* = 0;
         while(_loc2_ < this.§4@§.length)
         {
            _loc3_ = false;
            if(_loc6_)
            {
               break;
            }
            (_loc4_ = this.§4@§[_loc2_]).update(param1);
            if(_loc5_ || _loc3_)
            {
               if(_loc4_.isCompleted)
               {
                  loop1:
                  while(true)
                  {
                     this.§4@§.splice(_loc2_,1);
                     loop2:
                     while(true)
                     {
                        _loc4_.dispose();
                        loop3:
                        while(_loc5_)
                        {
                           while(true)
                           {
                              addr70:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 _loc2_ = §§pop();
                                 addr81:
                                 addr85:
                                 while(true)
                                 {
                                    if(!_loc6_)
                                    {
                                       if(_loc5_)
                                       {
                                          break;
                                       }
                                       continue loop2;
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                        }
                        continue loop1;
                     }
                  }
               }
               while(true)
               {
                  _loc2_++;
                  if(_loc5_)
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr70);
                  }
                  §§goto(addr81);
                  §§goto(addr85);
               }
               continue;
            }
            §§goto(addr91);
         }
      }
   }
}
