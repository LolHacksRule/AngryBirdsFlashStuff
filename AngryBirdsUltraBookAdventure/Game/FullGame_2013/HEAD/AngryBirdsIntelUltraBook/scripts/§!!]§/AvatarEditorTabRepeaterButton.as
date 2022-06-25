package §!!]§
{
   import §6a§.UIContainerRovio;
   import §6a§.UIRepeaterButtonRovio;
   import §]B§.PopupsUIView;
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   
   public class AvatarEditorTabRepeaterButton extends UIRepeaterButtonRovio
   {
      
      public static const BUY:String = "buy";
      
      public static const DEFAULT:String = "default";
      
      public static const NORMAL:String = "normal";
      
      {
         var BUY:Boolean = true;
         var DEFAULT:Boolean = false;
         if(!DEFAULT)
         {
            while(true)
            {
               BUY = "buy";
               loop1:
               for(; !(DEFAULT && BUY); if(DEFAULT && AvatarEditorTabRepeaterButton)
               {
                  continue;
               },return,addr46:)
               {
                  while(true)
                  {
                     DEFAULT = "default";
                     while(!(DEFAULT && BUY))
                     {
                        while(BUY || AvatarEditorTabRepeaterButton)
                        {
                           NORMAL = "normal";
                           if(BUY)
                           {
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr46);
      }
      
      private var §3!&§:MovieClip;
      
      private var §for§:MovieClip;
      
      private var §+S§:String;
      
      public function AvatarEditorTabRepeaterButton(data:XML, parentContainer:UIContainerRovio, clip:MovieClip = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || data)
         {
         }
         if(_loc4_ || data)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  loop2:
                  for(; !(_loc5_ && this); if(!(_loc4_ || parentContainer))
                  {
                     continue;
                  },§§goto(addr95))
                  {
                     while(true)
                     {
                        while(true)
                        {
                           super(data,parentContainer,clip);
                           loop5:
                           for(; _loc4_; if(_loc4_ || clip)
                           {
                              continue loop0;
                           })
                           {
                              loop6:
                              while(true)
                              {
                                 trace(data);
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       continue loop2;
                                    }
                                    continue loop6;
                                    addr95:
                                    if(!(_loc5_ && data))
                                    {
                                       continue loop5;
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
               }
               if(!(_loc5_ && clip))
               {
                  return;
               }
            }
         }
         §§goto(addr120);
      }
      
      override public function setIcon(newClip:MovieClip, iconContainer:String = null, alignment:int = 0) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc6_)
         {
         }
         if(!(_loc5_ && newClip))
         {
            while(true)
            {
               while(_loc6_)
               {
                  addr38:
                  if(!(_loc6_ || newClip))
                  {
                     continue;
                  }
                  if(false)
                  {
                     loop5:
                     while(true)
                     {
                        §§push("IconHolder");
                        if(_loc6_ || alignment)
                        {
                        }
                        iconContainer = §§pop();
                        while(_loc6_)
                        {
                           if(_loc6_ || iconContainer)
                           {
                              continue loop5;
                           }
                        }
                        addr64:
                        addr74:
                        while(!(_loc5_ && iconContainer))
                        {
                           continue loop5;
                        }
                        while(true)
                        {
                           §§goto(addr64);
                        }
                     }
                     continue;
                  }
                  var container:MovieClip = mClip.getChildByName(iconContainer) as MovieClip;
                  addr202:
                  if(container.numChildren <= 0)
                  {
                     super.setIcon(newClip,iconContainer,alignment);
                     addr176:
                     addr207:
                     addr208:
                     addr201:
                     if(_loc6_ || alignment)
                     {
                        if(this.§3!&§ == null)
                        {
                           if(!(_loc5_ && this))
                           {
                              if(_loc6_ || this)
                              {
                                 if(!(_loc5_ && newClip))
                                 {
                                    if(!(_loc5_ && newClip))
                                    {
                                       addr166:
                                       if(!(_loc5_ && this))
                                       {
                                          this.§3!&§ = newClip;
                                          addr117:
                                          if(!(_loc5_ && iconContainer))
                                          {
                                             if(_loc6_ || newClip)
                                             {
                                                if(!_loc5_)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      container.removeChildAt(0);
                                                      addr211:
                                                      §§goto(addr202);
                                                      addr217:
                                                      addr221:
                                                   }
                                                   §§goto(addr92);
                                                }
                                                §§goto(addr117);
                                             }
                                             §§goto(addr211);
                                          }
                                          §§goto(addr166);
                                       }
                                       §§goto(addr176);
                                    }
                                    §§goto(addr207);
                                 }
                                 §§goto(addr208);
                              }
                              §§goto(addr201);
                           }
                           §§goto(addr166);
                        }
                        addr92:
                        return;
                     }
                     §§goto(addr217);
                  }
                  §§goto(addr221);
               }
            }
         }
         while(true)
         {
            §§goto(addr74);
         }
      }
      
      public function § ! §(state:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_ && this)
         {
         }
         if(_loc4_)
         {
         }
         do
         {
            do
            {
               trace(state);
            }
            while(_loc4_);
            
         }
         while(_loc4_ && _loc3_);
         
         var _loc2_:* = state;
         if(_loc3_)
         {
            if(_loc3_ || state)
            {
               §§push(BUY);
               if(!(_loc4_ && _loc3_))
               {
                  §§push(_loc2_);
                  if(!(_loc4_ && _loc2_))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc4_)
                        {
                           §§push(0);
                           if(_loc4_ && _loc3_)
                           {
                           }
                        }
                        else
                        {
                           addr278:
                           §§push(3);
                           if(_loc4_)
                           {
                           }
                        }
                        §§goto(addr283);
                     }
                     else
                     {
                        §§push(NORMAL);
                        if(_loc3_ || _loc2_)
                        {
                           addr235:
                           §§push(_loc2_);
                           if(_loc3_ || _loc2_)
                           {
                              addr243:
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc4_)
                                 {
                                    §§push(1);
                                    if(_loc4_ && this)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr278);
                                 }
                                 §§goto(addr283);
                              }
                              else
                              {
                                 addr268:
                                 §§push(DEFAULT);
                                 §§push(_loc2_);
                              }
                              §§goto(addr278);
                           }
                           if(§§pop() !== §§pop())
                           {
                              if(false)
                              {
                                 §§goto(addr278);
                              }
                              else
                              {
                                 §§push(3);
                              }
                              addr283:
                              loop10:
                              switch(§§pop())
                              {
                                 case 0:
                                    loop2:
                                    while(true)
                                    {
                                       this.mClip.priceTag.visible = true;
                                       addr152:
                                       while(true)
                                       {
                                          if(!_loc4_)
                                          {
                                             break loop2;
                                          }
                                          continue loop2;
                                       }
                                    }
                                    this.mClip.background.gotoAndStop("buy");
                                    addr145:
                                    break;
                                    addr145:
                                    addr142:
                                 case 1:
                                    loop3:
                                    while(true)
                                    {
                                       this.mClip.priceTag.visible = false;
                                       addr116:
                                       while(true)
                                       {
                                          addr109:
                                          while(true)
                                          {
                                             this.mClip.background.gotoAndStop("normal");
                                             addr106:
                                             while(true)
                                             {
                                                continue loop3;
                                             }
                                          }
                                       }
                                    }
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       break;
                                    }
                                    §§goto(addr145);
                                    break;
                                 case 2:
                                    if(_loc3_)
                                    {
                                       this.mClip.priceTag.visible = false;
                                       if(_loc3_ || _loc2_)
                                       {
                                          if(!_loc4_)
                                          {
                                             if(_loc3_ || _loc2_)
                                             {
                                                while(true)
                                                {
                                                   this.mClip.background.gotoAndStop("default");
                                                   if(_loc3_ || state)
                                                   {
                                                      if(!(_loc4_ && this))
                                                      {
                                                         if(true)
                                                         {
                                                            break loop10;
                                                         }
                                                         continue;
                                                      }
                                                      §§goto(addr116);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr109);
                                             }
                                             else
                                             {
                                                §§goto(addr152);
                                             }
                                          }
                                          §§goto(addr89);
                                       }
                                       §§goto(addr106);
                                    }
                                    §§goto(addr142);
                              }
                              return;
                           }
                           if(_loc3_)
                           {
                              §§push(2);
                              if(!_loc3_)
                              {
                              }
                           }
                           else
                           {
                              §§goto(addr278);
                           }
                           §§goto(addr283);
                           §§goto(addr278);
                        }
                        §§goto(addr268);
                     }
                  }
                  §§goto(addr243);
               }
               §§goto(addr235);
            }
         }
         §§goto(addr278);
      }
      
      public function §-7§(itemId:String, itemPrice:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc5_)
         {
         }
         var priceText:String = null;
         if(_loc5_)
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
                     trace("change icon!!!!!!!",itemId);
                     loop3:
                     while(true)
                     {
                        while(!_loc4_)
                        {
                           if(itemPrice <= 0)
                           {
                              this.§ ! §(NORMAL);
                              while(true)
                              {
                                 if(_loc5_)
                                 {
                                    if(_loc5_ || priceText)
                                    {
                                       if(!(_loc4_ && priceText))
                                       {
                                          continue;
                                       }
                                       loop10:
                                       while(true)
                                       {
                                          if(_loc4_)
                                          {
                                             while(true)
                                             {
                                                if(_loc4_)
                                                {
                                                   break loop10;
                                                }
                                                continue loop10;
                                             }
                                             addr175:
                                          }
                                       }
                                       continue loop0;
                                    }
                                    while(!_loc4_)
                                    {
                                       this.§ ! §(BUY);
                                       while(true)
                                       {
                                          continue loop3;
                                       }
                                    }
                                    continue loop1;
                                 }
                                 continue loop3;
                              }
                           }
                           while(true)
                           {
                              §§goto(addr175);
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr169);
      }
      
      private function §+!`§(itemId:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
         }
         if(_loc5_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     while(!(_loc5_ || c))
                     {
                     }
                     if(_loc6_)
                     {
                        break;
                     }
                     if(!_loc5_)
                     {
                        continue loop0;
                     }
                     while(false)
                     {
                        continue loop2;
                     }
                     §§push(AssetCache);
                     §§push("Inventory_Item_");
                     if(_loc5_ || c)
                     {
                        §§push(§§pop() + itemId);
                     }
                     var c:Class = §§pop().§%p§(§§pop());
                     if(_loc6_ && itemId)
                     {
                     }
                     var clip:MovieClip = new c();
                     if(!(_loc6_ && this))
                     {
                        if(_loc5_ || c)
                        {
                           clip.x = 31 - clip.width * 0.5;
                           loop5:
                           while(!(_loc6_ && itemId))
                           {
                              while(true)
                              {
                                 while(true)
                                 {
                                    clip.y = 31 - clip.height * 0.5;
                                    if(_loc6_ && this)
                                    {
                                       break;
                                    }
                                    if(!_loc6_)
                                    {
                                       continue;
                                    }
                                    continue loop5;
                                 }
                                 break loop5;
                              }
                           }
                        }
                        do
                        {
                           this.setIcon(clip);
                           while(_loc6_)
                           {
                           }
                        }
                        while(_loc6_ && clip);
                        
                        return;
                     }
                     §§goto(addr130);
                  }
               }
            }
         }
         §§goto(addr41);
      }
      
      public function §6!"§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc1_)
         {
         }
         if(_loc2_)
         {
         }
         loop0:
         while(true)
         {
            this.§ ! §(DEFAULT);
            do
            {
               continue loop0;
            }
            while(!_loc1_);
            
            return;
         }
      }
      
      public function §`m§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_)
         {
         }
         if(_loc3_)
         {
            if(_loc4_ && iconOut$0)
            {
            }
         }
         try
         {
            §3d§.gotoAndStop("out");
            if(_loc4_)
            {
            }
         }
         catch(e:Error)
         {
            if(_loc4_)
            {
            }
            trace("error!",e.message);
            if(_loc4_ && iconOut$0)
            {
            }
         }
      }
      
      public function §^f§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc4_)
         {
         }
         if(_loc4_)
         {
            if(_loc4_)
            {
               addr30:
            }
            try
            {
               §3d§.gotoAndStop("over");
               if(_loc3_ && _loc3_)
               {
               }
            }
            catch(e:Error)
            {
               if(_loc4_ || this)
               {
               }
               trace("error!",e.message);
               if(!_loc4_)
               {
               }
            }
            return;
         }
         §§goto(addr30);
      }
   }
}
