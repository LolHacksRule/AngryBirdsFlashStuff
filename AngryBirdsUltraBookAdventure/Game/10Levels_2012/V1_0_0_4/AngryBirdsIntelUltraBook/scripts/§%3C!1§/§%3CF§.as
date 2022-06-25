package §<!1§
{
   import §"R§.§ !Q§;
   import §,!Q§.§ !P§;
   import §^_§.§!>§;
   import flash.utils.Dictionary;
   
   public class §<F§
   {
      
      public static var §+!0§:XML;
      
      public static var §=f§:XML;
      
      public static var §>!!§:Dictionary;
      
      public static var §!!N§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §>!!§ = new Dictionary();
         }
      }
      
      public function §<F§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §'!w§(param1:XML, param2:XML) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:XML = null;
         if(_loc6_ || _loc3_)
         {
            §+!0§ = param1;
            loop0:
            while(true)
            {
               §=f§ = param2;
               loop1:
               while(true)
               {
                  §-!x§.§0b§(§+!0§.Item_Materials,§+!0§.Material_Damage_Multipliers,§+!0§.Material_Velocity_Multipliers);
                  while(_loc6_)
                  {
                     §6G§.§2l§(§+!0§.Item_Resources_Sounds);
                     addr34:
                     if(_loc6_ || param2)
                     {
                        if(true)
                        {
                           var _loc4_:int = 0;
                           var _loc5_:* = §+!0§.Items.Item;
                           addr183:
                           for each(_loc3_ in _loc5_)
                           {
                              if(_loc6_)
                              {
                                 §!!N§.push(_loc3_.@id);
                                 if(!(_loc7_ && §<F§))
                                 {
                                    §@W§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
                                    addr138:
                                 }
                                 §§goto(addr183);
                              }
                              §§goto(addr138);
                           }
                           addr43:
                        }
                        loop6:
                        while(true)
                        {
                           §>!!§ = new Dictionary();
                           while(true)
                           {
                              if(!_loc7_)
                              {
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 §!!N§ = new Array();
                                 if(!_loc7_)
                                 {
                                    continue loop6;
                                 }
                                 continue;
                              }
                              continue loop1;
                           }
                           loop4:
                           while(true)
                           {
                              if(!_loc7_)
                              {
                                 § !P§.§<!v§(§=f§.Backgrounds);
                                 continue loop1;
                              }
                              addr79:
                              while(true)
                              {
                                 §5Q§.§?g§(§+!0§.Item_Shapes);
                                 continue loop4;
                              }
                           }
                        }
                        continue;
                        if(_loc6_ || param2)
                        {
                           §#9§(§+!0§.SoundChannels);
                        }
                        return;
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr79);
      }
      
      public static function §@W§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(_loc14_)
         {
            §>!!§[param1.toLowerCase()] = new §9B§(param1,param2,§-!x§.§@1§(param3),§6G§.§]i§(param4),!!param5 ? §5Q§.§@!P§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public static function §1]§(param1:String) : §9B§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§9B§ = §>!!§[param1.toLowerCase()];
         if(!_loc3_)
         {
            if(_loc2_ == null)
            {
               do
               {
                  §§push(§!>§);
                  §§push("WARNING: LevelItem -> getItem request has no return value, this item does not exist: ");
                  if(_loc4_ || _loc3_)
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
      
      public static function §@!u§() : Array
      {
         return §!!N§;
      }
      
      public static function §&O§(param1:String) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§9B§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §>!!§)
         {
            if(!(_loc7_ && _loc3_))
            {
               if(_loc3_.§@§.toUpperCase() != param1.toUpperCase())
               {
                  continue;
               }
               if(_loc7_ && param1)
               {
                  continue;
               }
            }
            _loc2_[_loc2_.length] = _loc3_.§<!]§;
         }
         return _loc2_;
      }
      
      public static function §<!j§() : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         §§push(_loc2_);
         if(_loc5_)
         {
            §§push(§§pop() * _loc1_.length);
         }
         var _loc3_:int = §§pop() as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §#9§(param1:XMLList) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:XML = null;
         var _loc3_:int = 0;
         loop0:
         for each(_loc2_ in param1.Channel)
         {
            if(!_loc6_)
            {
               if(_loc2_.attribute("name").length() <= 0)
               {
                  while(true)
                  {
                     §!>§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
                     addr144:
                     while(true)
                     {
                     }
                  }
                  addr141:
               }
               while(true)
               {
                  if(_loc2_.attribute("maxSound").length() <= 0)
                  {
                     if(_loc5_)
                     {
                        while(true)
                        {
                           §§push(§!>§);
                           §§push("WARNING, LevelItems->loadSoundChannels() maxSound is missing: ");
                           if(_loc5_ || §<F§)
                           {
                              §§push(§§pop() + _loc2_.@name);
                           }
                           §§pop().log(§§pop());
                        }
                        addr107:
                     }
                     while(_loc5_)
                     {
                        if(_loc6_)
                        {
                           §§goto(addr141);
                        }
                        loop7:
                        while(_loc5_ || _loc3_)
                        {
                           §§push(§!>§);
                           §§push("WARNING, LevelItems->loadSoundChannels() volume is missing: ");
                           if(_loc5_ || §<F§)
                           {
                              §§push(§§pop() + _loc2_.@name);
                           }
                           §§pop().log(§§pop());
                           loop8:
                           while(true)
                           {
                              addr35:
                              addr58:
                              while(true)
                              {
                                 § !Q§.§]!h§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    if(_loc5_ || _loc3_)
                                    {
                                       break;
                                    }
                                    continue loop7;
                                 }
                                 continue loop8;
                              }
                              if(false)
                              {
                                 while(true)
                                 {
                                    if(_loc2_.attribute("volume").length() <= 0)
                                    {
                                       continue loop7;
                                    }
                                    §§goto(addr35);
                                    §§goto(addr58);
                                 }
                                 addr71:
                              }
                              continue loop0;
                           }
                        }
                     }
                     continue;
                  }
                  while(true)
                  {
                     §§goto(addr71);
                  }
               }
            }
            §§goto(addr107);
         }
      }
      
      public static function §%!U§(param1:String) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§9B§ = §1]§(param1);
         if(_loc4_ || _loc3_)
         {
            if(_loc2_)
            {
               if(_loc4_ || §<F§)
               {
                  addr58:
                  §§push((_loc2_.material as §0"§).§]!Z§[§0"§.§5"§] == §0"§.§5P§);
                  if(_loc4_ || _loc3_)
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
         §§goto(addr58);
      }
   }
}
