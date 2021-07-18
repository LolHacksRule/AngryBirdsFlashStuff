package §-f§
{
   import §+!c§.§;!=§;
   
   public class §3!!§
   {
      
      public static var §'^§:Array;
       
      
      public function §3!!§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §"!"§(param1:XMLList, param2:XMLList, param3:XMLList) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:XML = null;
         if(!(_loc8_ && param2))
         {
            §'^§ = new Array();
         }
         loop0:
         for each(_loc4_ in param1.Material)
         {
            if(_loc4_.attribute("bodyType").length() <= 0)
            {
               if(!_loc8_)
               {
                  §§push(§;!=§);
                  §§push("WARNING, LevelItemMaterials constructor, bodyType is missing for material: ");
                  if(!_loc8_)
                  {
                     §§push(§§pop() + _loc4_.@id);
                  }
                  §§pop().log(§§pop());
                  if(!_loc8_)
                  {
                     addr242:
                     if(_loc4_.attribute("density").length() <= 0)
                     {
                        while(true)
                        {
                           §§push(§;!=§);
                           §§push("WARNING, LevelItemMaterials constructor, density is missing for material: ");
                           if(!(_loc8_ && §3!!§))
                           {
                              §§push(§§pop() + _loc4_.@id);
                           }
                           §§pop().log(§§pop());
                           addr271:
                           while(true)
                           {
                           }
                        }
                        addr248:
                     }
                     loop15:
                     while(true)
                     {
                        if(_loc4_.attribute("friction").length() <= 0)
                        {
                           while(true)
                           {
                              §§push(§;!=§);
                              §§push("WARNING, LevelItemMaterials constructor, friction is missing for material: ");
                              if(_loc7_ || param1)
                              {
                                 §§push(§§pop() + _loc4_.@id);
                              }
                              §§pop().log(§§pop());
                              addr237:
                              while(_loc7_)
                              {
                                 if(_loc7_)
                                 {
                                    while(true)
                                    {
                                    }
                                    addr241:
                                 }
                                 else
                                 {
                                    §§goto(addr248);
                                 }
                              }
                              continue loop15;
                           }
                           addr224:
                        }
                        while(true)
                        {
                           if(_loc4_.attribute("restitution").length() <= 0)
                           {
                              while(true)
                              {
                                 §§push(§;!=§);
                                 §§push("WARNING, LevelItemMaterials constructor, restitution is missing for material: ");
                                 if(!(_loc8_ && param3))
                                 {
                                    §§push(§§pop() + _loc4_.@id);
                                 }
                                 §§pop().log(§§pop());
                                 addr216:
                                 while(true)
                                 {
                                 }
                              }
                              addr203:
                           }
                           while(true)
                           {
                              if(_loc4_.attribute("strength").length() <= 0)
                              {
                                 loop6:
                                 while(_loc7_ || param1)
                                 {
                                    §§push(§;!=§);
                                    §§push("WARNING, LevelItemMaterials constructor, strength is missing for material: ");
                                    if(_loc7_)
                                    {
                                       §§push(§§pop() + _loc4_.@id);
                                    }
                                    §§pop().log(§§pop());
                                    loop7:
                                    while(true)
                                    {
                                       addr163:
                                       loop9:
                                       while(true)
                                       {
                                          if(_loc7_ || §3!!§)
                                          {
                                             if(!_loc7_)
                                             {
                                                break;
                                                addr97:
                                             }
                                             do
                                             {
                                                if(_loc4_.attribute("colors").length() <= 0)
                                                {
                                                   if(!(_loc8_ && param3))
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      if(_loc7_ || param1)
                                                      {
                                                         §§push(§;!=§);
                                                         §§push("WARNING, LevelItemMaterials constructor, colors is missing for material: ");
                                                         if(!(_loc8_ && param2))
                                                         {
                                                            §§push(§§pop() + _loc4_.@id);
                                                         }
                                                         §§pop().log(§§pop());
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr237);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr203);
                                                   }
                                                   addr143:
                                                }
                                                while(true)
                                                {
                                                   §3!^§(_loc4_.@id,_loc4_.@bodyType,_loc4_.@density,_loc4_.@friction,_loc4_.@restitution,_loc4_.@strength,_loc4_.@defence,_loc4_.@colors);
                                                   if(!(_loc8_ && §3!!§))
                                                   {
                                                      continue loop9;
                                                   }
                                                   §§goto(addr143);
                                                }
                                             }
                                             while(false);
                                             
                                             continue loop0;
                                          }
                                          continue loop7;
                                       }
                                       §§goto(addr216);
                                    }
                                 }
                                 §§goto(addr224);
                              }
                              while(true)
                              {
                                 if(_loc4_.attribute("defence").length() <= 0)
                                 {
                                    if(_loc7_)
                                    {
                                       §§push(§;!=§);
                                       §§push("WARNING, LevelItemMaterials constructor, defence is missing for material: ");
                                       if(!_loc8_)
                                       {
                                          §§push(§§pop() + _loc4_.@id);
                                       }
                                       §§pop().log(§§pop());
                                    }
                                    §§goto(addr163);
                                 }
                                 §§goto(addr97);
                                 §§goto(addr195);
                              }
                           }
                        }
                     }
                     addr61:
                  }
                  §§goto(addr241);
               }
               §§goto(addr61);
            }
            §§goto(addr242);
         }
         if(_loc7_ || §3!!§)
         {
            §2!4§(param2,param3);
         }
      }
      
      public static function §2!4§(param1:XMLList, param2:XMLList) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:XML = null;
         var _loc4_:§@!M§ = null;
         var _loc5_:int = 0;
         var _loc6_:* = param1.Material;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc6_,_loc5_));
            if(_loc8_)
            {
               if(§§pop())
               {
                  _loc3_ = §§nextvalue(_loc5_,_loc6_);
                  if(_loc4_ = §%!S§(_loc3_.@id))
                  {
                     if(_loc8_ || param2)
                     {
                        _loc4_.§5g§(_loc3_);
                        if(!_loc8_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(§;!=§);
                     §§push("WARNING! Damage material multiplier with unknown material!!");
                     if(_loc8_ || §3!!§)
                     {
                        §§push(§§pop() + _loc3_.@id);
                     }
                     §§pop().log(§§pop());
                  }
                  continue;
               }
               if(_loc8_)
               {
                  if(!_loc7_)
                  {
                     if(_loc8_)
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
                           addr151:
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
               if(_loc4_ = §%!S§(_loc3_.@id))
               {
                  if(_loc8_)
                  {
                     _loc4_.§7!Y§(_loc3_);
                     if(_loc8_ || _loc3_)
                     {
                     }
                  }
               }
               else
               {
                  §§push(§;!=§);
                  §§push("WARNING! Velocity material multiplier with unknown material!!");
                  if(!(_loc7_ && param2))
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
      
      public static function §3!^§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(!(_loc10_ && param1))
         {
            §'^§[§'^§.length] = new §@!M§(param1,param2,param3,param4,param5,param6,param7,param8);
         }
      }
      
      public static function §%!S§(param1:String) : §@!M§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= §'^§.length)
            {
               if(_loc4_ || param1)
               {
                  §§push(§;!=§);
                  §§push("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: ");
                  if(_loc4_ || _loc2_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
               }
               if(_loc4_ || §3!!§)
               {
                  return null;
               }
               while(!_loc4_)
               {
                  while(true)
                  {
                  }
               }
               continue;
               addr79:
            }
            else if((§'^§[_loc2_] as §@!M§).mName.toLowerCase() == param1.toLowerCase())
            {
               if(!(_loc3_ && §3!!§))
               {
                  break;
               }
               §§goto(addr107);
            }
            while(true)
            {
               _loc2_++;
               §§goto(addr79);
            }
         }
         return §@!M§(§'^§[_loc2_]);
      }
   }
}
