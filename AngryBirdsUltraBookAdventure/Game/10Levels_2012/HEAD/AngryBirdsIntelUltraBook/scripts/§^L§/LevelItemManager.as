package §^L§
{
   import §'N§.Log;
   import §3!j§.SoundEngine;
   import §[a§.LevelThemeBackgroundManager;
   import flash.utils.Dictionary;
   
   public class LevelItemManager
   {
      
      public static var mItemDataTable:XML;
      
      public static var §!!e§:XML;
      
      public static var § !]§:Dictionary;
      
      public static var §5!i§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || LevelItemManager)
         {
            § !]§ = new Dictionary();
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
      
      public static function §&a§(param1:XML, param2:XML) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:XML = null;
         if(_loc7_)
         {
            mItemDataTable = param1;
            while(true)
            {
               §!!e§ = param2;
               loop1:
               while(true)
               {
                  LevelItemMaterialManager.§>P§(mItemDataTable.Item_Materials,mItemDataTable.Material_Damage_Multipliers,mItemDataTable.Material_Velocity_Multipliers);
                  while(true)
                  {
                     LevelItemSoundResourceManager.§^>§(mItemDataTable.Item_Resources_Sounds);
                     loop3:
                     for(; _loc7_; if(_loc6_ && param2)
                     {
                        continue;
                     })
                     {
                        LevelItemShapeManager.§switch§(mItemDataTable.Item_Shapes);
                        while(true)
                        {
                           LevelThemeBackgroundManager.§@@§(§!!e§.Backgrounds);
                           loop5:
                           while(true)
                           {
                              addr46:
                              while(true)
                              {
                                 § !]§ = new Dictionary();
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
               §5!i§ = new Array();
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
               §5!i§.push(_loc3_.@id);
               if(!_loc6_)
               {
                  §"!&§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
               }
            }
         }
         if(_loc7_ || param1)
         {
            §"S§(mItemDataTable.SoundChannels);
         }
      }
      
      public static function §"!&§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(_loc14_)
         {
            § !]§[param1.toLowerCase()] = new §0!J§(param1,param2,LevelItemMaterialManager.§&y§(param3),LevelItemSoundResourceManager.§5p§(param4),Boolean(param5) ? LevelItemShapeManager.§'!,§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public static function §><§(param1:String) : §0!J§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§0!J§ = § !]§[param1.toLowerCase()];
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
      
      public static function §#!E§() : Array
      {
         return §5!i§;
      }
      
      public static function §5!0§(param1:String) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§0!J§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in § !]§)
         {
            if(_loc7_ || LevelItemManager)
            {
               if(_loc3_.§`5§.toUpperCase() == param1.toUpperCase())
               {
                  if(_loc7_ || param1)
                  {
                     _loc2_[_loc2_.length] = _loc3_.§4!W§;
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public static function §4y§() : String
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
      
      public static function §"S§(param1:XMLList) : void
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
                                 SoundEngine.§"!"§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
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
      
      public static function §,d§(param1:String) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§0!J§ = §><§(param1);
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
                     §§push((_loc2_.material as LevelItemMaterial).§%j§[LevelItemMaterial.§?!3§] == LevelItemMaterial.§>Z§);
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
