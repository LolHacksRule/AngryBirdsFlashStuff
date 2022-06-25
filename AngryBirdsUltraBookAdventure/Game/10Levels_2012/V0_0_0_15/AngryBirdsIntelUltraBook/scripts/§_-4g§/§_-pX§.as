package §_-4g§
{
   import §_-0BH§.§_-FK§;
   import com.rovio.assets.§_-Fc§;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   
   public class §_-pX§
   {
      
      private static var §_-008§:Boolean = true;
      
      private static const §_-Du§:int = 128;
      
      private static var §_-OL§:int;
      
      private static var §_-5c§:Dictionary;
      
      private static var §_-f§:Dictionary;
      
      public static const §_-02H§:String = "Default_Channel";
      
      public static const §_-04r§:Boolean = false;
      
      private static var §_-He§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §_-008§ = true;
         }
         loop0:
         while(true)
         {
            §_-Du§ = 128;
            while(true)
            {
               §_-02H§ = "Default_Channel";
               while(!_loc2_)
               {
                  §_-04r§ = false;
                  continue loop0;
                  if(_loc1_ || _loc1_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public function §_-pX§()
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
         if(!_loc2_)
         {
            §_-He§ = param1;
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §_-pX§)
         {
            §_-5c§ = new Dictionary();
            loop0:
            while(true)
            {
               §_-f§ = new Dictionary();
               do
               {
                  §_-OL§ = 0;
                  continue loop0;
               }
               while(_loc1_ && §_-pX§);
               
            }
         }
      }
      
      public static function §_-UJ§(param1:String, param2:int, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            if(§_-BM§(param1) == null)
            {
               loop0:
               do
               {
                  §§push(§_-OL§);
                  loop1:
                  while(true)
                  {
                     §§push(§_-Du§);
                     loop2:
                     while(§§pop() < §§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§push(§_-OL§);
                           if(_loc5_)
                           {
                              if(_loc6_ && param3)
                              {
                                 continue loop1;
                              }
                              §§push(param2);
                              if(_loc5_)
                              {
                                 if(_loc6_)
                                 {
                                    continue loop2;
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!_loc6_)
                                 {
                                    if(§§pop() >= §_-Du§)
                                    {
                                       if(!(_loc6_ && param3))
                                       {
                                          if(_loc6_ && §_-pX§)
                                          {
                                             addr144:
                                             break;
                                          }
                                          if(!(_loc5_ || param1))
                                          {
                                             §§goto(addr150);
                                          }
                                          §§push(§_-Du§);
                                          if(!_loc6_)
                                          {
                                             addr68:
                                             param2 = §§pop() - §_-OL§;
                                          }
                                          §§goto(addr68);
                                       }
                                       if(_loc5_)
                                       {
                                          if(false)
                                          {
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          if(!(_loc5_ || param1))
                                          {
                                             break loop2;
                                          }
                                          while(true)
                                          {
                                             continue loop3;
                                          }
                                       }
                                    }
                                    var _loc4_:§_-BY§ = new §_-BY§(param1,param2,param3);
                                    if(!_loc6_)
                                    {
                                       if(!§_-008§)
                                       {
                                          addr203:
                                          _loc4_.§_-0-c§();
                                          addr205:
                                       }
                                       §_-5c§[param1.toLowerCase()] = _loc4_;
                                       addr198:
                                       if(_loc5_)
                                       {
                                          §_-OL§ += param2;
                                          if(_loc5_ || param1)
                                          {
                                             if(_loc6_)
                                             {
                                                §§goto(addr205);
                                             }
                                             return;
                                          }
                                          §§goto(addr198);
                                       }
                                    }
                                    §§goto(addr203);
                                 }
                              }
                           }
                           §§goto(addr68);
                        }
                        return;
                     }
                     continue loop0;
                  }
               }
               while(_loc6_);
               
               if(§_-04r§)
               {
                  if(_loc5_)
                  {
                     §§push(§_-FK§);
                     §§push("WARNING: SoundEngine:addNewChannelControl() ");
                     if(_loc5_ || param1)
                     {
                        §§push(§§pop() + param1);
                        if(!(_loc6_ && param2))
                        {
                           addr121:
                           §§push(" failed because we already have more than ");
                           if(!(_loc6_ && param1))
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc5_)
                              {
                                 §§push(§§pop() + §_-Du§);
                                 if(_loc5_ || param3)
                                 {
                                    addr141:
                                    §§push(§§pop() + " reserved");
                                 }
                                 §§pop().log(§§pop());
                                 §§goto(addr144);
                              }
                           }
                        }
                        §§goto(addr141);
                     }
                     §§goto(addr121);
                  }
                  §§goto(addr144);
               }
               §§goto(addr73);
            }
            addr150:
            return;
         }
         §§goto(addr82);
      }
      
      public static function §_-BM§(param1:String) : §_-BY§
      {
         return §_-5c§[param1.toLowerCase()];
      }
      
      public static function §_-bg§(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§_-BY§ = null;
         if(!_loc6_)
         {
            if(param1 == §_-008§)
            {
               if(!(_loc6_ && §_-pX§))
               {
                  return;
               }
            }
         }
         §_-008§ = param1;
         for each(_loc2_ in §_-5c§)
         {
            if(_loc5_ || _loc2_)
            {
               if(§_-008§)
               {
                  if(_loc5_)
                  {
                     _loc2_.§_-8T§();
                     if(!(_loc5_ || §_-pX§))
                     {
                        continue;
                     }
                  }
               }
               else
               {
                  _loc2_.§_-0-c§();
               }
            }
         }
      }
      
      public static function §_-j4§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§_-BY§ = null;
         for each(_loc1_ in §_-5c§)
         {
            if(!_loc4_)
            {
               _loc1_.§_-j4§();
            }
         }
      }
      
      public static function §_-051§() : Boolean
      {
         return §_-008§;
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Function = null) : §_-9c§
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc8_:Class = null;
         if(!_loc9_)
         {
            if(!§_-He§)
            {
               if(_loc10_ || §_-pX§)
               {
                  §§goto(addr31);
               }
            }
            var _loc6_:§_-BY§;
            if(!(_loc6_ = §_-BM§(param2)))
            {
               if(_loc10_)
               {
                  §§push(§_-04r§);
                  if(!(_loc9_ && param3))
                  {
                     if(§§pop())
                     {
                        if(!_loc9_)
                        {
                           §§push(§_-FK§);
                           §§push("WARNING: SoundEngine->PlaySound() can not play new sound request ");
                           if(!_loc9_)
                           {
                              §§push(param1);
                              if(_loc10_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc10_ || param1)
                                 {
                                    §§push(§§pop() + " because this channel does not exist ");
                                    if(!(_loc9_ && §_-pX§))
                                    {
                                       addr78:
                                       §§push(§§pop() + param2);
                                    }
                                 }
                                 §§pop().log(§§pop());
                                 if(_loc10_)
                                 {
                                    addr159:
                                    §§push(null);
                                 }
                                 else
                                 {
                                    §§goto(addr121);
                                 }
                                 §§goto(addr160);
                              }
                           }
                           §§goto(addr78);
                        }
                        §§goto(addr158);
                     }
                     §§goto(addr159);
                  }
                  §§goto(addr135);
               }
               addr121:
               if(false)
               {
                  addr124:
                  §§push(_loc6_.§_-0Dk§());
                  if(!(_loc9_ && param1))
                  {
                     if(!§§pop())
                     {
                        addr135:
                        if(§_-04r§)
                        {
                           §§push(§_-FK§);
                           §§push("WARNING: SoundEngine->PlaySound() can not play new sound request  ");
                           if(_loc10_)
                           {
                              §§push(param1);
                              if(!(_loc9_ && param3))
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!_loc9_)
                                 {
                                    §§push(§§pop() + " this channel is full ");
                                    if(_loc10_)
                                    {
                                       addr155:
                                       §§push(§§pop() + param2);
                                    }
                                    §§pop().log(§§pop());
                                    addr83:
                                    §§push(null);
                                    if(!_loc9_)
                                    {
                                       return §§pop();
                                    }
                                    addr160:
                                    return §§pop();
                                    addr158:
                                 }
                              }
                           }
                           §§goto(addr155);
                        }
                        §§goto(addr83);
                     }
                  }
                  §§goto(addr135);
               }
               var _loc7_:Sound;
               if((_loc7_ = §_-f§[param1]) == null)
               {
                  if(!(_loc8_ = §_-Fc§.§_-YE§(param1,false) as Class))
                  {
                     if(!_loc9_)
                     {
                        §§push(§_-FK§);
                        §§push("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: ");
                        if(!_loc9_)
                        {
                           §§push(§§pop() + param1);
                        }
                        §§pop().log(§§pop());
                        if(_loc9_ && param3)
                        {
                           §§goto(addr208);
                        }
                     }
                     return null;
                  }
                  addr208:
                  _loc7_ = new _loc8_();
                  if(!_loc9_)
                  {
                     §_-f§[param1] = _loc7_;
                  }
                  §§goto(addr218);
               }
               addr218:
               return _loc6_.playSound(_loc7_,param3,param4,param5);
            }
            §§goto(addr124);
         }
         addr31:
         return null;
      }
      
      public static function §_-0B7§(param1:String = "Default_Channel") : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§_-BY§ = §_-BM§(param1);
         if(_loc4_ || _loc2_)
         {
            if(_loc2_ != null)
            {
               if(_loc4_ || §_-pX§)
               {
                  addr49:
                  _loc2_.§_-j4§();
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      public static function §_-o5§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = int(int(param1.charAt(param1.length - 1)));
         if(!(_loc5_ && param1))
         {
            §§push(_loc3_);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(§§pop() != §§pop())
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
                           addr147:
                           while(true)
                           {
                              if(!_loc5_)
                              {
                                 §§push(_loc3_);
                                 if(_loc4_ || _loc3_)
                                 {
                                    if(_loc4_)
                                    {
                                       §§push(1);
                                       if(!(_loc5_ && param1))
                                       {
                                          continue loop3;
                                       }
                                       continue loop1;
                                    }
                                    continue loop4;
                                 }
                                 continue loop0;
                              }
                              if(_loc5_ && param1)
                              {
                                 break loop1;
                              }
                              continue loop2;
                           }
                           §§goto(addr150);
                        }
                     }
                  }
               }
               if(§_-04r§)
               {
                  addr165:
                  §§push(§_-FK§);
                  §§push("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: ");
                  if(_loc4_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
               }
               addr150:
               return;
            }
         }
         §§goto(addr165);
      }
   }
}
