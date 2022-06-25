package §^!L§
{
   import §#X§.§,!F§;
   import §2!,§.§@!2§;
   import §3a§.§7!+§;
   import flash.utils.Dictionary;
   
   public class §6<§
   {
      
      public static var §2D§:XML;
      
      public static var §?0§:XML;
      
      public static var §+q§:Dictionary;
      
      public static var §7#§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §+q§ = new Dictionary();
         }
      }
      
      public function §6<§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
      }
      
      public static function §?!"§(param1:XML, param2:XML) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:XML = null;
         §2D§ = param1;
         §?0§ = param2;
         §9f§.§3$§(§2D§.Item_Materials,§2D§.Material_Damage_Multipliers,§2D§.Material_Velocity_Multipliers);
         §&X§.§^E§(§2D§.Item_Resources_Sounds);
         §#"§.§#!!§(§2D§.Item_Shapes);
         if(_loc7_)
         {
            §@!2§.§'y§(§?0§.Backgrounds);
            if(!(_loc6_ && param1))
            {
               §+q§ = new Dictionary();
               if(_loc7_ || §6<§)
               {
                  addr76:
                  §7#§ = new Array();
               }
            }
            for each(_loc3_ in §2D§.Items.Item)
            {
               if(!(_loc6_ && §6<§))
               {
                  §7#§.push(_loc3_.@id);
                  if(_loc7_)
                  {
                     addItem(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
                  }
               }
            }
            if(_loc7_)
            {
               §]z§(§2D§.SoundChannels);
            }
            return;
         }
         §§goto(addr76);
      }
      
      public static function addItem(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(!_loc14_)
         {
            §+q§[param1.toLowerCase()] = new each(param1,param2,§9f§.§0!+§(param3),§&X§.§]!=§(param4),!!param5 ? §#"§.§3@§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public static function §6H§(param1:String) : each
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:each = §+q§[param1.toLowerCase()];
         if(_loc3_)
         {
            if(_loc2_ != null)
            {
               if(_loc3_)
               {
                  return _loc2_;
               }
            }
            else
            {
               addr58:
               §§push(§7!+§);
               §§push("WARNING: LevelItem -> getItem request has no return value, this item does not exist: ");
               if(_loc3_ || §6<§)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().log(§§pop());
            }
            return null;
         }
         §§goto(addr58);
      }
      
      public static function §>!@§() : Array
      {
         return §7#§;
      }
      
      public static function §<?§(param1:String) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:each = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §+q§)
         {
            if(!_loc6_)
            {
               if(_loc3_.§8H§.toUpperCase() == param1.toUpperCase())
               {
                  if(_loc7_ || _loc2_)
                  {
                     _loc2_[_loc2_.length] = _loc3_.§1>§;
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public static function §3[§() : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         §§push(_loc2_);
         if(_loc5_ || §6<§)
         {
            §§push(§§pop() * _loc1_.length);
         }
         var _loc3_:int = §§pop() as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §]z§(param1:XMLList) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:XML = null;
         var _loc3_:int = 0;
         var _loc4_:* = param1.Channel;
         for(; §§hasnext(_loc4_,_loc3_); §,!F§.§@o§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume))
         {
            _loc2_ = §§nextvalue(_loc3_,_loc4_);
            if(_loc2_.attribute("name").length() <= 0)
            {
               if(!_loc5_)
               {
                  §7!+§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
                  addr54:
                  if(_loc2_.attribute("maxSound").length() <= 0)
                  {
                     §§push(§7!+§);
                     §§push("WARNING, LevelItems->loadSoundChannels() maxSound is missing: ");
                     if(!_loc5_)
                     {
                        §§push(§§pop() + _loc2_.@name);
                     }
                     §§pop().log(§§pop());
                     if(_loc6_ || §6<§)
                     {
                        addr75:
                        if(_loc2_.attribute("volume").length() > 0)
                        {
                           continue;
                        }
                        if(!_loc6_)
                        {
                           continue;
                        }
                     }
                     §§push(§7!+§);
                     §§push("WARNING, LevelItems->loadSoundChannels() volume is missing: ");
                     if(_loc6_ || §6<§)
                     {
                        §§push(§§pop() + _loc2_.@name);
                     }
                     §§pop().log(§§pop());
                     continue;
                  }
               }
               §§goto(addr75);
            }
            §§goto(addr54);
         }
      }
      
      public static function §3U§(param1:String) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:each = §6H§(param1);
         if(_loc4_ || §6<§)
         {
            if(_loc2_)
            {
               if(_loc4_ || param1)
               {
                  addr58:
                  §§push((_loc2_.material as §5b§).mValues[§5b§.§'!1§] == §5b§.§-!G§);
                  if(!_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr72:
                  §§push(true);
               }
               return §§pop();
            }
            §§goto(addr72);
         }
         §§goto(addr58);
      }
   }
}
