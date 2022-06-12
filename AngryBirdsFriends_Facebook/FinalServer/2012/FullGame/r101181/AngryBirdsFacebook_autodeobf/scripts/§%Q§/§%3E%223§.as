package §%Q§
{
   import §6o§.§+!k§;
   
   public class §>"3§
   {
      
      public static var §[V§:Array;
       
      
      public function §>"3§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §',§(param1:XMLList, param2:XMLList, param3:XMLList) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:XML = null;
         if(!_loc8_)
         {
            §[V§ = new Array();
         }
         loop0:
         for each(_loc4_ in param1.Material)
         {
            if(_loc4_.attribute("bodyType").length() <= 0)
            {
               if(_loc7_)
               {
                  §§push(§+!k§);
                  §§push("WARNING, LevelItemMaterials constructor, bodyType is missing for material: ");
                  if(!_loc8_)
                  {
                     §§push(§§pop() + _loc4_.@id);
                  }
                  §§pop().log(§§pop());
                  if(!(_loc8_ && param3))
                  {
                     addr252:
                     if(_loc4_.attribute("density").length() <= 0)
                     {
                        while(true)
                        {
                           §§push(§+!k§);
                           §§push("WARNING, LevelItemMaterials constructor, density is missing for material: ");
                           if(!_loc8_)
                           {
                              §§push(§§pop() + _loc4_.@id);
                           }
                           §§pop().log(§§pop());
                           addr266:
                           while(true)
                           {
                           }
                        }
                        addr258:
                     }
                     while(true)
                     {
                        if(_loc4_.attribute("friction").length() <= 0)
                        {
                           addr228:
                           while(true)
                           {
                              §§push(§+!k§);
                              §§push("WARNING, LevelItemMaterials constructor, friction is missing for material: ");
                              if(_loc7_ || param1)
                              {
                                 §§push(§§pop() + _loc4_.@id);
                              }
                              §§pop().log(§§pop());
                              addr251:
                              while(true)
                              {
                              }
                           }
                           addr228:
                        }
                        loop8:
                        for(; _loc4_.attribute("restitution").length() <= 0; §§goto(addr251))
                        {
                           while(true)
                           {
                              if(!_loc7_)
                              {
                                 continue loop8;
                              }
                              addr207:
                              §§push(§+!k§);
                              §§push("WARNING, LevelItemMaterials constructor, restitution is missing for material: ");
                              if(!(_loc8_ && param1))
                              {
                                 §§push(§§pop() + _loc4_.@id);
                              }
                              §§pop().log(§§pop());
                              while(true)
                              {
                                 break loop8;
                                 §§goto(addr207);
                              }
                           }
                        }
                        while(true)
                        {
                           if(_loc4_.attribute("strength").length() <= 0)
                           {
                              if(_loc7_ || param2)
                              {
                                 §§push(§+!k§);
                                 §§push("WARNING, LevelItemMaterials constructor, strength is missing for material: ");
                                 if(_loc7_)
                                 {
                                    §§push(§§pop() + _loc4_.@id);
                                 }
                                 §§pop().log(§§pop());
                              }
                              loop7:
                              while(true)
                              {
                                 if(!_loc8_)
                                 {
                                    while(_loc4_.attribute("defence").length() <= 0)
                                    {
                                       while(true)
                                       {
                                          §§push(§+!k§);
                                          §§push("WARNING, LevelItemMaterials constructor, defence is missing for material: ");
                                          if(!(_loc8_ && param2))
                                          {
                                             §§push(§§pop() + _loc4_.@id);
                                          }
                                          §§pop().log(§§pop());
                                          continue loop7;
                                       }
                                    }
                                    loop2:
                                    while(true)
                                    {
                                       if(_loc4_.attribute("colors").length() <= 0)
                                       {
                                          while(true)
                                          {
                                             if(!_loc8_)
                                             {
                                                §§push(§+!k§);
                                                §§push("WARNING, LevelItemMaterials constructor, colors is missing for material: ");
                                                if(_loc7_)
                                                {
                                                   §§push(§§pop() + _loc4_.@id);
                                                }
                                                §§pop().log(§§pop());
                                                while(!_loc8_)
                                                {
                                                   if(_loc7_ || param2)
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr228);
                                                }
                                                §§goto(addr220);
                                                addr135:
                                             }
                                             else
                                             {
                                                §§goto(addr258);
                                             }
                                          }
                                          §§goto(addr266);
                                          addr115:
                                       }
                                       while(true)
                                       {
                                          §>b§(_loc4_.@id,_loc4_.@bodyType,_loc4_.@density,_loc4_.@friction,_loc4_.@restitution,_loc4_.@strength,_loc4_.@defence,_loc4_.@colors);
                                          if(_loc7_ || param2)
                                          {
                                             if(_loc7_ || param1)
                                             {
                                                if(!(_loc7_ || param3))
                                                {
                                                   continue loop7;
                                                }
                                                if(_loc7_)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      if(true)
                                                      {
                                                         break loop2;
                                                      }
                                                      continue loop2;
                                                   }
                                                   §§goto(addr205);
                                                }
                                                else
                                                {
                                                   §§goto(addr152);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr115);
                                             }
                                             §§goto(addr251);
                                          }
                                          §§goto(addr135);
                                       }
                                    }
                                    continue loop0;
                                    addr108:
                                    addr145:
                                 }
                                 §§goto(addr266);
                              }
                           }
                           §§goto(addr145);
                        }
                     }
                  }
                  §§goto(addr172);
               }
               §§goto(addr228);
            }
            §§goto(addr252);
         }
         if(!_loc8_)
         {
            §,>§(param2,param3);
         }
      }
      
      public static function §,>§(param1:XMLList, param2:XMLList) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:XML = null;
         var _loc4_:§9!n§ = null;
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
                  if(_loc4_ = §2%§(_loc3_.@id))
                  {
                     if(!_loc8_)
                     {
                        _loc4_.§&!T§(_loc3_);
                        if(_loc7_ || param2)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(§+!k§);
                     §§push("WARNING! Damage material multiplier with unknown material!!");
                     if(!(_loc8_ && _loc3_))
                     {
                        §§push(§§pop() + _loc3_.@id);
                     }
                     §§pop().log(§§pop());
                  }
                  continue;
               }
               if(_loc7_ || _loc3_)
               {
                  if(!_loc8_)
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
                           addr163:
                           addr162:
                           addr160:
                        }
                        §§goto(addr163);
                     }
                     return;
                  }
                  §§goto(addr163);
               }
               §§goto(addr162);
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc3_ = §§nextvalue(_loc5_,_loc6_);
               if(_loc4_ = §2%§(_loc3_.@id))
               {
                  if(_loc7_ || §>"3§)
                  {
                     _loc4_.§2"&§(_loc3_);
                     if(!_loc7_)
                     {
                        continue;
                     }
                  }
               }
               else
               {
                  §§push(§+!k§);
                  §§push("WARNING! Velocity material multiplier with unknown material!!");
                  if(_loc7_ || _loc3_)
                  {
                     §§push(§§pop() + _loc3_.@id);
                  }
                  §§pop().log(§§pop());
               }
               continue;
            }
            §§goto(addr163);
         }
      }
      
      public static function §>b§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(_loc10_ || §>"3§)
         {
            §[V§[§[V§.length] = new §9!n§(param1,param2,param3,param4,param5,param6,param7,param8);
         }
      }
      
      public static function §2%§(param1:String) : §9!n§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         do
         {
            if(_loc2_ >= §[V§.length)
            {
               if(!(_loc4_ && param1))
               {
                  §§push(§+!k§);
                  §§push("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: ");
                  if(_loc3_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
               }
               if(_loc3_ || _loc2_)
               {
                  return null;
               }
               loop1:
               while(_loc4_ && §>"3§)
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop1;
                  }
               }
               continue;
            }
            if((§[V§[_loc2_] as §9!n§).mName.toLowerCase() == param1.toLowerCase())
            {
               break;
            }
            §§goto(addr61);
         }
         while(!(_loc4_ && _loc3_));
         
         return §9!n§(§[V§[_loc2_]);
      }
   }
}
