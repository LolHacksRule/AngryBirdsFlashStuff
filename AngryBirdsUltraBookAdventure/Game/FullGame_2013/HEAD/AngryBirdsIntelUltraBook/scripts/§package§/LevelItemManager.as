package §package§
{
   import §!!0§.SoundEngine;
   import §<u§.Log;
   import §>=§.LevelThemeBackgroundManager;
   import flash.utils.Dictionary;
   
   public class LevelItemManager
   {
      
      public static var mItemDataTable:XML;
      
      public static var §,w§:XML;
      
      public static var §]6§:Dictionary;
      
      public static var §+U§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || LevelItemManager)
         {
            §]6§ = new Dictionary();
         }
      }
      
      public function LevelItemManager()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function § !i§(param1:XML, param2:XML) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:XML = null;
         if(_loc7_)
         {
            mItemDataTable = param1;
            while(true)
            {
               §,w§ = param2;
               loop1:
               while(true)
               {
                  LevelItemMaterialManager.§5y§(mItemDataTable.Item_Materials,mItemDataTable.Material_Damage_Multipliers,mItemDataTable.Material_Velocity_Multipliers);
                  while(true)
                  {
                     LevelItemSoundResourceManager.§>E§(mItemDataTable.Item_Resources_Sounds);
                     loop3:
                     for(; _loc7_; if(_loc6_ && param2)
                     {
                        continue;
                     })
                     {
                        LevelItemShapeManager.§5!'§(mItemDataTable.Item_Shapes);
                        while(true)
                        {
                           LevelThemeBackgroundManager.§[B§(§,w§.Backgrounds);
                           loop5:
                           while(true)
                           {
                              addr46:
                              while(true)
                              {
                                 §]6§ = new Dictionary();
                                 addr51:
                                 while(!_loc6_)
                                 {
                                    continue loop1;
                                 }
                                 continue loop5;
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
               if(_loc6_ && param1)
               {
                  continue;
               }
               §+U§ = new Array();
               if(!(_loc6_ && param1))
               {
                  if(_loc7_)
                  {
                     §§goto(addr37);
                  }
                  §§goto(addr85);
               }
               §§goto(addr51);
            }
         }
         while(false)
         {
            §§goto(addr46);
         }
         for each(_loc3_ in mItemDataTable.Items.Item)
         {
            if(_loc7_ || param1)
            {
               §+U§.push(_loc3_.@id);
               if(!_loc6_)
               {
                  §1q§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
               }
            }
         }
         if(_loc7_ || param1)
         {
            §else §(mItemDataTable.SoundChannels);
         }
      }
      
      public static function §1q§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(_loc14_)
         {
            §]6§[param1.toLowerCase()] = new §2Y§(param1,param2,LevelItemMaterialManager.§#!8§(param3),LevelItemSoundResourceManager.§7!6§(param4),Boolean(param5) ? LevelItemShapeManager.§1]§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public static function §-`§(param1:String) : §2Y§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§2Y§ = §]6§[param1.toLowerCase()];
         if(!(_loc4_ && param1))
         {
            if(_loc2_ == null)
            {
               do
               {
                  §§push(Log);
                  §§push("WARNING: LevelItem -> getItem request has no return value, this item does not exist: ");
                  if(!(_loc4_ && LevelItemManager))
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
               }
               while(!_loc3_);
               
               if(_loc3_ || param1)
               {
                  return null;
               }
            }
         }
         return _loc2_;
      }
      
      public static function §2L§() : Array
      {
         return §+U§;
      }
      
      public static function § if§(param1:String) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§2Y§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §]6§)
         {
            if(_loc7_ || LevelItemManager)
            {
               if(_loc3_.§[L§.toUpperCase() == param1.toUpperCase())
               {
                  if(_loc7_ || param1)
                  {
                     _loc2_[_loc2_.length] = _loc3_.§ I§;
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public static function §;i§() : String
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
      
      public static function §else §(param1:XMLList) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:XML = null;
         var _loc3_:int = 0;
         loop0:
         for each(_loc2_ in param1.Channel)
         {
            if(!(_loc6_ && _loc3_))
            {
               if(_loc2_.attribute("name").length() <= 0)
               {
                  loop1:
                  while(true)
                  {
                     Log.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
                     addr152:
                     addr108:
                     while(true)
                     {
                     }
                     loop4:
                     while(true)
                     {
                        if(_loc6_ && param1)
                        {
                           continue loop1;
                        }
                        §§push(Log);
                        §§push("WARNING, LevelItems->loadSoundChannels() maxSound is missing: ");
                        if(_loc5_ || _loc2_)
                        {
                           §§push(§§pop() + _loc2_.@name);
                        }
                        §§pop().log(§§pop());
                        loop5:
                        while(true)
                        {
                           addr55:
                           loop6:
                           while(true)
                           {
                              if(_loc2_.attribute("volume").length() <= 0)
                              {
                                 if(!_loc6_)
                                 {
                                    continue loop4;
                                 }
                                 addr98:
                                 while(_loc5_)
                                 {
                                 }
                                 continue loop5;
                                 addr98:
                              }
                              while(true)
                              {
                                 SoundEngine.§ Q§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 §§goto(addr98);
                              }
                              addr53:
                              while(false)
                              {
                                 continue loop6;
                              }
                              continue loop0;
                           }
                        }
                     }
                     §§goto(addr152);
                  }
               }
               while(true)
               {
                  if(_loc2_.attribute("maxSound").length() <= 0)
                  {
                     §§goto(addr108);
                  }
                  §§goto(addr55);
                  §§goto(addr152);
               }
            }
            §§goto(addr53);
         }
      }
      
      public static function §1,§(param1:String) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§2Y§ = §-`§(param1);
         if(!(_loc3_ && LevelItemManager))
         {
            §§push(Boolean(_loc2_));
            if(!(_loc3_ && LevelItemManager))
            {
               if(§§pop())
               {
                  if(_loc4_ || _loc3_)
                  {
                     addr66:
                     §§push((_loc2_.material as LevelItemMaterial).§>q§[LevelItemMaterial.§+o§] == LevelItemMaterial.§>s§);
                     if(!_loc3_)
                     {
                        return §§pop();
                     }
                     §§goto(addr84);
                  }
                  §§goto(addr84);
               }
               §§push(true);
            }
            addr84:
            return §§pop();
         }
         §§goto(addr66);
      }
   }
}
