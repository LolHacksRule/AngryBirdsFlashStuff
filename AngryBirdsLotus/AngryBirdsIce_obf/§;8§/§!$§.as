package §;8§
{
   import com.rovio.assets.§>D§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §!$§ extends Sprite
   {
      
      private static var §;j§:Boolean = false;
      
      private static const § !4§:String = "Mouse_Cursors";
      
      private static var §6`§:Sprite;
      
      private static var §#!>§:MovieClip;
      
      private static var §5>§:String;
      
      private static var §6!;§:String = "";
      
      private static var §^9§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §;j§ = false;
            loop0:
            do
            {
               § !4§ = "Mouse_Cursors";
               while(true)
               {
                  §6!;§ = "";
                  while(!_loc2_)
                  {
                     §^9§ = false;
                     if(!_loc2_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      public function §!$§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §`T§(param1:String) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Sprite = null;
         if(_loc5_)
         {
            if(§5>§ == param1)
            {
               if(_loc5_ || _loc2_)
               {
                  §§push(true);
                  if(_loc5_ || §!$§)
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
               if(!_loc6_)
               {
                  §5>§ = "";
                  while(true)
                  {
                     §^9§ = false;
                     loop4:
                     while(true)
                     {
                        §§pop();
                        if(!(_loc5_ || §!$§))
                        {
                           break;
                        }
                        §§push(!§#!>§);
                        loop5:
                        while(_loc5_ || §!$§)
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc5_ || §!$§)
                                 {
                                    addr89:
                                    if(_loc6_ && _loc2_)
                                    {
                                       break;
                                    }
                                    §§push(§&j§());
                                    while(true)
                                    {
                                       if(!_loc5_)
                                       {
                                          continue loop4;
                                       }
                                       if(!§§pop())
                                       {
                                          if(!_loc5_)
                                          {
                                             continue;
                                          }
                                       }
                                       else
                                       {
                                          addr129:
                                          var _loc3_:int = 0;
                                          addr158:
                                          if(_loc3_ < §#!>§.numChildren)
                                          {
                                             §#!>§.getChildAt(_loc3_).visible = false;
                                             if(_loc5_)
                                             {
                                                _loc3_++;
                                                if(_loc5_ || §!$§)
                                                {
                                                   §§goto(addr158);
                                                }
                                             }
                                          }
                                          if(!(_loc4_ = §#!>§.getChildByName(param1) as Sprite))
                                          {
                                             if(!_loc6_)
                                             {
                                                §#!>§.visible = false;
                                                Mouse.show();
                                             }
                                             else
                                             {
                                                addr314:
                                                §5>§ = param1;
                                                §#!>§.visible = true;
                                                addr305:
                                                if(!(_loc6_ && §!$§))
                                                {
                                                   _loc4_.visible = true;
                                                   addr300:
                                                   §§push(true);
                                                   if(_loc5_ || param1)
                                                   {
                                                      _loc2_ = §§pop();
                                                      Mouse.hide();
                                                      addr274:
                                                      §§push(_loc4_.numChildren > 1);
                                                      if(_loc4_.numChildren > 1)
                                                      {
                                                         addr269:
                                                         §§pop();
                                                         §§push(Boolean(_loc4_.getChildByName(§5>§ + "_Up")));
                                                         if(_loc5_ || _loc2_)
                                                         {
                                                            addr256:
                                                            if(§§pop())
                                                            {
                                                               §^9§ = true;
                                                            }
                                                            §§push(§^9§);
                                                            if(_loc5_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  addr240:
                                                                  _loc3_ = 0;
                                                                  addr239:
                                                                  §§push(_loc3_);
                                                                  if(_loc5_ || _loc2_)
                                                                  {
                                                                     if(§§pop() >= _loc4_.numChildren)
                                                                     {
                                                                        if(_loc5_ || _loc3_)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              _loc4_.getChildByName(§5>§ + "_Up").visible = true;
                                                                              §§goto(addr210);
                                                                           }
                                                                           §§goto(addr239);
                                                                        }
                                                                        §§goto(addr210);
                                                                     }
                                                                     _loc4_.getChildAt(_loc3_).visible = false;
                                                                     if(!(_loc6_ && param1))
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           _loc3_++;
                                                                           §§goto(addr239);
                                                                        }
                                                                        §§goto(addr305);
                                                                     }
                                                                     §§goto(addr274);
                                                                  }
                                                                  §§goto(addr240);
                                                               }
                                                               addr210:
                                                               if(!_loc5_)
                                                               {
                                                                  §§goto(addr300);
                                                               }
                                                               return _loc2_;
                                                            }
                                                            §§goto(addr269);
                                                         }
                                                         §§goto(addr300);
                                                      }
                                                      §§goto(addr256);
                                                   }
                                                   §§goto(addr320);
                                                }
                                             }
                                             addr320:
                                             return §§pop();
                                             §§push(false);
                                          }
                                          §§goto(addr314);
                                       }
                                    }
                                    continue loop5;
                                 }
                                 while(true)
                                 {
                                    Mouse.show();
                                    §§goto(addr105);
                                 }
                              }
                              §§goto(addr129);
                           }
                           while(true)
                           {
                              §§goto(addr108);
                              §§goto(addr89);
                           }
                        }
                        while(true)
                        {
                           if(!§§pop())
                           {
                              continue loop4;
                           }
                           §§goto(addr80);
                        }
                     }
                  }
               }
               §§goto(addr124);
            }
         }
         §§goto(addr40);
      }
      
      private static function §&j§() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Class = §>D§.§`C§(§ !4§);
         if(!(_loc2_ && _loc3_))
         {
            §#!>§ = new _loc1_();
            loop0:
            while(§#!>§)
            {
               while(true)
               {
                  §6`§.addChild(§#!>§);
                  §6`§.mouseChildren = false;
                  §#!>§.mouseEnabled = false;
                  §6`§.mouseEnabled = false;
                  if(_loc3_)
                  {
                     §#!>§.enabled = false;
                     §#!>§.cacheAsBitmap = true;
                     break loop0;
                  }
                  continue loop0;
               }
            }
            §§push(§#!>§ == null);
            if(_loc3_ || §!$§)
            {
               return !§§pop();
            }
         }
         §§goto(addr95);
      }
      
      public static function §"r§() : Boolean
      {
         return §4!8§("_Down");
      }
      
      public static function §`?§() : Boolean
      {
         return §4!8§("_Up");
      }
      
      private static function §4!8§(param1:String) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(!§#!>§);
            §§push(!§#!>§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  continue;
               }
               §§pop();
               while(true)
               {
                  addr57:
                  addr48:
                  while(true)
                  {
                     §§push(§5>§.length < 1);
                     continue loop0;
                  }
                  if(!(_loc5_ || §!$§))
                  {
                     continue;
                  }
                  if(true)
                  {
                     var _loc2_:Sprite = §#!>§.getChildByName(§5>§) as Sprite;
                     addr80:
                     if(_loc5_ || _loc3_)
                     {
                        §§push(!_loc2_);
                        if(!_loc4_)
                        {
                           if(!§§pop())
                           {
                              if(!_loc4_)
                              {
                                 §§pop();
                                 if(_loc5_ || §!$§)
                                 {
                                    §§push(!_loc2_.getChildByName(§5>§ + param1));
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       addr133:
                                       if(§§pop())
                                       {
                                          if(_loc5_ || _loc2_)
                                          {
                                             §§goto(addr142);
                                          }
                                       }
                                    }
                                    §§goto(addr142);
                                 }
                                 var _loc3_:int = 0;
                                 addr151:
                                 if(_loc3_ >= _loc2_.numChildren)
                                 {
                                    if(_loc5_)
                                    {
                                       if(!(_loc4_ && §!$§))
                                       {
                                          _loc2_.getChildByName(§5>§ + param1).visible = true;
                                          §§goto(addr182);
                                       }
                                       §§goto(addr187);
                                    }
                                    addr182:
                                    if(_loc4_)
                                    {
                                       _loc3_++;
                                       addr187:
                                       §§goto(addr151);
                                       addr195:
                                    }
                                    return true;
                                 }
                                 _loc2_.getChildAt(_loc3_).visible = false;
                                 §§goto(addr195);
                              }
                              §§goto(addr142);
                           }
                           §§goto(addr133);
                        }
                        §§goto(addr142);
                     }
                     addr142:
                     return false;
                  }
                  §§goto(addr57);
               }
            }
         }
         §§goto(addr73);
      }
      
      public static function activate() : Sprite
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!§;j§)
            {
               loop0:
               while(true)
               {
                  §6`§ = new Sprite();
                  while(true)
                  {
                     if(!_loc1_)
                     {
                        if(!_loc2_)
                        {
                           break;
                        }
                        §;j§ = true;
                        if(_loc2_)
                        {
                           return §6`§;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         return §6`§;
      }
      
      public static function §`u§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§;j§);
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
                        §§push(!§#!>§);
                        if(!(_loc4_ && param2))
                        {
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc4_ && _loc3_)
                              {
                                 break;
                              }
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    if(_loc3_ || param1)
                                    {
                                       if(_loc4_ && _loc3_)
                                       {
                                          break;
                                       }
                                       §§pop();
                                       continue;
                                    }
                                    continue loop3;
                                 }
                                 continue loop1;
                                 addr94:
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    return;
                                 }
                                 while(true)
                                 {
                                    §6`§.x = param1;
                                    do
                                    {
                                       §6`§.y = param2;
                                    }
                                    while(_loc4_);
                                    
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    if(!_loc4_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr109);
                                 }
                                 return;
                              }
                           }
                           continue loop2;
                           addr74:
                        }
                        §§goto(addr94);
                     }
                  }
                  §§goto(addr74);
               }
            }
         }
      }
      
      public static function §31§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(§#!>§)
            {
               loop0:
               do
               {
                  if(§#!>§.visible)
                  {
                     if(!_loc2_)
                     {
                        while(true)
                        {
                           §6!;§ = §5>§;
                        }
                        addr69:
                     }
                     loop1:
                     while(true)
                     {
                        addr43:
                        while(true)
                        {
                           §`T§("");
                           if(_loc1_ || §!$§)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr43);
               }
               while(_loc2_ && _loc2_);
               
            }
            return;
         }
         §§goto(addr69);
      }
      
      public static function §8,§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(§#!>§)
            {
               if(!_loc2_)
               {
                  addr32:
                  if(!§#!>§.visible)
                  {
                     if(_loc1_ || §!$§)
                     {
                     }
                  }
                  §§goto(addr45);
               }
               §`T§(§6!;§);
            }
            addr45:
            return;
         }
         §§goto(addr32);
      }
   }
}
