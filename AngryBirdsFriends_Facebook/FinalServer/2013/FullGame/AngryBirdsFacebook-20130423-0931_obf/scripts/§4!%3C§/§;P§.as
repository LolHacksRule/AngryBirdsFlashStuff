package §4!<§
{
   public class §;P§
   {
      
      public static const §#"I§:String = "damage";
      
      public static const §6=§:String = "removed";
      
      public static const §0n§:String = "extraBird";
      
      private static var §;!p§:Array;
      
      private static var §&!P§:Array;
      
      private static var §&!W§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §#"I§ = "damage";
         }
         while(true)
         {
            §6=§ = "removed";
            while(!_loc1_)
            {
               §0n§ = "extraBird";
               if(!(_loc1_ && _loc2_))
               {
                  return;
               }
            }
         }
      }
      
      public function §;P§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §;!p§ = [];
         }
         do
         {
            §&!P§ = [];
            do
            {
               §&!W§ = [];
            }
            while(_loc2_ && _loc2_);
            
         }
         while(_loc2_);
         
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            if(param1 == 0)
            {
               if(_loc5_)
               {
                  §§goto(addr101);
               }
            }
            var _loc3_:* = param2;
            if(!_loc4_)
            {
               §§push(§#"I§);
               if(!(_loc4_ && _loc3_))
               {
                  §§push(_loc3_);
                  if(!(_loc4_ && param1))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc4_ && param2))
                        {
                           §§push(0);
                           if(!_loc5_)
                           {
                              addr182:
                           }
                        }
                        else
                        {
                           addr179:
                           §§push(2);
                           if(_loc5_)
                           {
                              §§goto(addr182);
                           }
                        }
                        §§goto(addr187);
                     }
                     else
                     {
                        §§push(§6=§);
                        if(_loc5_ || _loc3_)
                        {
                           addr146:
                           §§push(_loc3_);
                           if(!_loc4_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    addr167:
                                    §§push(1);
                                    if(_loc4_ && §;P§)
                                    {
                                       §§goto(addr182);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr179);
                                 }
                                 §§goto(addr187);
                              }
                              else
                              {
                                 §§push(§0n§);
                              }
                              §§goto(addr179);
                           }
                           §§goto(addr178);
                        }
                        addr178:
                        if(§§pop() === §§pop())
                        {
                           §§goto(addr179);
                        }
                        else
                        {
                           §§push(3);
                        }
                        addr187:
                        switch(§§pop())
                        {
                           case 0:
                              addr94:
                              §;!p§.push(param1);
                              break;
                              addr93:
                              addr95:
                           case 1:
                              addr67:
                              §§push(§&!P§);
                              if(!_loc4_)
                              {
                                 addr70:
                                 §§push(param1);
                                 if(!(_loc4_ && param2))
                                 {
                                    §§pop().push(§§pop());
                                    break;
                                    addr78:
                                 }
                              }
                              else
                              {
                                 §§goto(addr93);
                              }
                              §§goto(addr94);
                           case 2:
                              §§push(§&!W§);
                              if(!(_loc4_ && §;P§))
                              {
                                 §§push(param1);
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§pop().push(§§pop());
                                    if(!_loc4_)
                                    {
                                       if(_loc5_ || param1)
                                       {
                                          if(!(_loc4_ && param2))
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr95);
                                          }
                                          §§goto(addr94);
                                       }
                                       else
                                       {
                                          §§goto(addr78);
                                       }
                                    }
                                    break;
                                 }
                                 §§goto(addr70);
                                 §§goto(addr94);
                              }
                              else
                              {
                                 §§goto(addr67);
                              }
                        }
                        return;
                        §§push(_loc3_);
                     }
                     §§goto(addr179);
                  }
                  §§goto(addr178);
               }
               §§goto(addr146);
            }
            §§goto(addr167);
         }
         addr101:
      }
      
      public static function §84§() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = "";
         if(_loc2_)
         {
            §§push(§;!p§);
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
                     §§push(§&!P§);
                     while(true)
                     {
                        if(§§pop().length > 0)
                        {
                           if(_loc2_ || _loc3_)
                           {
                              §§push(_loc1_);
                              while(true)
                              {
                                 §§push(",0,");
                                 addr173:
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    addr174:
                                    while(true)
                                    {
                                       _loc1_ = §§pop();
                                    }
                                 }
                              }
                              addr172:
                           }
                           loop7:
                           while(_loc2_)
                           {
                              §§push(_loc1_);
                              loop8:
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    if(!(_loc2_ || _loc3_))
                                    {
                                       continue loop1;
                                    }
                                    §§push(§&!P§);
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop().toString());
                                       addr140:
                                       while(true)
                                       {
                                          _loc1_ = §§pop();
                                          addr141:
                                          while(_loc2_ || _loc2_)
                                          {
                                          }
                                          continue loop7;
                                       }
                                       addr44:
                                       §§push(§&!W§);
                                       if(_loc2_ || _loc1_)
                                       {
                                          §§push(§§pop() + §§pop().toString());
                                          continue loop8;
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr172);
                                 }
                              }
                              §§goto(addr173);
                           }
                           continue loop2;
                        }
                        while(true)
                        {
                           §§push(§&!W§);
                           if(!_loc2_)
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
         §§goto(addr65);
      }
   }
}
