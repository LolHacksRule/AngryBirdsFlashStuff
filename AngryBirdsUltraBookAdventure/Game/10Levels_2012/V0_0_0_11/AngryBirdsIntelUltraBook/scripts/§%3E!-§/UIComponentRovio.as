package §>!-§
{
   import §4!9§.§6"§;
   import §6b§.Log;
   import §]!6§.UIContainerRovio;
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class UIComponentRovio extends UIEventListenerRovio
   {
       
      
      public var mParentContainer:UIContainerRovio;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §;!M§:Boolean = false;
      
      public var §@!#§:Boolean = true;
      
      public var §^!g§:Boolean = false;
      
      public var §%o§:Boolean = false;
      
      private var §<,§:§7,§;
      
      private var §9+§:Boolean = false;
      
      protected var §8j§:Boolean = false;
      
      private var §&D§:Number;
      
      private var §=!j§:Number;
      
      private var §6D§:Number;
      
      private var §8X§:Number;
      
      private var § !I§:String;
      
      private var §[g§:String;
      
      private var §-l§:String;
      
      private var §?f§:String;
      
      private var §;r§:String;
      
      private var §'!8§:String;
      
      public function UIComponentRovio(param1:XML, param2:UIContainerRovio, param3:MovieClip = null)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[4] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  while(true)
                  {
                     §§push(null);
                     loop4:
                     while(true)
                     {
                        §§push(§§pop());
                        loop5:
                        while(true)
                        {
                           §§pop().§§slot[5] = §§pop();
                           while(true)
                           {
                              §§push(§§newactivation());
                              while(true)
                              {
                                 §§push(NaN);
                                 while(true)
                                 {
                                    §§pop().§§slot[6] = §§pop();
                                    while(true)
                                    {
                                       §§push(§§newactivation());
                                       loop10:
                                       while(true)
                                       {
                                          §§push(NaN);
                                          while(true)
                                          {
                                             §§pop().§§slot[7] = §§pop();
                                             while(true)
                                             {
                                                §§push(§§newactivation());
                                                while(true)
                                                {
                                                   §§push(null);
                                                   if(!(_loc6_ || param3))
                                                   {
                                                      break;
                                                   }
                                                   if(_loc5_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   §§pop().§§slot[8] = §§pop();
                                                   while(true)
                                                   {
                                                      §§push(§§newactivation());
                                                      continue loop0;
                                                      loop47:
                                                      while(_loc6_ || this)
                                                      {
                                                         loop45:
                                                         while(true)
                                                         {
                                                            loop48:
                                                            while(true)
                                                            {
                                                               §§push(§§newactivation());
                                                               while(true)
                                                               {
                                                                  if(§§pop().§§slot[1].@isOverlay.toString().toUpperCase() != "TRUE")
                                                                  {
                                                                     loop72:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.mParentContainer);
                                                                        if(!_loc5_)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 loop73:
                                                                                 while(_loc6_)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                    }
                                                                                    if(§§pop())
                                                                                    {
                                                                                       loop74:
                                                                                       for(; !(_loc5_ && param2); §§push(§§pop().§§slot[1].@isBehind.toString().toUpperCase() == "TRUE"),if(!(_loc5_ && this))
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                       },if(!_loc6_)
                                                                                       {
                                                                                          continue;
                                                                                       },if(!_loc6_)
                                                                                       {
                                                                                          continue loop73;
                                                                                       },if(_loc6_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                §§goto(addr236);
                                                                                             }
                                                                                             §§goto(addr117);
                                                                                          }
                                                                                          addr234:
                                                                                       },§§goto(addr628))
                                                                                       {
                                                                                          if(!(_loc5_ && param3))
                                                                                          {
                                                                                             §§pop();
                                                                                             while(!_loc5_)
                                                                                             {
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      continue loop2;
                                                                                                   }
                                                                                                   §§push(§§newactivation());
                                                                                                   loop76:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc5_ && param2))
                                                                                                      {
                                                                                                         continue loop74;
                                                                                                      }
                                                                                                      addr356:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop().§§slot[8] = this.getParentView().§'T§(color,alpha);
                                                                                                         addr365:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.mClip.addChildAt(tmp,0);
                                                                                                            continue loop72;
                                                                                                         }
                                                                                                         continue loop76;
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         continue loop48;
                                                                                                      }
                                                                                                      §§goto(addr629);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr547);
                                                                                                }
                                                                                                §§goto(addr738);
                                                                                                if(!(_loc6_ || param2))
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                if(_loc6_ || this)
                                                                                                {
                                                                                                   §§goto(addr280);
                                                                                                   §§push(§§newactivation());
                                                                                                }
                                                                                                §§goto(addr701);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc5_ && param1))
                                                                                                {
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§goto(addr356);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         Log.log(error);
                                                                                                         §§goto(addr557);
                                                                                                      }
                                                                                                      addr621:
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr513);
                                                                                                }
                                                                                                §§goto(addr565);
                                                                                             }
                                                                                             §§goto(addr763);
                                                                                          }
                                                                                          §§goto(addr733);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             §§goto(addr721);
                                                                                          }
                                                                                          §§goto(addr691);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr234);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       continue loop45;
                                                                                    }
                                                                                    §§goto(addr662);
                                                                                 }
                                                                              }
                                                                              §§goto(addr719);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr627);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc5_ && param1))
                                                                        {
                                                                           §§pop().mClip.addChild(this.mClip);
                                                                           continue loop47;
                                                                        }
                                                                        §§goto(addr723);
                                                                     }
                                                                  }
                                                                  §§goto(addr531);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                continue loop4;
                                             }
                                          }
                                          while(true)
                                          {
                                             if(!(_loc6_ || this))
                                             {
                                                continue loop10;
                                             }
                                             §§push("Asset instance not found!! [");
                                             if(_loc6_ || param1)
                                             {
                                                §§push(§§pop() + this.mName);
                                                if(_loc6_)
                                                {
                                                   §§push("] parent: [");
                                                   if(_loc6_ || param2)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc5_ && param3))
                                                      {
                                                         addr604:
                                                         §§push(§§pop() + this.mParentContainer.mName);
                                                         if(!(_loc5_ && param2))
                                                         {
                                                            addr615:
                                                            §§push(§§pop() + "]");
                                                         }
                                                         §§push(§§pop());
                                                         if(_loc5_)
                                                         {
                                                            break;
                                                         }
                                                         §§pop().§§slot[5] = §§pop();
                                                         §§goto(addr621);
                                                      }
                                                   }
                                                   §§goto(addr615);
                                                }
                                             }
                                             §§goto(addr604);
                                          }
                                          continue loop5;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     if(!(_loc6_ || param3))
                     {
                        continue;
                     }
                     if(§§pop().§§slot[1].@overlayAlpha.toString() != "")
                     {
                        §§goto(addr382);
                     }
                     §§goto(addr354);
                  }
               }
            }
         }
      }
      
      private function §4^§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§<,§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               addr159:
               while(true)
               {
                  if(!§§pop())
                  {
                     continue loop0;
                  }
                  loop2:
                  while(true)
                  {
                     this.§<,§ = new §7,§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§6D§,this.§8X§,this.§ !I§,this.§[g§,this.§-l§,this.§?f§,this.§'!8§,this.§;r§);
                     while(true)
                     {
                        continue loop0;
                        addr43:
                        if(!(_loc2_ && this))
                        {
                           this.mClip.scrollRect = new Rectangle(0,0,this.§6D§,this.§8X§);
                           addr61:
                           if(!(_loc2_ && this))
                           {
                              addr24:
                              return;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr100);
      }
      
      private function §9H§(param1:XML) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(_loc5_)
         {
            if(this.mParentContainer)
            {
               §§push(_loc2_);
               loop0:
               while(true)
               {
                  §§push(0);
                  addr137:
                  while(true)
                  {
                     if(§§pop() == §§pop())
                     {
                        addr138:
                        while(true)
                        {
                           this.§&D§ = this.mParentContainer.viewWidth;
                           addr143:
                           while(true)
                           {
                              continue loop0;
                           }
                        }
                        addr138:
                     }
                     else
                     {
                        this.§&D§ = _loc2_;
                        while(true)
                        {
                           continue loop0;
                        }
                        addr131:
                     }
                  }
               }
            }
            §§goto(addr153);
         }
         §§goto(addr77);
      }
      
      private function §if §(param1:XML) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            this.§ !I§ = param1.@alignH;
            while(true)
            {
               this.§[g§ = param1.@alignV;
               loop1:
               while(true)
               {
                  this.§-l§ = param1.@scaleH;
                  while(true)
                  {
                     this.§?f§ = param1.@scaleV;
                     loop3:
                     while(!(_loc4_ && this))
                     {
                        while(true)
                        {
                           this.§;r§ = param1.@scaleFunction;
                           while(_loc5_)
                           {
                              this.§'!8§ = param1.@aspectRatioFixed;
                              if(!(_loc4_ && this))
                              {
                                 continue loop1;
                              }
                           }
                           continue loop3;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr48);
         }
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         if(!(_loc4_ && this))
         {
            this.§8S§(_loc2_);
         }
         do
         {
            this.§'!"§(_loc3_);
         }
         while(_loc4_);
         
      }
      
      private function §'!"§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            if(_loc2_ || _loc3_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     §§push(param1);
                     if(_loc2_ || this)
                     {
                        addr87:
                        §§push(§§pop().toUpperCase());
                     }
                     while(true)
                     {
                        param1 = §§pop();
                        §§goto(addr90);
                     }
                  }
                  addr90:
                  §§goto(addr19);
               }
               addr19:
               while(true)
               {
                  §§push(param1);
                  if(!(_loc3_ && _loc3_))
                  {
                     if(§§pop() != "TRUE")
                     {
                        break;
                     }
                     if(_loc2_ || _loc2_)
                     {
                        this.§8j§ = true;
                     }
                     if(!_loc3_)
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop0;
               }
               return;
            }
            §§goto(addr87);
         }
         §§goto(addr90);
      }
      
      private function §8S§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               addr95:
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  if(!_loc2_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        continue loop0;
                        addr53:
                        if(_loc2_ && _loc2_)
                        {
                           continue;
                        }
                        if(!(_loc3_ || _loc2_))
                        {
                           continue loop1;
                        }
                        addr77:
                        §§push(Boolean(§§pop()));
                        while(true)
                        {
                           addr79:
                           while(§§pop())
                           {
                              if(!_loc2_)
                              {
                                 this.§9+§ = true;
                              }
                              if(!(_loc2_ && _loc3_))
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           return;
                           §§goto(addr77);
                        }
                        addr78:
                     }
                     addr100:
                  }
                  else
                  {
                     §§goto(addr78);
                  }
               }
            }
            addr94:
         }
         while(true)
         {
            §§push(param1);
            if(_loc3_ || this)
            {
               §§push(§§pop().toUpperCase() == "TRUE");
               if(_loc3_ || _loc2_)
               {
                  §§goto(addr53);
               }
               §§goto(addr79);
            }
            else
            {
               §§goto(addr94);
            }
            §§goto(addr100);
         }
      }
      
      public function readInitialVisibility(param1:XML) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = param1.@visible;
         if(_loc3_ || param1)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  if(_loc3_ || param1)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(_loc2_);
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop().toUpperCase() == "FALSE");
                                 addr173:
                                 while(_loc3_ || _loc3_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 continue loop3;
                                 addr41:
                                 if(!(_loc3_ || param1))
                                 {
                                    continue;
                                 }
                                 §§push(§§pop().toUpperCase() == "FALSE");
                                 if(_loc3_ || param1)
                                 {
                                    addr58:
                                    if(_loc3_ || _loc3_)
                                    {
                                       if(!_loc4_)
                                       {
                                          if(_loc3_)
                                          {
                                             addr70:
                                             §§push(Boolean(§§pop()));
                                             if(_loc3_ || param1)
                                             {
                                                if(_loc3_ || param1)
                                                {
                                                   loop18:
                                                   while(§§pop())
                                                   {
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            addr110:
                                                            if(_loc3_ || _loc3_)
                                                            {
                                                               this.setEnabled(false);
                                                               addr121:
                                                               if(_loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  if(!(_loc4_ && _loc2_))
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        if(_loc3_ || param1)
                                                                        {
                                                                           §§goto(addr41);
                                                                        }
                                                                        while(_loc3_)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc3_ || _loc3_)
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(Boolean(§§pop()));
                                                                              }
                                                                              if(!§§pop())
                                                                              {
                                                                                 continue loop18;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 continue loop17;
                                                                                 §§goto(addr58);
                                                                              }
                                                                              §§goto(addr70);
                                                                           }
                                                                           continue loop2;
                                                                           §§goto(addr151);
                                                                        }
                                                                        addr151:
                                                                        while(!_loc4_)
                                                                        {
                                                                           _loc2_ = §§pop();
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr126);
                                                                              continue loop17;
                                                                           }
                                                                        }
                                                                        addr126:
                                                                        continue loop0;
                                                                        addr156:
                                                                     }
                                                                     while(!_loc4_)
                                                                     {
                                                                        this.setVisibility(false);
                                                                        while(true)
                                                                        {
                                                                           loop11:
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr156);
                                                                              §§push(param1.@enabled);
                                                                              addr167:
                                                                              while(true)
                                                                              {
                                                                                 continue loop11;
                                                                              }
                                                                           }
                                                                           §§goto(addr110);
                                                                        }
                                                                     }
                                                                     continue loop4;
                                                                     addr193:
                                                                  }
                                                                  §§goto(addr159);
                                                               }
                                                               continue loop5;
                                                            }
                                                            §§goto(addr199);
                                                         }
                                                         §§goto(addr167);
                                                      }
                                                      §§goto(addr121);
                                                   }
                                                   return;
                                                }
                                                continue loop1;
                                             }
                                             §§goto(addr129);
                                          }
                                          §§goto(addr173);
                                       }
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             this.setVisibility(true);
                                             §§goto(addr167);
                                          }
                                          §§goto(addr193);
                                       }
                                       addr192:
                                    }
                                    §§goto(addr141);
                                 }
                                 §§goto(addr70);
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§goto(addr192);
                     }
                  }
               }
            }
         }
         §§goto(addr167);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.clear();
            while(true)
            {
               §§push(this.mParentContainer);
               if(!_loc1_)
               {
                  break;
               }
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     continue;
                  }
                  addr101:
               }
               loop1:
               while(true)
               {
                  if(this.mClip.numChildren <= 0)
                  {
                     loop2:
                     do
                     {
                        this.mClip = null;
                        while(!_loc2_)
                        {
                           this.§<,§ = null;
                           if(_loc1_)
                           {
                              continue loop2;
                           }
                        }
                        continue loop1;
                     }
                     while(!(_loc1_ || this));
                     
                     return;
                  }
                  this.mClip.removeChildAt(0);
               }
            }
            addr96:
            §§pop().mClip.removeChild(this.mClip);
            §§goto(addr101);
         }
         §§goto(addr96);
         §§push(this.mParentContainer);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            super.listenerEventOccured(param1,param2);
            do
            {
               §§push(this.mParentContainer);
               if(!_loc4_)
               {
                  if(!§§pop())
                  {
                     §§goto(addr34);
                  }
                  if(!(_loc3_ || _loc3_))
                  {
                     continue;
                  }
                  §§push(this.mParentContainer);
               }
               §§pop().containerEventOccured(param1,param2,this);
            }
            while(_loc4_);
            
         }
         addr34:
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§@!#§ = param1;
            while(true)
            {
               this.mClip.visible = this.§@!#§ && this.§;!M§;
            }
            addr89:
         }
         while(true)
         {
            if(this.visible)
            {
               addr19:
               break;
               addr70:
            }
            removeEventListeners();
            if(!_loc2_)
            {
               return;
            }
            if(_loc3_ && param1)
            {
               break;
            }
            if(!_loc2_)
            {
               continue;
            }
            if(!_loc3_)
            {
               §§goto(addr19);
            }
            else
            {
               §§goto(addr89);
            }
         }
         addEventListeners();
         §§goto(addr70);
      }
      
      public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§;!M§ = param1;
            while(true)
            {
               this.mClip.visible = this.§@!#§ && this.§;!M§;
            }
            addr143:
         }
         loop1:
         while(true)
         {
            §§push(this.visible);
            loop2:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     addEventListeners();
                     loop5:
                     while(true)
                     {
                        addr37:
                        addr75:
                        while(true)
                        {
                           §§push(this.§%o§);
                           if(_loc2_)
                           {
                              break;
                           }
                           continue loop2;
                        }
                        if(§§pop())
                        {
                           if(_loc3_ || param1)
                           {
                              if(_loc2_)
                              {
                                 continue loop1;
                              }
                              this.mClip.gotoAndPlay(1);
                           }
                           §§goto(addr90);
                        }
                        this.mClip.gotoAndStop(1);
                        if(!_loc3_)
                        {
                           addr90:
                           if(_loc2_ && _loc2_)
                           {
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop5;
                                 }
                                 §§goto(addr37);
                                 §§goto(addr90);
                              }
                              addr114:
                           }
                           §§goto(addr20);
                        }
                        if(!_loc2_)
                        {
                           addr20:
                           return;
                        }
                        §§goto(addr143);
                     }
                  }
                  addr121:
               }
               else
               {
                  removeEventListeners();
               }
               §§goto(addr114);
            }
         }
      }
      
      public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(this.mClip.mouseEnabled != param1)
            {
               while(true)
               {
                  this.mClip.mouseEnabled = param1;
                  addr80:
                  while(true)
                  {
                  }
               }
               addr76:
            }
            while(this.mClip.mouseChildren != param1)
            {
               if(_loc3_)
               {
                  if(!(_loc3_ || _loc3_))
                  {
                     continue;
                  }
                  this.mClip.mouseChildren = param1;
               }
               if(!_loc2_)
               {
                  break;
               }
               §§goto(addr76);
            }
            return;
         }
         §§goto(addr80);
      }
      
      public function getParentView() : §6"§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.mClip.x = Math.round(param1);
         }
         while(true)
         {
            §§push(this.§<,§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc3_ || param1)
                  {
                     continue;
                  }
                  addr76:
               }
               return;
            }
            break;
         }
         §§pop().x = this.mClip.x;
         §§goto(addr76);
      }
      
      public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.mClip.y = Math.round(param1);
            while(true)
            {
               §§push(this.§<,§);
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || param1)
                     {
                        if(_loc2_)
                        {
                           addr64:
                           §§push(this.§<,§);
                           break;
                        }
                        continue;
                     }
                     addr70:
                  }
                  return;
               }
               break;
            }
            §§pop().y = this.mClip.y;
            §§goto(addr70);
         }
         §§goto(addr64);
      }
      
      public function get x() : Number
      {
         return this.mClip.x;
      }
      
      public function get y() : Number
      {
         return this.mClip.y;
      }
      
      public function get visible() : Boolean
      {
         return this.mClip.visible;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.mClip.visible = param1;
         }
      }
      
      public function get width() : Number
      {
         return this.mClip.width;
      }
      
      public function get height() : Number
      {
         return this.mClip.height;
      }
      
      override public function goToFrame(param1:int, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.goToFrame(param1,param2);
            loop0:
            while(true)
            {
               §§push(Boolean(this.mClip));
               if(!_loc3_)
               {
                  §§push(§§pop());
                  if(_loc4_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     loop4:
                     while(true)
                     {
                        §§pop();
                        loop5:
                        while(true)
                        {
                           §§push(this.mClip is MovieClip);
                           if(!(_loc3_ && param1))
                           {
                              §§push(Boolean(§§pop()));
                              if(!_loc3_)
                              {
                                 while(true)
                                 {
                                    §§goto(addr66);
                                 }
                                 addr65:
                              }
                              §§goto(addr75);
                           }
                           addr66:
                           loop2:
                           while(§§pop())
                           {
                              if(!(_loc3_ && param2))
                              {
                                 §§push(param2);
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       if(§§pop())
                                       {
                                          break;
                                       }
                                       this.mClip.gotoAndStop(param1);
                                       if(_loc3_)
                                       {
                                          break loop2;
                                       }
                                       addr100:
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       if(!_loc3_)
                                       {
                                          addr38:
                                          break loop2;
                                       }
                                       continue loop5;
                                    }
                                    continue loop4;
                                 }
                                 addr75:
                              }
                              continue loop0;
                           }
                           return;
                        }
                     }
                     addr112:
                  }
                  §§goto(addr65);
               }
               §§goto(addr112);
            }
         }
         §§goto(addr38);
      }
      
      public function get viewWidth() : Number
      {
         return this.§&D§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§=!j§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§&D§ = param1;
         }
         do
         {
            this.§4^§();
         }
         while(!_loc3_);
         
      }
      
      public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§=!j§ = param1;
            do
            {
               this.§4^§();
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
   }
}
