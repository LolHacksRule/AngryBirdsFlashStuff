package §9"!§
{
   public class §?E§
   {
      
      public static const §!j§:String = "damage";
      
      public static const §4!k§:String = "removed";
      
      public static const §<C§:String = "extraBird";
      
      private static var §]3§:Array;
      
      private static var §8H§:Array;
      
      private static var §6a§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §!j§ = "damage";
            while(true)
            {
               §4!k§ = "removed";
               loop1:
               while(_loc2_ || §?E§)
               {
                  while(true)
                  {
                     §<C§ = "extraBird";
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr52);
      }
      
      public function §?E§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
         do
         {
            init();
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §]3§ = [];
         }
         do
         {
            §8H§ = [];
            do
            {
               §6a§ = [];
            }
            while(!_loc1_);
            
         }
         while(_loc2_);
         
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(param1 == 0)
            {
               if(!(_loc4_ && param2))
               {
                  return;
               }
               addr87:
            }
            var _loc3_:* = param2;
            if(!_loc4_)
            {
               §§push(§!j§);
               if(_loc5_ || _loc3_)
               {
                  §§push(_loc3_);
                  if(!(_loc4_ && param1))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_ || _loc3_)
                        {
                           §§push(0);
                           if(_loc4_ && _loc3_)
                           {
                           }
                        }
                        else
                        {
                           addr152:
                           §§push(1);
                           if(_loc5_ || param1)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(§4!k§);
                        if(_loc5_ || §?E§)
                        {
                           addr146:
                           §§push(_loc3_);
                           if(_loc5_)
                           {
                              addr149:
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc4_)
                                 {
                                    §§goto(addr152);
                                 }
                                 else
                                 {
                                    addr164:
                                    §§push(2);
                                    if(!_loc5_)
                                    {
                                    }
                                    §§goto(addr172);
                                 }
                              }
                              else
                              {
                                 addr162:
                                 §§push(§<C§);
                                 §§push(_loc3_);
                              }
                              §§goto(addr164);
                           }
                           if(§§pop() === §§pop())
                           {
                              §§goto(addr164);
                           }
                           else
                           {
                              addr172:
                              switch(§§pop())
                              {
                                 case 0:
                                    addr57:
                                    §]3§.push(param1);
                                    if(!(_loc4_ && param2))
                                    {
                                       addr38:
                                       break;
                                    }
                                    break;
                                 case 1:
                                    addr43:
                                    §§push(§8H§);
                                    §§push(param1);
                                    if(_loc5_ || _loc3_)
                                    {
                                       §§pop().push(§§pop());
                                       break;
                                       addr51:
                                    }
                                    else
                                    {
                                       §§goto(addr57);
                                    }
                                    break;
                                 case 2:
                                    §§push(§6a§);
                                    if(!_loc4_)
                                    {
                                       if(_loc5_)
                                       {
                                          §§push(param1);
                                          if(_loc5_)
                                          {
                                             §§pop().push(§§pop());
                                             if(_loc5_)
                                             {
                                                if(_loc5_)
                                                {
                                                   if(true)
                                                   {
                                                      break;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr51);
                                                }
                                             }
                                             break;
                                          }
                                          §§goto(addr43);
                                          §§goto(addr38);
                                       }
                                       else
                                       {
                                          §§goto(addr57);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr43);
                                    }
                                    §§goto(addr43);
                              }
                              return;
                              §§push(3);
                           }
                           §§goto(addr172);
                        }
                        §§goto(addr162);
                     }
                     §§goto(addr172);
                  }
                  §§goto(addr149);
               }
               §§goto(addr146);
            }
            §§goto(addr164);
         }
         §§goto(addr87);
      }
      
      public static function §9!T§() : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = "";
         if(!_loc2_)
         {
            §§push(§]3§);
            loop0:
            while(true)
            {
               §§push(§§pop().toString());
               addr167:
               while(true)
               {
                  _loc1_ = §§pop();
                  addr168:
                  while(true)
                  {
                     §§push(§8H§);
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr121);
      }
   }
}
