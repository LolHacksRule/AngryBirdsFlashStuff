package §40§
{
   public class §-!8§
   {
      
      public static const §6!K§:String = "damage";
      
      public static const §const§:String = "removed";
      
      public static const §'!b§:String = "extraBird";
      
      private static var §?#§:Array;
      
      private static var §+H§:Array;
      
      private static var §]!§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §6!K§ = "damage";
            while(true)
            {
               §const§ = "removed";
               while(_loc2_)
               {
                  §'!b§ = "extraBird";
                  if(!_loc1_)
                  {
                     return;
                     addr45:
                  }
               }
            }
         }
         §§goto(addr45);
      }
      
      public function §-!8§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
         do
         {
            init();
         }
         while(!(_loc1_ || _loc2_));
         
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §?#§ = [];
            while(true)
            {
               §+H§ = [];
               §§goto(addr51);
            }
         }
         addr51:
         while(true)
         {
            §]!§ = [];
            if(_loc1_)
            {
               if(_loc1_ || §-!8§)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc3_)
         {
            if(param1 == 0)
            {
               if(!_loc5_)
               {
                  return;
               }
               addr96:
            }
            var _loc3_:* = param2;
            if(!(_loc5_ && param1))
            {
               §§push(§6!K§);
               if(!_loc5_)
               {
                  §§push(_loc3_);
                  if(_loc4_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc4_ || _loc3_)
                        {
                           §§push(0);
                           if(!(_loc4_ || param1))
                           {
                              addr169:
                           }
                        }
                        else
                        {
                           addr173:
                           §§push(2);
                           if(_loc5_ && _loc3_)
                           {
                           }
                        }
                        §§goto(addr186);
                     }
                     else
                     {
                        §§push(§const§);
                        if(!(_loc5_ && §-!8§))
                        {
                           addr140:
                           §§push(_loc3_);
                           if(!_loc5_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc5_ && param1))
                                 {
                                    addr161:
                                    §§push(1);
                                    if(_loc4_ || §-!8§)
                                    {
                                       §§goto(addr169);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr173);
                                 }
                                 §§goto(addr186);
                              }
                              else
                              {
                                 §§push(§'!b§);
                              }
                              §§goto(addr173);
                           }
                           §§goto(addr172);
                        }
                        addr172:
                        if(§§pop() === §§pop())
                        {
                           §§goto(addr173);
                        }
                        else
                        {
                           §§push(3);
                        }
                        addr186:
                        switch(§§pop())
                        {
                           case 0:
                              addr78:
                              §?#§.push(param1);
                              break;
                              addr79:
                              addr77:
                           case 1:
                              addr50:
                              §§push(§+H§);
                              §§push(param1);
                              if(_loc4_ || param2)
                              {
                                 §§pop().push(§§pop());
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       break;
                                    }
                                 }
                                 break;
                              }
                              §§goto(addr78);
                              §§goto(addr79);
                           case 2:
                              §§push(§]!§);
                              if(_loc4_)
                              {
                                 if(!(_loc5_ && param1))
                                 {
                                    §§push(param1);
                                    if(!_loc5_)
                                    {
                                       §§pop().push(§§pop());
                                       if(!_loc5_)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                       }
                                       break;
                                    }
                                    §§goto(addr50);
                                    §§goto(addr78);
                                 }
                                 else
                                 {
                                    §§goto(addr77);
                                 }
                              }
                              else
                              {
                                 §§goto(addr50);
                              }
                              §§goto(addr50);
                        }
                        return;
                        §§push(_loc3_);
                     }
                     §§goto(addr173);
                  }
                  §§goto(addr172);
               }
               §§goto(addr140);
            }
            §§goto(addr161);
         }
         §§goto(addr96);
      }
      
      public static function §#$§() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = "";
         if(!(_loc3_ && §-!8§))
         {
            §§push(§?#§);
            loop0:
            while(true)
            {
               §§push(§§pop().toString());
               addr166:
               while(true)
               {
                  _loc1_ = §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(§+H§);
                     while(true)
                     {
                        if(§§pop().length > 0)
                        {
                           while(!(_loc3_ && §-!8§))
                           {
                              §§push(_loc1_);
                              while(true)
                              {
                                 §§push(",0,");
                                 addr160:
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    addr161:
                                    while(true)
                                    {
                                       _loc1_ = §§pop();
                                    }
                                 }
                              }
                           }
                           continue loop2;
                           addr151:
                        }
                        addr63:
                        while(true)
                        {
                           §§push(§]!§);
                           if(_loc3_ && _loc3_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr162);
      }
   }
}
