package §-d§
{
   import §"x§.§-8§;
   import §5!c§.§9'§;
   import §@^§.§"i§;
   import flash.utils.Dictionary;
   
   public class §%d§
   {
      
      public static var §-p§:XML;
      
      public static var §0W§:XML;
      
      public static var §6!§:Dictionary;
      
      public static var §>O§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §6!§ = new Dictionary();
         }
      }
      
      public function §%d§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §-#§(param1:XML, param2:XML) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:XML = null;
         if(!_loc6_)
         {
            §-p§ = param1;
            loop0:
            while(true)
            {
               §0W§ = param2;
               while(true)
               {
                  §?!G§.§7!t§(§-p§.Item_Materials,§-p§.Material_Damage_Multipliers,§-p§.Material_Velocity_Multipliers);
                  while(!_loc6_)
                  {
                     §3!#§.§-v§(§-p§.Item_Resources_Sounds);
                     loop3:
                     while(_loc7_ || _loc3_)
                     {
                        §[B§.§0!%§(§-p§.Item_Shapes);
                        loop4:
                        while(true)
                        {
                           §"i§.§0!4§(§0W§.Backgrounds);
                           while(_loc7_)
                           {
                              while(true)
                              {
                                 §6!§ = new Dictionary();
                                 do
                                 {
                                    §>O§ = new Array();
                                 }
                                 while(!_loc7_);
                                 
                                 if(!_loc7_)
                                 {
                                    break;
                                 }
                                 continue loop4;
                              }
                           }
                           continue loop3;
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr41);
      }
      
      public static function §?!J§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(_loc14_)
         {
            §6!§[param1.toLowerCase()] = new §>r§(param1,param2,§?!G§.§<!L§(param3),§3!#§.§?!F§(param4),!!param5 ? §[B§.§8X§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public static function §4!^§(param1:String) : §>r§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§>r§ = §6!§[param1.toLowerCase()];
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ != null)
            {
               if(_loc3_ || _loc3_)
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
               §§push(§-8§);
               §§push("WARNING: LevelItem -> getItem request has no return value, this item does not exist: ");
               if(!(_loc4_ && _loc2_))
               {
                  §§push(§§pop() + param1);
               }
               §§pop().log(§§pop());
               if(_loc3_)
               {
                  break;
               }
               §§goto(addr83);
            }
            return null;
         }
         §§goto(addr83);
      }
      
      public static function §,!#§() : Array
      {
         return §>O§;
      }
      
      public static function §[e§(param1:String) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§>r§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §6!§)
         {
            if(_loc7_)
            {
               if(_loc3_.§0!R§.toUpperCase() == param1.toUpperCase())
               {
                  if(!(_loc6_ && §%d§))
                  {
                     _loc2_[_loc2_.length] = _loc3_.§^r§;
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public static function §?!f§() : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         §§push(_loc2_);
         if(_loc6_ || _loc3_)
         {
            §§push(§§pop() * _loc1_.length);
         }
         var _loc3_:int = §§pop() as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §7!'§(param1:XMLList) : void
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
                  if(_loc5_ || _loc2_)
                  {
                     §-8§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
                     addr139:
                     while(true)
                     {
                     }
                     addr139:
                  }
                  §§goto(addr139);
               }
               loop1:
               while(true)
               {
                  if(_loc2_.attribute("maxSound").length() <= 0)
                  {
                     if(_loc5_ || _loc3_)
                     {
                        §§push(§-8§);
                        §§push("WARNING, LevelItems->loadSoundChannels() maxSound is missing: ");
                        if(_loc5_)
                        {
                           §§push(§§pop() + _loc2_.@name);
                        }
                        §§pop().log(§§pop());
                     }
                     while(true)
                     {
                     }
                     addr122:
                  }
                  loop3:
                  while(true)
                  {
                     if(_loc2_.attribute("volume").length() <= 0)
                     {
                        while(!_loc6_)
                        {
                           §§push(§-8§);
                           §§push("WARNING, LevelItems->loadSoundChannels() volume is missing: ");
                           if(_loc5_ || _loc2_)
                           {
                              §§push(§§pop() + _loc2_.@name);
                           }
                           §§pop().log(§§pop());
                           while(!_loc6_)
                           {
                           }
                           continue loop1;
                           if(_loc5_ || param1)
                           {
                              addr53:
                              if(true)
                              {
                                 break loop3;
                              }
                              continue loop3;
                           }
                        }
                        §§goto(addr122);
                     }
                     while(true)
                     {
                        §9'§.§+!S§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
                        if(_loc5_)
                        {
                           §§goto(addr46);
                        }
                        §§goto(addr87);
                     }
                     §§goto(addr53);
                  }
                  continue loop0;
               }
            }
            §§goto(addr139);
         }
      }
      
      public static function §["§(param1:String) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§>r§ = §4!^§(param1);
         if(_loc3_ || param1)
         {
            if(_loc2_)
            {
               if(_loc3_ || §%d§)
               {
                  addr57:
                  §§push((_loc2_.material as §3!F§).§>!x§[§3!F§.§]!,§] == §3!F§.§!!k§);
                  if(!_loc4_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr71:
                  return true;
               }
               return §§pop();
            }
            §§goto(addr71);
         }
         §§goto(addr57);
      }
   }
}
