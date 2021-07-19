package §4N§
{
   import §3O§.§@6§;
   import §;!E§.§!c§;
   import §;8§.§3f§;
   import flash.utils.Dictionary;
   
   public class §&!@§
   {
      
      public static var §6S§:XML;
      
      public static var § X§:XML;
      
      public static var §1I§:Dictionary;
      
      public static var §6!+§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §1I§ = new Dictionary();
         }
      }
      
      public function §&!@§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §'7§(param1:XML, param2:XML) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:XML = null;
         §6S§ = param1;
         § X§ = param2;
         §;!2§.§=r§(§6S§.Item_Materials,§6S§.Material_Damage_Multipliers,§6S§.Material_Velocity_Multipliers);
         §+!0§.§+T§(§6S§.Item_Resources_Sounds);
         while(true)
         {
            §switch§.§>!,§(§6S§.Item_Shapes);
            §!c§.§4e§(§ X§.Backgrounds);
            while(true)
            {
               §1I§ = new Dictionary();
               if(!_loc6_)
               {
                  break;
               }
               §6!+§ = new Array();
               if(true)
               {
                  for each(_loc3_ in §6S§.Items.Item)
                  {
                     if(!(_loc7_ && §&!@§))
                     {
                        §6!+§.push(_loc3_.@id);
                        if(!_loc6_)
                        {
                           continue;
                        }
                     }
                     addItem(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true");
                  }
                  if(_loc6_ || _loc3_)
                  {
                     §&d§(§6S§.SoundChannels);
                  }
               }
               continue;
               return;
            }
         }
      }
      
      public static function addItem(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(!(_loc13_ && param2))
         {
            §1I§[param1.toLowerCase()] = new §9o§(param1,param2,§;!2§.§`x§(param3),§+!0§.§ c§(param4),!!param5 ? §switch§.§0V§(param5) : null,param6,param7,param8,param9,param10,param11);
         }
      }
      
      public static function §9B§(param1:String) : §9o§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§9o§ = §1I§[param1.toLowerCase()];
         if(!(_loc4_ && §&!@§))
         {
            if(_loc2_ != null)
            {
               if(!(_loc4_ && param1))
               {
                  return _loc2_;
               }
               addr83:
               while(true)
               {
               }
               addr83:
            }
            while(true)
            {
               §§push(§3f§);
               §§push("WARNING: LevelItem -> getItem request has no return value, this item does not exist: ");
               if(_loc3_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().log(§§pop());
               if(_loc3_ || _loc2_)
               {
                  break;
               }
               §§goto(addr83);
            }
            return null;
         }
         §§goto(addr83);
      }
      
      public static function §]r§() : Array
      {
         return §6!+§;
      }
      
      public static function §9s§(param1:String) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§9o§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §1I§)
         {
            if(_loc7_)
            {
               if(_loc3_.§<s§.toUpperCase() != param1.toUpperCase())
               {
                  continue;
               }
               if(_loc6_)
               {
                  continue;
               }
            }
            _loc2_[_loc2_.length] = _loc3_.§57§;
         }
         return _loc2_;
      }
      
      public static function §6!!§() : String
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
      
      public static function §&d§(param1:XMLList) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:XML = null;
         loop0:
         for each(_loc2_ in param1.Channel)
         {
            if(!_loc6_)
            {
               if(_loc2_.attribute("name").length() <= 0)
               {
                  §3f§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
                  while(true)
                  {
                  }
                  addr120:
               }
               while(true)
               {
                  if(_loc2_.attribute("maxSound").length() <= 0)
                  {
                     while(_loc5_ || _loc2_)
                     {
                        §§push(§3f§);
                        §§push("WARNING, LevelItems->loadSoundChannels() maxSound is missing: ");
                        if(!_loc6_)
                        {
                           §§push(§§pop() + _loc2_.@name);
                        }
                        §§pop().log(§§pop());
                        while(true)
                        {
                        }
                     }
                     continue;
                     addr85:
                  }
                  loop4:
                  while(true)
                  {
                     do
                     {
                        if(_loc2_.attribute("volume").length() <= 0)
                        {
                           if(!_loc6_)
                           {
                              §§push(§3f§);
                              §§push("WARNING, LevelItems->loadSoundChannels() volume is missing: ");
                              if(_loc5_)
                              {
                                 §§push(§§pop() + _loc2_.@name);
                              }
                              §§pop().log(§§pop());
                              while(!_loc6_)
                              {
                              }
                              continue loop4;
                              addr75:
                           }
                           else
                           {
                              §§goto(addr85);
                           }
                        }
                        while(true)
                        {
                           §@6§.§'!&§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
                           if(!_loc6_)
                           {
                              break;
                           }
                           §§goto(addr75);
                        }
                     }
                     while(false);
                     
                     continue loop0;
                  }
               }
            }
            §§goto(addr120);
         }
      }
      
      public static function §8x§(param1:String) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§9o§ = §9B§(param1);
         if(_loc3_)
         {
            if(_loc2_)
            {
               if(!(_loc4_ && _loc2_))
               {
                  §§push((_loc2_.material as §`!%§).§&!=§[§`!%§.§9n§] == §`!%§.§function§);
                  if(_loc3_)
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
