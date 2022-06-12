package §%Q§
{
   import §6!B§.§>!E§;
   import §6o§.§+!k§;
   import §<u§.§8,§;
   import flash.utils.Dictionary;
   
   public class §6G§
   {
      
      public static var §!i§:XML;
      
      public static var §?c§:XML;
      
      public static var §&!Z§:Dictionary;
      
      public static var §8!3§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §6G§))
         {
            §&!Z§ = new Dictionary();
         }
      }
      
      public function §6G§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §%!e§(param1:XML, param2:XML) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:XML = null;
         if(_loc7_)
         {
            §!i§ = param1;
            loop0:
            while(true)
            {
               §?c§ = param2;
               loop1:
               while(true)
               {
                  §>"3§.§',§(§!i§.Item_Materials,§!i§.Material_Damage_Multipliers,§!i§.Material_Velocity_Multipliers);
                  loop2:
                  while(!_loc6_)
                  {
                     §<g§.§0$§(§!i§.Item_Resources_Sounds);
                     while(true)
                     {
                        §+!o§.§;!3§(§!i§.Item_Shapes);
                        addr74:
                        while(true)
                        {
                           §8,§.§4n§(§?c§.Backgrounds);
                           continue loop1;
                        }
                        addr37:
                        if(!(_loc6_ && param2))
                        {
                           while(false)
                           {
                              loop6:
                              while(true)
                              {
                                 §&!Z§ = new Dictionary();
                                 while(!_loc6_)
                                 {
                                    if(_loc6_)
                                    {
                                       continue loop2;
                                    }
                                    §8!3§ = new Array();
                                    if(!_loc7_)
                                    {
                                       continue;
                                    }
                                    if(!(_loc7_ || §6G§))
                                    {
                                       break loop6;
                                    }
                                    §§goto(addr37);
                                 }
                                 §§goto(addr74);
                              }
                              continue loop1;
                           }
                           for each(_loc3_ in §!i§.Items.Item)
                           {
                              if(_loc7_)
                              {
                                 §8!3§.push(_loc3_.@id);
                                 if(_loc6_ && param1)
                                 {
                                    continue;
                                 }
                              }
                              §+!v§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
                           }
                           if(!(_loc6_ && param1))
                           {
                              §28§(§!i§.SoundChannels);
                           }
                           return;
                           addr44:
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr44);
      }
      
      public static function §+!v§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(!(_loc15_ && param1))
         {
            §&!Z§[param1.toLowerCase()] = new §4u§(param1,param2,§>"3§.§2%§(param3),§<g§.§8p§(param4),!!param5 ? §+!o§.§4"1§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public static function §1!P§(param1:String) : §4u§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§4u§ = §&!Z§[param1.toLowerCase()];
         if(_loc4_)
         {
            if(_loc2_ != null)
            {
               if(_loc4_ || _loc3_)
               {
                  return _loc2_;
               }
               while(true)
               {
                  §§goto(addr51);
               }
            }
            addr51:
            §§goto(addr61);
         }
         addr61:
         while(true)
         {
            §§push(§+!k§);
            §§push("WARNING: LevelItem -> getItem request has no return value, this item does not exist: ");
            if(_loc4_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().log(§§pop());
            if(!_loc3_)
            {
               break;
            }
            continue loop0;
         }
         return null;
      }
      
      public static function §=!b§() : Array
      {
         return §8!3§;
      }
      
      public static function §<K§(param1:String) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§4u§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §&!Z§)
         {
            if(_loc6_)
            {
               if(_loc3_.§[C§.toUpperCase() == param1.toUpperCase())
               {
                  if(!(_loc7_ && _loc2_))
                  {
                     _loc2_[_loc2_.length] = _loc3_.§2!>§;
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public static function §'k§() : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         §§push(_loc2_);
         if(!_loc6_)
         {
            §§push(§§pop() * _loc1_.length);
         }
         var _loc3_:int = §§pop() as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §28§(param1:XMLList) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:XML = null;
         var _loc3_:int = 0;
         loop0:
         for each(_loc2_ in param1.Channel)
         {
            if(_loc6_)
            {
               if(_loc2_.attribute("name").length() <= 0)
               {
                  while(true)
                  {
                     §+!k§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
                     addr160:
                     while(true)
                     {
                     }
                     addr143:
                     loop4:
                     for(; !(_loc5_ && _loc2_); if(_loc5_ && §6G§)
                     {
                        continue;
                     },§§goto(addr66))
                     {
                        while(true)
                        {
                           do
                           {
                              if(_loc2_.attribute("volume").length() <= 0)
                              {
                                 addr85:
                                 while(true)
                                 {
                                    §§push(§+!k§);
                                    §§push("WARNING, LevelItems->loadSoundChannels() volume is missing: ");
                                    if(!(_loc5_ && §6G§))
                                    {
                                       §§push(§§pop() + _loc2_.@name);
                                    }
                                    §§pop().log(§§pop());
                                    addr98:
                                    while(true)
                                    {
                                    }
                                 }
                                 addr85:
                              }
                              while(true)
                              {
                                 §>!E§.§0I§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
                                 if(_loc6_ || _loc3_)
                                 {
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       break;
                                    }
                                    §§goto(addr85);
                                 }
                                 §§goto(addr98);
                              }
                              continue loop4;
                           }
                           while(false);
                           
                           continue loop0;
                        }
                     }
                  }
               }
               while(true)
               {
                  if(_loc2_.attribute("maxSound").length() <= 0)
                  {
                     if(_loc6_ || _loc3_)
                     {
                        if(!(_loc6_ || §6G§))
                        {
                           continue;
                        }
                        §§push(§+!k§);
                        §§push("WARNING, LevelItems->loadSoundChannels() maxSound is missing: ");
                        if(!(_loc5_ && param1))
                        {
                           §§push(§§pop() + _loc2_.@name);
                        }
                        §§pop().log(§§pop());
                     }
                     §§goto(addr143);
                  }
                  §§goto(addr78);
               }
            }
            §§goto(addr85);
         }
      }
      
      public static function §->§(param1:String) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§4u§ = §1!P§(param1);
         if(!_loc3_)
         {
            if(_loc2_)
            {
               if(!(_loc3_ && _loc2_))
               {
                  addr43:
                  §§push((_loc2_.material as §9!n§).mValues[§9!n§.§+t§] == §9!n§.§'f§);
                  if(!_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr57:
                  return true;
               }
               return §§pop();
            }
            §§goto(addr57);
         }
         §§goto(addr43);
      }
   }
}
