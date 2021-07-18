package §=!M§
{
   import com.rovio.assets.§>!]§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §"o§ extends Sprite
   {
      
      private static var §3>§:Boolean = false;
      
      private static const §;!3§:String = "Mouse_Cursors";
      
      private static var §#"8§:Sprite;
      
      private static var §=D§:MovieClip;
      
      private static var §7D§:String;
      
      private static var §]!e§:String = "";
      
      private static var §-!r§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §3>§ = false;
         }
         loop0:
         while(true)
         {
            §;!3§ = "Mouse_Cursors";
            do
            {
               §]!e§ = "";
               continue loop0;
            }
            while(!(_loc2_ || §"o§));
            
            return;
         }
      }
      
      public function §"o§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §^!+§(param1:String) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Sprite = null;
         if(_loc6_)
         {
            if(§7D§ == param1)
            {
               if(_loc6_)
               {
                  addr27:
                  §§push(true);
                  if(_loc6_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr31:
                  §§push(false);
               }
               var _loc2_:* = §§pop();
               if(!(_loc5_ && param1))
               {
                  §7D§ = "";
                  while(true)
                  {
                     §-!r§ = false;
                     while(true)
                     {
                        §§push(§3>§);
                        if(!_loc5_)
                        {
                           §§push(!§§pop());
                           if(_loc6_ || §"o§)
                           {
                              addr117:
                              if(!§§pop())
                              {
                                 loop2:
                                 while(true)
                                 {
                                    §§pop();
                                    addr120:
                                    while(true)
                                    {
                                       §§push(!§=D§);
                                       if(!_loc6_)
                                       {
                                          continue loop2;
                                       }
                                    }
                                 }
                                 addr119:
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc6_ || §"o§)
                                    {
                                       §§goto(addr71);
                                       §§push(§5B§());
                                    }
                                    §§goto(addr95);
                                 }
                                 §§goto(addr130);
                              }
                           }
                           §§goto(addr119);
                        }
                        §§goto(addr117);
                        if(_loc5_ && param1)
                        {
                           continue;
                        }
                        while(true)
                        {
                           Mouse.show();
                           §§goto(addr95);
                        }
                     }
                     if(_loc6_ || §"o§)
                     {
                        §§push(false);
                        if(!_loc6_)
                        {
                           §§goto(addr71);
                        }
                        return §§pop();
                     }
                  }
               }
               §§goto(addr93);
            }
            §§goto(addr31);
         }
         §§goto(addr27);
      }
      
      private static function §5B§() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Class = §>!]§.§1!8§(§;!3§);
         if(!(_loc3_ && _loc1_))
         {
            §=D§ = new _loc1_();
            loop0:
            while(§=D§)
            {
               loop1:
               while(true)
               {
                  §#"8§.addChild(§=D§);
                  loop2:
                  while(true)
                  {
                     §#"8§.mouseChildren = false;
                     loop3:
                     while(true)
                     {
                        §=D§.mouseEnabled = false;
                        while(true)
                        {
                           §#"8§.mouseEnabled = false;
                           addr92:
                           loop5:
                           while(true)
                           {
                              §=D§.enabled = false;
                              while(true)
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    if(!_loc3_)
                                    {
                                       continue;
                                    }
                                    continue loop0;
                                 }
                                 continue loop5;
                              }
                              continue loop2;
                           }
                           if(_loc2_ || _loc3_)
                           {
                              if(_loc2_)
                              {
                                 continue loop1;
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
            §§push(§=D§ == null);
            if(!_loc3_)
            {
               return !§§pop();
            }
         }
         §§goto(addr92);
      }
      
      public static function §2!a§() : Boolean
      {
         return §6!H§("_Down");
      }
      
      public static function §[!?§() : Boolean
      {
         return §6!H§("_Up");
      }
      
      private static function §6!H§(param1:String) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(!§=D§);
            if(_loc5_ || _loc2_)
            {
               §§push(§§pop());
               loop0:
               while(true)
               {
                  if(!§§pop())
                  {
                     addr108:
                     while(true)
                     {
                        §§pop();
                        addr109:
                        while(true)
                        {
                           addr68:
                           while(true)
                           {
                              §§push(§7D§.length < 1);
                           }
                        }
                     }
                     addr108:
                  }
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
            §§goto(addr108);
         }
         §§goto(addr109);
      }
      
      public static function activate() : Sprite
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(!§3>§)
            {
               do
               {
                  §#"8§ = new Sprite();
                  do
                  {
                     §3>§ = true;
                  }
                  while(_loc1_);
                  
               }
               while(!_loc2_);
               
               if(!(_loc1_ && _loc1_))
               {
                  return §#"8§;
               }
            }
         }
         return §#"8§;
      }
      
      public static function §-P§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || §"o§)
         {
            §§push(§3>§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(!§=D§);
                              if(!(_loc4_ && param1))
                              {
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(_loc4_ && param2)
                                    {
                                       break;
                                    }
                                    if(!§§pop())
                                    {
                                       loop5:
                                       while(true)
                                       {
                                          §§pop();
                                          loop6:
                                          while(true)
                                          {
                                             §§push(!§=D§.visible);
                                             if(!(_loc3_ || §"o§))
                                             {
                                                continue loop5;
                                             }
                                             if(!_loc3_)
                                             {
                                                continue loop3;
                                             }
                                             if(!_loc3_)
                                             {
                                                continue loop1;
                                             }
                                             if(!_loc3_)
                                             {
                                                continue loop0;
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   break loop6;
                                                }
                                                loop7:
                                                while(true)
                                                {
                                                   §#"8§.x = param1;
                                                   while(!_loc4_)
                                                   {
                                                      §#"8§.y = param2;
                                                      if(!(_loc4_ && §"o§))
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            break loop7;
                                                         }
                                                         continue loop7;
                                                      }
                                                   }
                                                   continue loop4;
                                                }
                                                if(!(_loc3_ || _loc3_))
                                                {
                                                   break loop6;
                                                }
                                                if(!(_loc4_ && param1))
                                                {
                                                   return;
                                                }
                                                continue loop6;
                                             }
                                          }
                                          return;
                                       }
                                       addr124:
                                    }
                                    §§goto(addr90);
                                 }
                                 continue loop2;
                                 addr104:
                              }
                              §§goto(addr124);
                           }
                        }
                     }
                     §§goto(addr104);
                  }
               }
            }
         }
         §§goto(addr93);
      }
      
      public static function §9$§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(§=D§)
            {
               loop0:
               do
               {
                  if(§=D§.visible)
                  {
                     if(!_loc2_)
                     {
                        §]!e§ = §7D§;
                     }
                     loop1:
                     while(true)
                     {
                        addr23:
                        while(true)
                        {
                           §^!+§("");
                           if(!(_loc2_ && §"o§))
                           {
                              break;
                           }
                           continue loop1;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr23);
               }
               while(!_loc1_);
               
               addr59:
            }
            return;
         }
         §§goto(addr59);
      }
      
      public static function §'X§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§=D§)
            {
               if(_loc2_ || _loc1_)
               {
                  addr38:
                  if(!§=D§.visible)
                  {
                     if(_loc1_ && _loc1_)
                     {
                     }
                  }
                  §§goto(addr61);
               }
               §^!+§(§]!e§);
            }
            addr61:
            return;
         }
         §§goto(addr38);
      }
   }
}
