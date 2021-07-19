package §@0§
{
   import §+"§.§'! §;
   import §@R§.§4,§;
   import §^!0§.§&M§;
   import flash.utils.Dictionary;
   
   public class §`>§
   {
      
      public static var §'a§:XML;
      
      public static var §8'§:XML;
      
      public static var §],§:Dictionary;
      
      public static var §4!^§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §],§ = new Dictionary();
         }
      }
      
      public function §`>§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §"A§(param1:XML, param2:XML) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:XML = null;
         if(_loc7_)
         {
            §'a§ = param1;
            while(true)
            {
               §8'§ = param2;
               while(true)
               {
                  §7!^§.§%`§(§'a§.Item_Materials,§'a§.Material_Damage_Multipliers,§'a§.Material_Velocity_Multipliers);
                  while(_loc7_ || param2)
                  {
                     §,!$§.§'A§(§'a§.Item_Resources_Sounds);
                     loop3:
                     while(true)
                     {
                        §]F§.§^!R§(§'a§.Item_Shapes);
                        while(true)
                        {
                           §'! §.§0!T§(§8'§.Backgrounds);
                           continue loop3;
                           addr35:
                           if(!(_loc6_ && §`>§))
                           {
                              addr42:
                              if(false)
                              {
                                 while(true)
                                 {
                                    §],§ = new Dictionary();
                                    addr49:
                                    while(!(_loc6_ && param2))
                                    {
                                       §4!^§ = new Array();
                                       if(_loc6_ && _loc3_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr35);
                                    }
                                    continue loop3;
                                    §§goto(addr42);
                                 }
                                 addr44:
                              }
                              for each(_loc3_ in §'a§.Items.Item)
                              {
                                 if(!(_loc6_ && §`>§))
                                 {
                                    §4!^§.push(_loc3_.@id);
                                    if(_loc6_ && _loc3_)
                                    {
                                       continue;
                                    }
                                 }
                                 §%P§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
                              }
                              if(!_loc6_)
                              {
                                 §9!W§(§'a§.SoundChannels);
                              }
                              return;
                           }
                        }
                     }
                  }
               }
               if(_loc6_ && param1)
               {
                  continue;
               }
               while(true)
               {
                  §§goto(addr44);
               }
               addr78:
            }
         }
         §§goto(addr78);
      }
      
      public static function §%P§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(_loc14_)
         {
            §],§[param1.toLowerCase()] = new § $§(param1,param2,§7!^§.§9E§(param3),§,!$§.§"n§(param4),!!param5 ? §]F§.§7!P§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public static function §<!>§(param1:String) : § $§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§ $§ = §],§[param1.toLowerCase()];
         if(_loc4_ || _loc2_)
         {
            if(_loc2_ == null)
            {
               loop0:
               while(true)
               {
                  §4,§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
                  if(_loc4_)
                  {
                     break;
                  }
                  addr72:
                  while(true)
                  {
                     continue loop0;
                  }
               }
               if(_loc4_)
               {
                  return null;
               }
            }
            return _loc2_;
         }
         §§goto(addr72);
      }
      
      public static function §9O§() : Array
      {
         return §4!^§;
      }
      
      public static function §1V§(param1:String) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§ $§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §],§)
         {
            if(_loc6_ || _loc3_)
            {
               if(_loc3_.§>! §.toUpperCase() != param1.toUpperCase())
               {
                  continue;
               }
               if(_loc7_)
               {
                  continue;
               }
            }
            _loc2_[_loc2_.length] = _loc3_.§>R§;
         }
         return _loc2_;
      }
      
      public static function §&H§() : String
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
      
      public static function §9!W§(param1:XMLList) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:XML = null;
         var _loc3_:int = 0;
         var _loc4_:* = param1.Channel;
         loop0:
         for(; §§hasnext(_loc4_,_loc3_); if(true)
         {
            continue;
         },§§goto(addr73))
         {
            _loc2_ = §§nextvalue(_loc3_,_loc4_);
            if(!(_loc5_ && param1))
            {
               if(_loc2_.attribute("name").length() <= 0)
               {
                  addr133:
                  while(true)
                  {
                     §4,§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
                     addr136:
                     while(true)
                     {
                     }
                  }
                  addr133:
               }
               loop1:
               while(true)
               {
                  if(_loc2_.attribute("maxSound").length() <= 0)
                  {
                     while(true)
                     {
                        §4,§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
                        addr109:
                        while(_loc6_ || _loc3_)
                        {
                        }
                        continue loop1;
                     }
                     addr103:
                  }
                  addr73:
                  while(true)
                  {
                     if(_loc2_.attribute("volume").length() <= 0)
                     {
                        if(!_loc5_)
                        {
                           §4,§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
                        }
                        while(true)
                        {
                           if(!(_loc5_ && param1))
                           {
                              continue;
                           }
                           §§goto(addr133);
                        }
                        addr88:
                     }
                     while(true)
                     {
                        §&M§.§1!V§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
                        if(_loc6_ || _loc3_)
                        {
                           if(_loc6_)
                           {
                              if(_loc6_)
                              {
                                 continue loop0;
                              }
                              §§goto(addr103);
                           }
                           §§goto(addr109);
                        }
                        else
                        {
                           §§goto(addr88);
                        }
                     }
                  }
                  continue loop0;
               }
            }
            §§goto(addr133);
         }
      }
      
      public static function §&t§(param1:String) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§ $§ = §<!>§(param1);
         if(_loc3_)
         {
            if(_loc2_)
            {
               if(!(_loc4_ && §`>§))
               {
                  addr42:
                  §§push((_loc2_.material as §56§).§2!@§[§56§.§=!W§] == §56§.§&f§);
                  if(_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr66:
                  return true;
               }
               return §§pop();
            }
            §§goto(addr66);
         }
         §§goto(addr42);
      }
   }
}
