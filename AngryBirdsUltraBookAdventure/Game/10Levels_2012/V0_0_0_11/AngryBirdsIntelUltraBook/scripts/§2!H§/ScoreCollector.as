package §2!H§
{
   public class ScoreCollector
   {
      
      public static const §!!T§:String = "damage";
      
      public static const §&o§:String = "removed";
      
      public static const §0C§:String = "extraBird";
      
      private static var §^z§:Array;
      
      private static var §]+§:Array;
      
      private static var §4>§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §!!T§ = "damage";
            do
            {
               §&o§ = "removed";
               do
               {
                  §0C§ = "extraBird";
               }
               while(!_loc1_);
               
            }
            while(_loc2_ && _loc1_);
            
         }
      }
      
      public function ScoreCollector()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
         do
         {
            init();
         }
         while(_loc1_);
         
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || ScoreCollector)
         {
            §^z§ = [];
            while(true)
            {
               §]+§ = [];
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     §4>§ = [];
                     if(!_loc1_)
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
      
      public static function addScore(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(param1 == 0)
            {
               if(!_loc4_)
               {
                  return;
               }
               addr73:
            }
            var _loc3_:* = param2;
            if(!(_loc4_ && ScoreCollector))
            {
               §§push(§!!T§);
               if(!(_loc4_ && param2))
               {
                  §§push(_loc3_);
                  if(_loc5_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_ || param1)
                        {
                           §§push(0);
                           if(!_loc5_)
                           {
                              addr163:
                           }
                        }
                        else
                        {
                           addr166:
                           §§push(3);
                           if(!(_loc4_ && param2))
                           {
                              addr174:
                           }
                        }
                        §§goto(addr176);
                     }
                     else
                     {
                        §§push(§&o§);
                        if(_loc5_ || param2)
                        {
                           addr129:
                           §§push(_loc3_);
                           if(!_loc4_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc4_ && param1))
                                 {
                                    §§push(1);
                                    if(!_loc5_)
                                    {
                                       §§goto(addr174);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr166);
                                 }
                                 §§goto(addr176);
                              }
                              else
                              {
                                 §§push(§0C§);
                              }
                              §§goto(addr166);
                           }
                           addr157:
                           if(§§pop() !== §§pop())
                           {
                              if(false)
                              {
                                 §§goto(addr166);
                              }
                              else
                              {
                                 §§push(3);
                              }
                              addr176:
                              switch(§§pop())
                              {
                                 case 0:
                                    addr64:
                                    §^z§.push(param1);
                                    addr45:
                                    break;
                                    addr63:
                                    addr66:
                                 case 1:
                                    addr50:
                                    §§push(§]+§);
                                    if(!_loc4_)
                                    {
                                       addr53:
                                       §§pop().push(param1);
                                       if(_loc5_)
                                       {
                                          break;
                                       }
                                       break;
                                    }
                                    §§goto(addr63);
                                    break;
                                 case 2:
                                    §§push(§4>§);
                                    if(_loc5_)
                                    {
                                       §§push(param1);
                                       if(!_loc4_)
                                       {
                                          if(_loc5_)
                                          {
                                             §§pop().push(§§pop());
                                             if(_loc5_ || param2)
                                             {
                                                if(!_loc4_)
                                                {
                                                   if(true)
                                                   {
                                                      break;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr66);
                                                }
                                                §§goto(addr45);
                                             }
                                             break;
                                          }
                                          §§goto(addr64);
                                          §§goto(addr64);
                                       }
                                       else
                                       {
                                          §§goto(addr53);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr50);
                                    }
                                    §§goto(addr64);
                              }
                              return;
                           }
                           if(!_loc4_)
                           {
                              §§push(2);
                              if(_loc5_)
                              {
                                 §§goto(addr163);
                              }
                           }
                           else
                           {
                              §§goto(addr166);
                           }
                           §§goto(addr176);
                           §§goto(addr166);
                        }
                        §§push(_loc3_);
                     }
                     §§goto(addr166);
                  }
                  §§goto(addr157);
               }
               §§goto(addr129);
            }
            §§goto(addr166);
         }
         §§goto(addr73);
      }
      
      public static function §@!^§() : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = "";
         if(_loc3_)
         {
            §§push(§^z§);
            loop0:
            while(true)
            {
               §§push(§§pop().toString());
               loop1:
               while(true)
               {
                  _loc1_ = §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(§]+§);
                     while(true)
                     {
                        if(§§pop().length > 0)
                        {
                           while(true)
                           {
                              §§push(_loc1_);
                              addr153:
                              while(!_loc2_)
                              {
                                 §§push(",0,");
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    addr157:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       addr158:
                                       while(true)
                                       {
                                          _loc1_ = §§pop();
                                          addr159:
                                          while(true)
                                          {
                                             §§push(_loc1_);
                                             addr139:
                                             while(true)
                                             {
                                                §§push(§]+§);
                                                addr141:
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop().toString());
                                                   addr144:
                                                   while(true)
                                                   {
                                                      _loc1_ = §§pop();
                                                      addr145:
                                                      while(true)
                                                      {
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              continue loop1;
                           }
                           addr152:
                        }
                        while(true)
                        {
                           §§push(§4>§);
                           if(_loc2_)
                           {
                              break;
                           }
                           if(_loc2_)
                           {
                              continue loop0;
                           }
                           if(§§pop().length > 0)
                           {
                              if(!_loc2_)
                              {
                                 if(_loc3_)
                                 {
                                    if(!_loc2_)
                                    {
                                       if(_loc3_)
                                       {
                                          §§push(_loc1_);
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             §§push(",0,");
                                             if(_loc3_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!(_loc2_ && ScoreCollector))
                                                {
                                                   §§push(§§pop());
                                                   loop15:
                                                   while(!(_loc2_ && _loc3_))
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            _loc1_ = §§pop();
                                                            loop16:
                                                            for(; _loc3_ || ScoreCollector; _loc1_ = §§pop(),if(!(_loc2_ && _loc3_))
                                                            {
                                                               addr58:
                                                               while(true)
                                                               {
                                                                  §§push(_loc1_);
                                                                  if(_loc3_)
                                                                  {
                                                                     if(_loc3_ || _loc1_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§goto(addr39);
                                                                  }
                                                                  §§goto(addr48);
                                                                  §§goto(addr58);
                                                               }
                                                               return §§pop();
                                                               addr23:
                                                            })
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(_loc1_);
                                                                  addr39:
                                                                  while(true)
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        continue loop15;
                                                                     }
                                                                     §§push(§4>§);
                                                                     if(!_loc2_)
                                                                     {
                                                                        §§push(§§pop() + §§pop().toString());
                                                                        while(_loc3_)
                                                                        {
                                                                           continue loop16;
                                                                        }
                                                                        §§goto(addr158);
                                                                        addr48:
                                                                     }
                                                                     §§goto(addr141);
                                                                  }
                                                               }
                                                            }
                                                            continue loop2;
                                                            addr119:
                                                         }
                                                         §§goto(addr153);
                                                         §§goto(addr158);
                                                      }
                                                      §§goto(addr139);
                                                   }
                                                   §§goto(addr144);
                                                   addr107:
                                                }
                                                §§goto(addr157);
                                             }
                                             §§goto(addr156);
                                          }
                                          §§goto(addr107);
                                       }
                                       else
                                       {
                                          §§goto(addr152);
                                       }
                                    }
                                    §§goto(addr159);
                                 }
                                 §§goto(addr145);
                              }
                              §§goto(addr119);
                           }
                           §§goto(addr23);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr136);
      }
   }
}
