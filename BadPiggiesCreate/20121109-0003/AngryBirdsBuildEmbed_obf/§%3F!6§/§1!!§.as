package §?!6§
{
   import § !r§.§`![§;
   import §1?§.§+!§;
   import §]Z§.§7!n§;
   import flash.utils.Dictionary;
   
   public class §1!!§
   {
      
      public static var §6d§:XML;
      
      public static var §9!#§:XML;
      
      public static var §?n§:Dictionary;
      
      public static var §81§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §?n§ = new Dictionary();
         }
      }
      
      public function §1!!§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
      }
      
      public static function §@!u§(param1:XML, param2:XML) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:XML = null;
         §6d§ = param1;
         if(!(_loc7_ && §1!!§))
         {
            §9!#§ = param2;
            if(!(_loc7_ && §1!!§))
            {
               §'-§.§-q§(§6d§.Item_Materials,§6d§.Material_Damage_Multipliers,§6d§.Material_Velocity_Multipliers);
               §%h§.§;&§(§6d§.Item_Resources_Sounds);
               if(!(_loc7_ && param1))
               {
                  §3>§.§+!m§(§6d§.Item_Shapes);
                  §7!n§.§0!Y§(§9!#§.Backgrounds);
               }
               §?n§ = new Dictionary();
               if(!(_loc7_ && _loc3_))
               {
                  §81§ = new Array();
               }
            }
         }
         for each(_loc3_ in §6d§.Items.Item)
         {
            if(_loc6_)
            {
               §81§.push(_loc3_.@id);
               if(!(_loc7_ && param2))
               {
                  addItem(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true");
               }
            }
         }
         if(_loc6_ || _loc3_)
         {
            §8!l§(§6d§.SoundChannels);
         }
      }
      
      public static function addItem(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(!_loc12_)
         {
            §?n§[param1.toLowerCase()] = new §]!@§(param1,param2,§'-§.include(param3),§%h§.§@s§(param4),!!param5 ? §3>§.§?p§(param5) : null,param6,param7,param8,param9,param10,param11);
         }
      }
      
      public static function §#P§(param1:String) : §]!@§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§]!@§ = §?n§[param1.toLowerCase()];
         if(!(_loc3_ && §1!!§))
         {
            if(_loc2_ != null)
            {
               if(_loc4_)
               {
                  §§goto(addr55);
               }
            }
            else
            {
               §§push(§`![§);
               §§push("WARNING: LevelItem -> getItem request has no return value, this item does not exist: ");
               if(_loc4_ || _loc2_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().log(§§pop());
            }
            return null;
         }
         addr55:
         return _loc2_;
      }
      
      public static function §`Y§() : Array
      {
         return §81§;
      }
      
      public static function §=!4§(param1:String) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§]!@§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §?n§)
         {
            if(_loc6_ || §1!!§)
            {
               if(_loc3_.§+D§.toUpperCase() != param1.toUpperCase())
               {
                  continue;
               }
               if(!(_loc6_ || _loc3_))
               {
                  continue;
               }
            }
            _loc2_[_loc2_.length] = _loc3_.§>p§;
         }
         return _loc2_;
      }
      
      public static function §;!@§() : String
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
      
      public static function §8!l§(param1:XMLList) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:XML = null;
         var _loc3_:int = 0;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               if(!_loc6_)
               {
                  §`![§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
                  if(_loc5_)
                  {
                     addr45:
                     if(_loc2_.attribute("maxSound").length() <= 0)
                     {
                        if(!_loc6_)
                        {
                           §§push(§`![§);
                           §§push("WARNING, LevelItems->loadSoundChannels() maxSound is missing: ");
                           if(_loc5_ || _loc3_)
                           {
                              §§push(§§pop() + _loc2_.@name);
                           }
                           §§pop().log(§§pop());
                        }
                        addr84:
                        §§push(§`![§);
                        §§push("WARNING, LevelItems->loadSoundChannels() volume is missing: ");
                        if(_loc5_ || _loc2_)
                        {
                           §§push(§§pop() + _loc2_.@name);
                        }
                        §§pop().log(§§pop());
                        if(!(_loc6_ && _loc3_))
                        {
                           addr114:
                           §+!§.§#n§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
                        }
                        continue;
                     }
                     if(_loc2_.attribute("volume").length() <= 0)
                     {
                        if(_loc6_)
                        {
                           continue;
                        }
                     }
                     §§goto(addr114);
                  }
                  §§goto(addr84);
               }
               §§goto(addr114);
            }
            §§goto(addr45);
         }
      }
      
      public static function §-! §(param1:String) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§]!@§ = §#P§(param1);
         if(!_loc4_)
         {
            if(_loc2_)
            {
               if(_loc3_)
               {
                  addr37:
                  §§push((_loc2_.material as §`4§).§6!8§[§`4§.§+9§] == §`4§.§4A§);
                  if(_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr51:
                  §§push(true);
               }
               return §§pop();
            }
            §§goto(addr51);
         }
         §§goto(addr37);
      }
   }
}
