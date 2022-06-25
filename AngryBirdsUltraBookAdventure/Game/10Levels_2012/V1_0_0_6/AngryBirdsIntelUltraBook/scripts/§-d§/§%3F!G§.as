package §-d§
{
   import §"x§.§-8§;
   
   public class §?!G§
   {
      
      public static var §9!d§:Array;
       
      
      public function §?!G§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §7!t§(param1:XMLList, param2:XMLList, param3:XMLList) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:XML = null;
         if(_loc8_)
         {
            §9!d§ = new Array();
         }
         loop0:
         for each(_loc4_ in param1.Material)
         {
            if(_loc4_.attribute("bodyType").length() <= 0)
            {
               if(!(_loc7_ && §?!G§))
               {
                  §§push(§-8§);
                  §§push("WARNING, LevelItemMaterials constructor, bodyType is missing for material: ");
                  if(!(_loc7_ && param2))
                  {
                     §§push(§§pop() + _loc4_.@id);
                  }
                  §§pop().log(§§pop());
                  if(!(_loc7_ && §?!G§))
                  {
                     addr253:
                     if(_loc4_.attribute("density").length() <= 0)
                     {
                        while(true)
                        {
                           §§push(§-8§);
                           §§push("WARNING, LevelItemMaterials constructor, density is missing for material: ");
                           if(!(_loc7_ && §?!G§))
                           {
                              §§push(§§pop() + _loc4_.@id);
                           }
                           §§pop().log(§§pop());
                           addr282:
                           while(true)
                           {
                           }
                        }
                        addr259:
                     }
                     while(true)
                     {
                        if(_loc4_.attribute("friction").length() <= 0)
                        {
                           addr244:
                           while(true)
                           {
                              §§push(§-8§);
                              §§push("WARNING, LevelItemMaterials constructor, friction is missing for material: ");
                              if(!_loc7_)
                              {
                                 §§push(§§pop() + _loc4_.@id);
                              }
                              §§pop().log(§§pop());
                              addr252:
                              while(true)
                              {
                              }
                           }
                           addr244:
                        }
                        while(true)
                        {
                           if(_loc4_.attribute("restitution").length() <= 0)
                           {
                              loop3:
                              while(!_loc7_)
                              {
                                 §§push(§-8§);
                                 §§push("WARNING, LevelItemMaterials constructor, restitution is missing for material: ");
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop() + _loc4_.@id);
                                 }
                                 §§pop().log(§§pop());
                                 loop4:
                                 while(true)
                                 {
                                    addr126:
                                    if(!(_loc8_ || param1))
                                    {
                                       continue;
                                    }
                                    if(_loc8_ || param1)
                                    {
                                       §§push(§-8§);
                                       §§push("WARNING, LevelItemMaterials constructor, colors is missing for material: ");
                                       if(_loc8_ || §?!G§)
                                       {
                                          §§push(§§pop() + _loc4_.@id);
                                       }
                                       §§pop().log(§§pop());
                                       loop13:
                                       while(_loc8_ || param3)
                                       {
                                          loop14:
                                          while(true)
                                          {
                                             §?E§(_loc4_.@id,_loc4_.@bodyType,_loc4_.@density,_loc4_.@friction,_loc4_.@restitution,_loc4_.@strength,_loc4_.@defence,_loc4_.@colors);
                                             if(_loc7_ && param1)
                                             {
                                                continue loop13;
                                             }
                                             if(_loc8_)
                                             {
                                                break;
                                             }
                                             loop12:
                                             while(_loc8_ || param2)
                                             {
                                                if(!_loc8_)
                                                {
                                                   while(true)
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      if(!_loc7_)
                                                      {
                                                         §§push(§-8§);
                                                         §§push("WARNING, LevelItemMaterials constructor, defence is missing for material: ");
                                                         if(!(_loc7_ && §?!G§))
                                                         {
                                                            §§push(§§pop() + _loc4_.@id);
                                                         }
                                                         §§pop().log(§§pop());
                                                         break loop12;
                                                      }
                                                      §§goto(addr244);
                                                   }
                                                   continue loop4;
                                                   addr178:
                                                }
                                                §§goto(addr126);
                                             }
                                             loop10:
                                             for(; !(_loc7_ && §?!G§); §§goto(addr117))
                                             {
                                                while(true)
                                                {
                                                   if(_loc4_.attribute("colors").length() <= 0)
                                                   {
                                                      continue loop10;
                                                   }
                                                   continue loop14;
                                                }
                                                §§goto(addr282);
                                             }
                                             addr117:
                                             loop7:
                                             while(true)
                                             {
                                                addr171:
                                                while(true)
                                                {
                                                   if(_loc4_.attribute("defence").length() > 0)
                                                   {
                                                      §§goto(addr110);
                                                   }
                                                   §§goto(addr178);
                                                   continue loop7;
                                                }
                                             }
                                             addr195:
                                          }
                                          if(!(_loc7_ && param1))
                                          {
                                             if(true)
                                             {
                                                continue loop0;
                                             }
                                             §§goto(addr110);
                                          }
                                          §§goto(addr282);
                                       }
                                       while(true)
                                       {
                                          §§push(§-8§);
                                          §§push("WARNING, LevelItemMaterials constructor, strength is missing for material: ");
                                          if(!_loc7_)
                                          {
                                             §§push(§§pop() + _loc4_.@id);
                                          }
                                          §§pop().log(§§pop());
                                          §§goto(addr218);
                                          §§goto(addr163);
                                       }
                                       addr163:
                                       addr210:
                                    }
                                    §§goto(addr259);
                                 }
                              }
                              continue;
                           }
                           while(true)
                           {
                              if(_loc4_.attribute("strength").length() <= 0)
                              {
                                 §§goto(addr210);
                              }
                              §§goto(addr171);
                           }
                        }
                     }
                  }
                  §§goto(addr282);
               }
               §§goto(addr244);
            }
            §§goto(addr253);
         }
         if(_loc8_ || §?!G§)
         {
            §0J§(param2,param3);
         }
      }
      
      public static function §0J§(param1:XMLList, param2:XMLList) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:XML = null;
         var _loc4_:§3!F§ = null;
         var _loc5_:int = 0;
         var _loc6_:* = param1.Material;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc6_,_loc5_));
            if(_loc7_ || param1)
            {
               if(§§pop())
               {
                  _loc3_ = §§nextvalue(_loc5_,_loc6_);
                  if(_loc4_ = §<!L§(_loc3_.@id))
                  {
                     if(_loc7_ || param1)
                     {
                        _loc4_.§9!]§(_loc3_);
                        if(_loc8_)
                        {
                           continue;
                        }
                     }
                  }
                  else
                  {
                     §§push(§-8§);
                     §§push("WARNING! Damage material multiplier with unknown material!!");
                     if(!(_loc8_ && §?!G§))
                     {
                        §§push(§§pop() + _loc3_.@id);
                     }
                     §§pop().log(§§pop());
                  }
                  continue;
               }
               if(!_loc8_)
               {
                  if(_loc7_ || _loc3_)
                  {
                     if(!_loc8_)
                     {
                        _loc5_ = 0;
                        if(_loc7_ || §?!G§)
                        {
                           addr110:
                           _loc6_ = param2.Material;
                           while(true)
                           {
                              §§push(§§hasnext(_loc6_,_loc5_));
                              break loop0;
                           }
                           addr170:
                        }
                     }
                     return;
                  }
               }
               §§goto(addr110);
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc3_ = §§nextvalue(_loc5_,_loc6_);
               if(_loc4_ = §<!L§(_loc3_.@id))
               {
                  if(!(_loc8_ && _loc3_))
                  {
                     _loc4_.§]W§(_loc3_);
                     if(_loc8_ && param2)
                     {
                     }
                  }
               }
               else
               {
                  §§push(§-8§);
                  §§push("WARNING! Velocity material multiplier with unknown material!!");
                  if(!(_loc8_ && param2))
                  {
                     §§push(§§pop() + _loc3_.@id);
                  }
                  §§pop().log(§§pop());
               }
               continue;
            }
            §§goto(addr110);
         }
      }
      
      public static function §?E§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(_loc9_)
         {
            §9!d§[§9!d§.length] = new §3!F§(param1,param2,param3,param4,param5,param6,param7,param8);
         }
      }
      
      public static function §<!L§(param1:String) : §3!F§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= §9!d§.length)
            {
               if(!_loc3_)
               {
                  §§push(§-8§);
                  §§push("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: ");
                  if(_loc4_ || §?!G§)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
               }
               if(!(_loc4_ || _loc2_))
               {
                  continue;
               }
               if(!_loc3_)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     return null;
                  }
                  break;
               }
            }
            else if((§9!d§[_loc2_] as §3!F§).mName.toLowerCase() == param1.toLowerCase())
            {
               break;
            }
            _loc2_++;
         }
         return §3!F§(§9!d§[_loc2_]);
      }
   }
}
