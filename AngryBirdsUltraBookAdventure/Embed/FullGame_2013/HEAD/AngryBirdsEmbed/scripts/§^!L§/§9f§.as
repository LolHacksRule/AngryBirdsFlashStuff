package §^!L§
{
   import §3a§.§7!+§;
   
   public class §9f§
   {
      
      public static var §'!5§:Array;
       
      
      public function §9f§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §3$§(param1:XMLList, param2:XMLList, param3:XMLList) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:XML = null;
         if(_loc8_ || param2)
         {
            §'!5§ = new Array();
         }
         for each(_loc4_ in param1.Material)
         {
            if(_loc4_.attribute("bodyType").length() <= 0)
            {
               if(!(_loc7_ && param3))
               {
                  §§push(§7!+§);
                  §§push("WARNING, LevelItemMaterials constructor, bodyType is missing for material: ");
                  if(!_loc7_)
                  {
                     §§push(§§pop() + _loc4_.@id);
                  }
                  §§pop().log(§§pop());
                  if(_loc8_ || param3)
                  {
                     addr72:
                     if(_loc4_.attribute("density").length() <= 0)
                     {
                        if(_loc8_)
                        {
                           §§push(§7!+§);
                           §§push("WARNING, LevelItemMaterials constructor, density is missing for material: ");
                           if(!(_loc7_ && param2))
                           {
                              §§push(§§pop() + _loc4_.@id);
                           }
                           §§pop().log(§§pop());
                           addr93:
                           if(_loc4_.attribute("friction").length() <= 0)
                           {
                              §§push(§7!+§);
                              §§push("WARNING, LevelItemMaterials constructor, friction is missing for material: ");
                              if(!_loc7_)
                              {
                                 §§push(§§pop() + _loc4_.@id);
                              }
                              §§pop().log(§§pop());
                           }
                           if(_loc4_.attribute("restitution").length() <= 0)
                           {
                              addr123:
                              §§push(§7!+§);
                              §§push("WARNING, LevelItemMaterials constructor, restitution is missing for material: ");
                              if(_loc8_)
                              {
                                 §§push(§§pop() + _loc4_.@id);
                              }
                              §§pop().log(§§pop());
                           }
                           if(_loc4_.attribute("strength").length() <= 0)
                           {
                              if(!(_loc8_ || param2))
                              {
                                 continue;
                              }
                              §§push(§7!+§);
                              §§push("WARNING, LevelItemMaterials constructor, strength is missing for material: ");
                              if(!(_loc7_ && param2))
                              {
                                 §§push(§§pop() + _loc4_.@id);
                              }
                              §§pop().log(§§pop());
                           }
                           if(_loc4_.attribute("defence").length() <= 0)
                           {
                              if(_loc8_ || param2)
                              {
                                 addr170:
                                 §§push(§7!+§);
                                 §§push("WARNING, LevelItemMaterials constructor, defence is missing for material: ");
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop() + _loc4_.@id);
                                 }
                                 §§pop().log(§§pop());
                                 if(_loc8_ || param2)
                                 {
                                    addr185:
                                    if(_loc4_.attribute("colors").length() <= 0)
                                    {
                                       addr191:
                                       §§push(§7!+§);
                                       §§push("WARNING, LevelItemMaterials constructor, colors is missing for material: ");
                                       if(!_loc7_)
                                       {
                                          §§push(§§pop() + _loc4_.@id);
                                       }
                                       §§pop().log(§§pop());
                                    }
                                    §^!6§(_loc4_.@id,_loc4_.@bodyType,_loc4_.@density,_loc4_.@friction,_loc4_.@restitution,_loc4_.@strength,_loc4_.@defence,_loc4_.@colors);
                                    continue;
                                 }
                                 §§goto(addr191);
                              }
                           }
                           §§goto(addr185);
                        }
                        §§goto(addr123);
                     }
                  }
                  §§goto(addr93);
               }
               §§goto(addr170);
            }
            §§goto(addr72);
         }
         if(_loc8_)
         {
            §@r§(param2,param3);
         }
      }
      
      public static function §@r§(param1:XMLList, param2:XMLList) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:XML = null;
         var _loc4_:§5b§ = null;
         var _loc5_:int = 0;
         var _loc6_:* = param1.Material;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc6_,_loc5_));
            if(!_loc7_)
            {
               if(§§pop())
               {
                  _loc3_ = §§nextvalue(_loc5_,_loc6_);
                  if(_loc4_ = §0!+§(_loc3_.@id))
                  {
                     if(!_loc7_)
                     {
                        _loc4_.§ s§(_loc3_);
                        if(!_loc8_)
                        {
                           continue;
                        }
                     }
                  }
                  else
                  {
                     §§push(§7!+§);
                     §§push("WARNING! Damage material multiplier with unknown material!!");
                     if(_loc8_ || param1)
                     {
                        §§push(§§pop() + _loc3_.@id);
                     }
                     §§pop().log(§§pop());
                  }
                  continue;
               }
               if(_loc8_)
               {
                  if(_loc8_)
                  {
                     if(!(_loc7_ && §9f§))
                     {
                        _loc5_ = 0;
                        if(_loc8_)
                        {
                           addr96:
                           _loc6_ = param2.Material;
                           while(true)
                           {
                              §§push(§§hasnext(_loc6_,_loc5_));
                              break loop0;
                           }
                           addr146:
                        }
                     }
                     return;
                  }
               }
               §§goto(addr96);
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc3_ = §§nextvalue(_loc5_,_loc6_);
               if(_loc4_ = §0!+§(_loc3_.@id))
               {
                  if(!_loc7_)
                  {
                     _loc4_.§0N§(_loc3_);
                     if(_loc7_ && param2)
                     {
                     }
                  }
               }
               else
               {
                  §§push(§7!+§);
                  §§push("WARNING! Velocity material multiplier with unknown material!!");
                  if(_loc8_)
                  {
                     §§push(§§pop() + _loc3_.@id);
                  }
                  §§pop().log(§§pop());
               }
               continue;
            }
            §§goto(addr96);
         }
      }
      
      public static function §^!6§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(!_loc9_)
         {
            §'!5§[§'!5§.length] = new §5b§(param1,param2,param3,param4,param5,param6,param7,param8);
         }
      }
      
      public static function §0!+§(param1:String) : §5b§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         do
         {
            if(_loc2_ >= §'!5§.length)
            {
               if(_loc3_)
               {
                  §§push(§7!+§);
                  §§push("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: ");
                  if(_loc3_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
                  break;
               }
               break;
            }
            if((§'!5§[_loc2_] as §5b§).mName.toLowerCase() == param1.toLowerCase())
            {
               if(_loc3_ || _loc2_)
               {
                  return §5b§(§'!5§[_loc2_]);
               }
               break;
            }
            _loc2_++;
         }
         while(_loc3_ || param1);
         
         return null;
      }
   }
}
