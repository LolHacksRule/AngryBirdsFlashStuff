package §?A§
{
   public class ScoreCollector
   {
      
      public static const §"+§:String = "damage";
      
      public static const §'J§:String = "removed";
      
      public static const §+A§:String = "extraBird";
      
      private static var §0T§:Array;
      
      private static var §^+§:Array;
      
      private static var §var§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §"+§ = "damage";
         }
         do
         {
            §'J§ = "removed";
            do
            {
               §+A§ = "extraBird";
            }
            while(_loc2_);
            
         }
         while(!(_loc1_ || ScoreCollector));
         
      }
      
      public function ScoreCollector()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
         do
         {
            init();
         }
         while(!_loc2_);
         
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §0T§ = [];
            while(true)
            {
               §^+§ = [];
               loop1:
               while(!_loc1_)
               {
                  while(true)
                  {
                     §var§ = [];
                     if(_loc2_ || ScoreCollector)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr57);
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && ScoreCollector))
         {
            if(param1 == 0)
            {
               if(_loc4_)
               {
                  §§goto(addr111);
               }
            }
            var _loc3_:* = param2;
            if(!(_loc5_ && param2))
            {
               §§push(§"+§);
               if(_loc4_ || _loc3_)
               {
                  §§push(_loc3_);
                  if(_loc4_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc4_ || param2)
                        {
                           addr145:
                           §§push(0);
                           if(!(_loc4_ || _loc3_))
                           {
                              addr187:
                           }
                        }
                        else
                        {
                           addr200:
                           §§push(3);
                           if(_loc4_)
                           {
                              addr203:
                           }
                        }
                        §§goto(addr205);
                     }
                     else
                     {
                        §§push(§'J§);
                        if(!_loc5_)
                        {
                           addr158:
                           §§push(_loc3_);
                           if(!(_loc5_ && ScoreCollector))
                           {
                              addr166:
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc5_ && param2))
                                 {
                                    §§push(1);
                                    if(!_loc5_)
                                    {
                                       §§goto(addr187);
                                    }
                                    else
                                    {
                                       §§goto(addr203);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr200);
                                 }
                                 §§goto(addr205);
                              }
                              else
                              {
                                 addr190:
                                 §§push(§+A§);
                                 §§push(_loc3_);
                              }
                              §§goto(addr200);
                           }
                           if(§§pop() !== §§pop())
                           {
                              if(false)
                              {
                                 §§goto(addr200);
                              }
                              else
                              {
                                 §§push(3);
                              }
                              addr205:
                              switch(§§pop())
                              {
                                 case 0:
                                    addr86:
                                    §0T§.push(param1);
                                    addr85:
                                    if(!(_loc5_ && ScoreCollector))
                                    {
                                       addr64:
                                       break;
                                    }
                                    break;
                                 case 1:
                                    addr69:
                                    §§push(§^+§);
                                    if(!(_loc5_ && param2))
                                    {
                                       addr77:
                                       §§pop().push(param1);
                                       break;
                                       addr79:
                                    }
                                    else
                                    {
                                       §§goto(addr85);
                                    }
                                    break;
                                 case 2:
                                    §§push(§var§);
                                    if(_loc4_ || param2)
                                    {
                                       §§push(param1);
                                       if(_loc4_ || ScoreCollector)
                                       {
                                          if(!(_loc5_ && param1))
                                          {
                                             §§pop().push(§§pop());
                                             if(!(_loc5_ && param2))
                                             {
                                                if(!_loc5_)
                                                {
                                                   if(true)
                                                   {
                                                      break;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr79);
                                                }
                                             }
                                             break;
                                          }
                                          §§goto(addr86);
                                          §§goto(addr64);
                                       }
                                       else
                                       {
                                          §§goto(addr77);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr69);
                                    }
                                    §§goto(addr86);
                              }
                              return;
                           }
                           if(_loc4_)
                           {
                              §§push(2);
                              if(_loc5_)
                              {
                              }
                           }
                           else
                           {
                              §§goto(addr200);
                           }
                           §§goto(addr205);
                           §§goto(addr200);
                        }
                        §§goto(addr190);
                     }
                  }
                  §§goto(addr166);
               }
               §§goto(addr158);
            }
            §§goto(addr145);
         }
         addr111:
      }
      
      public static function §=!4§() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = "";
         if(!_loc3_)
         {
            §§push(§0T§);
            loop0:
            while(true)
            {
               §§push(§§pop().toString());
               addr183:
               while(true)
               {
                  _loc1_ = §§pop();
                  addr184:
                  while(true)
                  {
                     §§push(§^+§);
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr91);
         }
      }
   }
}
