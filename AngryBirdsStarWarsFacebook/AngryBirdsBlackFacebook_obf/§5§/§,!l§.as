package §5§#7
{
   public class §,!l§ implements §3!c§
   {
       
      
      public function §,!l§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public function solve(param1:String) : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = "";
         §§push(param1);
         if(_loc4_ || this)
         {
            var _loc3_:* = §§pop().toUpperCase();
            if(!(_loc5_ && _loc3_))
            {
               if("REDBIRD_1" === _loc3_)
               {
                  if(_loc4_)
                  {
                     §§push(0);
                     if(_loc4_ || _loc2_)
                     {
                     }
                  }
                  else
                  {
                     addr203:
                     §§push(5);
                     if(!(_loc4_ || _loc3_))
                     {
                        addr256:
                     }
                  }
                  §§goto(addr261);
               }
               else if("BLACKBIRD_1" === _loc3_)
               {
                  if(!_loc5_)
                  {
                     §§push(1);
                     if(!_loc4_)
                     {
                     }
                     §§goto(addr261);
                  }
                  else
                  {
                     §§goto(addr203);
                  }
               }
               else
               {
                  if("LASERBIRD_1" === _loc3_)
                  {
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(2);
                        if(_loc5_ && _loc2_)
                        {
                        }
                     }
                  }
                  else if("REDBIRD_2" === _loc3_)
                  {
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(3);
                        if(_loc5_)
                        {
                        }
                     }
                     else
                     {
                        addr231:
                        §§push(7);
                        if(!(_loc4_ || _loc3_))
                        {
                           §§goto(addr256);
                        }
                     }
                  }
                  else if("THERMALDETONATOR" === _loc3_)
                  {
                     if(!(_loc5_ && _loc2_))
                     {
                        §§push(4);
                        if(_loc4_ || param1)
                        {
                        }
                     }
                  }
                  else if("LASERDROID" === _loc3_)
                  {
                     if(_loc4_)
                     {
                        §§goto(addr203);
                     }
                     else
                     {
                        §§goto(addr231);
                     }
                  }
                  else
                  {
                     if("SABERSLING" === _loc3_)
                     {
                        if(!_loc5_)
                        {
                           §§push(6);
                           if(!_loc4_)
                           {
                           }
                           §§goto(addr261);
                        }
                        else
                        {
                           §§goto(addr231);
                        }
                     }
                     else
                     {
                        if("EXTRABIRD" === _loc3_)
                        {
                           if(_loc4_ || _loc3_)
                           {
                              §§goto(addr231);
                           }
                        }
                        else if("MIGHTYFALCON" !== _loc3_)
                        {
                           addr261:
                           switch(§§pop())
                           {
                              case 0:
                                 addr91:
                                 _loc2_ = "";
                                 break;
                                 addr92:
                              case 1:
                                 addr86:
                                 _loc2_ = "";
                                 break;
                                 addr87:
                              case 2:
                                 §§push("");
                                 if(_loc4_ || _loc2_)
                                 {
                                    if(_loc4_)
                                    {
                                       _loc2_ = §§pop();
                                       if(!_loc5_)
                                       {
                                          if(_loc4_ || this)
                                          {
                                             if(!_loc5_)
                                             {
                                                break;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr87);
                                          }
                                       }
                                       break;
                                    }
                                    §§goto(addr91);
                                    §§goto(addr92);
                                 }
                                 else
                                 {
                                    §§goto(addr86);
                                 }
                              case 3:
                                 _loc2_ = "Lightsaber";
                                 break;
                              case 4:
                                 _loc2_ = "Thermal Detonator";
                                 break;
                              case 5:
                                 _loc2_ = "Blaster Droid";
                                 break;
                              case 6:
                                 _loc2_ = "Lightsaber Sling";
                                 addr26:
                                 break;
                              case 7:
                                 _loc2_ = "Clone Bird";
                                 break;
                              case 8:
                                 _loc2_ = "Mighty Falcon";
                                 if(true)
                                 {
                                    break;
                                 }
                                 §§goto(addr26);
                           }
                           return _loc2_;
                           §§push(9);
                        }
                        §§goto(addr261);
                     }
                     §§goto(addr261);
                  }
                  §§goto(addr261);
                  if(_loc4_)
                  {
                     §§goto(addr256);
                  }
               }
               §§goto(addr261);
            }
            §§goto(addr231);
         }
         §§goto(addr261);
      }
   }
}
