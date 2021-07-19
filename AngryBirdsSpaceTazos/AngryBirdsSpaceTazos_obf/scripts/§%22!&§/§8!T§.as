package §"!&§
{
   import § !Y§.§[!%§;
   import §0N§.§2!@§;
   
   public class §8!T§
   {
       
      
      protected var §9!>§:§[!%§;
      
      public function §8!T§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public function §#K§(param1:XMLList, param2:XMLList, param3:XMLList) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:XML = null;
         if(_loc7_)
         {
            this.§9!>§ = new §[!%§();
         }
         loop0:
         for each(_loc4_ in param1.Material)
         {
            if(_loc4_.attribute("bodyType").length() <= 0)
            {
               if(!_loc8_)
               {
                  §2!@§.log("WARNING, LevelItemMaterials constructor, bodyType is missing for material: " + _loc4_.@id);
                  if(_loc7_ || this)
                  {
                     addr212:
                     if(_loc4_.attribute("density").length() <= 0)
                     {
                        addr218:
                        while(true)
                        {
                           §2!@§.log("WARNING, LevelItemMaterials constructor, density is missing for material: " + _loc4_.@id);
                           addr224:
                           while(true)
                           {
                           }
                        }
                        addr218:
                     }
                     while(true)
                     {
                        if(_loc4_.attribute("friction").length() <= 0)
                        {
                           addr205:
                           while(true)
                           {
                              §2!@§.log("WARNING, LevelItemMaterials constructor, friction is missing for material: " + _loc4_.@id);
                              addr211:
                              while(true)
                              {
                              }
                           }
                           addr205:
                        }
                        loop5:
                        while(true)
                        {
                           if(_loc4_.attribute("restitution").length() <= 0)
                           {
                              while(true)
                              {
                                 §2!@§.log("WARNING, LevelItemMaterials constructor, restitution is missing for material: " + _loc4_.@id);
                                 addr195:
                                 while(true)
                                 {
                                    if(_loc8_)
                                    {
                                       §§goto(addr205);
                                    }
                                 }
                                 continue loop5;
                                 addr130:
                                 if(!(_loc7_ || param3))
                                 {
                                    continue;
                                 }
                                 if(!_loc8_)
                                 {
                                    §2!@§.log("WARNING, LevelItemMaterials constructor, colors is missing for material: " + _loc4_.@id);
                                    loop15:
                                    while(!_loc8_)
                                    {
                                       if(!_loc8_)
                                       {
                                          loop16:
                                          while(true)
                                          {
                                             this.§#%§(_loc4_.@id,§<s§.§`!k§(_loc4_.@bodyType),_loc4_.@density,_loc4_.@friction,_loc4_.@restitution,_loc4_.@strength,_loc4_.@defence,_loc4_.@colors);
                                             if(_loc8_)
                                             {
                                                continue loop15;
                                             }
                                             addr83:
                                             if(!(_loc8_ && param1))
                                             {
                                                addr90:
                                                if(_loc7_ || param1)
                                                {
                                                   if(!(_loc8_ && param1))
                                                   {
                                                      if(false)
                                                      {
                                                         addr106:
                                                         while(true)
                                                         {
                                                            if(_loc4_.attribute("colors").length() > 0)
                                                            {
                                                               continue loop16;
                                                            }
                                                            while(true)
                                                            {
                                                               if(_loc7_ || param2)
                                                               {
                                                                  §§goto(addr130);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §2!@§.log("WARNING, LevelItemMaterials constructor, defence is missing for material: " + _loc4_.@id);
                                                                     break loop15;
                                                                  }
                                                                  addr157:
                                                               }
                                                               §§goto(addr83);
                                                            }
                                                            §§goto(addr195);
                                                         }
                                                         addr106:
                                                      }
                                                      continue loop0;
                                                   }
                                                   §§goto(addr224);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      §§goto(addr90);
                                                   }
                                                   addr179:
                                                }
                                                while(true)
                                                {
                                                   if(_loc4_.attribute("defence").length() <= 0)
                                                   {
                                                      §§goto(addr157);
                                                   }
                                                   §§goto(addr106);
                                                }
                                                addr150:
                                             }
                                             §§goto(addr123);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr195);
                                       }
                                       §§goto(addr205);
                                    }
                                    while(true)
                                    {
                                       §§goto(addr106);
                                    }
                                 }
                                 §§goto(addr218);
                              }
                           }
                           while(true)
                           {
                              if(_loc4_.attribute("strength").length() <= 0)
                              {
                                 if(_loc7_)
                                 {
                                    while(true)
                                    {
                                       §2!@§.log("WARNING, LevelItemMaterials constructor, strength is missing for material: " + _loc4_.@id);
                                    }
                                    addr173:
                                 }
                                 §§goto(addr179);
                              }
                              §§goto(addr150);
                           }
                        }
                     }
                  }
                  §§goto(addr218);
               }
               §§goto(addr173);
            }
            §§goto(addr212);
         }
         if(!_loc8_)
         {
            this.§2!s§(param2,param3);
         }
      }
      
      private function §2!s§(param1:XMLList, param2:XMLList) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:XML = null;
         var _loc4_:§<s§ = null;
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
                  if(_loc4_ = this.getMaterial(_loc3_.@id))
                  {
                     if(_loc8_ || param1)
                     {
                        _loc4_.§0!o§(_loc3_);
                        if(_loc7_)
                        {
                           continue;
                        }
                     }
                  }
                  else
                  {
                     §2!@§.log("WARNING! Damage material multiplier with unknown material!!" + _loc3_.@id);
                  }
                  continue;
               }
               if(!(_loc7_ && param1))
               {
                  if(!(_loc7_ && param1))
                  {
                     if(!_loc7_)
                     {
                        _loc5_ = 0;
                        if(_loc8_)
                        {
                           addr99:
                           _loc6_ = param2.Material;
                           while(true)
                           {
                              §§push(§§hasnext(_loc6_,_loc5_));
                              break loop0;
                           }
                           addr152:
                        }
                     }
                     return;
                  }
               }
               §§goto(addr99);
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc3_ = §§nextvalue(_loc5_,_loc6_);
               if(_loc4_ = this.getMaterial(_loc3_.@id))
               {
                  if(_loc8_ || _loc3_)
                  {
                     _loc4_.§ "$§(_loc3_);
                     if(_loc8_ || this)
                     {
                     }
                  }
               }
               else
               {
                  §2!@§.log("WARNING! Velocity material multiplier with unknown material!!" + _loc3_.@id);
               }
               continue;
            }
            §§goto(addr99);
         }
      }
      
      public function §#%§(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : §<s§
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc9_:§<s§ = new §<s§(param1,param2,param3,param4,param5,param6,param7,param8);
         if(_loc10_)
         {
            this.§9!>§[param1] = _loc9_;
         }
         return _loc9_;
      }
      
      public function getMaterial(param1:String) : §<s§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§<s§ = this.§9!>§[param1] as §<s§;
         if(_loc3_)
         {
            if(!_loc2_)
            {
               loop0:
               while(true)
               {
                  §2!@§.log("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: " + param1);
                  if(!(_loc4_ && this))
                  {
                     break;
                  }
                  addr77:
                  while(true)
                  {
                     continue loop0;
                  }
               }
               if(!(_loc4_ && param1))
               {
                  return null;
               }
            }
            return _loc2_;
         }
         §§goto(addr77);
      }
   }
}
