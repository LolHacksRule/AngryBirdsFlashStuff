package §?t§
{
   import §3w§.§1!!§;
   import §4!9§.§6"§;
   import §4H§.StateBase;
   import §]!6§.UIRepeaterRovio;
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   
   public class PopupsUIView extends §6"§
   {
       
      
      public function PopupsUIView(newStateBase:StateBase)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && newStateBase)
         {
         }
         if(_loc3_)
         {
            while(true)
            {
               while(!_loc2_)
               {
                  super(newStateBase);
                  while(_loc3_ || _loc2_)
                  {
                     if(!_loc2_)
                     {
                        return;
                        addr57:
                     }
                  }
               }
            }
         }
         §§goto(addr57);
      }
      
      public static function §",§(credits:Number) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_)
         {
         }
         if(!_loc3_)
         {
            while(true)
            {
            }
            addr59:
         }
         loop1:
         while(true)
         {
            addr43:
            addr70:
            while(true)
            {
               continue loop1;
            }
            §§push("$");
            if(_loc4_)
            {
               if(_loc4_)
               {
                  addr76:
                  §§push(§§pop() + credits.toString());
               }
               var result:* = §§pop();
               if(_loc4_ || credits)
               {
                  loop4:
                  while(true)
                  {
                     if(credits != int(credits))
                     {
                        loop5:
                        while(true)
                        {
                           addr148:
                           loop9:
                           while(true)
                           {
                              §§push(result);
                              if(!(_loc3_ && credits))
                              {
                                 §§push(§§pop() + "0");
                              }
                              addr137:
                              addr124:
                              loop7:
                              while(true)
                              {
                                 result = §§pop();
                                 while(!_loc3_)
                                 {
                                    if(!(_loc3_ && credits))
                                    {
                                       if(_loc4_ || result)
                                       {
                                          if(!_loc3_)
                                          {
                                             break loop7;
                                          }
                                          continue loop5;
                                       }
                                       continue loop9;
                                    }
                                 }
                                 continue loop4;
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§push(result);
                        if(!_loc3_)
                        {
                           break;
                        }
                        §§goto(addr137);
                        §§goto(addr124);
                     }
                     return §§pop();
                  }
               }
               §§goto(addr148);
            }
            §§goto(addr76);
         }
      }
      
      override public function activateView() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc1_)
         {
         }
         if(_loc2_ || _loc2_)
         {
            do
            {
               super.activateView();
               while(!_loc2_)
               {
               }
            }
            while(!_loc2_);
            
         }
      }
      
      public function §4i§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || tabs)
         {
         }
         var categoryName:String = null;
         if(!(_loc5_ && i))
         {
            while(true)
            {
            }
            addr73:
         }
         loop1:
         while(true)
         {
            while(true)
            {
               loop3:
               while(!_loc5_)
               {
                  loop4:
                  do
                  {
                     §31§("Repeater_Items","Repeater_Items_Tab_0");
                     while(true)
                     {
                        if(_loc5_)
                        {
                           continue loop3;
                        }
                        if(!_loc6_)
                        {
                           break;
                        }
                        if(!_loc5_)
                        {
                           if(_loc6_ || items)
                           {
                              continue loop4;
                           }
                           continue;
                        }
                        §§goto(addr73);
                     }
                     continue loop1;
                  }
                  while(false);
                  
                  var items:UIRepeaterRovio = getItemByName("Repeater_Items") as UIRepeaterRovio;
                  if(_loc6_ || this)
                  {
                  }
                  var tabs:UIRepeaterRovio = getItemByName("Repeater_Tabs") as UIRepeaterRovio;
                  if(!(_loc5_ && tabs))
                  {
                     addr190:
                     if(§1!!§.§[!Y§().§,!#§.length > 0)
                     {
                        addr185:
                        if(!_loc5_)
                        {
                           tabs.§9k§("Repeater_Tabs_Tab_0").§9!+§(§1!!§.§[!Y§().§,!#§[0].name as String);
                           addr142:
                           addr188:
                           if(!(_loc5_ && tabs))
                           {
                              addr126:
                              §31§("Repeater_Tabs","Repeater_Tabs_Tab_0");
                              if(!(_loc5_ && this))
                              {
                                 if(!(_loc5_ && items))
                                 {
                                    if(_loc6_ || this)
                                    {
                                       if(_loc6_)
                                       {
                                          addr124:
                                          if(false)
                                          {
                                             §§goto(addr126);
                                          }
                                          §§push(0);
                                          if(!_loc5_)
                                          {
                                             §§push(int(§§pop()));
                                          }
                                          var i:* = §§pop();
                                          addr201:
                                          §§push(i);
                                          if(_loc6_ || tabs)
                                          {
                                             if(_loc6_)
                                             {
                                                if(§§pop() >= §1!!§.§[!Y§().§,!#§.length)
                                                {
                                                   if(!(_loc5_ && i))
                                                   {
                                                      if(!(_loc5_ && i))
                                                      {
                                                         if(!(_loc5_ && i))
                                                         {
                                                            addr240:
                                                            if(_loc6_)
                                                            {
                                                               if(!(_loc5_ && this))
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     categoryName = §1!!§.§[!Y§().§,!#§[i].name;
                                                                     §§push(items);
                                                                     §§push("Repeater_Items_Tab_");
                                                                     if(_loc6_ || items)
                                                                     {
                                                                        §§push(§§pop() + i);
                                                                     }
                                                                     §§pop().§9k§(§§pop()).§9!+§(categoryName);
                                                                     addr315:
                                                                     if(_loc6_)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           addr254:
                                                                           §§push(i + 1);
                                                                           if(!(_loc5_ && this))
                                                                           {
                                                                              addr263:
                                                                              i = int(§§pop());
                                                                              §§goto(addr201);
                                                                           }
                                                                           §§goto(addr263);
                                                                           addr267:
                                                                        }
                                                                        §§goto(addr315);
                                                                        addr319:
                                                                     }
                                                                     addr312:
                                                                     §§goto(addr312);
                                                                     addr301:
                                                                  }
                                                                  return;
                                                               }
                                                               §§goto(addr301);
                                                            }
                                                            §§goto(addr315);
                                                         }
                                                         §§goto(addr267);
                                                      }
                                                      §§goto(addr263);
                                                   }
                                                   §§goto(addr240);
                                                }
                                                §§goto(addr319);
                                             }
                                             §§goto(addr254);
                                          }
                                          §§goto(addr263);
                                       }
                                       §§goto(addr185);
                                    }
                                    §§goto(addr142);
                                 }
                                 §§goto(addr126);
                              }
                              §§goto(addr188);
                           }
                           addr176:
                           §§goto(addr176);
                        }
                        §§goto(addr190);
                     }
                     §§goto(addr126);
                  }
                  §§goto(addr124);
               }
            }
         }
      }
      
      public function §!!§(tabName:String) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || tabName)
         {
         }
         if(!(_loc4_ && tabName))
         {
            loop0:
            while(true)
            {
               addr44:
               while(true)
               {
                  while(true)
                  {
                     if(!_loc4_)
                     {
                        if(!(_loc4_ && tabName))
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr44);
         }
         §§push(0);
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var i:* = §§pop();
         loop4:
         while(true)
         {
            §§push(i);
            loop5:
            while(_loc3_)
            {
               if(§§pop() >= §1!!§.§[!Y§().§,!#§.length)
               {
                  if(_loc3_)
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(-1);
                        if(!_loc3_)
                        {
                           continue;
                        }
                        if(_loc3_ || _loc3_)
                        {
                           break loop4;
                        }
                        addr111:
                        while(true)
                        {
                           i = §§pop();
                        }
                        addr103:
                     }
                     while(true)
                     {
                        if(_loc3_)
                        {
                           if(_loc3_ || this)
                           {
                              continue loop4;
                           }
                           loop9:
                           while(true)
                           {
                              if(_loc3_ || tabName)
                              {
                                 addr162:
                              }
                              else
                              {
                                 while(true)
                                 {
                                    if(tabName.toUpperCase() == §1!!§.§[!Y§().§,!#§[i].name.toUpperCase())
                                    {
                                       continue loop9;
                                    }
                                    do
                                    {
                                       §§push(i);
                                       if(!_loc4_)
                                       {
                                          §§push(§§pop() + 1);
                                          break loop5;
                                       }
                                       break loop5;
                                    }
                                    while(_loc3_ || i);
                                    
                                    continue loop9;
                                 }
                                 §§goto(addr162);
                                 addr167:
                              }
                           }
                        }
                        else
                        {
                           §§goto(addr125);
                        }
                        §§goto(addr124);
                     }
                  }
                  §§goto(addr103);
               }
               §§goto(addr167);
            }
            while(true)
            {
               §§goto(addr111);
            }
         }
         if(_loc3_)
         {
            return §§pop();
         }
         addr124:
         return i;
      }
      
      override public function getRepeaterDataXML(repeaterName:String) : Array
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && this)
         {
         }
         if(!_loc2_)
         {
            while(!(_loc3_ || _loc2_))
            {
            }
            §§push(repeaterName);
            loop1:
            while(true)
            {
               if(§§pop().toUpperCase() == "Repeater_Tabs".toUpperCase())
               {
                  if(_loc2_)
                  {
                  }
                  §§push(this.§%L§());
                  break;
               }
               loop2:
               while(true)
               {
                  §§push(repeaterName);
                  if(_loc3_ || this)
                  {
                     if(§§pop().toUpperCase() == "Repeater_Items".toUpperCase())
                     {
                        if(_loc3_)
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           addr97:
                           while(true)
                           {
                              continue loop2;
                           }
                        }
                        break;
                     }
                     return null;
                  }
                  continue loop1;
               }
               §§push(this.§=@§());
               if(_loc3_)
               {
                  return §§pop();
               }
               break;
            }
            return §§pop();
         }
         §§goto(addr97);
      }
      
      public function §%L§() : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc5_)
         {
         }
         var but:XML = null;
         var clip:MovieClip = null;
         var c:Class = null;
         if(!_loc6_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  loop2:
                  while(!(_loc6_ && clip))
                  {
                     while(true)
                     {
                        loop4:
                        do
                        {
                           while(_loc5_)
                           {
                              if(!_loc6_)
                              {
                                 if(_loc5_)
                                 {
                                    continue loop4;
                                 }
                                 continue;
                              }
                              continue loop0;
                           }
                           continue loop2;
                        }
                        while(false);
                        
                        var list:Array = new Array();
                        if(!(_loc6_ && but))
                        {
                           while(true)
                           {
                              list[0] = new Array();
                              loop7:
                              while(_loc5_ || list)
                              {
                                 while(_loc6_ && clip)
                                 {
                                    continue loop7;
                                 }
                                 return list;
                              }
                           }
                        }
                        §§goto(addr120);
                     }
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      public function §=@§() : Array
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         if(_loc14_ || c)
         {
         }
         var but:XML = null;
         var clip:MovieClip = null;
         var c:Class = null;
         if(_loc14_ || this)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     addr117:
                     while(!(_loc13_ && this))
                     {
                        continue loop1;
                        if(_loc14_ || this)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr144);
            §§goto(addr96);
         }
      }
      
      private function §5!9§(array1:Array, array2:Array) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc7_)
         {
         }
         if(_loc6_ || array1)
         {
            while(true)
            {
               addr63:
               loop1:
               while(true)
               {
                  addr60:
                  while(true)
                  {
                     continue loop1;
                  }
               }
            }
            addr65:
         }
         while(true)
         {
            loop5:
            do
            {
               while(true)
               {
                  if(!_loc7_)
                  {
                     if(_loc7_ && this)
                     {
                        continue;
                     }
                     if(_loc6_)
                     {
                        if(_loc6_)
                        {
                           continue loop5;
                        }
                        §§goto(addr60);
                     }
                     §§goto(addr50);
                  }
                  else
                  {
                     §§goto(addr65);
                  }
               }
            }
            while(false);
            
            var totalLength:int = Math.max(array1.length,array2.length);
            if(_loc6_ || array2)
            {
            }
            var newArray:Array = [];
            if(_loc7_ && totalLength)
            {
            }
            §§push(0);
            if(_loc6_)
            {
               §§push(int(§§pop()));
            }
            var i:* = §§pop();
            addr115:
            §§push(i);
            if(_loc6_ || totalLength)
            {
               if(_loc6_)
               {
                  if(§§pop() >= totalLength)
                  {
                     if(!(_loc7_ && totalLength))
                     {
                        if(!_loc7_)
                        {
                           addr138:
                           if(_loc6_)
                           {
                              if(_loc7_ && this)
                              {
                                 addr185:
                                 if(!_loc7_)
                                 {
                                    addr150:
                                    §§push(i + 1);
                                    if(!(_loc7_ && array1))
                                    {
                                       addr169:
                                       i = int(§§pop());
                                       §§goto(addr115);
                                    }
                                    §§goto(addr169);
                                    addr173:
                                 }
                                 newArray[i] = array1[i].concat(array2[i]);
                                 §§goto(addr185);
                                 addr191:
                              }
                              return newArray;
                           }
                           §§goto(addr169);
                        }
                        §§goto(addr173);
                     }
                     §§goto(addr138);
                  }
                  §§goto(addr191);
               }
               §§goto(addr150);
            }
            §§goto(addr169);
         }
      }
   }
}
