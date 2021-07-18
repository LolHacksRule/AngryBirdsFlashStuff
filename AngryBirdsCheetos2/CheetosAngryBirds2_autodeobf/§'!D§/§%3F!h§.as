package §'!D§
{
   import §7'§.§!y§;
   import §>M§.§<6§;
   import §>P§.§5!§;
   import §>^§.§!6§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §?!h§ extends §08§
   {
       
      
      public var mParentContainer:§<6§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §2A§:Boolean = false;
      
      public var §^!V§:Boolean = true;
      
      public var §%Y§:Boolean = false;
      
      public var §^!&§:Boolean = false;
      
      private var §4!%§:§"F§;
      
      private var §&!^§:Boolean = false;
      
      protected var §%!3§:Boolean = false;
      
      private var §8m§:Number;
      
      private var §&d§:Number;
      
      private var §'Z§:Number;
      
      private var §3!2§:Number;
      
      private var §+n§:String;
      
      private var §0V§:String;
      
      private var §=S§:String;
      
      private var §%-§:String;
      
      private var §-9§:String;
      
      private var §<!>§:String;
      
      public function §?!h§(param1:XML, param2:§<6§, param3:MovieClip = null)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         while(true)
         {
            §§push(null);
            while(true)
            {
               §§pop().§§slot[5] = §§pop();
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§push(null);
                     addr839:
                     while(true)
                     {
                        §§pop().§§slot[6] = §§pop();
                        addr841:
                        while(true)
                        {
                           §§push(§§newactivation());
                           continue loop3;
                        }
                     }
                  }
               }
            }
            if(_loc5_ && param1)
            {
               continue;
            }
            §§pop().§§slot[4].visible = true;
            §§goto(addr188);
         }
      }
      
      private function §!!>§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§4!%§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  continue;
               }
               while(true)
               {
                  this.§4!%§ = new §"F§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§'Z§,this.§3!2§,this.§+n§,this.§0V§,this.§=S§,this.§%-§,this.§<!>§,this.§-9§);
                  while(true)
                  {
                     continue loop0;
                     addr62:
                     if(_loc2_ || this)
                     {
                        addr25:
                        return;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.mClip.scaleX = this.§4!%§.scaleX;
            §§goto(addr95);
         }
      }
      
      private function §83§(param1:XML) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(_loc5_ || param1)
         {
            if(this.mParentContainer)
            {
               §§push(_loc2_);
               loop0:
               while(true)
               {
                  §§push(0);
                  addr140:
                  while(true)
                  {
                     if(§§pop() == §§pop())
                     {
                        addr141:
                        while(true)
                        {
                           this.§8m§ = this.mParentContainer.viewWidth;
                           addr146:
                           while(true)
                           {
                              continue loop0;
                           }
                        }
                        addr141:
                     }
                     else
                     {
                        this.§8m§ = _loc2_;
                        while(true)
                        {
                           continue loop0;
                           addr115:
                           loop9:
                           while(!(_loc4_ && param1))
                           {
                              this.§&d§ = this.mParentContainer.viewHeight;
                              loop8:
                              while(true)
                              {
                                 loop5:
                                 while(true)
                                 {
                                    this.§'Z§ = this.§8m§;
                                    loop6:
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          if(_loc5_ || _loc3_)
                                          {
                                             this.§3!2§ = this.§&d§;
                                             if(!(_loc5_ || _loc2_))
                                             {
                                                continue;
                                             }
                                             addr49:
                                             if(_loc5_ || _loc3_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   break loop5;
                                                }
                                                if(_loc5_)
                                                {
                                                   return;
                                                }
                                                addr170:
                                                addr170:
                                                while(true)
                                                {
                                                   this.§&d§ = _loc3_;
                                                   break loop6;
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop5;
                                                   }
                                                   continue loop8;
                                                   §§goto(addr49);
                                                }
                                                §§goto(addr146);
                                                addr92:
                                             }
                                          }
                                          break;
                                       }
                                       continue loop9;
                                    }
                                    loop7:
                                    for(; _loc4_; §§goto(addr170))
                                    {
                                       while(true)
                                       {
                                          this.§8m§ = _loc2_;
                                          continue loop7;
                                       }
                                    }
                                 }
                                 §§goto(addr141);
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr167);
         }
         §§goto(addr170);
      }
      
      private function §?!O§(param1:XML) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§+n§ = param1.@alignH;
            while(true)
            {
               this.§0V§ = param1.@alignV;
               while(true)
               {
                  this.§=S§ = param1.@scaleH;
                  loop2:
                  while(true)
                  {
                     this.§%-§ = param1.@scaleV;
                     while(true)
                     {
                        addr52:
                        while(true)
                        {
                           this.§-9§ = param1.@scaleFunction;
                           do
                           {
                              this.§<!>§ = param1.@aspectRatioFixed;
                           }
                           while(!_loc5_);
                           
                           if(!(_loc5_ || _loc3_))
                           {
                              break;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               if(!(_loc5_ || param1))
               {
                  continue;
               }
               while(false)
               {
                  §§goto(addr52);
               }
               var _loc2_:String = param1.@scrollRect;
               var _loc3_:String = param1.@scaleOnMouseOver;
               if(_loc5_ || param1)
               {
                  this.§59§(_loc2_);
               }
               do
               {
                  this.§5!'§(_loc3_);
               }
               while(!(_loc5_ || param1));
               
               return;
               addr50:
            }
         }
         §§goto(addr50);
      }
      
      private function §5!'§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(param1);
            if(_loc3_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(param1);
                     addr82:
                     loop1:
                     while(true)
                     {
                        §§push(§§pop().toUpperCase());
                        loop2:
                        while(true)
                        {
                           param1 = §§pop();
                           addr85:
                           while(true)
                           {
                              §§push(param1);
                              if(!_loc2_)
                              {
                                 if(_loc3_ || param1)
                                 {
                                    if(§§pop() != "TRUE")
                                    {
                                       break;
                                    }
                                    if(_loc3_ || _loc3_)
                                    {
                                       this.§%!3§ = true;
                                    }
                                    if(_loc3_)
                                    {
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       continue loop0;
                                    }
                                    continue;
                                 }
                                 continue loop1;
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
               return;
            }
            §§goto(addr82);
         }
         §§goto(addr85);
      }
      
      private function §59§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               addr72:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc3_)
                        {
                           if(_loc3_ || param1)
                           {
                              this.§&!^§ = true;
                              addr69:
                              break;
                           }
                           continue loop0;
                        }
                        §§goto(addr69);
                     }
                     return;
                     addr45:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      public function readInitialVisibility(param1:XML) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = param1.@visible;
         if(_loc3_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc3_ || _loc2_)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        addr177:
                        while(true)
                        {
                           §§pop();
                           addr178:
                           while(true)
                           {
                              addr136:
                              §§push(_loc2_);
                              addr138:
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(§§pop().toUpperCase() == "FALSE");
                              }
                           }
                        }
                        addr177:
                     }
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc3_ || this)
                              {
                                 this.setVisibility(false);
                              }
                           }
                           else
                           {
                              this.setVisibility(true);
                              loop13:
                              while(true)
                              {
                                 if(_loc3_ || this)
                                 {
                                    if(_loc3_)
                                    {
                                       addr135:
                                       while(true)
                                       {
                                          §§push(param1.@enabled);
                                          loop6:
                                          while(_loc3_ || _loc2_)
                                          {
                                             _loc2_ = §§pop();
                                             loop7:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                loop8:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   addr72:
                                                   while(true)
                                                   {
                                                      if(_loc3_ || param1)
                                                      {
                                                         continue loop1;
                                                      }
                                                      continue loop3;
                                                   }
                                                   continue loop1;
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      if(_loc4_ && this)
                                                      {
                                                         continue loop8;
                                                      }
                                                      if(_loc4_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop().toUpperCase() == "FALSE");
                                                      if(!_loc4_)
                                                      {
                                                         if(!(_loc4_ && this))
                                                         {
                                                            while(§§pop())
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                                  if(_loc4_)
                                                                  {
                                                                     continue loop7;
                                                                  }
                                                                  if(!(_loc3_ || this))
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                                  this.setEnabled(false);
                                                               }
                                                               break;
                                                            }
                                                            return;
                                                            addr50:
                                                         }
                                                         §§goto(addr72);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            if(!(_loc3_ || _loc2_))
                                                            {
                                                               break loop8;
                                                            }
                                                            §§pop();
                                                            continue loop11;
                                                         }
                                                         §§goto(addr178);
                                                         addr98:
                                                      }
                                                   }
                                                   continue loop6;
                                                }
                                                §§goto(addr177);
                                             }
                                          }
                                          §§goto(addr138);
                                          §§goto(addr135);
                                       }
                                       addr107:
                                    }
                                    else
                                    {
                                       §§goto(addr178);
                                    }
                                    §§goto(addr136);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       continue loop13;
                                    }
                                    addr155:
                                 }
                                 §§goto(addr107);
                              }
                           }
                           §§goto(addr155);
                        }
                     }
                  }
               }
               §§goto(addr177);
            }
         }
         §§goto(addr178);
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
               if(_loc1_)
               {
                  if(§§pop())
                  {
                     if(_loc1_)
                     {
                        if(_loc1_)
                        {
                           addr82:
                           §§push(this.mParentContainer);
                           break;
                        }
                        continue;
                     }
                     addr98:
                  }
                  while(true)
                  {
                     if(this.mClip.numChildren <= 0)
                     {
                        if(!(_loc1_ || _loc1_))
                        {
                           break;
                        }
                        if(!(_loc2_ && _loc1_))
                        {
                           this.mClip = null;
                           break;
                        }
                     }
                     else
                     {
                        this.mClip.removeChildAt(0);
                     }
                  }
                  do
                  {
                     this.§4!%§ = null;
                  }
                  while(!_loc1_);
                  
                  return;
               }
               break;
            }
            §§pop().mClip.removeChild(this.mClip);
            §§goto(addr98);
         }
         §§goto(addr82);
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
               if(!(_loc4_ && this))
               {
                  if(!§§pop())
                  {
                     §§goto(addr24);
                  }
                  if(!_loc3_)
                  {
                     continue;
                  }
                  §§push(this.mParentContainer);
               }
               §§pop().containerEventOccured(param1,param2,this);
            }
            while(!_loc3_);
            
         }
         addr24:
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§^!V§ = param1;
            while(true)
            {
               this.mClip.visible = this.§^!V§ && this.§2A§;
               addr57:
               if(!(_loc3_ || param1))
               {
                  continue;
               }
               addr20:
               return;
               addr64:
            }
         }
         while(true)
         {
            if(this.visible)
            {
               continue;
            }
            removeEventListeners();
            if(_loc3_)
            {
               if(!_loc3_)
               {
                  continue;
               }
               §§goto(addr20);
            }
            else
            {
               §§goto(addr57);
            }
         }
         §§goto(addr64);
      }
      
      public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§2A§ = param1;
            loop0:
            while(true)
            {
               this.mClip.visible = this.§^!V§ && this.§2A§;
               loop1:
               while(true)
               {
                  §§push(this.visible);
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           if(!_loc3_)
                           {
                              break;
                           }
                           while(true)
                           {
                              addEventListeners();
                           }
                        }
                        loop3:
                        while(true)
                        {
                           loop4:
                           while(true)
                           {
                              §§push(this.§^!&§);
                              if(!_loc2_)
                              {
                                 continue loop2;
                              }
                              loop6:
                              for(; !§§pop(); while(true)
                              {
                                 continue loop6;
                                 §§goto(addr45);
                              })
                              {
                                 this.mClip.gotoAndStop(1);
                                 if(!(_loc3_ || param1))
                                 {
                                    addr25:
                                 }
                                 if(!_loc3_)
                                 {
                                    addr45:
                                    break;
                                 }
                                 if(!(_loc3_ || _loc3_))
                                 {
                                    continue;
                                 }
                                 if(!_loc3_)
                                 {
                                    continue loop3;
                                 }
                                 if(_loc3_)
                                 {
                                    §§goto(addr25);
                                 }
                                 continue loop1;
                                 return;
                              }
                              if(_loc3_)
                              {
                                 break;
                              }
                              addr94:
                              while(true)
                              {
                                 continue loop4;
                              }
                           }
                           this.mClip.gotoAndPlay(1);
                           §§goto(addr88);
                        }
                     }
                     else
                     {
                        removeEventListeners();
                     }
                     §§goto(addr94);
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr108);
      }
      
      public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(this.mClip.mouseEnabled != param1)
            {
               while(true)
               {
                  this.mClip.mouseEnabled = param1;
                  addr90:
                  while(true)
                  {
                  }
                  addr63:
                  if(!(_loc3_ || param1))
                  {
                     continue;
                  }
                  §§goto(addr25);
               }
            }
            while(this.mClip.mouseChildren != param1)
            {
               if(!(_loc2_ && this))
               {
                  if(_loc2_ && param1)
                  {
                     continue;
                  }
                  this.mClip.mouseChildren = param1;
               }
               §§goto(addr63);
            }
            addr25:
            return;
         }
         §§goto(addr90);
      }
      
      public function getParentView() : §5!§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.mClip.x = Math.round(param1);
         }
         while(true)
         {
            §§push(this.§4!%§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     continue;
                  }
                  addr64:
               }
               return;
            }
            break;
         }
         §§pop().x = this.mClip.x;
         §§goto(addr64);
      }
      
      public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.mClip.y = Math.round(param1);
            while(true)
            {
               §§push(this.§4!%§);
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc3_ || _loc2_)
                     {
                        continue;
                     }
                     addr70:
                  }
                  return;
               }
               break;
            }
            §§pop().y = this.mClip.y;
         }
         §§goto(addr70);
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
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
         if(!(_loc3_ && param1))
         {
            super.goToFrame(param1,param2);
            loop0:
            while(true)
            {
               §§push(Boolean(this.mClip));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           if(_loc3_)
                           {
                              continue loop0;
                           }
                           §§push(this.mClip is MovieClip);
                           if(!_loc3_)
                           {
                              continue loop2;
                           }
                           addr75:
                           while(true)
                           {
                              if(!_loc4_)
                              {
                                 continue loop1;
                              }
                              if(!§§pop())
                              {
                                 this.mClip.gotoAndStop(param1);
                                 if(_loc4_)
                                 {
                                    if(!(_loc3_ && this))
                                    {
                                       addr25:
                                       return;
                                       addr55:
                                    }
                                    addr78:
                                    if(!_loc3_)
                                    {
                                       break loop3;
                                    }
                                    continue loop3;
                                 }
                                 addr84:
                                 §§goto(addr25);
                                 addr84:
                              }
                              §§goto(addr78);
                           }
                        }
                        this.mClip.gotoAndPlay(param1);
                        §§goto(addr84);
                     }
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc4_)
                        {
                           §§goto(addr75);
                           §§push(param2);
                        }
                        §§goto(addr84);
                     }
                     §§goto(addr25);
                  }
               }
            }
         }
         §§goto(addr55);
      }
      
      public function get viewWidth() : Number
      {
         return this.§8m§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§&d§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§8m§ = param1;
         }
         do
         {
            this.§!!>§();
         }
         while(!_loc3_);
         
      }
      
      public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§&d§ = param1;
            do
            {
               this.§!!>§();
            }
            while(!_loc3_);
            
         }
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§%!3§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§%!3§ = param1;
         }
      }
   }
}
