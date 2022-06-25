package §!!0§
{
   import §<u§.Log;
   import com.rovio.assets.AssetCache;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   
   public class SoundEngine
   {
      
      private static var §""§:Boolean = true;
      
      private static const §@!a§:int = 128;
      
      private static var §1c§:int;
      
      private static var §^K§:Dictionary;
      
      private static var §&!V§:Dictionary;
      
      public static const §5!g§:String = "Default_Channel";
      
      public static const §&d§:Boolean = false;
      
      private static var §[!b§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §""§ = true;
         }
         loop0:
         while(true)
         {
            §@!a§ = 128;
            loop1:
            do
            {
               §5!g§ = "Default_Channel";
               while(_loc2_)
               {
                  §&d§ = false;
                  do
                  {
                     §[!b§ = true;
                  }
                  while(_loc1_);
                  
                  if(!(_loc1_ && SoundEngine))
                  {
                     continue loop1;
                  }
               }
               continue loop0;
            }
            while(!_loc2_);
            
            return;
         }
      }
      
      public function SoundEngine()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §[!b§ = param1;
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §^K§ = new Dictionary();
            while(true)
            {
               §&!V§ = new Dictionary();
            }
            addr84:
         }
         while(true)
         {
            §1c§ = 0;
            for(; !_loc1_; § Q§(§5!g§,4,1),if(!(_loc1_ && _loc1_))
            {
               return;
            })
            {
               if(!_loc1_)
               {
                  continue;
               }
               §§goto(addr84);
            }
         }
      }
      
      public static function § Q§(param1:String, param2:int, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && SoundEngine))
         {
            if(§'!'§(param1) == null)
            {
               loop0:
               do
               {
                  §§push(§1c§);
                  loop1:
                  while(true)
                  {
                     §§push(§@!a§);
                     loop2:
                     while(true)
                     {
                        if(§§pop() < §§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§push(§1c§);
                              if(_loc5_ || param1)
                              {
                                 §§push(param2);
                                 if(_loc5_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc5_)
                                    {
                                       if(§§pop() >= §@!a§)
                                       {
                                          if(!(_loc6_ && param1))
                                          {
                                             if(_loc5_)
                                             {
                                                if(_loc5_ || SoundEngine)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      §§push(§@!a§);
                                                      if(!(_loc6_ && param3))
                                                      {
                                                         addr71:
                                                         if(!_loc6_)
                                                         {
                                                            addr75:
                                                            §§push(§1c§);
                                                            if(_loc5_)
                                                            {
                                                               break loop2;
                                                            }
                                                            continue loop2;
                                                         }
                                                         continue loop1;
                                                      }
                                                      addr79:
                                                      param2 = §§pop();
                                                      addr80:
                                                      if(true)
                                                      {
                                                         addr162:
                                                         var _loc4_:SoundChannelController = new SoundChannelController(param1,param2,param3);
                                                         if(!(_loc6_ && param2))
                                                         {
                                                            §§push(§""§);
                                                            if(!(_loc6_ && param2))
                                                            {
                                                               §§push(!§§pop());
                                                            }
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc6_ && SoundEngine))
                                                               {
                                                                  _loc4_.§!§();
                                                                  addr232:
                                                               }
                                                               §§goto(addr232);
                                                            }
                                                            §^K§[param1.toLowerCase()] = _loc4_;
                                                            §1c§ += param2;
                                                            if(_loc5_)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  §§goto(addr232);
                                                               }
                                                               return;
                                                            }
                                                            addr210:
                                                            §§goto(addr210);
                                                         }
                                                         §§goto(addr232);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr93:
                                                      if(§&d§)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   addr147:
                                                   if(_loc6_ && param2)
                                                   {
                                                      §§goto(addr160);
                                                   }
                                                }
                                                return;
                                             }
                                             if(_loc6_)
                                             {
                                                break;
                                             }
                                             while(true)
                                             {
                                                continue loop3;
                                             }
                                          }
                                          §§goto(addr80);
                                       }
                                       §§goto(addr162);
                                    }
                                    addr78:
                                    §§goto(addr79);
                                    §§push(int(§§pop()));
                                 }
                                 §§goto(addr75);
                              }
                              §§goto(addr71);
                           }
                           continue loop0;
                        }
                        §§goto(addr93);
                     }
                     §§goto(addr78);
                  }
               }
               while(_loc6_ && SoundEngine);
               
               §§push(Log);
               §§push("WARNING: SoundEngine:addNewChannelControl() ");
               if(_loc5_)
               {
                  §§push(§§pop() + param1);
                  if(_loc5_ || param2)
                  {
                     addr127:
                     §§push(" failed because we already have more than ");
                     if(!(_loc6_ && param3))
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc5_)
                        {
                           §§push(§§pop() + §@!a§);
                           if(!_loc6_)
                           {
                              addr143:
                              §§push(§§pop() + " reserved");
                           }
                           §§pop().log(§§pop());
                           §§goto(addr147);
                        }
                     }
                  }
                  §§goto(addr143);
               }
               §§goto(addr127);
            }
            addr160:
            return;
         }
         §§goto(addr86);
      }
      
      public static function §'!'§(param1:String) : SoundChannelController
      {
         return §^K§[param1.toLowerCase()];
      }
      
      public static function §=!f§(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:SoundChannelController = null;
         if(_loc5_ || SoundEngine)
         {
            if(param1 == §""§)
            {
               if(_loc5_ || param1)
               {
                  §§goto(addr47);
               }
            }
            §""§ = param1;
            for each(_loc2_ in §^K§)
            {
               if(_loc5_)
               {
                  if(!§""§)
                  {
                     _loc2_.§!§();
                     continue;
                  }
                  if(!_loc5_)
                  {
                     continue;
                  }
                  _loc2_.§&!,§();
                  if(!_loc5_)
                  {
                     continue;
                  }
               }
            }
            return;
         }
         addr47:
      }
      
      public static function §%!V§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:SoundChannelController = null;
         var _loc3_:* = §^K§;
         for each(_loc1_ in _loc3_)
         {
            if(!(_loc4_ && _loc3_))
            {
               _loc1_.§%!V§();
            }
         }
      }
      
      public static function §'5§() : Boolean
      {
         return §""§;
      }
      
      public static function §-!h§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Function = null) : §?!j§
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc8_:Class = null;
         if(_loc10_)
         {
            §§push(§[!b§);
            if(!(_loc9_ && param2))
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(!(_loc9_ && SoundEngine))
               {
                  return null;
               }
            }
         }
         var _loc6_:SoundChannelController = §'!'§(param2);
         if(_loc10_ || param2)
         {
            §§push(!_loc6_);
            if(_loc10_ || SoundEngine)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§push(_loc6_.§0!S§());
                     if(_loc10_)
                     {
                        §§push(!§§pop());
                        if(_loc10_)
                        {
                           if(_loc10_)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc9_ && param1))
                                 {
                                    §§goto(addr96);
                                 }
                                 §§goto(addr97);
                              }
                              else
                              {
                                 addr212:
                                 var _loc7_:Sound = §&!V§[param1];
                                 if(_loc10_ || param3)
                                 {
                                    if(_loc7_ == null)
                                    {
                                       addr228:
                                       _loc8_ = AssetCache.§%p§(param1,false) as Class;
                                       if(_loc10_ || param2)
                                       {
                                          if(!_loc8_)
                                          {
                                             if(!_loc9_)
                                             {
                                                §§push(Log);
                                                §§push("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: ");
                                                if(!_loc9_)
                                                {
                                                   §§push(§§pop() + param1);
                                                }
                                                §§pop().log(§§pop());
                                                if(!(_loc10_ || SoundEngine))
                                                {
                                                   §§goto(addr278);
                                                }
                                             }
                                             return null;
                                          }
                                       }
                                       addr278:
                                       _loc7_ = new _loc8_();
                                       if(_loc10_ || param1)
                                       {
                                          §&!V§[param1] = _loc7_;
                                       }
                                       §§goto(addr294);
                                    }
                                    addr294:
                                    return _loc6_.§-!h§(_loc7_,param3,param4,param5);
                                 }
                                 §§goto(addr228);
                              }
                           }
                           §§goto(addr176);
                        }
                     }
                     addr96:
                     if(§&d§)
                     {
                        addr97:
                        if(_loc9_)
                        {
                           if(_loc9_ && SoundEngine)
                           {
                              addr176:
                              if(§&d§)
                              {
                                 §§goto(addr177);
                              }
                           }
                           else
                           {
                              addr174:
                           }
                           continue;
                           break;
                        }
                        §§push(Log);
                        §§push("WARNING: SoundEngine->PlaySound() can not play new sound request  ");
                        if(!(_loc9_ && param1))
                        {
                           §§push(param1);
                           if(!(_loc9_ && param3))
                           {
                              §§push(§§pop() + §§pop());
                              if(!_loc9_)
                              {
                                 addr126:
                                 §§push(§§pop() + " this channel is full ");
                                 if(_loc10_)
                                 {
                                    §§push(param2);
                                 }
                                 §§pop().log(§§pop());
                                 if(!(_loc9_ && SoundEngine))
                                 {
                                    if(!(_loc9_ && param2))
                                    {
                                       §§goto(addr55);
                                    }
                                    addr177:
                                    §§push(Log);
                                    §§push("WARNING: SoundEngine->PlaySound() can not play new sound request ");
                                    if(!_loc9_)
                                    {
                                       §§push(param1);
                                       if(_loc10_ || param2)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(_loc10_ || param1)
                                          {
                                             §§push(§§pop() + " because this channel does not exist ");
                                             if(_loc10_ || param3)
                                             {
                                                addr208:
                                                §§push(§§pop() + param2);
                                             }
                                          }
                                          §§pop().log(§§pop());
                                          addr211:
                                          break;
                                       }
                                    }
                                    §§goto(addr208);
                                 }
                                 §§goto(addr211);
                              }
                              §§goto(addr126);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§goto(addr126);
                        §§goto(addr177);
                     }
                     addr55:
                     §§push(null);
                     if(!_loc9_)
                     {
                        return §§pop();
                     }
                     addr155:
                     return §§pop();
                  }
                  §§goto(addr155);
                  §§push(null);
                  addr76:
               }
            }
            §§goto(addr174);
         }
         else if(false)
         {
            §§goto(addr76);
         }
         §§goto(addr212);
      }
      
      public static function §]!&§(param1:String = "Default_Channel") : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:SoundChannelController = §'!'§(param1);
         if(_loc4_)
         {
            if(_loc2_ != null)
            {
               if(!_loc3_)
               {
                  _loc2_.§%!V§();
               }
            }
         }
      }
      
      public static function §[!D§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = int(int(param1.charAt(param1.length - 1)));
         if(_loc5_ || SoundEngine)
         {
            §§push(_loc3_);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(§§pop() != §§pop())
               {
                  while(true)
                  {
                     §§push(Math.random() * _loc3_);
                     loop3:
                     while(true)
                     {
                        §§push(int(§§pop()));
                        loop4:
                        while(_loc5_)
                        {
                           _loc3_ = §§pop();
                           loop5:
                           while(_loc5_ || SoundEngine)
                           {
                              §§push(_loc3_);
                              if(_loc5_)
                              {
                                 if(!(_loc5_ || SoundEngine))
                                 {
                                    continue loop4;
                                 }
                                 §§push(1);
                                 if(_loc4_)
                                 {
                                    continue loop1;
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc4_ && SoundEngine)
                                 {
                                    continue loop3;
                                 }
                                 §§push(int(§§pop()));
                              }
                              _loc3_ = §§pop();
                              do
                              {
                                 §§push(param1);
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§push(§§pop().slice(0,param1.length - 1) + _loc3_);
                                 }
                                 param1 = §§pop();
                                 while(true)
                                 {
                                    if(_loc5_ || _loc3_)
                                    {
                                       if(_loc4_)
                                       {
                                          break loop3;
                                       }
                                       if(_loc4_)
                                       {
                                          break loop1;
                                       }
                                       continue;
                                    }
                                    continue loop5;
                                 }
                                 return;
                                 continue loop5;
                              }
                              while(_loc4_);
                              
                              return;
                           }
                           §§push(Log);
                           §§push("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: ");
                           if(!_loc4_)
                           {
                              §§push(§§pop() + param1);
                           }
                           §§pop().log(§§pop());
                           §§goto(addr170);
                        }
                        continue loop0;
                     }
                     if(_loc5_ || param2)
                     {
                        continue;
                     }
                     §§goto(addr170);
                  }
               }
               if(§&d§)
               {
                  §§goto(addr161);
               }
               §§goto(addr145);
            }
         }
         §§goto(addr161);
      }
   }
}
