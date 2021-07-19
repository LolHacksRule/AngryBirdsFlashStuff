package §+!c§
{
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §&!0§ extends Sprite
   {
      
      private static var §1x§:Boolean = false;
      
      private static const §6!k§:String = "Mouse_Cursors";
      
      private static var §<"3§:Sprite;
      
      private static var §9!<§:MovieClip;
      
      private static var §?d§:String;
      
      private static var §]!`§:String = "";
      
      private static var §9"-§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §1x§ = false;
            loop0:
            while(true)
            {
               §6!k§ = "Mouse_Cursors";
               while(true)
               {
                  §]!`§ = "";
                  while(!_loc2_)
                  {
                     continue loop0;
                     §9"-§ = false;
                     if(!_loc2_)
                     {
                        return;
                        addr39:
                     }
                  }
               }
            }
         }
         §§goto(addr39);
      }
      
      public function §&!0§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
      }
      
      public static function §6B§(param1:String) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Sprite = null;
         if(!(_loc6_ && _loc3_))
         {
            if(§?d§ == param1)
            {
               if(!(_loc6_ && param1))
               {
                  §§push(true);
                  if(_loc5_ || _loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr45:
                  §§push(false);
               }
               var _loc2_:* = §§pop();
               if(_loc5_)
               {
                  §?d§ = "";
               }
               loop0:
               while(true)
               {
                  §9"-§ = false;
                  loop1:
                  while(true)
                  {
                     §§push(§1x§);
                     if(_loc6_)
                     {
                        continue;
                     }
                     §§push(!§§pop());
                     while(true)
                     {
                        if(!§§pop())
                        {
                           continue loop1;
                        }
                        addr97:
                        while(true)
                        {
                           if(§§pop())
                           {
                              continue loop0;
                           }
                           addr139:
                           var _loc3_:int = 0;
                           addr158:
                           if(_loc3_ < §9!<§.numChildren)
                           {
                              §9!<§.getChildAt(_loc3_).visible = false;
                              if(!_loc6_)
                              {
                                 _loc3_++;
                                 if(_loc5_ || param1)
                                 {
                                    §§goto(addr158);
                                 }
                              }
                           }
                           if(!(_loc4_ = §9!<§.getChildByName(param1) as Sprite))
                           {
                              if(!(_loc6_ && _loc2_))
                              {
                                 §9!<§.visible = false;
                                 if(!(_loc6_ && param1))
                                 {
                                    Mouse.show();
                                    addr390:
                                    §§push(false);
                                 }
                                 else
                                 {
                                    addr358:
                                    _loc2_ = true;
                                    addr373:
                                    if(!(_loc6_ && §&!0§))
                                    {
                                       Mouse.hide();
                                       addr331:
                                       addr345:
                                       §§push(_loc4_.numChildren > 1);
                                       if(_loc4_.numChildren > 1)
                                       {
                                          addr333:
                                          §§pop();
                                          if(_loc5_ || _loc2_)
                                          {
                                             addr314:
                                             if(_loc4_.getChildByName(§?d§ + "_Up"))
                                             {
                                                addr315:
                                                §9"-§ = true;
                                                addr318:
                                                if(_loc5_ || param1)
                                                {
                                                   addr273:
                                                   §§push(§9"-§);
                                                   if(_loc5_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc6_ && _loc3_))
                                                               {
                                                                  addr288:
                                                                  _loc3_ = 0;
                                                               }
                                                               addr289:
                                                               if(_loc5_)
                                                               {
                                                                  if(!(_loc6_ && _loc2_))
                                                                  {
                                                                     if(!(_loc6_ && _loc2_))
                                                                     {
                                                                        addr210:
                                                                        §§push(_loc3_);
                                                                        if(_loc5_)
                                                                        {
                                                                           if(§§pop() >= _loc4_.numChildren)
                                                                           {
                                                                              if(!(_loc6_ && param1))
                                                                              {
                                                                                 if(!(_loc6_ && _loc3_))
                                                                                 {
                                                                                    _loc4_.getChildByName(§?d§ + "_Up").visible = true;
                                                                                    addr199:
                                                                                    §§push(_loc2_);
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             §§goto(addr331);
                                                                                          }
                                                                                          return §§pop();
                                                                                       }
                                                                                       §§goto(addr333);
                                                                                    }
                                                                                    §§goto(addr273);
                                                                                    addr238:
                                                                                 }
                                                                                 addr241:
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    if(_loc5_ || §&!0§)
                                                                                    {
                                                                                       §§goto(addr210);
                                                                                    }
                                                                                    §§goto(addr390);
                                                                                 }
                                                                                 if(_loc5_ || _loc2_)
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          _loc3_++;
                                                                                          §§goto(addr241);
                                                                                       }
                                                                                       addr371:
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§goto(addr373);
                                                                                       }
                                                                                       addr380:
                                                                                       §?d§ = param1;
                                                                                       §9!<§.visible = true;
                                                                                       _loc4_.visible = true;
                                                                                       §§goto(addr371);
                                                                                       addr383:
                                                                                       addr378:
                                                                                       addr387:
                                                                                    }
                                                                                    §§goto(addr318);
                                                                                 }
                                                                                 §§goto(addr289);
                                                                              }
                                                                              §§goto(addr238);
                                                                           }
                                                                           _loc4_.getChildAt(_loc3_).visible = false;
                                                                           §§goto(addr241);
                                                                        }
                                                                        §§goto(addr288);
                                                                     }
                                                                     §§goto(addr345);
                                                                  }
                                                                  §§goto(addr333);
                                                               }
                                                               §§goto(addr315);
                                                            }
                                                            §§goto(addr199);
                                                         }
                                                         §§goto(addr386);
                                                      }
                                                      §§goto(addr358);
                                                   }
                                                   §§goto(addr314);
                                                }
                                                §§goto(addr383);
                                             }
                                             §§goto(addr273);
                                          }
                                          §§goto(addr358);
                                       }
                                       §§goto(addr314);
                                    }
                                    §§goto(addr378);
                                 }
                                 addr386:
                                 return §§pop();
                              }
                              §§goto(addr387);
                           }
                           §§goto(addr380);
                        }
                        addr90:
                        continue loop0;
                        if(!(_loc5_ || param1))
                        {
                           continue;
                        }
                        §§goto(addr97);
                     }
                  }
               }
            }
         }
         §§goto(addr45);
      }
      
      private static function §-"S§() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Class = §?q§.§ q§(§6!k§);
         if(!(_loc2_ && _loc3_))
         {
            §9!<§ = new _loc1_();
            loop0:
            while(§9!<§)
            {
               while(true)
               {
                  §<"3§.addChild(§9!<§);
               }
               loop3:
               while(true)
               {
                  if(_loc2_ && _loc3_)
                  {
                     continue loop0;
                  }
                  §9!<§.mouseEnabled = false;
                  do
                  {
                     §<"3§.mouseEnabled = false;
                     do
                     {
                        §9!<§.enabled = false;
                        continue loop3;
                     }
                     while(!_loc3_);
                     
                  }
                  while(_loc2_);
                  
                  if(_loc3_ || _loc2_)
                  {
                     break loop0;
                  }
                  addr125:
                  while(true)
                  {
                     §<"3§.mouseChildren = false;
                     continue loop3;
                  }
               }
            }
            §§push(§9!<§ == null);
            if(!_loc2_)
            {
               return !§§pop();
            }
         }
         §§goto(addr125);
      }
      
      public static function §8!R§() : Boolean
      {
         return §+=§("_Down");
      }
      
      public static function §!4§() : Boolean
      {
         return §+=§("_Up");
      }
      
      private static function §+=§(param1:String) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(!§9!<§);
            if(_loc4_)
            {
               §§push(§§pop());
               loop0:
               while(true)
               {
                  if(!§§pop())
                  {
                     addr87:
                     while(true)
                     {
                        §§pop();
                        addr88:
                        while(true)
                        {
                           addr67:
                           while(true)
                           {
                              §§push(§?d§.length < 1);
                           }
                        }
                     }
                     addr87:
                  }
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc5_)
                        {
                           break;
                        }
                        if(!§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              if(!_loc5_)
                              {
                                 §§pop();
                                 while(true)
                                 {
                                    §§push(§9"-§);
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       if(!_loc4_)
                                       {
                                          break;
                                       }
                                       §§push(!§§pop());
                                       if(_loc5_ && _loc2_)
                                       {
                                          return §§pop();
                                       }
                                       addr57:
                                    }
                                    continue loop3;
                                 }
                                 continue loop2;
                                 addr80:
                              }
                              §§goto(addr87);
                           }
                           §§goto(addr88);
                        }
                        while(§§pop())
                        {
                           if(!(_loc5_ && param1))
                           {
                              if(_loc4_)
                              {
                                 break loop1;
                              }
                              §§goto(addr80);
                           }
                           else
                           {
                              if(!(_loc5_ && §&!0§))
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 §§goto(addr88);
                              }
                              §§goto(addr67);
                           }
                        }
                        var _loc2_:Sprite = §9!<§.getChildByName(§?d§) as Sprite;
                        if(_loc4_ || _loc2_)
                        {
                           §§push(!_loc2_);
                           if(!_loc5_)
                           {
                              if(!§§pop())
                              {
                                 if(_loc4_ || param1)
                                 {
                                    addr126:
                                    §§pop();
                                    if(_loc4_)
                                    {
                                       §§push(!_loc2_.getChildByName(§?d§ + param1));
                                       if(!(_loc5_ && param1))
                                       {
                                          §§goto(addr142);
                                       }
                                    }
                                    §§goto(addr151);
                                 }
                              }
                              addr142:
                              if(§§pop())
                              {
                                 if(_loc4_ || param1)
                                 {
                                    §§goto(addr151);
                                 }
                              }
                              var _loc3_:int = 0;
                              while(true)
                              {
                                 if(_loc3_ >= _loc2_.numChildren)
                                 {
                                    if(!(_loc5_ && §&!0§))
                                    {
                                       _loc2_.getChildByName(§?d§ + param1).visible = true;
                                    }
                                    if(!(_loc5_ && param1))
                                    {
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    _loc2_.getChildAt(_loc3_).visible = false;
                                    while(true)
                                    {
                                       _loc3_++;
                                    }
                                    addr209:
                                 }
                                 while(_loc5_)
                                 {
                                    §§goto(addr209);
                                 }
                              }
                              return true;
                           }
                           §§goto(addr126);
                        }
                        addr151:
                        return false;
                     }
                     continue loop0;
                  }
                  §§goto(addr57);
               }
            }
            §§goto(addr87);
         }
         §§goto(addr88);
      }
      
      public static function activate() : Sprite
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §&!0§)
         {
            if(!§1x§)
            {
               while(true)
               {
                  §<"3§ = new Sprite();
                  while(!_loc1_)
                  {
                     §1x§ = true;
                     if(!(_loc2_ || _loc1_))
                     {
                        continue;
                     }
                     if(!(_loc1_ && §&!0§))
                     {
                        return §<"3§;
                     }
                  }
               }
            }
         }
         return §<"3§;
      }
      
      public static function §%!E§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §§push(§1x§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               if(!(_loc4_ && param2))
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop8:
                        while(true)
                        {
                           §§pop();
                           loop9:
                           while(true)
                           {
                              §§push(!§9!<§);
                              if(!(_loc4_ && _loc3_))
                              {
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    if(!§§pop())
                                    {
                                       loop3:
                                       while(true)
                                       {
                                          if(_loc3_)
                                          {
                                             if(_loc4_)
                                             {
                                                break;
                                                addr101:
                                             }
                                             §§pop();
                                             while(true)
                                             {
                                                if(_loc4_)
                                                {
                                                   continue loop9;
                                                }
                                                §§push(!§9!<§.visible);
                                                if(!_loc3_)
                                                {
                                                   continue loop3;
                                                }
                                             }
                                             continue loop9;
                                          }
                                          continue loop8;
                                       }
                                       continue loop0;
                                       addr96:
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          loop6:
                                          do
                                          {
                                             §<"3§.x = param1;
                                             while(true)
                                             {
                                                if(_loc4_ && _loc3_)
                                                {
                                                   continue loop6;
                                                }
                                                if(_loc3_)
                                                {
                                                   §<"3§.y = param2;
                                                   if(!_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   continue;
                                                }
                                             }
                                             §§goto(addr34);
                                          }
                                          while(!_loc4_);
                                          
                                          §§goto(addr101);
                                       }
                                       return;
                                    }
                                 }
                                 continue loop1;
                                 addr91:
                              }
                              §§goto(addr96);
                           }
                        }
                        addr115:
                     }
                     §§goto(addr91);
                  }
               }
               §§goto(addr115);
            }
         }
         addr34:
      }
      
      public static function §!%§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(§9!<§)
            {
               if(_loc1_)
               {
                  if(§9!<§.visible)
                  {
                     if(!(_loc2_ && §&!0§))
                     {
                        §]!`§ = §?d§;
                        addr72:
                        while(true)
                        {
                        }
                        addr72:
                     }
                     §§goto(addr72);
                  }
                  while(true)
                  {
                     §6B§("");
                     if(_loc1_)
                     {
                        break;
                     }
                     §§goto(addr72);
                  }
                  addr44:
                  return;
                  addr54:
               }
               §§goto(addr72);
            }
            §§goto(addr44);
         }
         §§goto(addr54);
      }
      
      public static function §@!R§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(§9!<§)
            {
               if(_loc1_)
               {
                  if(!§9!<§.visible)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        addr42:
                        §6B§(§]!`§);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr42);
      }
   }
}
