package §0S§
{
   import §1!B§.§<m§;
   import §2@§.§%E§;
   import §[!b§.§-!Q§;
   import flash.utils.Dictionary;
   
   public class §7!Z§
   {
      
      public static var §set §:XML;
      
      public static var §`S§:XML;
      
      public static var §&O§:Dictionary;
      
      public static var §@!D§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §&O§ = new Dictionary();
         }
      }
      
      public function §7!Z§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
      }
      
      public static function §=$§(param1:XML, param2:XML) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:XML = null;
         if(!(_loc6_ && §7!Z§))
         {
            §set § = param1;
            loop0:
            while(true)
            {
               §`S§ = param2;
               while(true)
               {
                  §&"$§.§!L§(§set §.Item_Materials,§set §.Material_Damage_Multipliers,§set §.Material_Velocity_Multipliers);
                  loop2:
                  for(; _loc7_; while(_loc7_ || param1)
                  {
                     continue loop0;
                  })
                  {
                     §90§.§>[§(§set §.Item_Resources_Sounds);
                     loop3:
                     while(true)
                     {
                        §^s§.§78§(§set §.Item_Shapes);
                        while(true)
                        {
                           §%E§.§9I§(§`S§.Backgrounds);
                           while(!(_loc6_ && param1))
                           {
                              while(true)
                              {
                                 §&O§ = new Dictionary();
                                 continue loop2;
                              }
                              if(_loc6_ && §7!Z§)
                              {
                                 continue;
                              }
                              if(_loc6_)
                              {
                                 continue loop3;
                              }
                              if(true)
                              {
                                 §§goto(addr122);
                              }
                              §§goto(addr46);
                           }
                        }
                     }
                  }
               }
               if(!(_loc7_ || param1))
               {
                  continue;
               }
               while(true)
               {
                  §@!D§ = new Array();
                  if(_loc7_)
                  {
                     §§goto(addr35);
                  }
                  §§goto(addr51);
               }
               addr122:
               for each(_loc3_ in §set §.Items.Item)
               {
                  if(_loc7_ || param1)
                  {
                     §@!D§.push(_loc3_.@id);
                     if(_loc7_ || param2)
                     {
                        §8!q§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
                     }
                  }
               }
               if(!(_loc6_ && param2))
               {
                  §%!'§(§set §.SoundChannels);
               }
               return;
               addr65:
            }
         }
         §§goto(addr65);
      }
      
      public static function §8!q§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(_loc15_)
         {
            §&O§[param1.toLowerCase()] = new §4K§(param1,param2,§&"$§.§<!w§(param3),§90§.§6a§(param4),!!param5 ? §^s§.§%!>§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public static function §`!H§(param1:String) : §4K§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§4K§ = §&O§[param1.toLowerCase()];
         if(_loc4_)
         {
            if(_loc2_ == null)
            {
               do
               {
                  §§push(§<m§);
                  §§push("WARNING: LevelItem -> getItem request has no return value, this item does not exist: ");
                  if(!(_loc3_ && §7!Z§))
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
               }
               while(!_loc4_);
               
               if(_loc4_)
               {
                  return null;
                  addr68:
               }
            }
            return _loc2_;
         }
         §§goto(addr68);
      }
      
      public static function §="§() : Array
      {
         return §@!D§;
      }
      
      public static function §"!?§(param1:String) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§4K§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §&O§)
         {
            if(!(_loc6_ && _loc2_))
            {
               if(_loc3_.§^w§.toUpperCase() != param1.toUpperCase())
               {
                  continue;
               }
               if(!(_loc7_ || _loc2_))
               {
                  continue;
               }
            }
            _loc2_[_loc2_.length] = _loc3_.§-!>§;
         }
         return _loc2_;
      }
      
      public static function §-!!§() : String
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
      
      public static function §%!'§(param1:XMLList) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:XML = null;
         var _loc3_:int = 0;
         loop0:
         for each(_loc2_ in param1.Channel)
         {
            if(_loc6_ || param1)
            {
               if(_loc2_.attribute("name").length() <= 0)
               {
                  while(true)
                  {
                     §<m§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
                     addr155:
                     while(true)
                     {
                     }
                     addr100:
                     if(!(_loc5_ && _loc2_))
                     {
                        loop6:
                        while(true)
                        {
                           §-!Q§.§"3§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
                           if(_loc6_ || param1)
                           {
                              break;
                           }
                           addr98:
                           while(_loc6_)
                           {
                              §§goto(addr100);
                              continue loop6;
                           }
                           §§goto(addr155);
                        }
                        addr41:
                        if(false)
                        {
                           loop4:
                           while(true)
                           {
                              if(_loc2_.attribute("volume").length() <= 0)
                              {
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    addr145:
                                    if(_loc6_)
                                    {
                                       §§push(§<m§);
                                       §§push("WARNING, LevelItems->loadSoundChannels() volume is missing: ");
                                       if(_loc6_ || _loc2_)
                                       {
                                          §§push(§§pop() + _loc2_.@name);
                                       }
                                       §§pop().log(§§pop());
                                       §§goto(addr98);
                                    }
                                    while(true)
                                    {
                                       continue loop4;
                                    }
                                    addr145:
                                 }
                                 §§goto(addr98);
                              }
                              §§goto(addr41);
                           }
                           addr59:
                        }
                        continue loop0;
                     }
                  }
               }
               while(true)
               {
                  if(_loc2_.attribute("maxSound").length() <= 0)
                  {
                     if(_loc6_ || §7!Z§)
                     {
                        §§push(§<m§);
                        §§push("WARNING, LevelItems->loadSoundChannels() maxSound is missing: ");
                        if(!(_loc5_ && param1))
                        {
                           §§push(§§pop() + _loc2_.@name);
                        }
                        §§pop().log(§§pop());
                     }
                     §§goto(addr145);
                  }
                  §§goto(addr59);
                  §§goto(addr155);
               }
            }
            §§goto(addr145);
         }
      }
      
      public static function §0!I§(param1:String) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§4K§ = §`!H§(param1);
         if(_loc3_)
         {
            if(_loc2_)
            {
               if(_loc3_)
               {
                  §§push((_loc2_.material as § L§).mValues[§ L§.§<"$§] == § L§.§@8§);
                  if(!(_loc4_ && param1))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr56:
                  return true;
               }
               return §§pop();
            }
         }
         §§goto(addr56);
      }
   }
}
