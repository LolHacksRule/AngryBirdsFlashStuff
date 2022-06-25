package §[!H§
{
   import §+!1§.AvatarCreatorPopup;
   import §3w§.§1!!§;
   import §^B§.§1!b§;
   import §^B§.Item;
   import §^B§.§[_§;
   import §^`§.ServerIdParser;
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
         var DEFAULT_INACTIVE_SPOT_SCALE:Boolean = false;
         var REMOVE_IF_SAME_OBJECT_IS_SELECTED:Boolean = true;
         if(REMOVE_IF_SAME_OBJECT_IS_SELECTED || REMOVE_IF_SAME_OBJECT_IS_SELECTED)
         {
            loop0:
            while(true)
            {
               DEFAULT_INACTIVE_SPOT_SCALE = 0.5;
               loop1:
               while(true)
               {
                  while(true)
                  {
                     REMOVE_IF_SAME_OBJECT_IS_SELECTED = false;
                     loop3:
                     for(; REMOVE_IF_SAME_OBJECT_IS_SELECTED; if(DEFAULT_INACTIVE_SPOT_SCALE && REMOVE_IF_SAME_OBJECT_IS_SELECTED)
                     {
                        continue;
                     },§§goto(addr52))
                     {
                        while(true)
                        {
                           ITEM_TYPE_AVATAR_EQUIPMENT = "avatar_equip";
                           while(REMOVE_IF_SAME_OBJECT_IS_SELECTED || DEFAULT_INACTIVE_SPOT_SCALE)
                           {
                              if(REMOVE_IF_SAME_OBJECT_IS_SELECTED)
                              {
                                 loop6:
                                 while(!DEFAULT_INACTIVE_SPOT_SCALE)
                                 {
                                    continue loop0;
                                    while(true)
                                    {
                                       ITEM_TYPE_AVATAR_CHARACTER = "avatar_character";
                                       if(REMOVE_IF_SAME_OBJECT_IS_SELECTED)
                                       {
                                          continue loop3;
                                       }
                                       continue loop6;
                                    }
                                    return;
                                 }
                                 continue;
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      public var §<!$§:Object;
      
      private var §7Z§:MovieClip;
      
      private var §3!N§:MovieClip;
      
      private var §&!X§:MovieClip;
      
      private var §7!H§:Number = 0.5;
      
      private var §@"§:§[_§ = null;
      
      public function Avatar(character:§[_§)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
         }
         if(_loc6_ || character)
         {
            while(true)
            {
            }
            addr126:
         }
         loop1:
         while(true)
         {
            super();
            while(true)
            {
               loop3:
               while(_loc6_)
               {
                  loop4:
                  while(true)
                  {
                     while(_loc6_)
                     {
                        loop6:
                        for(; _loc6_; loop8:
                        for(; !(_loc5_ && this); if(!(_loc6_ || this))
                        {
                           continue;
                        },if(false)
                        {
                           §§goto(addr54);
                        },var bgCls:Class = AssetCache.§-9§("BackgroundContainer"),if(_loc6_ || this)
                        {
                        },this.§3!N§ = new bgCls(),this.§3!N§.stop(),addr185:,addr193:,if(_loc6_)
                        {
                           addr167:
                           if(!(_loc5_ && bgCls))
                           {
                              addr147:
                              addChild(this.§3!N§);
                              if(_loc6_)
                              {
                                 if(!_loc5_)
                                 {
                                    if(!(_loc5_ && this))
                                    {
                                       if(!_loc5_)
                                       {
                                          if(false)
                                          {
                                             §§goto(addr147);
                                          }
                                          var cls:Class = AssetCache.§-9§(character.§<!B§ + "_Animations");
                                          if(!_loc5_)
                                          {
                                             this.§7Z§ = new cls();
                                             this.§7Z§.stop();
                                             addr338:
                                             addr336:
                                             addr327:
                                             if(!(_loc5_ && cls))
                                             {
                                                this.§[h§();
                                                addr311:
                                                if(_loc6_ || character)
                                                {
                                                   this.§7Z§.scaleX = this.§7!H§;
                                                   addr289:
                                                   if(!(_loc5_ && cls))
                                                   {
                                                      addr275:
                                                      if(_loc6_ || this)
                                                      {
                                                         this.§7Z§.scaleY = this.§7!H§;
                                                         addr265:
                                                         if(_loc6_ || cls)
                                                         {
                                                            addr251:
                                                            if(_loc6_ || bgCls)
                                                            {
                                                               addr236:
                                                               this.addChild(this.§7Z§);
                                                               if(_loc6_)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        if(!(_loc5_ && cls))
                                                                        {
                                                                           if(!(_loc5_ && this))
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 if(false)
                                                                                 {
                                                                                    §§goto(addr236);
                                                                                 }
                                                                                 var fgCls:Class = AssetCache.§-9§("ForegroundContainer");
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    this.§&!X§ = new fgCls();
                                                                                    addr414:
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       addr406:
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          this.§&!X§.stop();
                                                                                          addr396:
                                                                                          if(!(_loc5_ && this))
                                                                                          {
                                                                                             addChild(this.§&!X§);
                                                                                             addr390:
                                                                                             if(_loc6_ || this)
                                                                                             {
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   if(!(_loc6_ || character))
                                                                                                   {
                                                                                                      §§goto(addr390);
                                                                                                   }
                                                                                                   return;
                                                                                                }
                                                                                                §§goto(addr390);
                                                                                                addr387:
                                                                                             }
                                                                                             §§goto(addr396);
                                                                                          }
                                                                                          §§goto(addr406);
                                                                                       }
                                                                                       §§goto(addr414);
                                                                                    }
                                                                                    addr418:
                                                                                    §§goto(addr418);
                                                                                 }
                                                                                 §§goto(addr387);
                                                                              }
                                                                              §§goto(addr338);
                                                                           }
                                                                           §§goto(addr251);
                                                                        }
                                                                        §§goto(addr236);
                                                                        addr248:
                                                                     }
                                                                  }
                                                                  §§goto(addr311);
                                                               }
                                                               §§goto(addr275);
                                                            }
                                                            §§goto(addr265);
                                                         }
                                                         §§goto(addr336);
                                                      }
                                                      §§goto(addr289);
                                                   }
                                                   §§goto(addr338);
                                                }
                                                §§goto(addr327);
                                             }
                                             addr330:
                                             §§goto(addr330);
                                          }
                                          §§goto(addr248);
                                       }
                                       §§goto(addr147);
                                    }
                                 }
                                 §§goto(addr185);
                              }
                              §§goto(addr167);
                           }
                           §§goto(addr193);
                        },addr191:,§§goto(addr191))
                        {
                           this.§<!$§ = new Object();
                           loop9:
                           while(true)
                           {
                              loop10:
                              while(true)
                              {
                                 if(_loc5_ && cls)
                                 {
                                    continue loop9;
                                 }
                                 if(_loc6_)
                                 {
                                    if(!_loc6_)
                                    {
                                       break;
                                       addr54:
                                    }
                                    while(true)
                                    {
                                       this.§7!H§ = this.§@"§.§1!=§;
                                       while(_loc6_)
                                       {
                                          if(_loc6_)
                                          {
                                             if(!_loc5_)
                                             {
                                                continue loop10;
                                             }
                                             continue;
                                          }
                                          §§goto(addr126);
                                       }
                                       continue loop3;
                                    }
                                    continue loop8;
                                 }
                                 §§goto(addr99);
                              }
                              continue loop4;
                           }
                        })
                        {
                           this.§@"§ = character;
                           while(true)
                           {
                              continue loop6;
                           }
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      public function §%!2§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
         }
         if(_loc2_)
         {
            while(true)
            {
               this.§3!N§.visible = false;
               loop1:
               while(_loc2_ || this)
               {
                  while(true)
                  {
                     this.§&!X§.visible = false;
                     loop3:
                     while(_loc2_)
                     {
                        while(true)
                        {
                           if(!(_loc1_ && _loc2_))
                           {
                              if(!_loc1_)
                              {
                                 break;
                              }
                              continue loop1;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr72);
      }
      
      public function §+!U§(backgroundId:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && _loc2_)
         {
         }
         if(_loc3_ || _loc3_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  this.§3!N§.gotoAndStop(backgroundId.toLowerCase());
                  while(_loc3_ || _loc3_)
                  {
                     if(!_loc3_)
                     {
                        continue loop0;
                     }
                     loop3:
                     while(true)
                     {
                        this.§&!X§.gotoAndStop(backgroundId.toLowerCase());
                        while(true)
                        {
                           while(!_loc2_)
                           {
                              this.§1$§(§1!!§.§[!Y§().§&!i§(backgroundId));
                              loop6:
                              while(_loc3_)
                              {
                                 while(true)
                                 {
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       continue loop3;
                                    }
                                    continue loop6;
                                 }
                                 return;
                              }
                           }
                        }
                     }
                     if(!(_loc3_ || _loc2_))
                     {
                        continue;
                     }
                     §§goto(addr66);
                  }
               }
            }
         }
         §§goto(addr78);
      }
      
      public function §!!Q§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc7_)
         {
         }
         var category:§1!b§ = null;
         var items:Array = null;
         var random:int = 0;
         if(!(_loc7_ && this))
         {
            if(!_loc7_)
            {
               addr38:
            }
            loop0:
            for each(category in §1!!§.§[!Y§().§,!#§)
            {
               if(_loc6_ || this)
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
                     if(_loc6_)
                     {
                        §§push(!§§pop());
                     }
                     addr152:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        addr153:
                        while(true)
                        {
                           §§push(§§pop());
                           if(!(_loc7_ && items))
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 continue loop2;
                                 addr115:
                                 if(!(_loc6_ || items))
                                 {
                                    continue;
                                 }
                                 loop7:
                                 while(§§pop())
                                 {
                                    while(true)
                                    {
                                       continue loop1;
                                       addr79:
                                       if(_loc7_ && random)
                                       {
                                          continue;
                                       }
                                       if(!(_loc7_ && this))
                                       {
                                          addr71:
                                          if(!_loc6_)
                                          {
                                             continue loop2;
                                          }
                                          if(false)
                                          {
                                             while(true)
                                             {
                                                addr77:
                                                while(!_loc7_)
                                                {
                                                   §§goto(addr79);
                                                }
                                                continue loop1;
                                                §§goto(addr71);
                                             }
                                             continue loop2;
                                             addr75:
                                          }
                                          items = §1!!§.§[!Y§().§-t§(category.name);
                                          if(_loc6_ || this)
                                          {
                                          }
                                          items = this.§?!9§(items);
                                          if(!(_loc7_ && category))
                                          {
                                             addr289:
                                             random = Math.random() * (items.length + 1);
                                             addr292:
                                             addr278:
                                             addr290:
                                             §§push(random);
                                             if(_loc6_ || random)
                                             {
                                                if(§§pop() >= items.length)
                                                {
                                                   if(!(_loc7_ && category))
                                                   {
                                                      if(_loc7_ && this)
                                                      {
                                                         §§goto(addr292);
                                                      }
                                                   }
                                                   this.§ m§(category.name);
                                                   addr211:
                                                   break loop7;
                                                   addr275:
                                                   addr237:
                                                }
                                                this.§1$§(items[random]);
                                                addr221:
                                                if(_loc6_)
                                                {
                                                   if(!(_loc7_ && category))
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         if(_loc6_ || this)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               §§goto(addr278);
                                                            }
                                                            addr209:
                                                            if(true)
                                                            {
                                                               break loop7;
                                                            }
                                                            §§goto(addr211);
                                                         }
                                                         §§goto(addr275);
                                                      }
                                                      §§goto(addr221);
                                                   }
                                                   §§goto(addr290);
                                                }
                                                §§goto(addr237);
                                             }
                                             §§goto(addr289);
                                          }
                                          §§goto(addr209);
                                       }
                                       §§goto(addr77);
                                    }
                                 }
                                 continue loop0;
                                 addr122:
                              }
                           }
                           else
                           {
                              §§goto(addr122);
                           }
                        }
                     }
                  }
               }
            }
            if(_loc7_ && items)
            {
            }
            return;
         }
         §§goto(addr38);
      }
      
      private function §?!9§(arrayOfItems:Array) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc6_ && arrayOfItems)
         {
         }
         var item:Item = null;
         if(_loc7_)
         {
            while(true)
            {
            }
            addr54:
         }
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               while(!_loc6_)
               {
                  if(_loc6_ && parsedArray)
                  {
                     continue;
                  }
                  if(_loc7_)
                  {
                     if(true)
                     {
                        break loop2;
                     }
                     continue loop2;
                  }
                  §§goto(addr54);
               }
               continue loop1;
            }
            var parsedArray:Array = [];
            if(!_loc7_)
            {
            }
            loop4:
            for each(item in arrayOfItems)
            {
               if(!_loc6_)
               {
                  loop5:
                  while(true)
                  {
                     if(!AvatarCreatorPopup.§@i§(item.§<!B§))
                     {
                        continue loop4;
                     }
                     if(_loc7_ || item)
                     {
                        while(true)
                        {
                        }
                        addr141:
                     }
                     loop6:
                     while(true)
                     {
                        addr104:
                        while(true)
                        {
                           parsedArray.push(item);
                           continue loop6;
                        }
                        continue loop5;
                     }
                  }
               }
               §§goto(addr141);
            }
            if(_loc6_ && arrayOfItems)
            {
            }
            return parsedArray;
         }
      }
      
      public function show(showX:int, showY:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || showY)
         {
         }
         if(_loc4_ || showX)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     this.x = showX;
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           this.y = showY;
                           while(true)
                           {
                              continue loop2;
                              addr92:
                              loop9:
                              while(_loc4_ || _loc3_)
                              {
                                 visible = true;
                                 while(!(_loc3_ && showX))
                                 {
                                    continue loop0;
                                    if(_loc4_ || _loc3_)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(_loc4_)
                                          {
                                             if(_loc4_)
                                             {
                                                continue loop3;
                                             }
                                             continue loop4;
                                          }
                                          continue loop2;
                                       }
                                       continue loop9;
                                    }
                                 }
                                 continue loop1;
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
            §§goto(addr92);
         }
         §§goto(addr60);
      }
      
      public function hide() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc2_ && _loc2_)
         {
         }
         do
         {
            visible = false;
            while(!(_loc1_ || _loc2_))
            {
            }
         }
         while(_loc2_ && this);
         
      }
      
      public function §[h§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc7_)
         {
         }
         var achor:String = null;
         var mc:MovieClip = null;
         if(_loc6_)
         {
            loop0:
            while(true)
            {
               addr40:
               while(true)
               {
                  addr42:
                  while(_loc6_)
                  {
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            if(_loc6_ || achor)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr40);
            }
            §§goto(addr42);
         }
         var i:* = Number(0);
         loop4:
         while(true)
         {
            if(i >= this.§7Z§.numChildren)
            {
               if(_loc6_ || achor)
               {
                  if(_loc6_)
                  {
                     var _loc4_:int = 0;
                     if(_loc6_ || this)
                     {
                        var _loc5_:* = §1!!§.§[!Y§().§#!h§;
                        if(!(_loc7_ && this))
                        {
                           addr212:
                           for each(achor in _loc5_)
                           {
                              addr195:
                              this.each(achor);
                              addr211:
                              addr203:
                              if(!(_loc7_ && mc))
                              {
                                 if(!(_loc7_ && mc))
                                 {
                                    if(_loc6_)
                                    {
                                       if(false)
                                       {
                                          §§goto(addr195);
                                       }
                                       §§goto(addr212);
                                    }
                                    §§goto(addr211);
                                 }
                                 §§goto(addr203);
                              }
                              addr200:
                              §§goto(addr200);
                           }
                           §§goto(addr215);
                        }
                        §§goto(addr195);
                     }
                     §§goto(addr215);
                  }
               }
               §§goto(addr215);
            }
            else
            {
               if(_loc6_)
               {
                  if(_loc7_)
                  {
                     break;
                  }
               }
               mc = this.§7Z§.getChildAt(i) as MovieClip;
               if(!_loc6_)
               {
               }
               loop5:
               while(true)
               {
                  if(!mc)
                  {
                     loop11:
                     while(true)
                     {
                        §§push(i);
                        if(!_loc7_)
                        {
                           §§push(§§pop() + 1);
                           if(!_loc7_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        i = §§pop();
                        if(_loc6_)
                        {
                           if(true)
                           {
                              break;
                           }
                           while(true)
                           {
                           }
                        }
                        addr85:
                        loop10:
                        while(_loc6_ || i)
                        {
                           if(_loc6_)
                           {
                              continue loop11;
                           }
                           addr123:
                           while(true)
                           {
                              addr124:
                              while(true)
                              {
                                 mc.stop();
                                 break loop10;
                              }
                           }
                        }
                        while(true)
                        {
                           if(!_loc7_)
                           {
                              continue loop5;
                           }
                           §§goto(addr124);
                           §§goto(addr85);
                        }
                        continue loop5;
                     }
                     continue loop4;
                  }
                  §§goto(addr123);
               }
            }
         }
         addr215:
         if(!(_loc7_ && i))
         {
            break loop4;
         }
      }
      
      public function each(anchor:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_)
         {
         }
         if(!(_loc4_ && this))
         {
            loop0:
            while(true)
            {
               addr39:
               while(true)
               {
                  addr41:
                  while(_loc3_)
                  {
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            if(_loc3_ || itemsMC)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr39);
            }
            §§goto(addr41);
         }
         var itemsMC:MovieClip = this.§7Z§.getChildByName("Items_" + anchor) as MovieClip;
         if(!(_loc4_ && this))
         {
            loop4:
            while(true)
            {
               §§push(Boolean(itemsMC));
               loop5:
               while(true)
               {
                  §§push(§§pop());
                  if(_loc3_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr172:
                        while(true)
                        {
                           §§push(anchor.toUpperCase() == "NOHAT");
                           if(_loc3_ || itemsMC)
                           {
                              continue loop5;
                           }
                           addr147:
                           if(_loc4_)
                           {
                              break;
                           }
                           §§push(Boolean(§§pop()));
                        }
                     }
                  }
                  while(true)
                  {
                     addr151:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           §§goto(addr65);
                        }
                        while(true)
                        {
                           addr153:
                           while(_loc3_)
                           {
                              continue loop4;
                           }
                           §§goto(addr172);
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            itemsMC.stop();
            loop13:
            while(true)
            {
               while(!_loc4_)
               {
                  itemsMC.visible = false;
                  while(!_loc4_)
                  {
                     if(!_loc4_)
                     {
                        if(!_loc3_)
                        {
                           continue loop13;
                        }
                        if(!(_loc3_ || _loc3_))
                        {
                           §§goto(addr153);
                        }
                        addr65:
                     }
                     continue;
                     return;
                  }
               }
               §§goto(addr152);
            }
         }
      }
      
      public function §49§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc6_)
         {
         }
         var categoryName:String = null;
         var item:Item = null;
         var itemsMC:MovieClip = null;
         if(_loc6_ || i)
         {
            if(_loc6_)
            {
               addr40:
            }
            var i:* = Number(0);
            loop0:
            while(true)
            {
               if(i >= §1!!§.§[!Y§().§,!#§.length)
               {
                  if(!_loc6_)
                  {
                  }
               }
               else if(!_loc5_)
               {
                  if(_loc6_)
                  {
                     if(_loc6_)
                     {
                        while(true)
                        {
                           categoryName = §1!!§.§[!Y§().§,!#§[i].name;
                           if(_loc5_ && item)
                           {
                              break;
                           }
                           if(_loc5_)
                           {
                              break;
                           }
                           if(false)
                           {
                              continue;
                           }
                           item = this.§]y§(categoryName);
                           if(_loc6_)
                           {
                              if(!(_loc5_ && item))
                              {
                                 if(item == null)
                                 {
                                    if(_loc5_)
                                    {
                                       continue loop0;
                                    }
                                    addr115:
                                 }
                                 else
                                 {
                                    itemsMC = this.§7Z§.getChildByName("Items_" + item.§%!C§) as MovieClip;
                                    if(!_loc5_)
                                    {
                                       while(true)
                                       {
                                          if(!itemsMC)
                                          {
                                             trace("??\'" + "Items_" + item.§%!C§ + "\'" + this.§@"§.§<!B§);
                                             while(_loc5_)
                                             {
                                             }
                                             if(!(_loc5_ && this))
                                             {
                                                if(!(_loc5_ && i))
                                                {
                                                   if(false)
                                                   {
                                                      addr204:
                                                      §§push(i);
                                                      if(!_loc5_)
                                                      {
                                                         §§push(§§pop() + 1);
                                                         if(_loc6_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                      i = §§pop();
                                                      continue loop0;
                                                      addr153:
                                                   }
                                                   §§goto(addr204);
                                                }
                                                else
                                                {
                                                   itemsMC.gotoAndStop("Item_" + item.§<!B§);
                                                   break;
                                                   addr201:
                                                }
                                             }
                                             break;
                                          }
                                          if(!_loc5_)
                                          {
                                             if(!_loc6_)
                                             {
                                                continue;
                                             }
                                             addr200:
                                          }
                                          §§goto(addr201);
                                       }
                                       §§goto(addr153);
                                    }
                                    §§goto(addr200);
                                 }
                                 §§goto(addr204);
                              }
                           }
                           §§goto(addr115);
                        }
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr40);
      }
      
      public function §=p§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_ && this)
         {
         }
         var category:§1!b§ = null;
         if(!(_loc5_ && _loc2_))
         {
            if(!_loc4_)
            {
            }
         }
         var _loc2_:int = 0;
         var _loc3_:* = §1!!§.§[!Y§().§,!#§;
         loop0:
         for each(category in _loc3_)
         {
            if(!(_loc5_ && _loc3_))
            {
               loop1:
               while(true)
               {
                  §§push(category.name);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop().toUpperCase() == "CATEGORYBIRDS");
                     loop3:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        if(!(_loc5_ && this))
                        {
                           §§push(§§pop());
                           if(_loc4_ || category)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(!§§pop())
                           {
                              loop7:
                              while(true)
                              {
                                 §§pop();
                                 addr154:
                                 loop6:
                                 while(true)
                                 {
                                    addr85:
                                    while(true)
                                    {
                                       §§push(category.name);
                                       if(_loc5_)
                                       {
                                          break loop6;
                                       }
                                       §§push(§§pop().toUpperCase() == "CATEGORYBACKGROUNDS");
                                       if(_loc4_)
                                       {
                                          if(_loc5_)
                                          {
                                             continue loop3;
                                          }
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(!_loc4_)
                                       {
                                          continue loop7;
                                       }
                                    }
                                    continue loop7;
                                 }
                                 continue loop2;
                              }
                              addr153:
                           }
                           loop4:
                           while(!§§pop())
                           {
                              this.§ m§(category.name);
                              loop5:
                              while(!(_loc5_ && _loc3_))
                              {
                                 while(true)
                                 {
                                    if(_loc5_ && category)
                                    {
                                       continue loop5;
                                    }
                                    if(!_loc4_)
                                    {
                                       break loop4;
                                    }
                                    if(true)
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr85);
                                 }
                              }
                              §§goto(addr154);
                           }
                           while(!_loc4_)
                           {
                              continue loop1;
                           }
                           continue loop0;
                        }
                        §§goto(addr153);
                     }
                  }
               }
            }
            §§goto(addr118);
         }
         if(_loc4_ || _loc2_)
         {
         }
      }
      
      public function §+!=§(scale:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
         }
         if(!_loc2_)
         {
            while(true)
            {
               while(_loc3_ || this)
               {
                  this.§7!H§ = scale;
                  loop2:
                  while(_loc3_ || scale)
                  {
                     loop3:
                     while(true)
                     {
                        this.§7Z§.scaleX = this.§7!H§;
                        while(!_loc2_)
                        {
                           continue loop3;
                           while(_loc3_ || _loc2_)
                           {
                              if(!(_loc2_ && this))
                              {
                                 if(_loc3_)
                                 {
                                    return;
                                    addr44:
                                 }
                                 continue loop3;
                              }
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr78);
      }
      
      public function §+Y§(avatar:Avatar) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc8_)
         {
         }
         var backup:Item = null;
         var category:§1!b§ = null;
         var categoryId:* = null;
         var hisItem:Item = null;
         if(!_loc8_)
         {
         }
         while(true)
         {
            while(true)
            {
               §§goto(addr41);
            }
            if(!(_loc8_ || backup))
            {
               continue;
            }
            if(_loc8_)
            {
               if(false)
               {
                  addr41:
                  §§goto(addr63);
               }
               addr63:
               while(true)
               {
                  continue loop1;
               }
               var _loc6_:int = 0;
               var _loc7_:* = §1!!§.§[!Y§().§,!#§;
               addr257:
               for each(category in _loc7_)
               {
                  if(!_loc9_)
                  {
                     addr126:
                     addr131:
                     if(_loc8_)
                     {
                        addr94:
                        §§push(category.name);
                        if(!(_loc9_ && backup))
                        {
                           §§push(§§pop());
                        }
                        categoryId = §§pop();
                        if(_loc8_ || avatar)
                        {
                           if(!_loc9_)
                           {
                              if(_loc8_ || avatar)
                              {
                                 if(false)
                                 {
                                    §§goto(addr94);
                                 }
                                 backup = this.§<!$§[categoryId.toUpperCase()];
                                 if(!_loc8_)
                                 {
                                 }
                                 hisItem = avatar.§<!$§[categoryId.toUpperCase()];
                                 if(_loc8_ || avatar)
                                 {
                                    addr256:
                                    if(hisItem)
                                    {
                                       this.§1$§(hisItem);
                                       addr253:
                                       addr248:
                                       addr254:
                                       §§push(Boolean(backup));
                                       if(!_loc9_)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc8_)
                                             {
                                                if(!_loc9_)
                                                {
                                                   addr209:
                                                   if(!_loc9_)
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         avatar.§1$§(backup);
                                                         addr174:
                                                         §§goto(addr257);
                                                         addr197:
                                                      }
                                                      §§goto(addr253);
                                                   }
                                                   §§goto(addr248);
                                                }
                                                addr216:
                                                if(!(_loc9_ && category))
                                                {
                                                   §§goto(addr253);
                                                }
                                                §§goto(addr216);
                                                addr242:
                                             }
                                             §§goto(addr209);
                                          }
                                          avatar.§ m§(categoryId);
                                          addr182:
                                          if(_loc8_)
                                          {
                                             if(!(_loc9_ && avatar))
                                             {
                                                if(!(_loc9_ && avatar))
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         if(false)
                                                         {
                                                            §§goto(addr174);
                                                         }
                                                         §§goto(addr257);
                                                      }
                                                      §§goto(addr209);
                                                   }
                                                   §§goto(addr197);
                                                }
                                                §§goto(addr182);
                                             }
                                             §§goto(addr256);
                                          }
                                          §§goto(addr254);
                                       }
                                       §§goto(addr256);
                                    }
                                    this.§ m§(categoryId);
                                    §§goto(addr242);
                                 }
                                 §§goto(addr253);
                              }
                              §§goto(addr126);
                           }
                           §§goto(addr94);
                           addr113:
                        }
                        §§goto(addr131);
                     }
                     addr133:
                     §§goto(addr133);
                  }
                  §§goto(addr113);
               }
               if(!_loc8_)
               {
               }
               return;
            }
            §§goto(addr43);
         }
      }
      
      public function §1-§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc4_ && _loc3_)
         {
         }
         var item:Item = null;
         if(!_loc4_)
         {
            if(_loc4_)
            {
            }
         }
         for each(item in this.§<!$§)
         {
            if(_loc5_)
            {
               loop1:
               while(true)
               {
                  addr82:
                  while(true)
                  {
                     this.§1$§(item);
                     while(true)
                     {
                        if(_loc5_)
                        {
                           if(_loc5_ || item)
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
               §§goto(addr82);
            }
         }
         if(_loc5_ || this)
         {
         }
      }
      
      public function §1$§(item:Item) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc4_)
         {
         }
         if(!_loc4_)
         {
            while(!_loc5_)
            {
            }
         }
         while(item == null)
         {
            if(_loc5_)
            {
               return;
            }
         }
         var previousItem:Item = this.§<!$§[item.§-!@§.toUpperCase()];
         if(!(_loc4_ && item))
         {
            loop2:
            do
            {
               if(previousItem != item)
               {
                  loop3:
                  while(true)
                  {
                     this.§ m§(item.§-!@§);
                     loop4:
                     while(_loc5_)
                     {
                        while(true)
                        {
                           if(_loc5_ || previousItem)
                           {
                              if(!(_loc5_ || itemsMC))
                              {
                                 break;
                              }
                              loop6:
                              while(true)
                              {
                                 this.§<!$§[item.§-!@§.toUpperCase()] = item;
                                 while(true)
                                 {
                                    if(!(_loc5_ || previousItem))
                                    {
                                       continue loop3;
                                    }
                                    if(!(_loc5_ || previousItem))
                                    {
                                       break;
                                    }
                                    if(!_loc4_)
                                    {
                                       if(_loc5_)
                                       {
                                          continue loop6;
                                       }
                                       continue;
                                    }
                                 }
                                 addr149:
                                 if(!_loc5_)
                                 {
                                    while(true)
                                    {
                                       §§goto(addr149);
                                    }
                                    addr161:
                                 }
                                 §§goto(addr144);
                              }
                              continue;
                           }
                           continue loop4;
                        }
                        continue loop2;
                     }
                     addr156:
                     this.§ m§(item.§-!@§);
                     §§goto(addr161);
                  }
               }
            }
            while(!(_loc5_ || previousItem));
            
         }
         if(REMOVE_IF_SAME_OBJECT_IS_SELECTED)
         {
            §§goto(addr156);
         }
         addr144:
      }
      
      private function §1'§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && _loc3_)
         {
         }
         if(_loc2_ || itemsMC)
         {
            if(_loc2_ || this)
            {
               addr50:
            }
            var itemsMC:MovieClip = this.§7Z§.getChildByName("Items_NoHat") as MovieClip;
            if(_loc3_)
            {
            }
            do
            {
               itemsMC.visible = true;
               while(_loc3_ && _loc2_)
               {
               }
            }
            while(!(_loc2_ || this));
            
            return;
         }
         §§goto(addr50);
      }
      
      private function §0`§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(!_loc3_)
         {
            if(_loc2_)
            {
               addr35:
            }
            var itemsMC:MovieClip = this.§7Z§.getChildByName("Items_NoHat") as MovieClip;
            if(!_loc3_)
            {
               while(true)
               {
                  itemsMC.visible = false;
                  loop1:
                  while(_loc2_)
                  {
                     while(_loc3_ && itemsMC)
                     {
                        continue loop1;
                     }
                     return;
                  }
               }
            }
            §§goto(addr78);
         }
         §§goto(addr35);
      }
      
      public function §]y§(categoryName:String) : Item
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
         }
         if(_loc3_ && _loc3_)
         {
         }
         while(_loc3_ && _loc3_)
         {
         }
         return this.§<!$§[categoryName.toUpperCase()];
      }
      
      public function §>K§() : Object
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc1_ || _loc1_)
         {
         }
         return this.§<!$§;
      }
      
      public function § m§(category:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_ && category)
         {
         }
         var itemsMC:MovieClip = null;
         if(_loc4_)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  while(!(_loc4_ || item))
                  {
                  }
                  if(_loc5_)
                  {
                     break;
                  }
                  while(false)
                  {
                     continue loop1;
                  }
                  var item:Item = this.§<!$§[category.toUpperCase()];
                  if(!_loc4_)
                  {
                  }
                  loop4:
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        §§push(Boolean(item));
                        if(_loc4_)
                        {
                           if(§§pop())
                           {
                              while(_loc4_ || itemsMC)
                              {
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 if(_loc5_ && itemsMC)
                                 {
                                    continue;
                                 }
                                 if(_loc5_)
                                 {
                                    continue loop4;
                                 }
                                 if(false)
                                 {
                                    continue loop5;
                                 }
                                 itemsMC = this.§7Z§.getChildByName("Items_" + item.§%!C§) as MovieClip;
                                 if(!(_loc5_ && itemsMC))
                                 {
                                    loop7:
                                    while(itemsMC)
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             itemsMC.visible = false;
                                             loop10:
                                             while(true)
                                             {
                                                loop11:
                                                while(true)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      if(item.category.toUpperCase() != "CATEGORYTOP")
                                                      {
                                                         break;
                                                      }
                                                      if(_loc4_)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            continue loop8;
                                                         }
                                                         continue;
                                                      }
                                                      addr169:
                                                      while(_loc4_)
                                                      {
                                                         while(true)
                                                         {
                                                            this.§1'§();
                                                            while(_loc5_ && this)
                                                            {
                                                            }
                                                            if(!_loc4_)
                                                            {
                                                               break;
                                                            }
                                                            if(_loc4_)
                                                            {
                                                               if(true)
                                                               {
                                                                  break loop11;
                                                               }
                                                               continue;
                                                            }
                                                            continue loop10;
                                                         }
                                                      }
                                                      continue loop7;
                                                   }
                                                   continue loop9;
                                                }
                                             }
                                             continue loop8;
                                          }
                                       }
                                    }
                                    break loop5;
                                 }
                                 §§goto(addr168);
                              }
                              §§goto(addr199);
                           }
                           §§goto(addr190);
                        }
                        break;
                     }
                     §§pop();
                     if(_loc5_)
                     {
                     }
                     addr199:
                     return;
                  }
               }
            }
         }
         §§goto(addr42);
      }
      
      public function § g§(frameName:String) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc6_)
         {
         }
         var frame:FrameLabel = null;
         if(_loc7_)
         {
            while(true)
            {
               addr42:
               loop1:
               while(true)
               {
                  addr35:
                  while(true)
                  {
                     addr37:
                     while(!_loc6_)
                     {
                     }
                     continue loop1;
                  }
               }
            }
            addr44:
         }
         while(true)
         {
            if(!_loc6_)
            {
               if(!_loc6_)
               {
                  if(true)
                  {
                     break;
                  }
                  §§goto(addr35);
               }
               else
               {
                  §§goto(addr44);
               }
            }
            §§goto(addr37);
         }
         var foundInFrame:* = Number(-1);
         if(_loc6_ && frame)
         {
         }
         loop5:
         for each(frame in this.§7Z§.currentLabels)
         {
            if(!(_loc6_ && this))
            {
               loop6:
               while(true)
               {
                  §§push(foundInFrame);
                  loop7:
                  do
                  {
                     §§push(-1);
                     loop8:
                     while(true)
                     {
                        if(§§pop() == §§pop())
                        {
                           loop9:
                           for(; frame.name == frameName; §§push(frame.frame - foundInFrame))
                           {
                              loop10:
                              while(!_loc6_)
                              {
                                 loop11:
                                 for(; _loc7_; if(!(_loc7_ || frameName))
                                 {
                                    continue;
                                 },§§goto(addr121))
                                 {
                                    this.§7Z§.gotoAndPlay(frameName);
                                    loop12:
                                    while(true)
                                    {
                                       loop13:
                                       while(true)
                                       {
                                          if(!(_loc6_ && this))
                                          {
                                             if(!_loc7_)
                                             {
                                                break loop10;
                                             }
                                             addr175:
                                             loop14:
                                             while(true)
                                             {
                                                §§push(Number(frame.frame));
                                                if(!(_loc7_ || frame))
                                                {
                                                   break;
                                                }
                                                if(!_loc7_)
                                                {
                                                   break loop13;
                                                }
                                                foundInFrame = §§pop();
                                                loop15:
                                                while(_loc7_)
                                                {
                                                   continue loop11;
                                                   while(true)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               if(true)
                                                               {
                                                                  break loop9;
                                                               }
                                                               continue loop14;
                                                            }
                                                            continue loop10;
                                                         }
                                                         continue loop12;
                                                      }
                                                      continue loop15;
                                                   }
                                                }
                                                continue loop13;
                                             }
                                             continue loop7;
                                          }
                                          continue loop9;
                                       }
                                       addr158:
                                       §§push(1);
                                       if(_loc7_)
                                       {
                                          break loop8;
                                       }
                                       continue loop8;
                                    }
                                 }
                                 continue loop6;
                              }
                              §§goto(addr158);
                           }
                           continue loop5;
                        }
                        §§goto(addr175);
                     }
                  }
                  while(!(_loc7_ || foundInFrame));
                  
                  return §§pop();
               }
            }
            §§goto(addr121);
         }
         if(!(_loc6_ && foundInFrame))
         {
            loop17:
            while(true)
            {
               §§push(foundInFrame);
               do
               {
                  §§push(-1);
                  while(true)
                  {
                     if(§§pop() != §§pop())
                     {
                        if(!_loc6_)
                        {
                           §§push(this.§7Z§.framesLoaded - foundInFrame);
                           if(_loc6_)
                           {
                              break;
                           }
                           §§push(1);
                           if(!(_loc6_ && frame))
                           {
                              §§push(§§pop() - §§pop());
                              break;
                           }
                           continue;
                        }
                        continue loop17;
                     }
                  }
               }
               while(!_loc7_);
               
               return §§pop();
            }
         }
         return -1;
      }
      
      public function §66§(itemId:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(!_loc3_)
         {
            while(!(_loc2_ || this))
            {
            }
         }
         return true;
      }
      
      public function §?D§() : §[_§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc2_)
         {
         }
         return this.§@"§;
      }
      
      public function §5&§() : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_ && list)
         {
         }
         if(_loc4_)
         {
            while(true)
            {
            }
            addr65:
         }
         loop1:
         while(true)
         {
            addr41:
            addr66:
            addr76:
            while(true)
            {
               continue loop1;
            }
            var list:Array = [];
            §§push("list");
            if(_loc4_ || parsedIds)
            {
            }
            var jsonObject:Object = {§§pop():list};
            if(_loc4_ || jsonObject)
            {
            }
            list = this.§&n§();
            if(_loc5_)
            {
            }
            §§push(ServerIdParser.§@!-§(list));
            if(_loc4_)
            {
               §§push(§§pop());
            }
            var parsedIds:* = §§pop();
            if(!_loc4_)
            {
            }
            while(true)
            {
               trace(parsedIds);
               while(!_loc5_)
               {
                  if(_loc4_)
                  {
                     return parsedIds;
                  }
               }
            }
         }
      }
      
      public function §&n§() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_)
         {
         }
         var item:Item = null;
         if(_loc6_)
         {
            loop0:
            while(true)
            {
               addr35:
               while(true)
               {
                  continue loop0;
               }
            }
            addr39:
         }
         while(true)
         {
            if(_loc5_)
            {
               continue;
            }
            if(_loc6_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr39);
            }
            §§goto(addr35);
         }
         var list:Array = [];
         if(_loc5_ && list)
         {
         }
         var _loc3_:int = 0;
         loop3:
         for each(item in this.§<!$§)
         {
            if(!_loc6_)
            {
            }
            loop4:
            while(true)
            {
               loop5:
               while(true)
               {
                  list.push({
                     "itemId":item.§<!B§,
                     "category":item.§-!@§,
                     "sId":item.sId
                  });
                  while(_loc6_)
                  {
                     if(_loc6_ || _loc3_)
                     {
                        if(true)
                        {
                           break loop5;
                        }
                        continue loop5;
                     }
                  }
                  continue loop4;
               }
               continue loop3;
            }
         }
         if(!_loc6_)
         {
         }
         return list;
      }
      
      public function §&!C§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
         }
         if(_loc2_ || _loc1_)
         {
         }
         return this.§7!H§;
      }
      
      public function §!d§() : MovieClip
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc1_)
         {
         }
         return this.§7Z§;
      }
   }
}
