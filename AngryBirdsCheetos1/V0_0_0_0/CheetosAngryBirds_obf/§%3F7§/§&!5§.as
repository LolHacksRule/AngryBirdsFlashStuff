package §?7§
{
   import §%!$§.§=m§;
   import §3]§.§8[§;
   import §@,§.§4h§;
   import flash.utils.Dictionary;
   
   public class §&!5§
   {
      
      public static var §4&§:XML;
      
      public static var § !V§:XML;
      
      public static var §@k§:Dictionary;
      
      public static var §!M§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §@k§ = new Dictionary();
         }
      }
      
      public function §&!5§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §"F§(param1:XML, param2:XML) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:XML = null;
         if(!(_loc7_ && param1))
         {
            §4&§ = param1;
            loop0:
            while(true)
            {
               § !V§ = param2;
               loop1:
               while(true)
               {
                  §;!<§.§%!-§(§4&§.Item_Materials,§4&§.Material_Damage_Multipliers,§4&§.Material_Velocity_Multipliers);
                  loop2:
                  while(true)
                  {
                     § M§.§#n§(§4&§.Item_Resources_Sounds);
                     loop3:
                     while(true)
                     {
                        §#!L§.§2!H§(§4&§.Item_Shapes);
                        while(true)
                        {
                           §8[§.§<F§(§ !V§.Backgrounds);
                           loop5:
                           while(!(_loc7_ && §&!5§))
                           {
                              if(_loc7_)
                              {
                                 continue loop2;
                              }
                              if(_loc7_)
                              {
                                 continue loop0;
                              }
                              while(true)
                              {
                                 loop7:
                                 do
                                 {
                                    §@k§ = new Dictionary();
                                    while(_loc6_)
                                    {
                                       if(_loc6_)
                                       {
                                          §!M§ = new Array();
                                          if(_loc6_ || §&!5§)
                                          {
                                             if(_loc6_)
                                             {
                                                continue loop7;
                                             }
                                             continue loop1;
                                          }
                                          continue;
                                       }
                                       continue loop3;
                                    }
                                    continue loop5;
                                 }
                                 while(false);
                                 
                                 for each(_loc3_ in §4&§.Items.Item)
                                 {
                                    if(_loc6_ || param1)
                                    {
                                       §!M§.push(_loc3_.@id);
                                       if(_loc7_ && §&!5§)
                                       {
                                          continue;
                                       }
                                    }
                                    §`1§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true");
                                 }
                                 if(!_loc7_)
                                 {
                                    §9!§(§4&§.SoundChannels);
                                 }
                                 return;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      public static function §`1§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc13_)
         {
            §@k§[param1.toLowerCase()] = new §,!§(param1,param2,§;!<§.§<!2§(param3),§ M§.§;V§(param4),!!param5 ? §#!L§.§^6§(param5) : null,param6,param7,param8,param9,param10,param11);
         }
      }
      
      public static function §;@§(param1:String) : §,!§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§,!§ = §@k§[param1.toLowerCase()];
         if(_loc3_)
         {
            if(_loc2_ == null)
            {
               do
               {
                  §4h§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
               }
               while(!(_loc3_ || _loc2_));
               
               if(_loc3_ || param1)
               {
                  return null;
               }
            }
         }
         return _loc2_;
      }
      
      public static function §^!G§() : Array
      {
         return §!M§;
      }
      
      public static function §5!Y§(param1:String) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§,!§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §@k§)
         {
            if(_loc6_ || param1)
            {
               if(_loc3_.§=z§.toUpperCase() != param1.toUpperCase())
               {
                  continue;
               }
               if(!(_loc6_ || param1))
               {
                  continue;
               }
            }
            _loc2_[_loc2_.length] = _loc3_.§ h§;
         }
         return _loc2_;
      }
      
      public static function §6K§() : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         §§push(_loc2_);
         if(!_loc5_)
         {
            §§push(§§pop() * _loc1_.length);
         }
         var _loc3_:int = §§pop() as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §9!§(param1:XMLList) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:XML = null;
         var _loc3_:int = 0;
         var _loc4_:* = param1.Channel;
         loop0:
         for(; §§hasnext(_loc4_,_loc3_); if(true)
         {
            continue;
         },§§goto(addr75))
         {
            _loc2_ = §§nextvalue(_loc3_,_loc4_);
            if(_loc5_ || §&!5§)
            {
               if(_loc2_.attribute("name").length() <= 0)
               {
                  while(true)
                  {
                     §4h§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
                     addr140:
                     while(true)
                     {
                     }
                  }
                  addr137:
               }
               loop3:
               while(true)
               {
                  if(_loc2_.attribute("maxSound").length() <= 0)
                  {
                     if(!(_loc6_ && param1))
                     {
                        §4h§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
                     }
                     while(true)
                     {
                        addr84:
                        if(!(_loc5_ || param1))
                        {
                           continue;
                        }
                        §4h§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
                        loop6:
                        while(true)
                        {
                           if(_loc5_)
                           {
                              while(true)
                              {
                                 continue loop6;
                              }
                              addr99:
                           }
                           else
                           {
                              §§goto(addr137);
                           }
                        }
                        continue loop3;
                        addr97:
                     }
                  }
                  addr75:
                  while(true)
                  {
                     if(_loc2_.attribute("volume").length() <= 0)
                     {
                        if(_loc5_)
                        {
                           §§goto(addr84);
                        }
                        §§goto(addr97);
                     }
                     §§goto(addr40);
                  }
                  continue loop0;
               }
            }
            §§goto(addr99);
         }
      }
      
      public static function §9x§(param1:String) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§,!§ = §;@§(param1);
         if(!(_loc4_ && _loc2_))
         {
            if(_loc2_)
            {
               if(!(_loc4_ && _loc2_))
               {
                  addr47:
                  §§push((_loc2_.material as §#!+§).§%W§[§#!+§.§"!Q§] == §#!+§.§#D§);
                  if(_loc3_ || §&!5§)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr76:
                  return true;
               }
               return §§pop();
            }
            §§goto(addr76);
         }
         §§goto(addr47);
      }
   }
}
