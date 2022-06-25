package §>o§
{
   import §+!r§.§@!a§;
   import §1!T§.§6!H§;
   import §6z§.§[g§;
   import flash.utils.Dictionary;
   
   public class §+!4§
   {
      
      public static var §0!3§:XML;
      
      public static var §3!]§:XML;
      
      public static var §0!i§:Dictionary;
      
      public static var §@!2§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §0!i§ = new Dictionary();
         }
      }
      
      public function §+!4§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §`!5§(param1:XML, param2:XML) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:XML = null;
         if(!_loc6_)
         {
            §0!3§ = param1;
            loop0:
            while(true)
            {
               §3!]§ = param2;
               while(true)
               {
                  §+E§.§ -§(§0!3§.Item_Materials,§0!3§.Material_Damage_Multipliers,§0!3§.Material_Velocity_Multipliers);
                  while(!_loc6_)
                  {
                     §4!m§.§7J§(§0!3§.Item_Resources_Sounds);
                     loop3:
                     while(_loc7_ || _loc3_)
                     {
                        §%6§.§3@§(§0!3§.Item_Shapes);
                        loop4:
                        while(true)
                        {
                           §@!a§.§+T§(§3!]§.Backgrounds);
                           while(_loc7_)
                           {
                              while(true)
                              {
                                 §0!i§ = new Dictionary();
                                 do
                                 {
                                    §@!2§ = new Array();
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
      
      public static function §9!x§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(_loc14_)
         {
            §0!i§[param1.toLowerCase()] = new §8!4§(param1,param2,§+E§.§#?§(param3),§4!m§.§3!n§(param4),!!param5 ? §%6§.§>1§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public static function § !`§(param1:String) : §8!4§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§8!4§ = §0!i§[param1.toLowerCase()];
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
               §§push(§[g§);
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
      
      public static function §,!o§() : Array
      {
         return §@!2§;
      }
      
      public static function §@!K§(param1:String) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§8!4§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §0!i§)
         {
            if(_loc7_)
            {
               if(_loc3_.§5H§.toUpperCase() == param1.toUpperCase())
               {
                  if(!(_loc6_ && §+!4§))
                  {
                     _loc2_[_loc2_.length] = _loc3_.§@!p§;
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public static function §+!K§() : String
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
      
      public static function §#!?§(param1:XMLList) : void
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
                     §[g§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
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
                        §§push(§[g§);
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
                           §§push(§[g§);
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
                        §6!H§.§^!s§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
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
      
      public static function §'D§(param1:String) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§8!4§ = § !`§(param1);
         if(_loc3_ || param1)
         {
            if(_loc2_)
            {
               if(_loc3_ || §+!4§)
               {
                  addr57:
                  §§push((_loc2_.material as §"!e§).§-!j§[§"!e§.§-R§] == §"!e§.§[v§);
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
