package §!r§
{
   import §+!9§.§6!N§;
   import §-!Q§.§,!7§;
   import §>^§.§!6§;
   import flash.utils.Dictionary;
   
   public class §3!!§
   {
      
      public static var §5!e§:XML;
      
      public static var §'!G§:XML;
      
      public static var §[!L§:Dictionary;
      
      public static var §!!F§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §[!L§ = new Dictionary();
         }
      }
      
      public function §3!!§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §'y§(param1:XML, param2:XML) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:XML = null;
         if(_loc6_)
         {
            §5!e§ = param1;
            loop0:
            while(true)
            {
               §'!G§ = param2;
               while(true)
               {
                  §<e§.§[!&§(§5!e§.Item_Materials,§5!e§.Material_Damage_Multipliers,§5!e§.Material_Velocity_Multipliers);
                  while(true)
                  {
                     §<!5§.§+!Y§(§5!e§.Item_Resources_Sounds);
                     loop3:
                     while(!(_loc7_ && §3!!§))
                     {
                        §%!9§.§5!i§(§5!e§.Item_Shapes);
                        loop4:
                        while(true)
                        {
                           §6!N§.§+1§(§'!G§.Backgrounds);
                           loop5:
                           while(!_loc7_)
                           {
                              while(true)
                              {
                                 §[!L§ = new Dictionary();
                                 loop7:
                                 while(_loc6_)
                                 {
                                    while(true)
                                    {
                                       §!!F§ = new Array();
                                       if(!(_loc7_ && param2))
                                       {
                                          if(!_loc7_)
                                          {
                                             continue loop4;
                                          }
                                          continue loop5;
                                       }
                                       continue loop7;
                                    }
                                    for each(_loc3_ in §5!e§.Items.Item)
                                    {
                                       if(!_loc7_)
                                       {
                                          §!!F§.push(_loc3_.@id);
                                          if(!_loc6_)
                                          {
                                             continue;
                                          }
                                       }
                                       §&!7§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
                                    }
                                    if(_loc6_)
                                    {
                                       §2!"§(§5!e§.SoundChannels);
                                    }
                                    return;
                                 }
                                 continue loop0;
                              }
                           }
                           continue loop3;
                        }
                     }
                  }
                  if(!(_loc6_ || §3!!§))
                  {
                     continue;
                  }
                  if(false)
                  {
                     §§goto(addr52);
                  }
                  §§goto(addr116);
               }
            }
         }
         §§goto(addr59);
      }
      
      public static function §&!7§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(_loc15_)
         {
            §[!L§[param1.toLowerCase()] = new §=?§(param1,param2,§<e§.§]!c§(param3),§<!5§.§%W§(param4),!!param5 ? §%!9§.§'!3§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public static function §^!-§(param1:String) : §=?§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§=?§ = §[!L§[param1.toLowerCase()];
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ == null)
            {
               do
               {
                  §!6§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
               }
               while(!(_loc3_ || _loc2_));
               
               if(_loc3_)
               {
                  return null;
               }
            }
         }
         return _loc2_;
      }
      
      public static function §=[§() : Array
      {
         return §!!F§;
      }
      
      public static function §4t§(param1:String) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§=?§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §[!L§)
         {
            if(!_loc6_)
            {
               if(_loc3_.§if §.toUpperCase() == param1.toUpperCase())
               {
                  if(_loc7_)
                  {
                     _loc2_[_loc2_.length] = _loc3_.§>p§;
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public static function §3!O§() : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         §§push(_loc2_);
         if(!(_loc6_ && §3!!§))
         {
            §§push(§§pop() * _loc1_.length);
         }
         var _loc3_:int = §§pop() as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §2!"§(param1:XMLList) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:XML = null;
         var _loc3_:int = 0;
         loop0:
         for each(_loc2_ in param1.Channel)
         {
            if(_loc5_)
            {
               if(_loc2_.attribute("name").length() <= 0)
               {
                  if(!(_loc6_ && _loc3_))
                  {
                     addr132:
                     §!6§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
                  }
                  while(true)
                  {
                     addr46:
                     if(!(_loc6_ && _loc2_))
                     {
                        if(false)
                        {
                           loop4:
                           while(true)
                           {
                              if(_loc2_.attribute("volume").length() <= 0)
                              {
                                 if(_loc5_)
                                 {
                                    addr74:
                                    if(_loc5_ || §3!!§)
                                    {
                                       §!6§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          continue loop4;
                                          §§goto(addr74);
                                       }
                                       addr108:
                                    }
                                 }
                                 while(true)
                                 {
                                 }
                                 addr87:
                              }
                              while(true)
                              {
                                 §,!7§.§<!-§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 §§goto(addr87);
                              }
                              §§goto(addr46);
                           }
                           addr55:
                        }
                        continue loop0;
                     }
                  }
                  addr135:
               }
               while(true)
               {
                  if(_loc2_.attribute("maxSound").length() <= 0)
                  {
                     if(_loc5_ || §3!!§)
                     {
                        §!6§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
                     }
                     §§goto(addr108);
                  }
                  §§goto(addr55);
                  §§goto(addr135);
               }
            }
            §§goto(addr132);
         }
      }
      
      public static function §&T§(param1:String) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§=?§ = §^!-§(param1);
         if(!(_loc3_ && _loc2_))
         {
            if(_loc2_)
            {
               if(!(_loc3_ && §3!!§))
               {
                  addr48:
                  §§push((_loc2_.material as §9!,§).mValues[§9!,§.§7!$§] == §9!,§.§;a§);
                  if(_loc4_ || _loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr77:
                  return true;
               }
               return §§pop();
            }
            §§goto(addr77);
         }
         §§goto(addr48);
      }
   }
}
