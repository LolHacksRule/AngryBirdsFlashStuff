package §6o§
{
   import com.rovio.assets.§8B§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §="7§ extends Sprite
   {
      
      private static var §8!<§:Boolean = false;
      
      private static const §;!D§:String = "Mouse_Cursors";
      
      private static var §<b§:Sprite;
      
      private static var §-A§:MovieClip;
      
      private static var §!!z§:String;
      
      private static var §-e§:String = "";
      
      private static var §6!;§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §8!<§ = false;
            while(true)
            {
               §;!D§ = "Mouse_Cursors";
               while(_loc2_)
               {
                  while(_loc2_ || _loc1_)
                  {
                     §6!;§ = false;
                     if(_loc2_ || _loc1_)
                     {
                        return;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §-e§ = "";
            §§goto(addr60);
         }
      }
      
      public function §="7§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §2!'§(param1:String) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Sprite = null;
         if(!_loc5_)
         {
            if(§!!z§ == param1)
            {
               if(_loc6_)
               {
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
               if(!_loc5_)
               {
                  §!!z§ = "";
                  §6!;§ = false;
                  loop0:
                  while(true)
                  {
                     §§push(§8!<§);
                     loop1:
                     while(true)
                     {
                        §§push(!§§pop());
                        loop2:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop3:
                              while(true)
                              {
                                 §§pop();
                                 addr100:
                                 loop8:
                                 while(true)
                                 {
                                    §§push(!§-A§);
                                    if(_loc6_)
                                    {
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc5_)
                                             {
                                                §§push(§0C§());
                                                loop5:
                                                while(!§§pop())
                                                {
                                                   if(!(_loc6_ || param1))
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(false);
                                                         if(!_loc5_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     return §§pop();
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               continue loop2;
                                                            }
                                                            continue loop3;
                                                         }
                                                         continue loop5;
                                                      }
                                                      addr93:
                                                   }
                                                }
                                                addr110:
                                                var _loc3_:int = 0;
                                                addr129:
                                                if(_loc3_ < §-A§.numChildren)
                                                {
                                                   §-A§.getChildAt(_loc3_).visible = false;
                                                   if(_loc6_)
                                                   {
                                                      _loc3_++;
                                                      if(_loc5_ && §="7§)
                                                      {
                                                      }
                                                      addr133:
                                                      if(!(_loc4_ = §-A§.getChildByName(param1) as Sprite))
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            §-A§.visible = false;
                                                            if(!_loc5_)
                                                            {
                                                               Mouse.show();
                                                               addr386:
                                                               §§push(false);
                                                            }
                                                            else
                                                            {
                                                               addr200:
                                                               _loc4_.getChildByName(§!!z§ + "_Up").visible = true;
                                                               if(_loc6_ || _loc2_)
                                                               {
                                                                  if(!(_loc5_ && §="7§))
                                                                  {
                                                                     addr150:
                                                                     §§push(_loc2_);
                                                                     if(_loc6_ || _loc3_)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           addr324:
                                                                           if(!(_loc5_ && param1))
                                                                           {
                                                                              §§pop();
                                                                              addr332:
                                                                              if(_loc6_ || §="7§)
                                                                              {
                                                                                 addr302:
                                                                                 §§push(Boolean(_loc4_.getChildByName(§!!z§ + "_Up")));
                                                                                 if(_loc6_ || _loc2_)
                                                                                 {
                                                                                    addr309:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       addr311:
                                                                                       §6!;§ = true;
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          addr252:
                                                                                          §§push(§6!;§);
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             if(_loc6_ || _loc3_)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc6_ || _loc2_)
                                                                                                   {
                                                                                                      if(!(_loc5_ && _loc3_))
                                                                                                      {
                                                                                                         if(!(_loc5_ && _loc3_))
                                                                                                         {
                                                                                                            addr286:
                                                                                                            _loc3_ = 0;
                                                                                                            addr287:
                                                                                                            if(!(_loc5_ && §="7§))
                                                                                                            {
                                                                                                               addr164:
                                                                                                               §§push(_loc3_);
                                                                                                               if(_loc6_ || _loc2_)
                                                                                                               {
                                                                                                                  if(§§pop() >= _loc4_.numChildren)
                                                                                                                  {
                                                                                                                     if(_loc6_ || _loc3_)
                                                                                                                     {
                                                                                                                        if(_loc6_ || param1)
                                                                                                                        {
                                                                                                                           §§goto(addr200);
                                                                                                                        }
                                                                                                                        §§goto(addr386);
                                                                                                                     }
                                                                                                                     §§goto(addr200);
                                                                                                                  }
                                                                                                                  _loc4_.getChildAt(_loc3_).visible = false;
                                                                                                                  addr247:
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        _loc3_++;
                                                                                                                        addr224:
                                                                                                                        if(!(_loc5_ && _loc2_))
                                                                                                                        {
                                                                                                                           if(_loc6_ || _loc2_)
                                                                                                                           {
                                                                                                                              §§goto(addr164);
                                                                                                                           }
                                                                                                                           §§goto(addr311);
                                                                                                                        }
                                                                                                                        §§goto(addr247);
                                                                                                                     }
                                                                                                                     §§goto(addr311);
                                                                                                                  }
                                                                                                                  §§goto(addr287);
                                                                                                               }
                                                                                                               §§goto(addr286);
                                                                                                            }
                                                                                                            _loc4_.visible = true;
                                                                                                            addr374:
                                                                                                         }
                                                                                                         if(_loc6_ || _loc3_)
                                                                                                         {
                                                                                                            addr356:
                                                                                                            _loc2_ = true;
                                                                                                            Mouse.hide();
                                                                                                            addr322:
                                                                                                            §§push(_loc4_.numChildren > 1);
                                                                                                            if(_loc4_.numChildren > 1)
                                                                                                            {
                                                                                                               §§goto(addr324);
                                                                                                            }
                                                                                                            §§goto(addr309);
                                                                                                            addr353:
                                                                                                            addr357:
                                                                                                         }
                                                                                                         addr376:
                                                                                                         §!!z§ = param1;
                                                                                                         §-A§.visible = true;
                                                                                                         §§goto(addr374);
                                                                                                         addr379:
                                                                                                         addr383:
                                                                                                      }
                                                                                                      §§goto(addr332);
                                                                                                   }
                                                                                                   §§goto(addr286);
                                                                                                }
                                                                                                §§goto(addr150);
                                                                                             }
                                                                                             §§goto(addr322);
                                                                                          }
                                                                                          §§goto(addr302);
                                                                                       }
                                                                                       §§goto(addr353);
                                                                                    }
                                                                                    §§goto(addr252);
                                                                                 }
                                                                                 §§goto(addr356);
                                                                              }
                                                                              §§goto(addr379);
                                                                           }
                                                                           §§goto(addr382);
                                                                        }
                                                                        return §§pop();
                                                                     }
                                                                     §§goto(addr252);
                                                                  }
                                                                  §§goto(addr357);
                                                               }
                                                               §§goto(addr224);
                                                            }
                                                            addr382:
                                                            return §§pop();
                                                         }
                                                         §§goto(addr383);
                                                      }
                                                      §§goto(addr376);
                                                   }
                                                   §§goto(addr129);
                                                }
                                                §§goto(addr133);
                                                addr69:
                                             }
                                             while(true)
                                             {
                                                if(!(_loc5_ && param1))
                                                {
                                                   continue loop0;
                                                }
                                                continue loop8;
                                             }
                                             continue loop0;
                                          }
                                          §§goto(addr110);
                                       }
                                       addr63:
                                    }
                                    §§goto(addr69);
                                 }
                              }
                           }
                           §§goto(addr63);
                        }
                     }
                  }
               }
               §§goto(addr100);
            }
         }
         §§goto(addr31);
      }
      
      private static function §0C§() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Class = §8B§.§6"C§(§;!D§);
         if(_loc3_)
         {
            §-A§ = new _loc1_();
         }
         loop0:
         while(§-A§)
         {
            while(true)
            {
               §<b§.addChild(§-A§);
               loop2:
               while(true)
               {
                  §<b§.mouseChildren = false;
                  loop3:
                  while(true)
                  {
                     §-A§.mouseEnabled = false;
                     loop4:
                     while(true)
                     {
                        if(_loc2_ && _loc2_)
                        {
                           continue loop2;
                        }
                        if(!_loc3_)
                        {
                           break;
                        }
                        §<b§.mouseEnabled = false;
                        loop5:
                        while(true)
                        {
                           §-A§.enabled = false;
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 continue loop4;
                              }
                              continue loop5;
                              addr79:
                              §-A§.cacheAsBitmap = true;
                              if(_loc3_)
                              {
                                 continue loop3;
                              }
                           }
                           continue loop4;
                        }
                     }
                     continue loop0;
                  }
               }
               if(_loc3_ || §="7§)
               {
                  break loop0;
               }
            }
         }
         §§push(§-A§ == null);
         if(_loc3_)
         {
            return !§§pop();
         }
      }
      
      public static function §<5§() : Boolean
      {
         return §+!A§("_Down");
      }
      
      public static function §[b§() : Boolean
      {
         return §+!A§("_Up");
      }
      
      private static function §+!A§(param1:String) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(!§-A§);
            if(!_loc4_)
            {
               §§push(§§pop());
               while(true)
               {
                  if(§§pop())
                  {
                     continue;
                  }
               }
            }
            §§goto(addr68);
         }
         §§goto(addr35);
      }
      
      public static function activate() : Sprite
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §="7§))
         {
            if(§8!<§)
            {
               if(!_loc1_)
               {
                  return §<b§;
               }
               while(true)
               {
                  addr67:
                  loop2:
                  while(!(_loc1_ && _loc1_))
                  {
                     while(true)
                     {
                        §8!<§ = true;
                        if(!(_loc1_ && §="7§))
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return §<b§;
                  }
               }
               addr81:
            }
            while(true)
            {
               §<b§ = new Sprite();
               §§goto(addr67);
               §§goto(addr81);
            }
         }
         §§goto(addr74);
      }
      
      public static function §4!O§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            §§push(§8!<§);
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
                              §§push(!§-A§);
                              if(!_loc3_)
                              {
                                 if(_loc3_)
                                 {
                                    break;
                                    addr110:
                                 }
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             return;
                                          }
                                          do
                                          {
                                             §<b§.x = param1;
                                             loop8:
                                             while(!_loc3_)
                                             {
                                                while(true)
                                                {
                                                   §<b§.y = param2;
                                                   if(_loc3_)
                                                   {
                                                      continue loop8;
                                                   }
                                                   if(_loc4_)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         break;
                                                      }
                                                      addr115:
                                                      while(true)
                                                      {
                                                         §§push(!§-A§.visible);
                                                         if(!(_loc4_ || _loc3_))
                                                         {
                                                            break;
                                                         }
                                                         if(!(_loc3_ && §="7§))
                                                         {
                                                            continue loop0;
                                                         }
                                                         continue loop3;
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         §§goto(addr116);
                                                      }
                                                      addr116:
                                                   }
                                                }
                                                return;
                                             }
                                          }
                                          while(!(_loc3_ && _loc3_));
                                          
                                          continue loop4;
                                       }
                                       addr92:
                                    }
                                 }
                                 continue loop2;
                              }
                              §§goto(addr115);
                           }
                           continue loop1;
                        }
                     }
                     §§goto(addr110);
                  }
               }
            }
         }
         §§goto(addr56);
      }
      
      public static function §+!j§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§-A§)
            {
               if(_loc2_ || §="7§)
               {
                  addr72:
                  if(§-A§.visible)
                  {
                     do
                     {
                        §-e§ = §!!z§;
                        while(true)
                        {
                        }
                     }
                     while(!(_loc2_ || _loc1_));
                     
                     addr20:
                     return;
                     addr75:
                  }
                  while(true)
                  {
                     §2!'§("");
                     if(!(_loc2_ || _loc2_))
                     {
                        continue;
                     }
                     §§goto(addr55);
                  }
               }
               §§goto(addr75);
            }
            §§goto(addr20);
         }
         §§goto(addr72);
      }
      
      public static function §#"0§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(§-A§)
            {
               if(!(_loc2_ && _loc1_))
               {
                  if(!§-A§.visible)
                  {
                     if(_loc1_ || §="7§)
                     {
                     }
                  }
                  §§goto(addr55);
               }
               §2!'§(§-e§);
            }
         }
         addr55:
      }
   }
}
