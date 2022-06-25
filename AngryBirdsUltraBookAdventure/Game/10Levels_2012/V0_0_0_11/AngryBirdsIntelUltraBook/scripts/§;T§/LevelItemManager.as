package §;T§
{
   import §6b§.Log;
   import §=?§.SoundEngine;
   import §[m§.LevelThemeBackgroundManager;
   import flash.utils.Dictionary;
   
   public class LevelItemManager
   {
      
      public static var mItemDataTable:XML;
      
      public static var §6E§:XML;
      
      public static var §4!W§:Dictionary;
      
      public static var §"!=§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §4!W§ = new Dictionary();
         }
      }
      
      public function LevelItemManager()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §&N§(param1:XML, param2:XML) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:XML = null;
         if(_loc6_ || param2)
         {
            mItemDataTable = param1;
            loop0:
            while(true)
            {
               §6E§ = param2;
               addr130:
               while(true)
               {
                  LevelItemMaterialManager.§class§(mItemDataTable.Item_Materials,mItemDataTable.Material_Damage_Multipliers,mItemDataTable.Material_Velocity_Multipliers);
                  continue loop0;
               }
            }
         }
         §§goto(addr34);
      }
      
      public static function §<]§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(_loc15_)
         {
            §4!W§[param1.toLowerCase()] = new §5s§(param1,param2,LevelItemMaterialManager.§@!4§(param3),LevelItemSoundResourceManager.§4!d§(param4),Boolean(param5) ? LevelItemShapeManager.§^c§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public static function §&!i§(param1:String) : §5s§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§5s§ = §4!W§[param1.toLowerCase()];
         if(!_loc3_)
         {
            if(_loc2_ == null)
            {
               do
               {
                  §§push(Log);
                  §§push("WARNING: LevelItem -> getItem request has no return value, this item does not exist: ");
                  if(_loc4_ || param1)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
               }
               while(_loc3_);
               
               if(_loc4_ || param1)
               {
                  return null;
                  addr76:
               }
            }
            return _loc2_;
         }
         §§goto(addr76);
      }
      
      public static function §<=§() : Array
      {
         return §"!=§;
      }
      
      public static function §'"§(param1:String) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§5s§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §4!W§)
         {
            if(_loc6_)
            {
               if(_loc3_.§-!@§.toUpperCase() != param1.toUpperCase())
               {
                  continue;
               }
               if(_loc7_)
               {
                  continue;
               }
            }
            _loc2_[_loc2_.length] = _loc3_.§#>§;
         }
         return _loc2_;
      }
      
      public static function §8w§() : String
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
      
      public static function §9!C§(param1:XMLList) : void
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
                  loop1:
                  while(true)
                  {
                     Log.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
                     addr142:
                     while(true)
                     {
                     }
                     loop5:
                     while(true)
                     {
                        if(!(_loc5_ || LevelItemManager))
                        {
                           continue loop1;
                        }
                        while(true)
                        {
                           addr57:
                           loop6:
                           do
                           {
                              if(_loc2_.attribute("volume").length() <= 0)
                              {
                                 loop7:
                                 for(; !_loc6_; if(_loc5_ || LevelItemManager)
                                 {
                                    continue loop6;
                                 })
                                 {
                                    addr76:
                                    if(_loc5_ || LevelItemManager)
                                    {
                                       §§push(Log);
                                       §§push("WARNING, LevelItems->loadSoundChannels() volume is missing: ");
                                       if(_loc5_)
                                       {
                                          §§push(§§pop() + _loc2_.@name);
                                       }
                                       §§pop().log(§§pop());
                                       loop8:
                                       while(true)
                                       {
                                          if(!_loc5_)
                                          {
                                             break loop5;
                                             addr35:
                                          }
                                          while(true)
                                          {
                                             SoundEngine.§#!`§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
                                             if(!_loc6_)
                                             {
                                                continue loop7;
                                             }
                                             continue loop8;
                                          }
                                          continue loop6;
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(Log);
                                       §§push("WARNING, LevelItems->loadSoundChannels() maxSound is missing: ");
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop() + _loc2_.@name);
                                       }
                                       §§pop().log(§§pop());
                                       break loop7;
                                       §§goto(addr76);
                                    }
                                 }
                                 continue loop5;
                              }
                              §§goto(addr35);
                           }
                           while(false);
                           
                           continue loop0;
                        }
                     }
                     §§goto(addr142);
                  }
               }
               while(true)
               {
                  if(_loc2_.attribute("maxSound").length() <= 0)
                  {
                     §§goto(addr103);
                  }
                  §§goto(addr57);
                  §§goto(addr142);
               }
            }
            §§goto(addr130);
         }
      }
      
      public static function §&x§(param1:String) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§5s§ = §&!i§(param1);
         if(!_loc4_)
         {
            §§push(Boolean(_loc2_));
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     §§push((_loc2_.material as LevelItemMaterial).§"!I§[LevelItemMaterial.§&y§] == LevelItemMaterial.§!!&§);
                     if(!(_loc4_ && _loc2_))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr72:
                     §§push(true);
                  }
               }
               §§goto(addr72);
            }
            return §§pop();
         }
         §§goto(addr72);
      }
   }
}
