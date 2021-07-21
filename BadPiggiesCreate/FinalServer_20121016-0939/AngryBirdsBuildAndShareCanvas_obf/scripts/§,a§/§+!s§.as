package §,a§
{
   import §=!M§.§9!P§;
   
   public class §+!s§
   {
      
      public static var §6n§:Array;
       
      
      public function §+!s§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §>J§(param1:XMLList, param2:XMLList, param3:XMLList) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:XML = null;
         if(_loc8_)
         {
            §6n§ = new Array();
         }
         loop0:
         for each(_loc4_ in param1.Material)
         {
            if(_loc4_.attribute("bodyType").length() <= 0)
            {
               if(!_loc7_)
               {
                  §9!P§.log("WARNING, LevelItemMaterials constructor, bodyType is missing for material: " + _loc4_.@id);
                  if(_loc8_ || param1)
                  {
                     addr216:
                     if(_loc4_.attribute("density").length() <= 0)
                     {
                        while(true)
                        {
                           §9!P§.log("WARNING, LevelItemMaterials constructor, density is missing for material: " + _loc4_.@id);
                           addr228:
                           while(true)
                           {
                           }
                        }
                        addr222:
                     }
                     while(true)
                     {
                        if(_loc4_.attribute("friction").length() <= 0)
                        {
                           loop6:
                           while(true)
                           {
                              §9!P§.log("WARNING, LevelItemMaterials constructor, friction is missing for material: " + _loc4_.@id);
                              addr208:
                              loop5:
                              while(true)
                              {
                                 if(_loc8_ || param1)
                                 {
                                    while(true)
                                    {
                                       break loop5;
                                    }
                                    addr215:
                                 }
                                 else
                                 {
                                    §§goto(addr222);
                                 }
                                 continue loop6;
                              }
                           }
                           addr202:
                        }
                        while(true)
                        {
                           if(_loc4_.attribute("restitution").length() <= 0)
                           {
                              while(!_loc7_)
                              {
                                 §9!P§.log("WARNING, LevelItemMaterials constructor, restitution is missing for material: " + _loc4_.@id);
                                 while(_loc8_)
                                 {
                                 }
                                 §§goto(addr208);
                              }
                              §§goto(addr202);
                              addr184:
                           }
                           while(true)
                           {
                              if(_loc4_.attribute("strength").length() <= 0)
                              {
                                 if(_loc8_)
                                 {
                                    if(!(_loc7_ && §+!s§))
                                    {
                                       §9!P§.log("WARNING, LevelItemMaterials constructor, strength is missing for material: " + _loc4_.@id);
                                       loop8:
                                       while(true)
                                       {
                                          addr109:
                                          while(true)
                                          {
                                             if(_loc4_.attribute("defence").length() <= 0)
                                             {
                                                if(_loc8_ || param3)
                                                {
                                                   §9!P§.log("WARNING, LevelItemMaterials constructor, defence is missing for material: " + _loc4_.@id);
                                                }
                                                continue loop8;
                                             }
                                             addr88:
                                             loop11:
                                             do
                                             {
                                                if(_loc4_.attribute("colors").length() <= 0)
                                                {
                                                   addr95:
                                                   while(true)
                                                   {
                                                      §9!P§.log("WARNING, LevelItemMaterials constructor, colors is missing for material: " + _loc4_.@id);
                                                      addr101:
                                                      while(true)
                                                      {
                                                         if(!(_loc8_ || param1))
                                                         {
                                                            continue loop8;
                                                         }
                                                      }
                                                   }
                                                   addr95:
                                                }
                                                while(true)
                                                {
                                                   §;!L§(_loc4_.@id,_loc4_.@bodyType,_loc4_.@density,_loc4_.@friction,_loc4_.@restitution,_loc4_.@strength,_loc4_.@defence,_loc4_.@colors);
                                                   if(!_loc7_)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            continue loop11;
                                                         }
                                                         §§goto(addr192);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr95);
                                                      }
                                                   }
                                                   §§goto(addr101);
                                                }
                                                continue loop8;
                                             }
                                             while(false);
                                             
                                             continue loop0;
                                          }
                                       }
                                       addr176:
                                    }
                                    break;
                                 }
                                 §§goto(addr176);
                              }
                              §§goto(addr109);
                           }
                           §§goto(addr228);
                        }
                     }
                  }
                  §§goto(addr215);
               }
               §§goto(addr95);
            }
            §§goto(addr216);
         }
         if(!(_loc7_ && param3))
         {
            §;5§(param2,param3);
         }
      }
      
      public static function §;5§(param1:XMLList, param2:XMLList) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:XML = null;
         var _loc4_:§+!Z§ = null;
         var _loc5_:int = 0;
         var _loc6_:* = param1.Material;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc6_,_loc5_));
            if(!(_loc8_ && §+!s§))
            {
               if(§§pop())
               {
                  _loc3_ = §§nextvalue(_loc5_,_loc6_);
                  if(_loc4_ = §>!O§(_loc3_.@id))
                  {
                     if(_loc7_ || param1)
                     {
                        _loc4_.§9"#§(_loc3_);
                        if(_loc8_ && §+!s§)
                        {
                           continue;
                        }
                     }
                  }
                  else
                  {
                     §9!P§.log("WARNING! Damage material multiplier with unknown material!!" + _loc3_.@id);
                  }
                  continue;
               }
               if(!(_loc8_ && §+!s§))
               {
                  if(_loc7_ || §+!s§)
                  {
                     if(_loc7_)
                     {
                        _loc5_ = 0;
                        if(_loc7_ || param2)
                        {
                           _loc6_ = param2.Material;
                           while(true)
                           {
                              §§push(§§hasnext(_loc6_,_loc5_));
                              break loop0;
                           }
                           addr164:
                           addr163:
                           addr161:
                        }
                        §§goto(addr164);
                     }
                     return;
                  }
                  §§goto(addr164);
               }
               §§goto(addr163);
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc3_ = §§nextvalue(_loc5_,_loc6_);
               if(_loc4_ = §>!O§(_loc3_.@id))
               {
                  if(!(_loc8_ && param2))
                  {
                     _loc4_.§<!x§(_loc3_);
                     if(_loc8_)
                     {
                        continue;
                     }
                  }
               }
               else
               {
                  §9!P§.log("WARNING! Velocity material multiplier with unknown material!!" + _loc3_.@id);
               }
               continue;
            }
            §§goto(addr164);
         }
      }
      
      public static function §;!L§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(!(_loc9_ && param2))
         {
            §6n§[§6n§.length] = new §+!Z§(param1,param2,param3,param4,param5,param6,param7,param8);
         }
      }
      
      public static function §>!O§(param1:String) : §+!Z§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= §6n§.length)
            {
               if(_loc3_)
               {
                  §9!P§.log("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: " + param1);
               }
               if(_loc4_ && _loc3_)
               {
                  continue;
               }
               if(_loc3_ || param1)
               {
                  if(_loc3_ || _loc3_)
                  {
                     return null;
                  }
                  break;
               }
            }
            else if((§6n§[_loc2_] as §+!Z§).mName.toLowerCase() == param1.toLowerCase())
            {
               break;
            }
            _loc2_++;
         }
         return §+!Z§(§6n§[_loc2_]);
      }
   }
}
