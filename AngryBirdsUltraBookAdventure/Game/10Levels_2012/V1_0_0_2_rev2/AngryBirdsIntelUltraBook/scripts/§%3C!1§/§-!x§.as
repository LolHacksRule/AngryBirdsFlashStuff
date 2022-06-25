package §<!1§
{
   import §^_§.§!>§;
   
   public class §-!x§
   {
      
      public static var §<]§:Array;
       
      
      public function §-!x§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §0b§(param1:XMLList, param2:XMLList, param3:XMLList) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:XML = null;
         if(!(_loc8_ && param1))
         {
            §<]§ = new Array();
         }
         loop0:
         for each(_loc4_ in param1.Material)
         {
            if(_loc4_.attribute("bodyType").length() <= 0)
            {
               if(_loc7_)
               {
                  §§push(§!>§);
                  §§push("WARNING, LevelItemMaterials constructor, bodyType is missing for material: ");
                  if(_loc7_)
                  {
                     §§push(§§pop() + _loc4_.@id);
                  }
                  §§pop().log(§§pop());
                  if(_loc7_)
                  {
                     addr230:
                     if(_loc4_.attribute("density").length() <= 0)
                     {
                        if(!_loc8_)
                        {
                           §§push(§!>§);
                           §§push("WARNING, LevelItemMaterials constructor, density is missing for material: ");
                           if(_loc7_ || param3)
                           {
                              §§push(§§pop() + _loc4_.@id);
                           }
                           §§pop().log(§§pop());
                        }
                        while(true)
                        {
                        }
                        addr261:
                     }
                     while(true)
                     {
                        if(_loc4_.attribute("friction").length() <= 0)
                        {
                           loop3:
                           while(true)
                           {
                              §§push(§!>§);
                              §§push("WARNING, LevelItemMaterials constructor, friction is missing for material: ");
                              if(!_loc8_)
                              {
                                 §§push(§§pop() + _loc4_.@id);
                              }
                              §§pop().log(§§pop());
                              addr229:
                              loop4:
                              while(true)
                              {
                                 loop14:
                                 while(true)
                                 {
                                    if(_loc7_ || param2)
                                    {
                                       while(true)
                                       {
                                          if(_loc4_.attribute("strength").length() <= 0)
                                          {
                                             continue loop3;
                                          }
                                          loop2:
                                          while(true)
                                          {
                                             if(_loc4_.attribute("defence").length() <= 0)
                                             {
                                                if(!_loc8_)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      if(_loc7_ || param3)
                                                      {
                                                         §§push(§!>§);
                                                         §§push("WARNING, LevelItemMaterials constructor, defence is missing for material: ");
                                                         if(_loc7_)
                                                         {
                                                            §§push(§§pop() + _loc4_.@id);
                                                         }
                                                         §§pop().log(§§pop());
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr261);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(_loc8_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§!>§);
                                                            §§push("WARNING, LevelItemMaterials constructor, restitution is missing for material: ");
                                                            if(_loc7_ || §-!x§)
                                                            {
                                                               §§push(§§pop() + _loc4_.@id);
                                                            }
                                                            §§pop().log(§§pop());
                                                            continue loop14;
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         continue loop2;
                                                      }
                                                      addr183:
                                                      addr185:
                                                   }
                                                }
                                                while(_loc7_ || param1)
                                                {
                                                }
                                                continue loop3;
                                                addr148:
                                             }
                                             loop10:
                                             do
                                             {
                                                if(_loc4_.attribute("colors").length() <= 0)
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      §§push(§!>§);
                                                      §§push("WARNING, LevelItemMaterials constructor, colors is missing for material: ");
                                                      if(_loc7_)
                                                      {
                                                         §§push(§§pop() + _loc4_.@id);
                                                      }
                                                      §§pop().log(§§pop());
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr148);
                                                   }
                                                   addr109:
                                                }
                                                while(true)
                                                {
                                                   §&!K§(_loc4_.@id,_loc4_.@bodyType,_loc4_.@density,_loc4_.@friction,_loc4_.@restitution,_loc4_.@strength,_loc4_.@defence,_loc4_.@colors);
                                                   if(_loc7_ || param2)
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         continue loop10;
                                                      }
                                                      continue loop14;
                                                   }
                                                   §§goto(addr109);
                                                }
                                             }
                                             while(false);
                                             
                                             continue loop0;
                                          }
                                          continue loop14;
                                       }
                                       addr156:
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           if(_loc4_.attribute("restitution").length() <= 0)
                           {
                              §§goto(addr193);
                           }
                           §§goto(addr156);
                           §§goto(addr229);
                        }
                     }
                  }
                  §§goto(addr185);
               }
               §§goto(addr193);
            }
            §§goto(addr230);
         }
         if(_loc7_)
         {
            §"!t§(param2,param3);
         }
      }
      
      public static function §"!t§(param1:XMLList, param2:XMLList) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:XML = null;
         var _loc4_:§0"§ = null;
         var _loc5_:int = 0;
         var _loc6_:* = param1.Material;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc6_,_loc5_));
            if(_loc7_)
            {
               if(§§pop())
               {
                  _loc3_ = §§nextvalue(_loc5_,_loc6_);
                  if(_loc4_ = §@1§(_loc3_.@id))
                  {
                     if(!_loc8_)
                     {
                        _loc4_.§]^§(_loc3_);
                        if(_loc8_ && param1)
                        {
                           continue;
                        }
                     }
                  }
                  else
                  {
                     §§push(§!>§);
                     §§push("WARNING! Damage material multiplier with unknown material!!");
                     if(!(_loc8_ && §-!x§))
                     {
                        §§push(§§pop() + _loc3_.@id);
                     }
                     §§pop().log(§§pop());
                  }
                  continue;
               }
               if(!(_loc8_ && _loc3_))
               {
                  if(_loc7_)
                  {
                     if(_loc7_)
                     {
                        _loc5_ = 0;
                        if(!_loc8_)
                        {
                           _loc6_ = param2.Material;
                           while(true)
                           {
                              §§push(§§hasnext(_loc6_,_loc5_));
                              break loop0;
                           }
                           addr153:
                           addr152:
                           addr150:
                        }
                        §§goto(addr153);
                     }
                     return;
                  }
                  §§goto(addr153);
               }
               §§goto(addr152);
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc3_ = §§nextvalue(_loc5_,_loc6_);
               if(_loc4_ = §@1§(_loc3_.@id))
               {
                  if(_loc7_)
                  {
                     _loc4_.§?I§(_loc3_);
                     if(!_loc7_)
                     {
                        continue;
                     }
                  }
               }
               else
               {
                  §§push(§!>§);
                  §§push("WARNING! Velocity material multiplier with unknown material!!");
                  if(_loc7_ || _loc3_)
                  {
                     §§push(§§pop() + _loc3_.@id);
                  }
                  §§pop().log(§§pop());
               }
               continue;
            }
            §§goto(addr153);
         }
      }
      
      public static function §&!K§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(!_loc9_)
         {
            §<]§[§<]§.length] = new §0"§(param1,param2,param3,param4,param5,param6,param7,param8);
         }
      }
      
      public static function §@1§(param1:String) : §0"§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         do
         {
            if(_loc2_ >= §<]§.length)
            {
               if(!(_loc3_ && _loc2_))
               {
                  if(_loc3_ && §-!x§)
                  {
                     continue;
                  }
                  §§push(§!>§);
                  §§push("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: ");
                  if(_loc4_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
               }
               if(_loc4_)
               {
                  return null;
               }
            }
            else if((§<]§[_loc2_] as §0"§).mName.toLowerCase() == param1.toLowerCase())
            {
               break;
            }
            _loc2_++;
         }
         while(!(_loc3_ && §-!x§));
         
         return §0"§(§<]§[_loc2_]);
      }
   }
}
