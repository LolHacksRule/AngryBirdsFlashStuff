package §03§
{
   import §"!2§.UIContainerRovio;
   import §"!2§.UIRepeaterButtonRovio;
   import §6!'§.PopupsUIView;
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
         if(!(DEFAULT && AvatarEditorTabRepeaterButton))
         {
            while(true)
            {
               BUY = "buy";
               loop1:
               while(true)
               {
                  addr83:
                  while(true)
                  {
                     DEFAULT = "default";
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            NORMAL = "normal";
            if(!DEFAULT)
            {
               §§goto(addr44);
            }
            §§goto(addr64);
         }
         §§goto(addr61);
      }
      
      private var §@!0§:MovieClip;
      
      private var §"E§:MovieClip;
      
      private var §2P§:String;
      
      public function AvatarEditorTabRepeaterButton(data:XML, parentContainer:UIContainerRovio, clip:MovieClip = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc5_)
         {
         }
         if(!_loc4_)
         {
            while(true)
            {
               addr46:
               if(!(_loc4_ && this))
               {
                  return;
               }
            }
         }
         while(true)
         {
            loop2:
            while(!_loc4_)
            {
               loop3:
               while(true)
               {
                  super(data,parentContainer,clip);
                  loop4:
                  while(true)
                  {
                     loop5:
                     do
                     {
                        trace(data);
                        while(!_loc4_)
                        {
                           if(_loc5_)
                           {
                              if(!_loc4_)
                              {
                                 continue loop5;
                              }
                              continue;
                              continue;
                           }
                           continue loop3;
                        }
                        continue loop4;
                     }
                     while(_loc4_);
                     
                     if(_loc4_)
                     {
                        continue loop2;
                     }
                     §§goto(addr46);
                  }
               }
            }
         }
      }
      
      override public function setIcon(newClip:MovieClip, iconContainer:String = null, alignment:int = 0) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_ && newClip)
         {
         }
         if(!(_loc5_ && newClip))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     loop3:
                     for(; !_loc5_; loop5:
                     while(_loc6_ || iconContainer)
                     {
                        continue loop1;
                        while(true)
                        {
                           if(_loc5_ && this)
                           {
                              continue loop5;
                           }
                           if(_loc5_)
                           {
                              continue loop0;
                           }
                           if(true)
                           {
                              break;
                           }
                           §§goto(addr47);
                        }
                        var container:MovieClip = mClip.getChildByName(iconContainer) as MovieClip;
                        while(true)
                        {
                           if(container.numChildren <= 0)
                           {
                              loop8:
                              while(!(_loc5_ && alignment))
                              {
                                 loop9:
                                 while(true)
                                 {
                                    super.setIcon(newClip,iconContainer,alignment);
                                    while(!(_loc5_ && newClip))
                                    {
                                       while(true)
                                       {
                                          if(_loc6_)
                                          {
                                             if(!_loc5_)
                                             {
                                                if(this.§@!0§ != null)
                                                {
                                                   break;
                                                }
                                                continue;
                                             }
                                             continue loop8;
                                          }
                                          continue loop9;
                                       }
                                       return;
                                    }
                                    break loop8;
                                 }
                              }
                              continue;
                           }
                           §§goto(addr201);
                        }
                     })
                     {
                        while(true)
                        {
                           §§push("IconHolder");
                           if(_loc5_ && iconContainer)
                           {
                           }
                           iconContainer = §§pop();
                           continue loop3;
                        }
                     }
                  }
                  if(!(_loc6_ || alignment))
                  {
                     continue;
                  }
                  §§goto(addr73);
               }
            }
         }
         §§goto(addr73);
      }
      
      public function §"![§(state:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || state)
         {
         }
         if(!_loc4_)
         {
            while(true)
            {
               loop1:
               while(_loc3_)
               {
                  while(true)
                  {
                     trace(state);
                     if(!(_loc4_ && _loc3_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  var _loc2_:* = state;
                  if(_loc3_ || _loc2_)
                  {
                     if(_loc3_ || this)
                     {
                        §§push(BUY);
                        if(!(_loc4_ && this))
                        {
                           §§push(_loc2_);
                           if(!_loc4_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr230:
                                    §§push(0);
                                    if(!_loc3_)
                                    {
                                    }
                                    §§goto(addr302);
                                 }
                                 else
                                 {
                                    §§goto(addr255);
                                 }
                              }
                              else
                              {
                                 §§push(NORMAL);
                                 if(_loc3_ || state)
                                 {
                                    addr244:
                                    §§push(_loc2_);
                                    if(!_loc4_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc4_ && state))
                                          {
                                             addr255:
                                             §§push(1);
                                             if(!(_loc3_ || this))
                                             {
                                                addr289:
                                             }
                                          }
                                       }
                                       else
                                       {
                                          addr278:
                                          if(DEFAULT === _loc2_)
                                          {
                                             if(_loc3_ || _loc3_)
                                             {
                                                §§push(2);
                                                if(_loc3_)
                                                {
                                                   §§goto(addr289);
                                                }
                                             }
                                          }
                                          else if(true)
                                          {
                                             addr302:
                                             loop6:
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   this.mClip.priceTag.visible = true;
                                                   this.mClip.background.gotoAndStop("buy");
                                                   addr156:
                                                   break;
                                                   addr163:
                                                   addr156:
                                                   addr168:
                                                   addr153:
                                                   addr135:
                                                case 1:
                                                   addr123:
                                                   if(_loc3_)
                                                   {
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         this.mClip.priceTag.visible = false;
                                                         this.mClip.background.gotoAndStop("normal");
                                                         break;
                                                         addr100:
                                                         addr111:
                                                         addr118:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr163);
                                                      }
                                                   }
                                                   §§goto(addr156);
                                                case 2:
                                                   while(true)
                                                   {
                                                      if(!(_loc4_ && state))
                                                      {
                                                         this.mClip.priceTag.visible = false;
                                                         while(true)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               continue;
                                                            }
                                                         }
                                                         §§goto(addr111);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr123);
                                                      }
                                                      if(_loc3_)
                                                      {
                                                         if(false)
                                                         {
                                                            §§goto(addr34);
                                                         }
                                                         break loop6;
                                                      }
                                                   }
                                                   §§goto(addr156);
                                             }
                                             return;
                                             §§push(3);
                                          }
                                       }
                                       §§goto(addr302);
                                       §§goto(addr302);
                                    }
                                 }
                                 §§goto(addr278);
                              }
                              §§goto(addr302);
                           }
                           §§goto(addr278);
                        }
                        §§goto(addr244);
                     }
                  }
                  §§goto(addr230);
               }
            }
         }
         §§goto(addr186);
      }
      
      public function §+%§(itemId:String, itemPrice:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc5_)
         {
         }
         var priceText:String = null;
         if(!_loc4_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  while(true)
                  {
                     trace("change icon!!!!!!!",itemId);
                     while(true)
                     {
                        while(true)
                        {
                           if(itemPrice <= 0)
                           {
                              this.§"![§(NORMAL);
                              continue;
                           }
                           while(true)
                           {
                              addr184:
                              while(true)
                              {
                                 continue loop0;
                              }
                           }
                        }
                        if(_loc4_ && itemPrice)
                        {
                           continue;
                        }
                        §§goto(addr114);
                     }
                  }
               }
            }
         }
         §§goto(addr119);
      }
      
      private function §"P§(itemId:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_)
         {
         }
         if(_loc5_ || itemId)
         {
            while(true)
            {
            }
            addr50:
         }
         while(true)
         {
            while(true)
            {
               while(!_loc5_)
               {
               }
               if(!(_loc5_ || itemId))
               {
                  break;
               }
               if(!_loc6_)
               {
                  if(false)
                  {
                     continue;
                  }
                  §§push(AssetCache);
                  §§push("Inventory_Item_");
                  if(!(_loc6_ && c))
                  {
                     §§push(§§pop() + itemId);
                  }
                  var c:Class = §§pop().§,!k§(§§pop());
                  if(_loc6_ && itemId)
                  {
                  }
                  var clip:MovieClip = new c();
                  if(_loc5_)
                  {
                     loop4:
                     while(true)
                     {
                        clip.x = 31 - clip.width * 0.5;
                        if(_loc6_)
                        {
                           break;
                        }
                        loop5:
                        while(_loc5_ || c)
                        {
                           loop6:
                           while(true)
                           {
                              clip.y = 31 - clip.height * 0.5;
                              if(!_loc6_)
                              {
                                 while(true)
                                 {
                                    if(_loc5_)
                                    {
                                       if(_loc6_)
                                       {
                                          continue loop5;
                                       }
                                       if(false)
                                       {
                                          continue loop6;
                                       }
                                       clip.scaleX *= clip.scaleY = clip.scaleY * 0.9;
                                       if(_loc5_)
                                       {
                                          break loop6;
                                       }
                                       loop10:
                                       while(true)
                                       {
                                          if(!(_loc6_ && c))
                                          {
                                             break loop4;
                                          }
                                          addr182:
                                          while(_loc5_)
                                          {
                                             continue loop10;
                                          }
                                       }
                                    }
                                    addr186:
                                    while(true)
                                    {
                                       this.setIcon(clip);
                                       §§goto(addr182);
                                    }
                                 }
                                 addr110:
                              }
                              break;
                           }
                           §§goto(addr186);
                        }
                     }
                     return;
                  }
                  §§goto(addr110);
               }
               else
               {
                  §§goto(addr50);
               }
            }
         }
      }
      
      public function §@!U§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(!(_loc2_ && _loc2_))
         {
            do
            {
               this.§"![§(DEFAULT);
               do
               {
                  do
                  {
                     this.setIcon(this.§@!0§);
                     while(!(_loc1_ || this))
                     {
                     }
                  }
                  while(!_loc1_);
                  
               }
               while(!_loc1_);
               
            }
            while(!(_loc1_ || this));
            
         }
      }
      
      public function §2!A§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
         }
         if(!(_loc3_ && this))
         {
            if(!(_loc3_ && this))
            {
               addr55:
            }
            try
            {
               §^!b§.gotoAndStop("out");
               if(!_loc4_)
               {
               }
            }
            catch(e:Error)
            {
               if(!_loc4_)
               {
               }
               trace("error!",e.message);
               if(_loc4_ || _loc3_)
               {
               }
            }
            return;
         }
         §§goto(addr55);
      }
      
      public function §!6§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_)
         {
         }
         if(_loc3_ || iconOver$0)
         {
            if(_loc3_ || _loc3_)
            {
               addr49:
            }
            try
            {
               §^!b§.gotoAndStop("over");
               if(_loc4_)
               {
               }
            }
            catch(e:Error)
            {
               if(_loc3_ || _loc3_)
               {
               }
               trace("error!",e.message);
               if(_loc4_ && iconOver$0)
               {
               }
            }
            return;
         }
         §§goto(addr49);
      }
   }
}
