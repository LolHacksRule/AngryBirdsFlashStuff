package §"!I§
{
   public class § !;§
   {
      
      public static const §[F§:String = "damage";
      
      public static const §!9§:String = "removed";
      
      public static const §<!A§:String = "extraBird";
      
      private static var §]s§:Array;
      
      private static var §-!d§:Array;
      
      private static var §=J§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || § !;§)
         {
            §[F§ = "damage";
         }
         do
         {
            §!9§ = "removed";
            do
            {
               §<!A§ = "extraBird";
            }
            while(!_loc1_);
            
         }
         while(!_loc1_);
         
      }
      
      public function § !;§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
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
         if(!_loc1_)
         {
            §]s§ = [];
            do
            {
               §-!d§ = [];
               do
               {
                  §=J§ = [];
               }
               while(!_loc2_);
               
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(param1 == 0)
            {
               if(_loc4_)
               {
                  §§goto(addr95);
               }
            }
            var _loc3_:* = param2;
            if(_loc4_)
            {
               §§push(§[F§);
               if(!_loc5_)
               {
                  §§push(_loc3_);
                  if(_loc4_ || § !;§)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc4_)
                        {
                           addr118:
                           §§push(0);
                           if(!(_loc4_ || param2))
                           {
                              addr144:
                           }
                        }
                        else
                        {
                           addr148:
                           §§push(2);
                           if(!(_loc5_ && param2))
                           {
                              addr166:
                           }
                        }
                        §§goto(addr171);
                     }
                     else
                     {
                        §§push(§!9§);
                        if(!_loc5_)
                        {
                           addr130:
                           §§push(_loc3_);
                           if(!_loc5_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc4_ || param2)
                                 {
                                    §§push(1);
                                    if(!_loc5_)
                                    {
                                       §§goto(addr144);
                                    }
                                    else
                                    {
                                       §§goto(addr166);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr148);
                                 }
                                 §§goto(addr171);
                              }
                              else
                              {
                                 §§push(§<!A§);
                              }
                              §§goto(addr148);
                           }
                           §§goto(addr147);
                        }
                        addr147:
                        if(§§pop() === §§pop())
                        {
                           §§goto(addr148);
                        }
                        else
                        {
                           §§push(3);
                        }
                        addr171:
                        switch(§§pop())
                        {
                           case 0:
                              addr78:
                              §]s§.push(param1);
                              break;
                              addr89:
                              addr77:
                           case 1:
                              addr57:
                              §§push(§-!d§);
                              §§push(param1);
                              if(_loc4_ || _loc3_)
                              {
                                 §§pop().push(§§pop());
                                 addr65:
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 §§goto(addr78);
                              }
                              §§goto(addr89);
                           case 2:
                              §§push(§=J§);
                              if(_loc4_ || § !;§)
                              {
                                 if(_loc4_)
                                 {
                                    §§push(param1);
                                    if(_loc4_)
                                    {
                                       §§pop().push(§§pop());
                                       if(!(_loc5_ && param2))
                                       {
                                          if(_loc4_ || _loc3_)
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr65);
                                          }
                                          §§goto(addr78);
                                       }
                                       break;
                                    }
                                    §§goto(addr57);
                                    §§goto(addr78);
                                 }
                                 else
                                 {
                                    §§goto(addr77);
                                 }
                              }
                              else
                              {
                                 §§goto(addr57);
                              }
                              §§goto(addr57);
                        }
                        return;
                        §§push(_loc3_);
                     }
                     §§goto(addr148);
                  }
                  §§goto(addr147);
               }
               §§goto(addr130);
            }
            §§goto(addr118);
         }
         addr95:
      }
      
      public static function §4!4§() : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = "";
         if(!(_loc2_ && _loc3_))
         {
            §§push(§]s§);
            while(true)
            {
               §§push(§§pop().toString());
               addr167:
               while(true)
               {
                  _loc1_ = §§pop();
                  addr168:
                  loop2:
                  while(true)
                  {
                     §§push(§-!d§);
                     while(true)
                     {
                        if(§§pop().length <= 0)
                        {
                           continue;
                        }
                        while(true)
                        {
                           §§push(_loc1_);
                           addr160:
                           while(true)
                           {
                              §§push(",0,");
                              addr161:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 addr162:
                                 while(true)
                                 {
                                    _loc1_ = §§pop();
                                    addr163:
                                    while(true)
                                    {
                                       §§push(_loc1_);
                                       if(_loc3_ || _loc3_)
                                       {
                                          §§push(§-!d§);
                                          while(true)
                                          {
                                             §§push(§§pop() + §§pop().toString());
                                          }
                                          addr137:
                                       }
                                       addr140:
                                       while(true)
                                       {
                                          _loc1_ = §§pop();
                                          addr141:
                                          while(!_loc2_)
                                          {
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               if(_loc2_ && _loc3_)
               {
                  continue;
               }
               if(§§pop().length > 0)
               {
                  if(_loc3_ || _loc2_)
                  {
                     if(_loc3_ || § !;§)
                     {
                        if(_loc3_)
                        {
                           §§push(_loc1_);
                           loop13:
                           while(true)
                           {
                              §§push(",0,");
                              if(_loc3_ || _loc1_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!_loc2_)
                                 {
                                    _loc1_ = §§pop();
                                    loop14:
                                    while(true)
                                    {
                                       §§push(_loc1_);
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             §§push(§=J§);
                                             if(!_loc2_)
                                             {
                                                §§push(§§pop() + §§pop().toString());
                                                while(!_loc2_)
                                                {
                                                   continue loop14;
                                                }
                                                §§goto(addr140);
                                                addr60:
                                             }
                                             break;
                                          }
                                          §§goto(addr167);
                                          §§goto(addr168);
                                          addr31:
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             if(_loc3_)
                                             {
                                                if(!(_loc3_ || § !;§))
                                                {
                                                   §§goto(addr160);
                                                }
                                                return §§pop();
                                             }
                                             continue loop13;
                                          }
                                       }
                                       §§goto(addr137);
                                    }
                                    addr126:
                                 }
                                 §§goto(addr162);
                              }
                              break;
                           }
                           §§goto(addr161);
                        }
                        §§goto(addr149);
                     }
                     §§goto(addr141);
                  }
                  §§goto(addr126);
               }
               §§goto(addr27);
            }
         }
         while(true)
         {
            §§goto(addr73);
         }
      }
   }
}
