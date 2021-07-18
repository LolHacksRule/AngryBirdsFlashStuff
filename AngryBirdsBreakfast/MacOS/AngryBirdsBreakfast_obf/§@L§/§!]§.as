package §@L§
{
   public class §!]§
   {
      
      public static const §%!&§:String = "damage";
      
      public static const §#"$§:String = "removed";
      
      public static const §5!Q§:String = "extraBird";
      
      private static var §4i§:Array;
      
      private static var §"3§:Array;
      
      private static var § "'§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §%!&§ = "damage";
            while(true)
            {
               §#"$§ = "removed";
               §§goto(addr67);
            }
         }
         addr67:
         while(true)
         {
            §5!Q§ = "extraBird";
            if(!_loc1_)
            {
               if(_loc2_ || _loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §!]§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
            do
            {
               init();
            }
            while(!_loc2_);
            
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §4i§ = [];
            do
            {
               §"3§ = [];
               do
               {
                  § "'§ = [];
               }
               while(!_loc2_);
               
            }
            while(!_loc2_);
            
         }
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            if(param1 == 0)
            {
               if(!(_loc5_ && §!]§))
               {
                  §§goto(addr100);
               }
            }
            var _loc3_:* = param2;
            if(_loc4_)
            {
               §§push(§%!&§);
               if(_loc4_ || §!]§)
               {
                  §§push(_loc3_);
                  if(_loc4_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr128:
                           §§push(0);
                           if(!(_loc4_ || _loc3_))
                           {
                              addr176:
                           }
                        }
                        else
                        {
                           addr158:
                           §§push(2);
                           if(!(_loc5_ && param2))
                           {
                              §§goto(addr176);
                           }
                        }
                        §§goto(addr181);
                     }
                     else
                     {
                        §§push(§#"$§);
                        if(_loc4_ || §!]§)
                        {
                           §§push(_loc3_);
                           if(_loc4_)
                           {
                              addr148:
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc5_)
                                 {
                                    §§push(1);
                                    if(_loc5_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr158);
                                 }
                                 §§goto(addr181);
                              }
                              else
                              {
                                 addr156:
                                 §§push(§5!Q§);
                                 §§push(_loc3_);
                              }
                              §§goto(addr158);
                           }
                           if(§§pop() === §§pop())
                           {
                              §§goto(addr158);
                           }
                           else
                           {
                              §§push(3);
                           }
                           addr181:
                           switch(§§pop())
                           {
                              case 0:
                                 addr78:
                                 §4i§.push(param1);
                                 break;
                                 addr79:
                                 addr77:
                              case 1:
                                 addr62:
                                 §§push(§"3§);
                                 §§push(param1);
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§pop().push(§§pop());
                                    addr70:
                                    if(!_loc5_)
                                    {
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr78);
                                 }
                                 §§goto(addr79);
                              case 2:
                                 §§push(§ "'§);
                                 if(_loc4_ || param2)
                                 {
                                    if(_loc4_ || param1)
                                    {
                                       §§push(param1);
                                       if(!(_loc5_ && §!]§))
                                       {
                                          §§pop().push(§§pop());
                                          if(_loc4_)
                                          {
                                             if(_loc4_ || param1)
                                             {
                                                if(true)
                                                {
                                                   break;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr70);
                                             }
                                             §§goto(addr78);
                                          }
                                          break;
                                       }
                                       §§goto(addr62);
                                       §§goto(addr78);
                                    }
                                    else
                                    {
                                       §§goto(addr77);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr62);
                                 }
                                 §§goto(addr62);
                           }
                           return;
                        }
                        §§goto(addr156);
                     }
                  }
                  §§goto(addr148);
               }
               §§goto(addr156);
            }
            §§goto(addr128);
         }
         addr100:
      }
      
      public static function §5"-§() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = "";
         if(!_loc3_)
         {
            §§push(§4i§);
            while(true)
            {
               §§push(§§pop().toString());
               loop1:
               while(true)
               {
                  _loc1_ = §§pop();
                  while(true)
                  {
                     §§push(§"3§);
                     loop3:
                     while(true)
                     {
                        if(§§pop().length <= 0)
                        {
                           continue;
                        }
                        while(true)
                        {
                           §§push(_loc1_);
                           while(_loc2_ || _loc3_)
                           {
                              §§push(",0,");
                              loop6:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 addr176:
                                 while(true)
                                 {
                                    _loc1_ = §§pop();
                                    addr177:
                                    while(true)
                                    {
                                       §§push(_loc1_);
                                       while(true)
                                       {
                                          §§push(§"3§);
                                          addr146:
                                          addr105:
                                          while(true)
                                          {
                                             §§push(§§pop() + §§pop().toString());
                                             addr149:
                                             while(true)
                                             {
                                                _loc1_ = §§pop();
                                                addr150:
                                                while(true)
                                                {
                                                   continue loop3;
                                                }
                                             }
                                          }
                                          addr105:
                                          while(!(_loc3_ && §!]§))
                                          {
                                             continue loop6;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr142);
      }
   }
}
