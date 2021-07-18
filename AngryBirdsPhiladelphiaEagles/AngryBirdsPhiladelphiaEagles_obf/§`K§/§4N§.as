package §`K§
{
   import com.rovio.assets.§[!D§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §4N§ extends Sprite
   {
      
      private static var § @§:Boolean = false;
      
      private static const §9^§:String = "Mouse_Cursors";
      
      private static var §@!'§:Sprite;
      
      private static var §[4§:MovieClip;
      
      private static var §;D§:String;
      
      private static var §3H§:String = "";
      
      private static var §#!&§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            § @§ = false;
            while(true)
            {
               §9^§ = "Mouse_Cursors";
               §§goto(addr78);
            }
         }
         addr78:
         while(true)
         {
            §3H§ = "";
            do
            {
               §#!&§ = false;
            }
            while(!_loc1_);
            
            if(!(_loc2_ && _loc1_))
            {
               if(_loc1_ || _loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §4N§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §!_§(param1:String) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Sprite = null;
         if(!_loc6_)
         {
            if(§;D§ == param1)
            {
               if(_loc5_ || _loc2_)
               {
                  §§push(true);
                  if(!(_loc6_ && _loc2_))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr40:
                  §§push(false);
               }
               var _loc2_:* = §§pop();
               §;D§ = "";
               §#!&§ = false;
               §§push(§ @§);
               if(!_loc6_)
               {
                  §§push(!§§pop());
               }
               loop0:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        §§push(!§[4§);
                        addr57:
                        while(!_loc6_)
                        {
                        }
                     }
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc5_)
                        {
                           §§push(§"d§());
                           while(!_loc6_)
                           {
                              if(!§§pop())
                              {
                                 Mouse.show();
                                 continue;
                              }
                              §§goto(addr89);
                           }
                           continue loop0;
                           addr65:
                        }
                        while(true)
                        {
                           §§push(false);
                           if(!_loc6_)
                           {
                              break;
                           }
                           §§goto(addr65);
                        }
                        if(!_loc6_)
                        {
                           break;
                        }
                        §§goto(addr57);
                     }
                     addr89:
                     var _loc3_:int = 0;
                     addr113:
                     if(_loc3_ < §[4§.numChildren)
                     {
                        §[4§.getChildAt(_loc3_).visible = false;
                        if(!(_loc6_ && _loc2_))
                        {
                           _loc3_++;
                           if(_loc6_ && §4N§)
                           {
                           }
                           §§goto(addr117);
                        }
                        §§goto(addr113);
                     }
                     addr117:
                     if(!(_loc4_ = §[4§.getChildByName(param1) as Sprite))
                     {
                        §[4§.visible = false;
                        if(!_loc6_)
                        {
                           Mouse.show();
                        }
                        return false;
                     }
                     else
                     {
                        addr286:
                        §;D§ = param1;
                        §[4§.visible = true;
                        _loc4_.visible = true;
                        addr284:
                        §§push(true);
                        if(!(_loc6_ && §4N§))
                        {
                           _loc2_ = §§pop();
                           Mouse.hide();
                           addr263:
                           §§push(_loc4_.numChildren > 1);
                           if(_loc4_.numChildren > 1)
                           {
                              addr248:
                              §§pop();
                              §§push(Boolean(_loc4_.getChildByName(§;D§ + "_Up")));
                              if(_loc5_ || §4N§)
                              {
                                 addr235:
                                 if(§§pop())
                                 {
                                    §#!&§ = true;
                                    addr240:
                                 }
                                 if(§#!&§)
                                 {
                                    addr210:
                                    _loc3_ = 0;
                                    if(_loc5_)
                                    {
                                       if(_loc5_ || _loc2_)
                                       {
                                          addr161:
                                          §§push(_loc3_);
                                          if(_loc5_)
                                          {
                                             if(§§pop() >= _loc4_.numChildren)
                                             {
                                                if(!_loc6_)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      if(_loc5_ || _loc2_)
                                                      {
                                                         _loc4_.getChildByName(§;D§ + "_Up").visible = true;
                                                         addr142:
                                                         §§push(_loc2_);
                                                         if(!(_loc6_ && _loc2_))
                                                         {
                                                            if(!(_loc5_ || _loc3_))
                                                            {
                                                               §§goto(addr248);
                                                            }
                                                            return §§pop();
                                                         }
                                                         §§goto(addr248);
                                                         addr186:
                                                      }
                                                      §§goto(addr286);
                                                   }
                                                   _loc3_++;
                                                   if(!(_loc6_ && _loc2_))
                                                   {
                                                      §§goto(addr161);
                                                   }
                                                   §§goto(addr240);
                                                   addr205:
                                                }
                                                §§goto(addr186);
                                             }
                                             _loc4_.getChildAt(_loc3_).visible = false;
                                             §§goto(addr205);
                                          }
                                          §§goto(addr210);
                                       }
                                       §§goto(addr284);
                                    }
                                    §§goto(addr263);
                                 }
                                 §§goto(addr142);
                              }
                              §§goto(addr263);
                           }
                           §§goto(addr235);
                        }
                     }
                     return §§pop();
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr40);
      }
      
      private static function §"d§() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Class = §[!D§.§8!N§(§9^§);
         §[4§ = new _loc1_();
         if(§[4§)
         {
            §@!'§.addChild(§[4§);
            §@!'§.mouseChildren = false;
            while(true)
            {
               §[4§.mouseEnabled = false;
               while(!_loc2_)
               {
                  §@!'§.mouseEnabled = false;
                  while(_loc3_)
                  {
                     §[4§.enabled = false;
                     if(!(_loc2_ && _loc3_))
                     {
                        §[4§.cacheAsBitmap = true;
                        §§goto(addr23);
                     }
                  }
               }
            }
         }
         addr23:
         §§push(§[4§ == null);
         if(_loc3_ || §4N§)
         {
            return !§§pop();
         }
      }
      
      public static function §7J§() : Boolean
      {
         return §&Q§("_Down");
      }
      
      public static function §>a§() : Boolean
      {
         return §&Q§("_Up");
      }
      
      private static function §&Q§(param1:String) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc2_))
         {
            §§push(!§[4§);
            §§push(!§[4§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr80:
                     while(true)
                     {
                        addr56:
                        while(true)
                        {
                           §§push(§;D§.length < 1);
                        }
                     }
                  }
                  addr79:
               }
               while(true)
               {
                  continue loop0;
               }
               addr46:
               return false;
            }
         }
         §§goto(addr80);
      }
      
      public static function activate() : Sprite
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §4N§))
         {
            if(§ @§)
            {
               if(_loc2_)
               {
                  §§goto(addr59);
               }
               else
               {
                  while(true)
                  {
                     §§goto(addr49);
                  }
               }
            }
            addr49:
            while(true)
            {
               §@!'§ = new Sprite();
               do
               {
                  § @§ = true;
               }
               while(!_loc2_);
               
               if(!_loc1_)
               {
                  break;
               }
               continue loop0;
            }
            return §@!'§;
         }
         addr59:
         return §@!'§;
      }
      
      public static function §6!F§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(§ @§);
            if(!(_loc4_ && §4N§))
            {
               §§push(!§§pop());
            }
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr134:
                        while(true)
                        {
                           §§push(!§[4§);
                        }
                     }
                     addr133:
                  }
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        §§push(§§pop());
                        if(!(_loc3_ || param1))
                        {
                           break;
                        }
                        if(!§§pop())
                        {
                           loop6:
                           while(true)
                           {
                              if(!(_loc4_ && param2))
                              {
                                 continue loop0;
                              }
                              §§goto(addr133);
                              addr121:
                              while(true)
                              {
                                 §§push(!§[4§.visible);
                                 if(!(_loc4_ && param2))
                                 {
                                    continue loop5;
                                 }
                                 continue loop6;
                                 addr36:
                                 if(!(_loc3_ || §4N§))
                                 {
                                    continue;
                                 }
                                 return;
                                 addr43:
                              }
                              continue loop5;
                           }
                        }
                        else
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 return;
                              }
                              while(true)
                              {
                                 §@!'§.x = param1;
                                 do
                                 {
                                    §@!'§.y = param2;
                                 }
                                 while(_loc4_ && _loc3_);
                                 
                                 if(!_loc4_)
                                 {
                                    §§goto(addr36);
                                 }
                                 else if(!_loc4_)
                                 {
                                    continue;
                                 }
                              }
                           }
                           §§goto(addr43);
                           addr77:
                        }
                        §§goto(addr134);
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr82);
      }
      
      public static function §<!K§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§[4§)
            {
               if(!_loc1_)
               {
                  if(§[4§.visible)
                  {
                     addr55:
                     while(true)
                     {
                        §3H§ = §;D§;
                        addr58:
                        while(true)
                        {
                        }
                     }
                     addr55:
                  }
                  while(true)
                  {
                     §!_§("");
                     if(_loc1_ && §4N§)
                     {
                        continue;
                     }
                     if(_loc2_)
                     {
                        break;
                     }
                     §§goto(addr55);
                  }
                  §§goto(addr30);
               }
               §§goto(addr58);
            }
            addr30:
            return;
         }
         §§goto(addr55);
      }
      
      public static function §6V§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §4N§))
         {
            if(§[4§)
            {
               if(!(_loc2_ && _loc2_))
               {
                  if(!§[4§.visible)
                  {
                     if(_loc1_)
                     {
                        §!_§(§3H§);
                     }
                  }
               }
            }
         }
      }
   }
}
