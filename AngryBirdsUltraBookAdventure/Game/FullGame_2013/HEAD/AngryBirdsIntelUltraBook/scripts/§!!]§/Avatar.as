package §!!]§
{
   import §!!V§.AvatarCreatorPopup;
   import §3!@§.ServerIdParser;
   import §<_§.§5!2§;
   import §]_§.§%1§;
   import §]_§.§,v§;
   import §]_§.Item;
   import com.rovio.assets.AssetCache;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class Avatar extends Sprite
   {
      
      public static const DEFAULT_INACTIVE_SPOT_SCALE:Number = 0.5;
      
      public static const REMOVE_IF_SAME_OBJECT_IS_SELECTED:Boolean = false;
      
      public static const ITEM_TYPE_AVATAR_EQUIPMENT:String = "avatar_equip";
      
      public static const ITEM_TYPE_AVATAR_CHARACTER:String = "avatar_character";
      
      {
         var DEFAULT_INACTIVE_SPOT_SCALE:Boolean = true;
         var REMOVE_IF_SAME_OBJECT_IS_SELECTED:Boolean = false;
         if(!(REMOVE_IF_SAME_OBJECT_IS_SELECTED && Avatar))
         {
            loop0:
            while(true)
            {
               DEFAULT_INACTIVE_SPOT_SCALE = 0.5;
               loop1:
               while(true)
               {
                  while(DEFAULT_INACTIVE_SPOT_SCALE)
                  {
                     REMOVE_IF_SAME_OBJECT_IS_SELECTED = false;
                     continue loop1;
                     while(!(REMOVE_IF_SAME_OBJECT_IS_SELECTED && Avatar))
                     {
                        loop7:
                        while(DEFAULT_INACTIVE_SPOT_SCALE || Avatar)
                        {
                           ITEM_TYPE_AVATAR_CHARACTER = "avatar_character";
                           if(DEFAULT_INACTIVE_SPOT_SCALE || DEFAULT_INACTIVE_SPOT_SCALE)
                           {
                              addr39:
                              if(!(REMOVE_IF_SAME_OBJECT_IS_SELECTED && DEFAULT_INACTIVE_SPOT_SCALE))
                              {
                                 return;
                              }
                              addr91:
                              addr91:
                              while(true)
                              {
                                 if(!(REMOVE_IF_SAME_OBJECT_IS_SELECTED && REMOVE_IF_SAME_OBJECT_IS_SELECTED))
                                 {
                                    ITEM_TYPE_AVATAR_EQUIPMENT = "avatar_equip";
                                    break loop7;
                                 }
                                 break;
                                 §§goto(addr39);
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §§goto(addr91);
         }
      }
      
      public var §1!B§:Object;
      
      private var §;!Y§:MovieClip;
      
      private var §4O§:MovieClip;
      
      private var §6!Q§:MovieClip;
      
      private var §?C§:Number = 0.5;
      
      private var §>C§:§%1§ = null;
      
      public function Avatar(character:§%1§)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc5_)
         {
         }
         if(!_loc6_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  super();
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           while(true)
                           {
                              while(!(_loc6_ && character))
                              {
                                 continue loop3;
                                 addr54:
                                 if(_loc5_ || cls)
                                 {
                                    loop12:
                                    while(true)
                                    {
                                       this.§?C§ = this.§>C§.§#M§;
                                       while(_loc6_ && bgCls)
                                       {
                                       }
                                       if(!_loc6_)
                                       {
                                          addr34:
                                          if(!(_loc6_ && this))
                                          {
                                             if(false)
                                             {
                                                continue;
                                             }
                                             var bgCls:Class = AssetCache.§%p§("BackgroundContainer");
                                             if(_loc5_ || this)
                                             {
                                             }
                                             this.§4O§ = new bgCls();
                                             this.§4O§.stop();
                                             addr195:
                                             addr189:
                                             addr186:
                                             if(_loc5_ || cls)
                                             {
                                                addr155:
                                                addChild(this.§4O§);
                                                if(_loc5_ || this)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      if(!(_loc6_ && this))
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               if(false)
                                                               {
                                                                  §§goto(addr155);
                                                               }
                                                               var cls:Class = AssetCache.§%p§(character.§7!D§ + "_Animations");
                                                               if(!(_loc6_ && character))
                                                               {
                                                                  this.§;!Y§ = new cls();
                                                                  this.§;!Y§.stop();
                                                                  addr347:
                                                                  addr339:
                                                                  if(!(_loc6_ && this))
                                                                  {
                                                                     this.§'!=§();
                                                                     this.§;!Y§.scaleX = this.§?C§;
                                                                     addr315:
                                                                     addr320:
                                                                     addr323:
                                                                     if(_loc5_ || bgCls)
                                                                     {
                                                                        addr294:
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              this.§;!Y§.scaleY = this.§?C§;
                                                                              addr289:
                                                                              if(!_loc6_)
                                                                              {
                                                                                 addr259:
                                                                                 this.addChild(this.§;!Y§);
                                                                                 addr282:
                                                                                 if(_loc5_ || bgCls)
                                                                                 {
                                                                                    if(_loc5_ || bgCls)
                                                                                    {
                                                                                       if(_loc5_ || cls)
                                                                                       {
                                                                                          if(!(_loc6_ && bgCls))
                                                                                          {
                                                                                             if(_loc5_ || this)
                                                                                             {
                                                                                                if(_loc5_ || bgCls)
                                                                                                {
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      if(false)
                                                                                                      {
                                                                                                         §§goto(addr259);
                                                                                                      }
                                                                                                      var fgCls:Class = AssetCache.§%p§("ForegroundContainer");
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         this.§6!Q§ = new fgCls();
                                                                                                         addr423:
                                                                                                         if(!(_loc6_ && bgCls))
                                                                                                         {
                                                                                                            this.§6!Q§.stop();
                                                                                                            addr412:
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               addr404:
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  addChild(this.§6!Q§);
                                                                                                                  addr377:
                                                                                                                  if(_loc5_ || this)
                                                                                                                  {
                                                                                                                     if(!(_loc6_ && this))
                                                                                                                     {
                                                                                                                        if(!(_loc5_ || cls))
                                                                                                                        {
                                                                                                                           §§goto(addr377);
                                                                                                                        }
                                                                                                                        return;
                                                                                                                        addr370:
                                                                                                                     }
                                                                                                                     §§goto(addr412);
                                                                                                                  }
                                                                                                                  §§goto(addr404);
                                                                                                               }
                                                                                                               §§goto(addr423);
                                                                                                            }
                                                                                                            addr417:
                                                                                                            §§goto(addr417);
                                                                                                         }
                                                                                                         addr432:
                                                                                                         §§goto(addr432);
                                                                                                      }
                                                                                                      §§goto(addr370);
                                                                                                   }
                                                                                                   §§goto(addr347);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr315);
                                                                                          }
                                                                                          §§goto(addr282);
                                                                                       }
                                                                                       §§goto(addr259);
                                                                                    }
                                                                                    §§goto(addr320);
                                                                                 }
                                                                                 §§goto(addr289);
                                                                              }
                                                                              §§goto(addr294);
                                                                              addr298:
                                                                           }
                                                                           §§goto(addr339);
                                                                        }
                                                                        §§goto(addr323);
                                                                     }
                                                                     §§goto(addr347);
                                                                  }
                                                                  addr345:
                                                                  §§goto(addr345);
                                                               }
                                                               §§goto(addr298);
                                                            }
                                                            §§goto(addr195);
                                                         }
                                                         §§goto(addr189);
                                                      }
                                                      §§goto(addr155);
                                                   }
                                                   §§goto(addr186);
                                                }
                                                §§goto(addr195);
                                             }
                                             addr197:
                                             §§goto(addr197);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                break loop12;
                                                §§goto(addr34);
                                             }
                                             addr67:
                                          }
                                       }
                                       break;
                                    }
                                    while(_loc5_)
                                    {
                                       §§goto(addr54);
                                       §§goto(addr43);
                                    }
                                    addr43:
                                    while(true)
                                    {
                                       if(_loc6_)
                                       {
                                          continue loop4;
                                       }
                                       if(!_loc5_)
                                       {
                                          break;
                                       }
                                       if(!_loc5_)
                                       {
                                          continue loop0;
                                       }
                                       this.§1!B§ = new Object();
                                       §§goto(addr67);
                                    }
                                    continue loop2;
                                    addr70:
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§>C§ = character;
            §§goto(addr81);
         }
      }
      
      public function §<U§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc2_ || _loc1_)
         {
            loop0:
            while(true)
            {
               this.§4O§.visible = false;
               loop1:
               while(true)
               {
                  while(true)
                  {
                     this.§6!Q§.visible = false;
                     loop3:
                     while(_loc2_ || _loc1_)
                     {
                        if(_loc2_)
                        {
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 if(!_loc1_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              continue loop3;
                           }
                           return;
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      public function §4!T§(backgroundId:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(!_loc2_)
         {
            while(true)
            {
               while(_loc3_ || this)
               {
                  this.§4O§.gotoAndStop(backgroundId.toLowerCase());
                  loop2:
                  while(true)
                  {
                     addr111:
                     while(true)
                     {
                        this.§6!Q§.gotoAndStop(backgroundId.toLowerCase());
                        continue loop2;
                     }
                  }
                  if(_loc2_ && _loc2_)
                  {
                     continue;
                  }
                  return;
                  addr63:
               }
            }
         }
         §§goto(addr63);
      }
      
      public function §5#§() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc6_ && this)
         {
         }
         var category:§,v§ = null;
         var items:Array = null;
         var random:int = 0;
         if(!_loc6_)
         {
            if(_loc6_)
            {
            }
         }
         loop0:
         for each(category in §5!2§.§]W§().§+@§)
         {
            if(!_loc6_)
            {
               loop1:
               while(true)
               {
                  §§push(category.name);
                  while(true)
                  {
                     §§push(§§pop().toUpperCase() == "CATEGORYBIRDS");
                     addr155:
                     addr175:
                     while(true)
                     {
                        §§push(!§§pop());
                        addr156:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           addr157:
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc7_ || category)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop1;
                                    addr120:
                                    if(_loc6_ && category)
                                    {
                                       continue;
                                    }
                                    §§push(Boolean(§§pop()));
                                    while(true)
                                    {
                                       addr129:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop8:
                                             while(_loc7_ || category)
                                             {
                                                loop9:
                                                while(true)
                                                {
                                                   addr76:
                                                   while(true)
                                                   {
                                                      while(_loc7_)
                                                      {
                                                         if(_loc7_ || items)
                                                         {
                                                            continue loop9;
                                                         }
                                                      }
                                                      continue loop8;
                                                   }
                                                }
                                             }
                                             continue loop1;
                                          }
                                          continue loop0;
                                       }
                                    }
                                    addr128:
                                 }
                              }
                              else
                              {
                                 §§goto(addr128);
                              }
                           }
                        }
                     }
                     §§push(category.name);
                     if(_loc6_ && category)
                     {
                        continue;
                     }
                     §§push(§§pop().toUpperCase() == "CATEGORYBACKGROUNDS");
                     if(!(_loc6_ && random))
                     {
                        if(!(_loc6_ && items))
                        {
                           if(_loc7_)
                           {
                              if(_loc7_)
                              {
                                 §§push(!§§pop());
                                 if(_loc7_ || items)
                                 {
                                    §§goto(addr120);
                                 }
                                 §§goto(addr129);
                              }
                              else
                              {
                                 §§goto(addr155);
                              }
                           }
                           §§goto(addr156);
                        }
                        §§goto(addr157);
                     }
                     §§goto(addr129);
                  }
               }
            }
            §§goto(addr74);
         }
         if(_loc6_ && category)
         {
         }
      }
      
      private function §^!<§(arrayOfItems:Array) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || arrayOfItems)
         {
         }
         var item:Item = null;
         if(!_loc6_)
         {
            while(true)
            {
               while(!_loc6_)
               {
                  loop4:
                  while(_loc7_ || item)
                  {
                     if(!_loc6_)
                     {
                        addr36:
                        if(false)
                        {
                           while(true)
                           {
                              continue loop4;
                              §§goto(addr36);
                           }
                           addr55:
                           var parsedArray:Array = [];
                           if(!_loc7_)
                           {
                           }
                           addr38:
                        }
                        else
                        {
                           §§goto(addr55);
                        }
                        loop5:
                        for each(item in arrayOfItems)
                        {
                           if(_loc7_ || arrayOfItems)
                           {
                           }
                           loop6:
                           while(true)
                           {
                              if(!AvatarCreatorPopup.§ M§(item.§7!D§))
                              {
                                 continue loop5;
                              }
                              loop7:
                              while(true)
                              {
                                 loop8:
                                 while(true)
                                 {
                                    addr123:
                                    while(true)
                                    {
                                       parsedArray.push(item);
                                       while(_loc6_)
                                       {
                                       }
                                       if(_loc7_)
                                       {
                                          continue loop7;
                                       }
                                       continue loop8;
                                    }
                                    continue loop6;
                                 }
                              }
                           }
                        }
                        if(_loc6_)
                        {
                        }
                        return parsedArray;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr38);
         }
      }
      
      public function show(showX:int, showY:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
         }
         if(_loc4_ || showX)
         {
            while(true)
            {
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     this.x = showX;
                     loop3:
                     while(true)
                     {
                        while(true)
                        {
                           this.y = showY;
                           addr129:
                           while(true)
                           {
                              continue loop2;
                           }
                           addr68:
                           if(!(_loc4_ || showX))
                           {
                              continue;
                           }
                           addr75:
                           if(!_loc4_)
                           {
                              loop9:
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          addr80:
                                          if(_loc3_ && showX)
                                          {
                                             break;
                                          }
                                          visible = true;
                                          continue loop9;
                                       }
                                       addr95:
                                       while(true)
                                       {
                                          continue loop8;
                                       }
                                    }
                                    continue loop2;
                                 }
                                 §§goto(addr68);
                              }
                              continue;
                           }
                           if(_loc4_)
                           {
                              continue loop3;
                           }
                           §§goto(addr129);
                        }
                     }
                  }
               }
               if(!(_loc4_ || _loc3_))
               {
                  continue;
               }
               this.§<,§(this.§>[§().§!5§);
               §§goto(addr95);
            }
         }
      }
      
      public function hide() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc1_ && _loc2_)
         {
         }
         while(true)
         {
            visible = false;
            while(_loc2_ || this)
            {
               if(!_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public function §'!=§() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc6_)
         {
         }
         var achor:String = null;
         var mc:MovieClip = null;
         if(_loc6_)
         {
         }
         while(true)
         {
            while(true)
            {
               while(_loc6_)
               {
               }
               if(!_loc7_)
               {
                  break;
               }
               if(false)
               {
                  continue;
               }
               var i:* = Number(0);
               loop3:
               while(true)
               {
                  if(i >= this.§;!Y§.numChildren)
                  {
                     if(!(_loc6_ && mc))
                     {
                        §§goto(addr145);
                     }
                     break;
                  }
                  if(!(_loc6_ && achor))
                  {
                     if(_loc7_)
                     {
                        mc = this.§;!Y§.getChildAt(i) as MovieClip;
                        if(!_loc7_)
                        {
                        }
                        loop4:
                        while(true)
                        {
                           if(!mc)
                           {
                              loop10:
                              while(true)
                              {
                                 §§push(i);
                                 if(_loc7_)
                                 {
                                    §§push(§§pop() + 1);
                                    if(!(_loc6_ && achor))
                                    {
                                       addr83:
                                       §§push(Number(§§pop()));
                                    }
                                    i = §§pop();
                                    if(_loc7_)
                                    {
                                       addr87:
                                       if(_loc7_ || i)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          while(true)
                                          {
                                             addr108:
                                             while(_loc7_)
                                             {
                                                continue loop10;
                                             }
                                             addr115:
                                             while(true)
                                             {
                                                if(_loc7_)
                                                {
                                                   continue loop4;
                                                }
                                             }
                                             continue loop4;
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§goto(addr87);
                                          }
                                          addr129:
                                       }
                                       while(true)
                                       {
                                          mc.stop();
                                          §§goto(addr115);
                                       }
                                    }
                                    §§goto(addr108);
                                 }
                                 §§goto(addr83);
                              }
                              continue loop3;
                           }
                           §§goto(addr129);
                        }
                     }
                     else
                     {
                        §§goto(addr145);
                     }
                  }
                  break;
                  §§goto(addr145);
               }
               var _loc4_:int = 0;
               if(!(_loc6_ && achor))
               {
                  var _loc5_:* = §5!2§.§]W§().§4!3§;
                  if(!_loc6_)
                  {
                     for each(achor in _loc5_)
                     {
                        loop12:
                        while(true)
                        {
                           loop13:
                           while(true)
                           {
                              addr182:
                              while(true)
                              {
                                 this.§]!9§(achor);
                                 while(_loc7_)
                                 {
                                    if(_loc6_)
                                    {
                                       continue loop12;
                                    }
                                    if(_loc6_)
                                    {
                                       continue;
                                    }
                                 }
                                 continue loop13;
                              }
                           }
                        }
                     }
                     addr206:
                     if(!_loc7_)
                     {
                     }
                     addr145:
                     if(!_loc6_)
                     {
                        break loop3;
                     }
                     return;
                     addr203:
                  }
                  while(true)
                  {
                     if(true)
                     {
                        §§goto(addr203);
                     }
                     §§goto(addr182);
                  }
               }
               §§goto(addr206);
            }
         }
      }
      
      public function §]!9§(anchor:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || anchor)
         {
         }
         if(_loc4_)
         {
            loop0:
            while(true)
            {
               addr35:
               while(true)
               {
                  addr37:
                  while(!_loc3_)
                  {
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            if(_loc4_)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr35);
            }
            §§goto(addr37);
         }
         var itemsMC:MovieClip = this.§;!Y§.getChildByName("Items_" + anchor) as MovieClip;
         if(!(_loc3_ && _loc3_))
         {
            loop4:
            while(true)
            {
               §§push(Boolean(itemsMC));
               loop5:
               while(true)
               {
                  §§push(§§pop());
                  if(_loc4_ || this)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(!§§pop())
                  {
                     loop8:
                     while(§§pop())
                     {
                        loop9:
                        while(_loc4_)
                        {
                           loop10:
                           for(; !_loc3_; if(!(_loc3_ && anchor))
                           {
                              continue loop9;
                           })
                           {
                              itemsMC.stop();
                              loop11:
                              while(true)
                              {
                                 addr105:
                                 loop12:
                                 while(true)
                                 {
                                    itemsMC.visible = false;
                                    while(!_loc3_)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(_loc4_)
                                          {
                                             continue loop10;
                                          }
                                          continue loop12;
                                       }
                                    }
                                    continue loop11;
                                 }
                              }
                           }
                           continue loop4;
                           if(!(_loc3_ && anchor))
                           {
                              break loop8;
                           }
                        }
                        loop7:
                        while(true)
                        {
                           §§push(anchor.toUpperCase() == "NOHAT");
                           if(!(_loc3_ && itemsMC))
                           {
                              §§push(!§§pop());
                              if(_loc3_ && _loc3_)
                              {
                                 continue loop5;
                              }
                           }
                           addr131:
                           if(_loc4_ || _loc3_)
                           {
                              §§push(Boolean(§§pop()));
                              continue loop5;
                           }
                           addr177:
                           while(true)
                           {
                              §§pop();
                              continue loop7;
                              §§goto(addr131);
                           }
                        }
                        continue loop5;
                     }
                     return;
                     addr156:
                  }
                  §§goto(addr177);
               }
            }
         }
         §§goto(addr105);
      }
      
      public function §`!5§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_ && this)
         {
         }
         var categoryName:String = null;
         var item:Item = null;
         var itemsMC:MovieClip = null;
         if(!(_loc6_ && categoryName))
         {
            if(!_loc5_)
            {
            }
         }
         var i:* = Number(0);
         loop0:
         while(true)
         {
            if(i >= §5!2§.§]W§().§+@§.length)
            {
               if(!_loc6_)
               {
                  addr250:
                  break;
               }
               break;
            }
            if(_loc5_ || categoryName)
            {
               loop1:
               while(_loc5_)
               {
                  if(_loc6_ && item)
                  {
                     continue;
                  }
                  do
                  {
                     categoryName = §5!2§.§]W§().§+@§[i].name;
                     do
                     {
                        if(!_loc5_)
                        {
                           break loop1;
                        }
                     }
                     while(_loc6_);
                     
                  }
                  while(false);
                  
                  item = this.§3`§(categoryName);
                  if(_loc5_ || item)
                  {
                     if(_loc6_ && i)
                     {
                        continue loop0;
                     }
                  }
                  if(item == null)
                  {
                     if(!(_loc5_ || i))
                     {
                        continue loop0;
                     }
                  }
                  else
                  {
                     itemsMC = this.§;!Y§.getChildByName("Items_" + item.§-o§) as MovieClip;
                     if(_loc5_ || item)
                     {
                        loop4:
                        do
                        {
                           if(itemsMC)
                           {
                              continue;
                           }
                           trace("??\'" + "Items_" + item.§-o§ + "\'" + this.§>C§.§7!D§);
                           while(!(_loc6_ && i))
                           {
                              if(_loc5_)
                              {
                                 if(!_loc5_)
                                 {
                                    continue;
                                 }
                                 if(_loc6_ && this)
                                 {
                                    itemsMC.gotoAndStop("Item_" + item.§7!D§);
                                    break;
                                    addr225:
                                 }
                                 if(false)
                                 {
                                    addr228:
                                    §§push(i);
                                    if(_loc5_)
                                    {
                                       §§push(§§pop() + 1);
                                       if(_loc5_ || this)
                                       {
                                          addr239:
                                          §§push(Number(§§pop()));
                                       }
                                       i = §§pop();
                                       continue loop0;
                                    }
                                    §§goto(addr239);
                                    addr170:
                                 }
                                 §§goto(addr228);
                                 continue;
                              }
                              continue loop4;
                           }
                           §§goto(addr170);
                        }
                        while(!_loc5_);
                        
                     }
                     §§goto(addr225);
                  }
                  §§goto(addr228);
               }
               §§goto(addr250);
            }
            break;
            §§goto(addr250);
         }
      }
      
      public function §`Z§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc4_)
         {
         }
         var category:§,v§ = null;
         if(!_loc5_)
         {
            if(!_loc4_)
            {
            }
         }
         var _loc2_:int = 0;
         loop0:
         for each(category in §5!2§.§]W§().§+@§)
         {
            if(!_loc4_)
            {
            }
            loop1:
            while(true)
            {
               §§push(category.name);
               loop2:
               while(true)
               {
                  §§push(§§pop().toUpperCase() == "CATEGORYBIRDS");
                  if(!_loc5_)
                  {
                     §§push(Boolean(§§pop()));
                     while(true)
                     {
                        §§push(§§pop());
                        if(!_loc5_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc4_ || _loc2_)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 this.§0H§(category.name);
                              }
                              while(!(_loc4_ || this))
                              {
                              }
                              if(_loc4_)
                              {
                                 if(false)
                                 {
                                    continue loop2;
                                 }
                                 continue loop0;
                              }
                           }
                           continue loop0;
                           addr95:
                        }
                        while(true)
                        {
                           §§pop();
                        }
                        while(_loc4_)
                        {
                           continue loop2;
                        }
                        continue loop1;
                     }
                     addr131:
                  }
                  §§goto(addr136);
               }
            }
         }
         if(_loc5_ && _loc2_)
         {
         }
      }
      
      public function §<,§(scale:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(_loc3_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§?C§ = scale;
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        this.§;!Y§.scaleX = this.§?C§;
                        while(_loc3_)
                        {
                           loop5:
                           while(_loc3_ || _loc3_)
                           {
                              if(!_loc2_)
                              {
                                 this.§;!Y§.scaleY = this.§?C§;
                                 loop6:
                                 while(_loc3_)
                                 {
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          if(_loc3_)
                                          {
                                             continue loop0;
                                          }
                                          continue loop5;
                                       }
                                       continue loop6;
                                    }
                                    return;
                                 }
                                 continue loop3;
                              }
                              continue loop2;
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      public function §,!k§(avatar:Avatar) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc8_)
         {
         }
         var backup:Item = null;
         var category:§,v§ = null;
         var categoryId:* = null;
         var hisItem:Item = null;
         if(_loc8_ || this)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  while(_loc8_)
                  {
                     if(!(_loc9_ && category))
                     {
                        if(_loc8_)
                        {
                           if(true)
                           {
                              var _loc6_:int = 0;
                              var _loc7_:* = §5!2§.§]W§().§+@§;
                              addr272:
                              for each(category in _loc7_)
                              {
                                 if(!(_loc9_ && backup))
                                 {
                                    addr123:
                                    if(!_loc9_)
                                    {
                                       addr99:
                                       §§push(category.name);
                                       if(!(_loc9_ && category))
                                       {
                                          §§push(§§pop());
                                       }
                                       categoryId = §§pop();
                                       if(!_loc9_)
                                       {
                                          if(!_loc9_)
                                          {
                                             if(_loc8_ || backup)
                                             {
                                                if(false)
                                                {
                                                   §§goto(addr99);
                                                }
                                                backup = this.§1!B§[categoryId.toUpperCase()];
                                                if(_loc9_ && backup)
                                                {
                                                }
                                                hisItem = avatar.§1!B§[categoryId.toUpperCase()];
                                                if(_loc8_)
                                                {
                                                   addr271:
                                                   if(hisItem)
                                                   {
                                                      this.§&3§(hisItem);
                                                      addr268:
                                                      addr269:
                                                      addr263:
                                                      §§push(Boolean(backup));
                                                      if(_loc8_ || category)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            addr209:
                                                            if(_loc8_ || category)
                                                            {
                                                               addr217:
                                                               if(_loc8_)
                                                               {
                                                                  if(_loc8_ || backup)
                                                                  {
                                                                     if(!(_loc9_ && avatar))
                                                                     {
                                                                        avatar.§&3§(backup);
                                                                        addr193:
                                                                        if(!_loc9_)
                                                                        {
                                                                           if(!_loc9_)
                                                                           {
                                                                              addr165:
                                                                              §§goto(addr272);
                                                                           }
                                                                           §§goto(addr268);
                                                                        }
                                                                        §§goto(addr209);
                                                                     }
                                                                     §§goto(addr271);
                                                                  }
                                                                  §§goto(addr269);
                                                               }
                                                               if(!_loc9_)
                                                               {
                                                                  addr236:
                                                                  §§goto(addr268);
                                                               }
                                                               §§goto(addr263);
                                                            }
                                                            §§goto(addr236);
                                                         }
                                                         avatar.§0H§(categoryId);
                                                         addr173:
                                                         if(!(_loc9_ && backup))
                                                         {
                                                            if(_loc8_ || avatar)
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  if(false)
                                                                  {
                                                                     §§goto(addr165);
                                                                  }
                                                                  §§goto(addr272);
                                                               }
                                                               §§goto(addr173);
                                                            }
                                                            §§goto(addr217);
                                                         }
                                                         §§goto(addr193);
                                                      }
                                                      §§goto(addr271);
                                                   }
                                                   this.§0H§(categoryId);
                                                   §§goto(addr217);
                                                }
                                                §§goto(addr268);
                                             }
                                             §§goto(addr123);
                                          }
                                          §§goto(addr99);
                                       }
                                       §§goto(addr123);
                                       addr118:
                                    }
                                    addr121:
                                    §§goto(addr121);
                                 }
                                 §§goto(addr118);
                              }
                           }
                           continue loop2;
                           if(!_loc8_)
                           {
                           }
                           return;
                        }
                        break loop2;
                     }
                  }
                  continue loop1;
               }
               continue loop0;
            }
         }
      }
      
      public function §]!R§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_)
         {
         }
         var item:Item = null;
         if(_loc4_ || item)
         {
            if(_loc4_ || _loc3_)
            {
               addr48:
            }
            var _loc2_:int = 0;
            for each(item in this.§1!B§)
            {
               if(!(_loc5_ && _loc2_))
               {
                  loop1:
                  while(true)
                  {
                     addr86:
                     while(true)
                     {
                        this.§&3§(item);
                        while(true)
                        {
                           if(!_loc5_)
                           {
                              if(_loc4_)
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               while(false)
               {
                  §§goto(addr86);
               }
            }
            if(_loc5_)
            {
            }
            return;
         }
         §§goto(addr48);
      }
      
      public function §&3§(item:Item) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc5_)
         {
         }
         if(_loc4_ && itemsMC)
         {
         }
         loop0:
         do
         {
            while(true)
            {
               while(true)
               {
                  if(item == null)
                  {
                     continue;
                  }
                  var previousItem:Item = this.§1!B§[item.§[L§.toUpperCase()];
                  if(!_loc4_)
                  {
                     addr171:
                     if(previousItem == item)
                     {
                        if(_loc5_ || item)
                        {
                           if(_loc4_)
                           {
                              §§goto(addr171);
                           }
                        }
                        addr169:
                        if(REMOVE_IF_SAME_OBJECT_IS_SELECTED)
                        {
                           addr149:
                           this.§0H§(item.§[L§);
                           addr137:
                           if(!(_loc5_ || this))
                           {
                              §§goto(addr169);
                           }
                           addr154:
                        }
                        return;
                     }
                     addr121:
                     this.§0H§(item.§[L§);
                     addr127:
                     if(!_loc4_)
                     {
                        if(_loc5_)
                        {
                           addr117:
                           if(_loc5_)
                           {
                              addr97:
                              this.§1!B§[item.§[L§.toUpperCase()] = item;
                              if(_loc5_)
                              {
                                 if(_loc5_ || previousItem)
                                 {
                                    if(_loc5_ || this)
                                    {
                                       if(!_loc4_)
                                       {
                                          if(false)
                                          {
                                             §§goto(addr97);
                                          }
                                          var itemsMC:MovieClip = this.§;!Y§.getChildByName("Items_" + item.§-o§) as MovieClip;
                                          if(_loc5_ || item)
                                          {
                                             addr428:
                                             if(itemsMC)
                                             {
                                                itemsMC.visible = true;
                                                addr425:
                                                if(_loc5_)
                                                {
                                                   itemsMC.gotoAndStop("Item_" + item.§7!D§);
                                                   addr413:
                                                   if(!(_loc4_ && item))
                                                   {
                                                      addr384:
                                                      if(itemsMC.currentLabel != "Item_" + item.§7!D§)
                                                      {
                                                         addr369:
                                                         if(_loc5_)
                                                         {
                                                            if(_loc5_ || previousItem)
                                                            {
                                                               addr379:
                                                               if(!_loc4_)
                                                               {
                                                                  §5!2§.§<R§.§0H§(item.§-o§);
                                                                  addr358:
                                                                  if(_loc5_)
                                                                  {
                                                                     addr283:
                                                                     if(item.category.toUpperCase() == "CATEGORYTOP")
                                                                     {
                                                                        addr289:
                                                                        if(!(_loc4_ && item))
                                                                        {
                                                                           if(_loc4_ && previousItem)
                                                                           {
                                                                              §§goto(addr425);
                                                                           }
                                                                           this.§1! §();
                                                                           addr304:
                                                                           if(!(_loc5_ || this))
                                                                           {
                                                                              §§goto(addr304);
                                                                           }
                                                                           addr192:
                                                                           return;
                                                                           addr239:
                                                                        }
                                                                        addr335:
                                                                        if(_loc5_ || item)
                                                                        {
                                                                           if(_loc5_ || this)
                                                                           {
                                                                              addr307:
                                                                              §§goto(addr283);
                                                                           }
                                                                           §§goto(addr369);
                                                                        }
                                                                        §§goto(addr358);
                                                                     }
                                                                     §§goto(addr239);
                                                                  }
                                                                  §§goto(addr379);
                                                               }
                                                               §§goto(addr384);
                                                            }
                                                            §§goto(addr428);
                                                         }
                                                         §§goto(addr413);
                                                      }
                                                      §§push(this);
                                                      §§push("Items_");
                                                      if(_loc5_ || this)
                                                      {
                                                         §§push(§§pop() + item.§-o§);
                                                         if(!(_loc4_ && previousItem))
                                                         {
                                                            addr331:
                                                            §§push(§§pop() + "_Equip");
                                                         }
                                                         §§pop().§0!F§(§§pop());
                                                         §§goto(addr335);
                                                      }
                                                      §§goto(addr331);
                                                   }
                                                   §§goto(addr425);
                                                }
                                                addr426:
                                                §§goto(addr426);
                                             }
                                             §§push(item.category);
                                             if(!(_loc4_ && this))
                                             {
                                                if(§§pop().toUpperCase() == "CATEGORYTOP")
                                                {
                                                   addr255:
                                                   if(!(_loc4_ && this))
                                                   {
                                                      addr263:
                                                      if(_loc5_ || this)
                                                      {
                                                         this.§%!F§();
                                                         addr229:
                                                         if(_loc5_)
                                                         {
                                                            if(!(_loc4_ && this))
                                                            {
                                                               if(!(_loc4_ && previousItem))
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(!(_loc5_ || item))
                                                                     {
                                                                        §§goto(addr307);
                                                                     }
                                                                     §§goto(addr192);
                                                                  }
                                                                  §§goto(addr304);
                                                               }
                                                               §§goto(addr229);
                                                            }
                                                            §§goto(addr255);
                                                         }
                                                         §§goto(addr263);
                                                      }
                                                      §§goto(addr413);
                                                   }
                                                   §§goto(addr289);
                                                }
                                                §§goto(addr192);
                                             }
                                             §§goto(addr283);
                                          }
                                          §§goto(addr413);
                                       }
                                       §§goto(addr154);
                                    }
                                    §§goto(addr97);
                                 }
                                 §§goto(addr127);
                              }
                              §§goto(addr117);
                           }
                           §§goto(addr149);
                        }
                        §§goto(addr137);
                     }
                     §§goto(addr121);
                  }
                  §§goto(addr149);
               }
               continue loop0;
               if(_loc5_ || previousItem)
               {
                  continue loop0;
               }
            }
         }
         while(!_loc5_);
         
      }
      
      private function §%!F§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(_loc2_)
         {
            if(_loc2_)
            {
               addr25:
            }
            var itemsMC:MovieClip = this.§;!Y§.getChildByName("Items_NoHat") as MovieClip;
            if(_loc2_ || _loc3_)
            {
               while(true)
               {
                  itemsMC.visible = true;
                  while(_loc2_ || this)
                  {
                     if(_loc3_ && itemsMC)
                     {
                        continue;
                     }
                     return;
                     addr76:
                  }
               }
            }
            §§goto(addr76);
         }
         §§goto(addr25);
      }
      
      private function §1! §() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(_loc3_ || _loc3_)
         {
            if(_loc3_ || itemsMC)
            {
            }
         }
         var itemsMC:MovieClip = this.§;!Y§.getChildByName("Items_NoHat") as MovieClip;
         if(_loc3_)
         {
            do
            {
               itemsMC.visible = false;
               while(_loc2_)
               {
               }
            }
            while(_loc2_);
            
         }
      }
      
      public function §3`§(categoryName:String) : Item
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(_loc3_)
         {
         }
         while(_loc3_ && categoryName)
         {
         }
         return this.§1!B§[categoryName.toUpperCase()];
      }
      
      public function §0!I§() : Object
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
         }
         if(!_loc1_)
         {
         }
         return this.§1!B§;
      }
      
      public function §0H§(category:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || category)
         {
         }
         var itemsMC:MovieClip = null;
         if(_loc5_ || category)
         {
         }
         while(true)
         {
            while(true)
            {
               while(_loc4_)
               {
               }
               if(_loc4_)
               {
                  break;
               }
               if(false)
               {
                  continue;
               }
               var item:Item = this.§1!B§[category.toUpperCase()];
               if(_loc5_ || category)
               {
                  loop3:
                  while(true)
                  {
                     addr76:
                     while(true)
                     {
                        §§push(Boolean(item));
                        if(!(_loc5_ || this))
                        {
                           break;
                        }
                        if(!§§pop())
                        {
                           §§push(delete this.§1!B§[category.toUpperCase()]);
                           break;
                        }
                        addr216:
                        if(!_loc5_)
                        {
                           return;
                        }
                        addr230:
                        continue loop3;
                     }
                     §§pop();
                     if(!(_loc4_ && item))
                     {
                        addr229:
                     }
                  }
               }
               §§goto(addr230);
            }
         }
      }
      
      public function §0!F§(frameName:String) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc6_)
         {
         }
         var frame:FrameLabel = null;
         if(_loc6_ && frame)
         {
         }
         loop0:
         while(true)
         {
            while(true)
            {
               loop2:
               while(true)
               {
                  while(_loc7_)
                  {
                     if(_loc7_)
                     {
                        if(!_loc6_)
                        {
                           if(true)
                           {
                              var foundInFrame:* = Number(-1);
                              if(!_loc7_)
                              {
                              }
                              var _loc4_:int = 0;
                              var _loc5_:* = this.§;!Y§.currentLabels;
                              addr174:
                              for each(frame in _loc5_)
                              {
                                 if(_loc7_)
                                 {
                                    addr169:
                                    if(foundInFrame != -1)
                                    {
                                       §§push(frame.frame - foundInFrame);
                                       if(_loc7_)
                                       {
                                          if(!_loc6_)
                                          {
                                             §§push(1);
                                             if(_loc6_)
                                             {
                                                §§goto(addr169);
                                             }
                                             §§goto(addr164);
                                          }
                                          §§goto(addr169);
                                       }
                                       addr164:
                                       return §§pop() - §§pop();
                                       addr171:
                                       addr170:
                                    }
                                    addr173:
                                    if(frame.name == frameName)
                                    {
                                       addr140:
                                       if(_loc7_ || frame)
                                       {
                                          addr148:
                                          if(_loc7_)
                                          {
                                             this.§;!Y§.gotoAndPlay(frameName);
                                             addr88:
                                             addr133:
                                             addr126:
                                             §§push(Number(frame.frame));
                                             if(!_loc6_)
                                             {
                                                foundInFrame = §§pop();
                                                addr95:
                                                if(!_loc6_)
                                                {
                                                   if(!(_loc6_ && foundInFrame))
                                                   {
                                                      if(!(_loc6_ && frameName))
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               if(_loc7_ || foundInFrame)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr88);
                                                                     }
                                                                     §§goto(addr174);
                                                                  }
                                                                  §§goto(addr173);
                                                               }
                                                               §§goto(addr148);
                                                            }
                                                            §§goto(addr95);
                                                         }
                                                         §§goto(addr171);
                                                      }
                                                      §§goto(addr140);
                                                   }
                                                   §§goto(addr133);
                                                }
                                                §§goto(addr126);
                                             }
                                             §§goto(addr164);
                                          }
                                          §§goto(addr170);
                                          addr147:
                                       }
                                       §§goto(addr173);
                                    }
                                    §§goto(addr174);
                                 }
                                 §§goto(addr147);
                              }
                           }
                           continue loop2;
                           if(!_loc7_)
                           {
                           }
                           addr227:
                           addr241:
                           if(foundInFrame != -1)
                           {
                              if(_loc6_)
                              {
                              }
                              if(_loc7_ || frameName)
                              {
                                 §§push(this.§;!Y§.framesLoaded - foundInFrame);
                                 if(_loc7_)
                                 {
                                    §§push(1);
                                    if(_loc7_ || frame)
                                    {
                                       §§goto(addr214);
                                    }
                                    §§goto(addr227);
                                 }
                                 addr214:
                                 §§push(§§pop() - §§pop());
                                 if(!_loc7_)
                                 {
                                    §§goto(addr227);
                                 }
                                 return §§pop();
                              }
                              §§goto(addr241);
                           }
                           return -1;
                        }
                        break loop2;
                     }
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public function §1;§(itemId:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || itemId)
         {
         }
         if(!_loc3_)
         {
            while(_loc3_ && itemId)
            {
            }
         }
         return true;
      }
      
      public function §>[§() : §%1§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc1_)
         {
         }
         return this.§>C§;
      }
      
      public function §9"§() : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc4_)
         {
         }
         if(!_loc5_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  addr38:
                  while(true)
                  {
                     while(!_loc4_)
                     {
                     }
                     if(!_loc4_)
                     {
                        break;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr38);
         }
         var list:Array = [];
         §§push("list");
         if(_loc4_ || list)
         {
         }
         var jsonObject:Object = {§§pop():list};
         if(_loc5_)
         {
         }
         list = this.§2X§();
         if(_loc5_)
         {
         }
         §§push(ServerIdParser.§?T§(list));
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var parsedIds:* = §§pop();
         if(_loc4_)
         {
            while(true)
            {
               trace(parsedIds);
               while(!(_loc5_ && list))
               {
                  if(_loc5_ && this)
                  {
                     continue;
                  }
                  return parsedIds;
                  addr117:
               }
            }
         }
         §§goto(addr117);
      }
      
      public function §2X§() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc6_)
         {
         }
         var item:Item = null;
         if(_loc6_)
         {
            loop0:
            while(true)
            {
               addr33:
               while(true)
               {
                  continue loop0;
               }
            }
         }
         while(false)
         {
            §§goto(addr33);
         }
         var list:Array = [];
         if(_loc5_)
         {
         }
         var _loc3_:int = 0;
         loop4:
         for each(item in this.§1!B§)
         {
            if(_loc6_ || list)
            {
            }
            loop5:
            while(true)
            {
               while(true)
               {
                  list.push({
                     "itemId":item.§7!D§,
                     "category":item.§[L§,
                     "sId":item.sId
                  });
                  while(!_loc6_)
                  {
                  }
                  if(!(_loc5_ && _loc3_))
                  {
                     if(true)
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop5;
               }
               continue loop4;
            }
         }
         if(_loc5_ && list)
         {
         }
         return list;
      }
      
      public function §6!U§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc2_)
         {
         }
         if(_loc1_)
         {
         }
         return this.§?C§;
      }
      
      public function §=U§() : MovieClip
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc2_)
         {
         }
         if(_loc1_ || this)
         {
         }
         return this.§;!Y§;
      }
   }
}
