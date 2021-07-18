package §>!d§
{
   import §05§.§?s§;
   import §;" §.§!H§;
   
   public class §,$§
   {
      
      public static const §<!^§:String = "BOLTS";
      
      public static const §=!x§:String = "BLOCKS";
      
      public static const §53§:String = "COINS";
      
      public static const §+"<§:String = "CONSUMABLE";
      
      public static const UNLOCK:String = "UNLOCK";
      
      public static const INCREASE_ITEM_COUNT:String = "INCREASE_ITEM_COUNT";
      
      private static var §+!u§:§,$§;
      
      private static var §<"!§:Class;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §<!^§ = "BOLTS";
            loop0:
            while(true)
            {
               §=!x§ = "BLOCKS";
               loop1:
               while(true)
               {
                  §53§ = "COINS";
                  while(!_loc1_)
                  {
                     §+"<§ = "CONSUMABLE";
                     while(!_loc1_)
                     {
                        if(_loc1_)
                        {
                           continue loop1;
                        }
                        UNLOCK = "UNLOCK";
                        while(true)
                        {
                           INCREASE_ITEM_COUNT = "INCREASE_ITEM_COUNT";
                           §§goto(addr54);
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         addr54:
         while(true)
         {
            §<"!§ = §?s§;
            if(_loc2_ || _loc1_)
            {
               if(_loc2_)
               {
                  if(_loc2_)
                  {
                     break;
                  }
                  continue loop3;
               }
               continue loop4;
            }
         }
      }
      
      public function §,$§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function get §[E§() : §,$§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(§+!u§);
            if(!(_loc1_ && §,$§))
            {
               if(!§§pop())
               {
                  if(_loc2_ || _loc1_)
                  {
                     §+!u§ = new §,$§();
                     addr64:
                     §§push(§+!u§);
                  }
               }
               §§goto(addr64);
            }
            return §§pop();
         }
         §§goto(addr64);
      }
      
      public function init(param1:String = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               addr86:
               while(true)
               {
                  if(§§pop())
                  {
                     while(§§pop())
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           §<"!§ = §!H§;
                        }
                        if(!(_loc2_ && param1))
                        {
                           break;
                        }
                        continue loop0;
                     }
                     return;
                     addr54:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
            addr85:
         }
         while(true)
         {
            §§push(param1);
            if(_loc3_)
            {
               §§push(§§pop() == "");
               if(!_loc3_)
               {
                  continue;
               }
               if(_loc2_ && this)
               {
                  §§goto(addr86);
               }
               §§goto(addr54);
            }
            else
            {
               §§goto(addr85);
            }
         }
      }
      
      public function §9!j§(param1:String, param2:int = 0, param3:String = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param1;
         if(!(_loc6_ && this))
         {
            §§push(§<!^§);
            if(_loc5_)
            {
               §§push(_loc4_);
               if(_loc5_ || param1)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc5_)
                     {
                        §§push(0);
                        if(_loc6_ && param1)
                        {
                           addr273:
                        }
                     }
                     else
                     {
                        addr255:
                        §§push(5);
                        if(!(_loc6_ && param2))
                        {
                           §§goto(addr273);
                        }
                     }
                     §§goto(addr278);
                  }
                  else
                  {
                     §§push(§=!x§);
                     if(_loc5_ || param1)
                     {
                        §§push(_loc4_);
                        if(_loc5_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc6_)
                              {
                                 §§push(1);
                                 if(_loc6_)
                                 {
                                    addr210:
                                 }
                              }
                              else
                              {
                                 addr220:
                                 §§push(3);
                                 if(!(_loc5_ || param2))
                                 {
                                    §§goto(addr273);
                                 }
                              }
                           }
                           else
                           {
                              §§push(§53§);
                              if(_loc5_)
                              {
                                 §§push(_loc4_);
                                 if(!_loc6_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc6_ && this))
                                       {
                                          §§push(2);
                                          if(!_loc6_)
                                          {
                                             §§goto(addr210);
                                          }
                                          §§goto(addr278);
                                       }
                                       else
                                       {
                                          §§goto(addr255);
                                       }
                                    }
                                    else
                                    {
                                       §§push(§+"<§);
                                       if(!_loc6_)
                                       {
                                          addr214:
                                          §§push(_loc4_);
                                          if(!_loc6_)
                                          {
                                             addr217:
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc6_)
                                                {
                                                   §§goto(addr220);
                                                }
                                                else
                                                {
                                                   §§goto(addr255);
                                                }
                                             }
                                             else
                                             {
                                                §§push(INCREASE_ITEM_COUNT);
                                                if(!(_loc6_ && param2))
                                                {
                                                   addr237:
                                                   §§push(_loc4_);
                                                   if(_loc5_)
                                                   {
                                                      addr240:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!(_loc6_ && param1))
                                                         {
                                                            §§push(4);
                                                            if(!_loc5_)
                                                            {
                                                            }
                                                            §§goto(addr278);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr255);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr253:
                                                         §§push(UNLOCK);
                                                         §§push(_loc4_);
                                                      }
                                                      §§goto(addr255);
                                                   }
                                                }
                                                §§goto(addr253);
                                             }
                                             §§goto(addr255);
                                          }
                                          if(§§pop() === §§pop())
                                          {
                                             §§goto(addr255);
                                          }
                                          else
                                          {
                                             addr278:
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   §<"!§["doJsCall"]("bolts",param2);
                                                   if(_loc5_ || param3)
                                                   {
                                                      break;
                                                   }
                                                   addr102:
                                                   break;
                                                case 1:
                                                   §<"!§["doJsCall"]("blocks",param2);
                                                   if(!_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   addr71:
                                                   break;
                                                case 2:
                                                   §<"!§["doJsCall"]("coins",param2);
                                                   if(_loc6_ && this)
                                                   {
                                                      addr122:
                                                      break;
                                                   }
                                                   §§goto(addr71);
                                                   break;
                                                case 3:
                                                   §<"!§["doJsCall"]("consumables",param3,param2);
                                                   if(!_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr122);
                                                   break;
                                                case 4:
                                                   §<"!§["doJsCall"]("increaseItemCount",param2);
                                                   if(_loc5_)
                                                   {
                                                      §§goto(addr102);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr122);
                                                   }
                                                case 5:
                                                   §<"!§["doJsCall"]("unlock",param2);
                                                   if(_loc5_ || param2)
                                                   {
                                                      §§goto(addr122);
                                                   }
                                                   break;
                                                default:
                                                   throw new Error(param1 + " is not for sale!");
                                             }
                                             return;
                                             §§push(6);
                                          }
                                          §§goto(addr278);
                                       }
                                       §§goto(addr237);
                                    }
                                    §§goto(addr255);
                                 }
                                 §§goto(addr217);
                              }
                              §§goto(addr214);
                           }
                           §§goto(addr278);
                        }
                        §§goto(addr240);
                     }
                     §§goto(addr214);
                  }
               }
               §§goto(addr240);
            }
            §§goto(addr253);
         }
         §§goto(addr255);
      }
   }
}
