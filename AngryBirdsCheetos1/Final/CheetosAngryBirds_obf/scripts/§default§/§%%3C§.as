package §default§
{
   import § !G§.§ #§;
   import §+3§.§ 7§;
   import §`!K§.§!!>§;
   import flash.utils.Dictionary;
   
   public class §%<§
   {
      
      public static var §`S§:XML;
      
      public static var §+u§:XML;
      
      public static var §%o§:Dictionary;
      
      public static var §0!]§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §%<§)
         {
            §%o§ = new Dictionary();
         }
      }
      
      public function §%<§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §;!E§(param1:XML, param2:XML) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:XML = null;
         if(!_loc7_)
         {
            §`S§ = param1;
            loop0:
            while(true)
            {
               §+u§ = param2;
               loop1:
               while(true)
               {
                  §9C§.§`!S§(§`S§.Item_Materials,§`S§.Material_Damage_Multipliers,§`S§.Material_Velocity_Multipliers);
                  while(true)
                  {
                     §9!#§.§>Q§(§`S§.Item_Resources_Sounds);
                     continue loop0;
                     addr68:
                     if(_loc7_ && param1)
                     {
                        continue;
                     }
                     if(!_loc6_)
                     {
                        continue loop1;
                     }
                     while(true)
                     {
                        loop7:
                        do
                        {
                           §%o§ = new Dictionary();
                           addr48:
                           addr83:
                           while(_loc6_ || param1)
                           {
                              §0!]§ = new Array();
                              if(_loc6_ || param1)
                              {
                                 addr34:
                                 if(_loc6_ || _loc3_)
                                 {
                                    continue loop7;
                                 }
                                 addr61:
                                 addr61:
                                 while(_loc6_ || §%<§)
                                 {
                                    §§goto(addr68);
                                    §§goto(addr34);
                                 }
                                 continue loop0;
                              }
                           }
                           while(true)
                           {
                              § 7§.§][§(§+u§.Backgrounds);
                              §§goto(addr61);
                              §§goto(addr48);
                           }
                        }
                        while(false);
                        
                        for each(_loc3_ in §`S§.Items.Item)
                        {
                           if(!_loc7_)
                           {
                              §0!]§.push(_loc3_.@id);
                              if(_loc7_ && param2)
                              {
                                 continue;
                              }
                           }
                           §&r§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true");
                        }
                        if(_loc6_)
                        {
                           §,V§(§`S§.SoundChannels);
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      public static function §&r§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(!(_loc12_ && param2))
         {
            §%o§[param1.toLowerCase()] = new §-r§(param1,param2,§9C§.§%!L§(param3),§9!#§.§4!R§(param4),!!param5 ? §9;§.§<!"§(param5) : null,param6,param7,param8,param9,param10,param11);
         }
      }
      
      public static function §<<§(param1:String) : §-r§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§-r§ = §%o§[param1.toLowerCase()];
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ != null)
            {
               if(!_loc4_)
               {
                  return _loc2_;
               }
               while(true)
               {
               }
               addr71:
            }
            while(true)
            {
               § #§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
               if(!_loc4_)
               {
                  break;
               }
               §§goto(addr71);
            }
         }
         return null;
      }
      
      public static function §=+§() : Array
      {
         return §0!]§;
      }
      
      public static function §<j§(param1:String) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§-r§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §%o§)
         {
            if(_loc7_)
            {
               if(_loc3_.§,N§.toUpperCase() != param1.toUpperCase())
               {
                  continue;
               }
               if(!_loc7_)
               {
                  continue;
               }
            }
            _loc2_[_loc2_.length] = _loc3_.§2!1§;
         }
         return _loc2_;
      }
      
      public static function §!!+§() : String
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
      
      public static function §,V§(param1:XMLList) : void
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
         },§§goto(addr70))
         {
            _loc2_ = §§nextvalue(_loc3_,_loc4_);
            if(!_loc6_)
            {
               if(_loc2_.attribute("name").length() <= 0)
               {
                  if(!_loc6_)
                  {
                     § #§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
                  }
                  while(true)
                  {
                     addr51:
                     if(_loc5_ || _loc2_)
                     {
                        continue loop0;
                     }
                  }
                  addr130:
               }
               while(true)
               {
                  if(_loc2_.attribute("maxSound").length() <= 0)
                  {
                     addr102:
                     while(true)
                     {
                        § #§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
                        addr108:
                        while(true)
                        {
                        }
                     }
                     addr102:
                  }
                  addr70:
                  while(true)
                  {
                     if(_loc2_.attribute("volume").length() <= 0)
                     {
                        if(!_loc6_)
                        {
                           if(!(_loc6_ && param1))
                           {
                              § #§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
                              loop4:
                              while(_loc5_)
                              {
                                 while(true)
                                 {
                                    §!!>§.§6!K§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
                                    if(_loc5_ || _loc3_)
                                    {
                                       break;
                                    }
                                    continue loop4;
                                 }
                                 §§goto(addr51);
                              }
                              addr92:
                           }
                           else
                           {
                              §§goto(addr102);
                           }
                           §§goto(addr108);
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr35);
                  }
                  continue loop0;
                  §§goto(addr130);
               }
            }
            §§goto(addr102);
         }
      }
      
      public static function §4j§(param1:String) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§-r§ = §<<§(param1);
         if(!_loc4_)
         {
            if(_loc2_)
            {
               if(!_loc4_)
               {
                  §§push((_loc2_.material as §-g§).§+b§[§-g§.§ !H§] == §-g§.§3'§);
                  if(_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr61:
                  return true;
               }
               return §§pop();
            }
         }
         §§goto(addr61);
      }
   }
}
