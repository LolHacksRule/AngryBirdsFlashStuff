package §`W§
{
   import §2]§.§#H§;
   import §;8§.§3f§;
   import §[v§.§&F§;
   import com.rovio.assets.§>D§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §`H§ extends §-[§
   {
       
      
      public var mParentContainer:§&F§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §^[§:Boolean = false;
      
      public var §^!@§:Boolean = true;
      
      public var §0T§:Boolean = false;
      
      public var §<!9§:Boolean = false;
      
      private var §`t§:§1!@§;
      
      private var §'N§:Boolean = false;
      
      protected var §!8§:Boolean = false;
      
      private var §<j§:Number;
      
      private var §+Z§:Number;
      
      private var §7G§:Number;
      
      private var §0b§:Number;
      
      private var §&P§:String;
      
      private var §"S§:String;
      
      private var §![§:String;
      
      private var §4M§:String;
      
      private var §@!'§:String;
      
      private var §<!1§:String;
      
      public function §`H§(param1:XML, param2:§&F§, param3:MovieClip = null)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         §§push(null);
         loop0:
         while(true)
         {
            §§pop().§§slot[4] = §§pop();
            while(true)
            {
               §§push(§§newactivation());
               while(true)
               {
                  §§push(null);
                  loop3:
                  while(true)
                  {
                     §§pop().§§slot[5] = §§pop();
                     while(true)
                     {
                        §§push(§§newactivation());
                        §§push(NaN);
                        while(true)
                        {
                           §§pop().§§slot[6] = §§pop();
                           §§push(§§newactivation());
                           while(true)
                           {
                              §§pop().§§slot[7] = NaN;
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 while(true)
                                 {
                                    §§push(null);
                                    if(!_loc5_)
                                    {
                                       break;
                                    }
                                    if(!_loc6_)
                                    {
                                       §§pop().§§slot[8] = §§pop();
                                       continue;
                                    }
                                    continue loop0;
                                 }
                                 continue loop3;
                              }
                              if(_loc6_ && param2)
                              {
                                 continue;
                              }
                              §§goto(addr176);
                              §§push(§§pop().§§slot[2]);
                           }
                        }
                     }
                  }
                  if(_loc6_ && param1)
                  {
                     continue;
                  }
                  §§goto(addr236);
               }
            }
         }
      }
      
      private function §[!4§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§`t§);
         loop0:
         while(true)
         {
            if(§§pop())
            {
               continue;
            }
            while(true)
            {
               this.§`t§ = new §1!@§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§7G§,this.§0b§,this.§&P§,this.§"S§,this.§![§,this.§4M§,this.§<!1§,this.§@!'§);
               continue loop0;
            }
         }
      }
      
      private function §`U§(param1:XML) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(this.mParentContainer)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(0);
               addr131:
               while(true)
               {
                  if(§§pop() != §§pop())
                  {
                     this.§<j§ = _loc2_;
                     while(true)
                     {
                        if(_loc4_)
                        {
                           continue loop0;
                        }
                        addr94:
                        this.§+Z§ = this.mParentContainer.viewHeight;
                        if(_loc5_ && _loc2_)
                        {
                           continue;
                        }
                        addr37:
                        loop8:
                        while(true)
                        {
                           this.§7G§ = this.§<j§;
                           while(true)
                           {
                              if(_loc4_ || _loc2_)
                              {
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 this.§0b§ = this.§+Z§;
                                 if(_loc4_)
                                 {
                                    return;
                                 }
                                 continue;
                              }
                              continue loop8;
                           }
                           addr153:
                           while(true)
                           {
                              this.§<j§ = _loc2_;
                              addr156:
                              while(true)
                              {
                                 this.§+Z§ = _loc3_;
                                 break loop8;
                              }
                           }
                        }
                        while(!(_loc5_ && param1))
                        {
                           §§goto(addr37);
                        }
                        addr37:
                        §§goto(addr156);
                        addr142:
                     }
                     addr58:
                     if(_loc4_ || param1)
                     {
                        §§goto(addr37);
                     }
                     §§goto(addr142);
                  }
                  addr132:
                  while(true)
                  {
                     this.§<j§ = this.mParentContainer.viewWidth;
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr153);
      }
      
      private function §%J§(param1:XML) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§&P§ = param1.@alignH;
            while(true)
            {
               this.§"S§ = param1.@alignV;
               loop4:
               while(_loc5_ || this)
               {
                  this.§<!1§ = param1.@aspectRatioFixed;
                  if(_loc4_)
                  {
                     continue;
                  }
                  if(_loc5_)
                  {
                     if(!_loc4_)
                     {
                        if(true)
                        {
                           var _loc2_:String = param1.@scrollRect;
                           var _loc3_:String = param1.@scaleOnMouseOver;
                           if(!_loc4_)
                           {
                              this.§#S§(_loc2_);
                              this.§null §(_loc3_);
                              addr114:
                              if(_loc4_)
                              {
                                 §§goto(addr114);
                              }
                           }
                           return;
                        }
                        while(true)
                        {
                           this.§@!'§ = param1.@scaleFunction;
                           continue loop4;
                        }
                        addr33:
                     }
                     else
                     {
                        while(true)
                        {
                           this.§![§ = param1.@scaleH;
                        }
                        addr73:
                     }
                  }
                  while(true)
                  {
                     this.§4M§ = param1.@scaleV;
                     §§goto(addr33);
                  }
               }
            }
         }
         §§goto(addr73);
      }
      
      private function §null §(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(param1);
            if(_loc3_ || _loc3_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(param1);
                     if(!(_loc2_ && _loc3_))
                     {
                        while(true)
                        {
                           §§push(§§pop().toUpperCase());
                        }
                        addr92:
                     }
                     loop1:
                     while(true)
                     {
                        param1 = §§pop();
                        while(true)
                        {
                           §§push(param1);
                           if(_loc3_)
                           {
                              if(§§pop() != "TRUE")
                              {
                                 break;
                              }
                              if(!(_loc3_ || _loc3_))
                              {
                                 break;
                              }
                              addr74:
                              if(_loc3_)
                              {
                                 continue loop0;
                              }
                              continue;
                           }
                           continue loop1;
                        }
                        §§goto(addr25);
                     }
                  }
               }
               addr25:
               return;
            }
            §§goto(addr92);
         }
         §§goto(addr71);
      }
      
      private function §#S§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!_loc3_)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc2_)
                        {
                           if(!_loc3_)
                           {
                              this.§'N§ = true;
                              addr51:
                              break;
                           }
                           continue loop0;
                        }
                        §§goto(addr51);
                     }
                     return;
                     addr42:
                  }
               }
               addr58:
               while(true)
               {
                  §§pop();
                  continue loop0;
               }
            }
         }
         §§goto(addr51);
      }
      
      public function readInitialVisibility(param1:XML) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = param1.@visible;
         if(!(_loc3_ && param1))
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
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr171:
                           while(true)
                           {
                              §§push(_loc2_);
                              addr157:
                              while(true)
                              {
                                 §§push(§§pop().toUpperCase() == "FALSE");
                              }
                           }
                        }
                        addr170:
                     }
                     while(true)
                     {
                        loop7:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              this.setVisibility(true);
                              if(!(_loc3_ && _loc2_))
                              {
                                 while(true)
                                 {
                                    loop15:
                                    while(true)
                                    {
                                       §§push(param1.@enabled);
                                       while(!_loc3_)
                                       {
                                          _loc2_ = §§pop();
                                          §§push(_loc2_);
                                          loop10:
                                          for(; _loc4_ || _loc2_; while(true)
                                          {
                                             §§push(_loc2_);
                                             if(_loc3_ && this)
                                             {
                                                break;
                                             }
                                             continue loop0;
                                             §§goto(addr121);
                                          })
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                if(_loc3_)
                                                {
                                                   continue loop7;
                                                }
                                                §§push(§§pop());
                                                if(_loc3_)
                                                {
                                                   continue loop2;
                                                }
                                                if(!§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc3_ && param1)
                                                         {
                                                            continue loop10;
                                                         }
                                                         this.setEnabled(false);
                                                         if(_loc4_)
                                                         {
                                                            break;
                                                         }
                                                         addr162:
                                                         while(true)
                                                         {
                                                            this.setVisibility(false);
                                                            continue loop15;
                                                         }
                                                      }
                                                      break;
                                                      addr59:
                                                      if(!(_loc3_ && this))
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr170);
                                                   }
                                                   return;
                                                }
                                             }
                                             while(_loc4_ || _loc2_)
                                             {
                                                §§pop();
                                                continue loop10;
                                             }
                                             continue loop1;
                                          }
                                       }
                                    }
                                 }
                                 addr154:
                              }
                              else
                              {
                                 §§goto(addr171);
                              }
                              §§goto(addr157);
                           }
                           §§goto(addr162);
                        }
                     }
                  }
               }
               if(!(_loc4_ || _loc2_))
               {
                  continue;
               }
               §§push(§§pop().toUpperCase() == "FALSE");
               if(_loc4_ || this)
               {
                  §§goto(addr59);
               }
               §§goto(addr114);
            }
         }
         §§goto(addr154);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.clear();
            loop0:
            while(true)
            {
               §§push(this.mParentContainer);
               if(!_loc1_)
               {
                  if(!§§pop())
                  {
                     §§goto(addr70);
                  }
                  if(!(_loc2_ || _loc1_))
                  {
                     continue;
                  }
                  while(true)
                  {
                     §§push(this.mParentContainer);
                  }
               }
               while(true)
               {
                  §§pop().mClip.removeChild(this.mClip);
                  continue loop0;
               }
            }
            addr70:
            while(true)
            {
               if(this.mClip.numChildren <= 0)
               {
                  if(_loc2_)
                  {
                     this.mClip = null;
                  }
                  do
                  {
                     this.§`t§ = null;
                  }
                  while(_loc1_ && _loc1_);
                  
                  if(_loc2_ || this)
                  {
                     break;
                  }
               }
               else
               {
                  this.mClip.removeChildAt(0);
               }
            }
            return;
         }
         §§goto(addr101);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            super.listenerEventOccured(param1,param2);
            while(true)
            {
               §§push(this.mParentContainer);
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(!(_loc4_ && this))
                     {
                        if(!_loc4_)
                        {
                           §§push(this.mParentContainer);
                           break;
                        }
                        continue;
                     }
                     addr69:
                  }
                  return;
               }
               break;
            }
            §§pop().containerEventOccured(param1,param2,this);
         }
         §§goto(addr69);
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§^!@§ = param1;
            while(true)
            {
               this.mClip.visible = this.§^!@§ && this.§^[§;
               addr86:
               while(_loc3_)
               {
               }
            }
         }
         while(true)
         {
            if(this.visible)
            {
               if(_loc3_)
               {
                  addEventListeners();
               }
            }
            else
            {
               removeEventListeners();
               if(_loc3_ || _loc3_)
               {
                  §§goto(addr25);
               }
            }
            if(_loc3_)
            {
               break;
            }
            §§goto(addr86);
         }
         addr25:
      }
      
      public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§^[§ = param1;
            this.mClip.visible = this.§^!@§ && this.§^[§;
            §§push(this.visible);
            loop0:
            do
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addEventListeners();
                  }
                  while(true)
                  {
                     addr57:
                     if(!(_loc2_ && _loc3_))
                     {
                        §§push(param1);
                        continue loop0;
                     }
                  }
               }
               else
               {
                  removeEventListeners();
               }
               while(true)
               {
                  §§push(this.§<!9§);
                  if(!(_loc2_ && _loc2_))
                  {
                     if(§§pop())
                     {
                        if(!_loc2_)
                        {
                           §§goto(addr57);
                        }
                        else
                        {
                           addr73:
                           this.mClip.gotoAndPlay(1);
                           addr77:
                        }
                     }
                     §§goto(addr20);
                  }
                  break;
               }
            }
            while(_loc2_ && _loc3_);
            
            if(!§§pop())
            {
               this.mClip.gotoAndStop(1);
               if(_loc2_)
               {
                  §§goto(addr77);
               }
               else
               {
                  addr33:
               }
               addr20:
               return;
            }
            §§goto(addr73);
            §§goto(addr73);
         }
         §§goto(addr33);
      }
      
      public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(this.mClip.mouseEnabled != param1)
            {
               if(_loc2_)
               {
                  addr75:
                  this.mClip.mouseEnabled = param1;
               }
               while(true)
               {
               }
               addr79:
            }
            while(this.mClip.mouseChildren != param1)
            {
               if(_loc2_ || param1)
               {
                  if(_loc3_)
                  {
                     §§goto(addr79);
                     continue;
                  }
                  this.mClip.mouseChildren = param1;
               }
               break;
            }
            return;
         }
         §§goto(addr75);
      }
      
      public function getParentView() : §#H§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.mClip.x = Math.round(param1);
            do
            {
               §§push(this.§`t§);
               if(!(_loc2_ && _loc2_))
               {
                  if(!§§pop())
                  {
                     §§goto(addr35);
                  }
                  if(!_loc3_)
                  {
                     continue;
                  }
                  §§push(this.§`t§);
               }
               §§pop().x = this.mClip.x;
            }
            while(!_loc3_);
            
         }
         addr35:
      }
      
      public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.mClip.y = Math.round(param1);
            while(true)
            {
               §§push(this.§`t§);
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        continue;
                     }
                     addr70:
                  }
                  return;
               }
               break;
            }
            addr66:
            §§pop().y = this.mClip.y;
            §§goto(addr70);
         }
         §§goto(addr66);
         §§push(this.§`t§);
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
         if(!(_loc3_ && _loc2_))
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
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         super.goToFrame(param1,param2);
         §§push(Boolean(this.mClip));
         loop0:
         while(true)
         {
            if(!§§pop())
            {
               while(§§pop())
               {
                  if(!(_loc4_ && param1))
                  {
                     §§push(param2);
                     if(!§§pop())
                     {
                        this.mClip.gotoAndStop(param1);
                        if(_loc3_ || this)
                        {
                           break;
                        }
                     }
                  }
                  loop2:
                  while(true)
                  {
                     §§push(this.mClip is MovieClip);
                     if(_loc3_)
                     {
                        if(_loc3_ || param1)
                        {
                           continue loop0;
                        }
                        addr99:
                        while(true)
                        {
                           §§pop();
                           continue loop2;
                        }
                     }
                  }
                  continue loop0;
                  this.mClip.gotoAndPlay(param1);
                  break;
               }
               return;
               addr77:
            }
            §§goto(addr99);
         }
      }
      
      public function get viewWidth() : Number
      {
         return this.§<j§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§+Z§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§<j§ = param1;
            do
            {
               this.§[!4§();
            }
            while(!(_loc3_ || param1));
            
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§+Z§ = param1;
         }
         do
         {
            this.§[!4§();
         }
         while(!(_loc3_ || _loc2_));
         
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
   }
}
