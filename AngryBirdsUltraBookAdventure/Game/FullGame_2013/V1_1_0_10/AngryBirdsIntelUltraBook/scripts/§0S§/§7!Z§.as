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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §&O§ = new Dictionary();
         }
      }
      
      public function §7!Z§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §=$§(param1:XML, param2:XML) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:XML = null;
         if(!_loc7_)
         {
            §set § = param1;
            while(true)
            {
               §`S§ = param2;
               while(!_loc7_)
               {
                  §&"$§.§!L§(§set §.Item_Materials,§set §.Material_Damage_Multipliers,§set §.Material_Velocity_Multipliers);
                  loop2:
                  while(true)
                  {
                     §90§.§>[§(§set §.Item_Resources_Sounds);
                     loop3:
                     while(true)
                     {
                        §^s§.§78§(§set §.Item_Shapes);
                        continue loop2;
                        addr34:
                        if(!(_loc7_ && param2))
                        {
                           while(false)
                           {
                              loop6:
                              while(true)
                              {
                                 §&O§ = new Dictionary();
                                 addr48:
                                 addr61:
                                 while(!(_loc7_ && _loc3_))
                                 {
                                    §@!D§ = new Array();
                                    if(_loc7_ && param2)
                                    {
                                       continue;
                                    }
                                    §§goto(addr34);
                                 }
                                 while(!_loc7_)
                                 {
                                    continue loop6;
                                    §§goto(addr48);
                                 }
                                 continue loop2;
                              }
                              continue loop3;
                           }
                           for each(_loc3_ in §set §.Items.Item)
                           {
                              if(_loc6_ || param2)
                              {
                                 §@!D§.push(_loc3_.@id);
                                 if(!(_loc6_ || param1))
                                 {
                                    continue;
                                 }
                              }
                              §8!q§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
                           }
                           if(_loc6_ || §7!Z§)
                           {
                              §%!'§(§set §.SoundChannels);
                           }
                           return;
                           addr41:
                        }
                     }
                  }
                  if(!(_loc6_ || param2))
                  {
                     continue;
                  }
                  §%E§.§9I§(§`S§.Backgrounds);
                  §§goto(addr61);
               }
            }
         }
         §§goto(addr41);
      }
      
      public static function §8!q§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(_loc14_)
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
            if(_loc2_ != null)
            {
               if(!(_loc3_ && _loc3_))
               {
                  return _loc2_;
               }
               while(true)
               {
                  §§goto(addr41);
               }
            }
            addr41:
            §§goto(addr71);
         }
         addr71:
         while(true)
         {
            §§push(§<m§);
            §§push("WARNING: LevelItem -> getItem request has no return value, this item does not exist: ");
            if(!(_loc3_ && _loc3_))
            {
               §§push(§§pop() + param1);
            }
            §§pop().log(§§pop());
            if(_loc4_ || param1)
            {
               break;
            }
            continue loop0;
         }
         return null;
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
            if(!(_loc6_ && §7!Z§))
            {
               if(_loc3_.§^w§.toUpperCase() != param1.toUpperCase())
               {
                  continue;
               }
               if(!(_loc7_ || param1))
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
         if(!(_loc5_ && _loc2_))
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
            if(!(_loc5_ && §7!Z§))
            {
               if(_loc2_.attribute("name").length() <= 0)
               {
                  while(true)
                  {
                     §<m§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
                     addr150:
                     while(true)
                     {
                     }
                     addr74:
                     if(_loc5_ && §7!Z§)
                     {
                        continue;
                     }
                     if(true)
                     {
                        continue loop0;
                     }
                     loop4:
                     while(true)
                     {
                        if(_loc2_.attribute("volume").length() <= 0)
                        {
                           if(_loc6_)
                           {
                              addr115:
                              if(!_loc5_)
                              {
                                 §§push(§<m§);
                                 §§push("WARNING, LevelItems->loadSoundChannels() volume is missing: ");
                                 if(_loc6_ || _loc3_)
                                 {
                                    §§push(§§pop() + _loc2_.@name);
                                 }
                                 §§pop().log(§§pop());
                                 loop5:
                                 while(true)
                                 {
                                    addr41:
                                    while(true)
                                    {
                                       §-!Q§.§"3§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          break;
                                       }
                                       continue loop5;
                                    }
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       §§goto(addr74);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          if(!(_loc6_ || param1))
                                          {
                                             break loop4;
                                          }
                                          continue loop4;
                                       }
                                       addr133:
                                    }
                                 }
                                 addr107:
                              }
                              while(true)
                              {
                                 §§push(§<m§);
                                 §§push("WARNING, LevelItems->loadSoundChannels() maxSound is missing: ");
                                 if(_loc6_)
                                 {
                                    §§push(§§pop() + _loc2_.@name);
                                 }
                                 §§pop().log(§§pop());
                                 §§goto(addr133);
                              }
                              addr115:
                           }
                           §§goto(addr107);
                        }
                        §§goto(addr41);
                     }
                     §§goto(addr150);
                     addr83:
                  }
               }
               while(true)
               {
                  if(_loc2_.attribute("maxSound").length() <= 0)
                  {
                     §§goto(addr115);
                  }
                  §§goto(addr83);
                  §§goto(addr150);
               }
            }
            §§goto(addr115);
         }
      }
      
      public static function §0!I§(param1:String) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§4K§ = §`!H§(param1);
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_)
            {
               if(!_loc4_)
               {
                  addr42:
                  §§push((_loc2_.material as § L§).mValues[§ L§.§<"$§] == § L§.§@8§);
                  if(!_loc4_)
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
            §§goto(addr56);
         }
         §§goto(addr42);
      }
   }
}
