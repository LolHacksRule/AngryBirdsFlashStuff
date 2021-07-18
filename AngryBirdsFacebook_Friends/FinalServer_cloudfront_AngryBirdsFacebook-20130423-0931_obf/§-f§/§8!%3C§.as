package §-f§
{
   import §+!c§.§;!=§;
   import §8m§.§@"M§;
   import §`1§.§4";§;
   import flash.utils.Dictionary;
   
   public class §8!<§
   {
      
      public static var §1!y§:XML;
      
      public static var §&a§:XML;
      
      public static var §+?§:Dictionary;
      
      public static var §<t§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §+?§ = new Dictionary();
         }
      }
      
      public function §8!<§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §`!I§(param1:XML, param2:XML) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:XML = null;
         if(!(_loc6_ && param2))
         {
            §1!y§ = param1;
            loop0:
            while(true)
            {
               §&a§ = param2;
               loop1:
               while(true)
               {
                  §3!!§.§"!"§(§1!y§.Item_Materials,§1!y§.Material_Damage_Multipliers,§1!y§.Material_Velocity_Multipliers);
                  while(true)
                  {
                     §>"$§.§1z§(§1!y§.Item_Resources_Sounds);
                     loop3:
                     while(true)
                     {
                        §?"6§.§&l§(§1!y§.Item_Shapes);
                        while(true)
                        {
                           §4";§.§=!T§(§&a§.Backgrounds);
                           loop5:
                           while(!_loc6_)
                           {
                              continue loop3;
                              addr47:
                              while(true)
                              {
                                 if(_loc7_ || param1)
                                 {
                                    if(!_loc6_)
                                    {
                                       continue loop0;
                                    }
                                    continue loop1;
                                 }
                                 continue loop5;
                              }
                              while(false)
                              {
                                 while(true)
                                 {
                                    §+?§ = new Dictionary();
                                    §§goto(addr47);
                                 }
                              }
                              for each(_loc3_ in §1!y§.Items.Item)
                              {
                                 if(!_loc6_)
                                 {
                                    §<t§.push(_loc3_.@id);
                                    if(!_loc6_)
                                    {
                                       §0" §(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
                                    }
                                 }
                              }
                              if(!_loc6_)
                              {
                                 §!"Q§(§1!y§.SoundChannels);
                              }
                              return;
                           }
                        }
                     }
                     if(_loc6_ && §8!<§)
                     {
                        continue;
                     }
                     §§goto(addr42);
                  }
               }
            }
         }
         §§goto(addr40);
      }
      
      public static function §0" §(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(_loc15_)
         {
            §+?§[param1.toLowerCase()] = new §9L§(param1,param2,§3!!§.§%!S§(param3),§>"$§.§<!%§(param4),!!param5 ? §?"6§.§&"A§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public static function §3"[§(param1:String) : §9L§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§9L§ = §+?§[param1.toLowerCase()];
         if(!_loc3_)
         {
            if(_loc2_ != null)
            {
               if(_loc4_ || param1)
               {
                  return _loc2_;
               }
               while(true)
               {
                  §§goto(addr51);
               }
            }
            addr51:
            §§goto(addr66);
         }
         addr66:
         while(true)
         {
            §§push(§;!=§);
            §§push("WARNING: LevelItem -> getItem request has no return value, this item does not exist: ");
            if(!(_loc3_ && param1))
            {
               §§push(§§pop() + param1);
            }
            §§pop().log(§§pop());
            if(_loc4_)
            {
               break;
            }
            continue loop0;
         }
         return null;
      }
      
      public static function §-!Z§() : Array
      {
         return §<t§;
      }
      
      public static function §>e§(param1:String) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§9L§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §+?§)
         {
            if(!_loc6_)
            {
               if(_loc3_.§;"V§.toUpperCase() == param1.toUpperCase())
               {
                  if(!_loc6_)
                  {
                     _loc2_[_loc2_.length] = _loc3_.§@x§;
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public static function §-!c§() : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         §§push(_loc2_);
         if(_loc6_)
         {
            §§push(§§pop() * _loc1_.length);
         }
         var _loc3_:int = §§pop() as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §!"Q§(param1:XMLList) : void
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
                  loop1:
                  while(true)
                  {
                     §;!=§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
                     addr135:
                     addr95:
                     while(true)
                     {
                     }
                     loop4:
                     while(true)
                     {
                        if(!(_loc6_ || _loc3_))
                        {
                           continue loop1;
                        }
                        while(true)
                        {
                           §§push(§;!=§);
                           §§push("WARNING, LevelItems->loadSoundChannels() maxSound is missing: ");
                           if(_loc6_ || _loc2_)
                           {
                              §§push(§§pop() + _loc2_.@name);
                           }
                           §§pop().log(§§pop());
                           loop9:
                           while(true)
                           {
                              addr49:
                              do
                              {
                                 if(_loc2_.attribute("volume").length() <= 0)
                                 {
                                    if(_loc6_)
                                    {
                                       if(_loc5_)
                                       {
                                          continue loop4;
                                       }
                                       if(_loc5_)
                                       {
                                          break loop4;
                                       }
                                       §§push(§;!=§);
                                       §§push("WARNING, LevelItems->loadSoundChannels() volume is missing: ");
                                       if(!_loc5_)
                                       {
                                          §§push(§§pop() + _loc2_.@name);
                                       }
                                       §§pop().log(§§pop());
                                    }
                                    while(true)
                                    {
                                       if(_loc5_ && param1)
                                       {
                                          continue loop9;
                                       }
                                    }
                                    continue loop9;
                                    addr80:
                                 }
                                 while(true)
                                 {
                                    §@"M§.§set §(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
                                    if(_loc6_)
                                    {
                                       break;
                                    }
                                    §§goto(addr80);
                                 }
                              }
                              while(false);
                              
                              continue loop0;
                           }
                        }
                     }
                     §§goto(addr135);
                  }
               }
               while(true)
               {
                  if(_loc2_.attribute("maxSound").length() <= 0)
                  {
                     §§goto(addr95);
                  }
                  §§goto(addr49);
                  §§goto(addr135);
               }
            }
            §§goto(addr112);
         }
      }
      
      public static function §2i§(param1:String) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§9L§ = §3"[§(param1);
         if(!(_loc4_ && param1))
         {
            if(_loc2_)
            {
               if(!_loc4_)
               {
                  addr42:
                  §§push((_loc2_.material as §@!M§).mValues[§@!M§.§>"3§] == §@!M§.§?K§);
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
