package §_-rQ§
{
   import §_-0S§.§_-z1§;
   import §_-e3§.§_-54§;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   
   public class §_-Ou§
   {
      
      private static var §_-Tj§:Boolean = true;
      
      private static const §_-sY§:int = 128;
      
      private static var §_-0h§:int;
      
      private static var §_-8l§:Dictionary;
      
      private static var §_-FC§:Dictionary;
      
      public static const §_-m6§:String = "Default_Channel";
      
      public static const §_-O3§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §_-Ou§))
         {
            §_-Tj§ = true;
            if(!_loc1_)
            {
               §_-sY§ = 128;
               if(!(_loc1_ && §_-Ou§))
               {
                  addr43:
                  §_-m6§ = "Default_Channel";
                  if(!(_loc1_ && §_-Ou§))
                  {
                     §_-O3§ = false;
                  }
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function §_-Ou§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §_-8l§ = new Dictionary();
            if(!_loc1_)
            {
               §_-FC§ = new Dictionary();
               if(_loc2_ || _loc2_)
               {
                  §§goto(addr40);
               }
            }
            §§goto(addr57);
         }
         addr40:
         §_-0h§ = 0;
         if(_loc2_ || _loc2_)
         {
            addr57:
            §_-Rz§(§_-m6§,4,1);
         }
      }
      
      public static function §_-Rz§(param1:String, param2:int, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(§_-g9§(param1) != null)
         {
            if(_loc4_ || param1)
            {
               return;
            }
            §_-8l§[param1.toLowerCase()] = new §_-gG§(param1,param2,param3);
            addr112:
            if(_loc4_)
            {
               addr130:
               §_-0h§ += param2;
            }
            §§goto(addr135);
         }
         else
         {
            §§push(§_-0h§);
            if(_loc4_ || §_-Ou§)
            {
               §§push(§_-sY§);
               if(_loc4_)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(!_loc5_)
                     {
                        if(§_-O3§)
                        {
                           if(!_loc5_)
                           {
                              §§push(§_-54§);
                              §§push("WARNING: SoundEngine:addNewChannelControl() " + param1);
                              if(_loc4_)
                              {
                                 §§push(§§pop() + " failed because we already have more than ");
                                 if(_loc4_)
                                 {
                                    §§push(§§pop() + §_-sY§);
                                    if(!(_loc5_ && param2))
                                    {
                                       addr70:
                                       §§push(§§pop() + " reserved");
                                    }
                                    §§pop().log(§§pop());
                                    §§goto(addr73);
                                 }
                              }
                              §§goto(addr70);
                           }
                           else
                           {
                              addr135:
                              return;
                           }
                        }
                        addr73:
                        return;
                     }
                     addr103:
                     §§push(§_-sY§);
                     if(_loc4_)
                     {
                        addr109:
                        param2 = §§pop() - §_-0h§;
                        if(_loc4_)
                        {
                           §§goto(addr112);
                        }
                        §§goto(addr130);
                     }
                     §§goto(addr109);
                     §§goto(addr112);
                  }
                  else
                  {
                     §§push(§_-0h§);
                     if(_loc4_ || param2)
                     {
                        addr83:
                        §§push(param2);
                        if(!(_loc5_ && §_-Ou§))
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc4_ || §_-Ou§)
                           {
                              if(§§pop() >= §_-sY§)
                              {
                                 if(!_loc5_)
                                 {
                                    §§goto(addr103);
                                 }
                                 §§goto(addr130);
                              }
                              §§goto(addr112);
                           }
                        }
                        §§goto(addr109);
                     }
                  }
               }
               §§goto(addr109);
            }
            §§goto(addr83);
         }
         §§goto(addr130);
      }
      
      public static function §_-g9§(param1:String) : §_-gG§
      {
         return §_-8l§[param1.toLowerCase()];
      }
      
      public static function §_-m1§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §_-Tj§ = param1;
            if(_loc2_)
            {
               if(!param1)
               {
                  if(_loc3_ && §_-Ou§)
                  {
                  }
               }
               §§goto(addr50);
            }
            §_-yO§();
         }
         addr50:
      }
      
      public static function §_-yO§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§_-gG§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in §_-8l§)
         {
            if(!(_loc5_ && _loc2_))
            {
               _loc1_.§_-yO§();
            }
         }
      }
      
      public static function §_-00§() : Boolean
      {
         return §_-Tj§;
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1) : §_-iG§
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:Class = null;
         if(!_loc9_)
         {
            if(!§_-Tj§)
            {
               if(!_loc9_)
               {
                  §§goto(addr22);
               }
            }
            var _loc5_:§_-gG§;
            if(!(_loc5_ = §_-g9§(param2)))
            {
               if(!_loc9_)
               {
                  §§push(§_-O3§);
                  if(_loc8_)
                  {
                     if(§§pop())
                     {
                        if(!_loc9_)
                        {
                           addr39:
                           §§push(§_-54§);
                           §§push("WARNING: SoundEngine->PlaySound() can not play new sound request " + param1);
                           if(_loc8_)
                           {
                              §§push(§§pop() + " because this channel does not exist ");
                              if(_loc8_ || param1)
                              {
                                 §§push(§§pop() + param2);
                              }
                           }
                           §§pop().log(§§pop());
                        }
                        else
                        {
                           §§goto(addr112);
                        }
                     }
                     §§push(null);
                     if(!(_loc9_ && param1))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr77:
                     if(§§pop())
                     {
                        §§push(§_-54§);
                        §§push("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param1);
                        if(!(_loc9_ && param2))
                        {
                           §§push(§§pop() + " this channel is full ");
                           if(_loc8_ || param3)
                           {
                              §§push(§§pop() + param2);
                           }
                        }
                        §§pop().log(§§pop());
                        if(_loc9_)
                        {
                           §§goto(addr112);
                        }
                     }
                     return null;
                  }
                  return §§pop();
               }
               §§goto(addr39);
            }
            else
            {
               §§push(_loc5_.§_-kB§());
               if(_loc8_ || §_-Ou§)
               {
                  if(!§§pop())
                  {
                     §§goto(addr77);
                     §§push(§_-O3§);
                  }
                  addr112:
                  var _loc6_:Sound;
                  if((_loc6_ = §_-FC§[param1]) == null)
                  {
                     if(!(_loc7_ = §_-z1§.§_-tn§(param1,false) as Class))
                     {
                        if(_loc8_ || §_-Ou§)
                        {
                           §_-54§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
                           if(_loc9_)
                           {
                              §§goto(addr146);
                           }
                        }
                        return null;
                     }
                     addr146:
                     _loc6_ = new _loc7_();
                     if(!(_loc9_ && param2))
                     {
                        §_-FC§[param1] = _loc6_;
                     }
                     §§goto(addr168);
                  }
                  addr168:
                  return _loc5_.playSound(_loc6_,param3,param4);
               }
            }
            §§goto(addr77);
         }
         addr22:
         return null;
      }
      
      public static function §_-BB§(param1:String = "Default_Channel") : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§_-gG§ = §_-g9§(param1);
         if(_loc4_)
         {
            if(_loc2_ != null)
            {
               if(_loc4_ || _loc2_)
               {
                  addr45:
                  _loc2_.§_-yO§();
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      public static function §_-ml§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = int(int(param1.charAt(param1.length - 1)));
         if(!(_loc4_ && §_-Ou§))
         {
            §§push(_loc3_);
            if(!_loc4_)
            {
               §§push(0);
               if(!_loc4_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(§_-O3§)
                     {
                        §_-54§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
                        if(!_loc5_)
                        {
                           addr69:
                           §§push(_loc3_);
                           if(_loc5_ || _loc3_)
                           {
                              addr80:
                              _loc3_ = int(§§pop() + 1);
                              §§push(param1);
                              if(!_loc4_)
                              {
                                 §§push(§§pop().slice(0,param1.length - 1) + _loc3_);
                              }
                              param1 = §§pop();
                              §_-Ou§.playSound(param1,param2);
                              return;
                              addr77:
                              addr79:
                              addr78:
                           }
                           §§goto(addr80);
                        }
                     }
                     return;
                  }
                  §§push(Math.random() * _loc3_);
                  if(_loc5_)
                  {
                     §§push(int(§§pop()));
                     if(!(_loc4_ && param2))
                     {
                        _loc3_ = §§pop();
                        §§goto(addr69);
                     }
                     §§goto(addr77);
                  }
                  §§goto(addr79);
               }
               §§goto(addr78);
            }
         }
         §§goto(addr80);
      }
   }
}
