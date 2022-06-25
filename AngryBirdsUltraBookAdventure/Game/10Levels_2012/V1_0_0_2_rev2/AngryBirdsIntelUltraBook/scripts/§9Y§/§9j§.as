package §9Y§
{
   import §2h§.§'!^§;
   import §?!7§.§8;§;
   import §^_§.§!>§;
   import com.rovio.assets.§%!G§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §9j§ extends §6!8§
   {
       
      
      public var mParentContainer:§8;§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §2c§:Boolean = false;
      
      public var §&!g§:Boolean = true;
      
      public var §`!V§:Boolean = false;
      
      public var §@!T§:Boolean = false;
      
      private var §2o§:§7!T§;
      
      private var §!m§:Boolean = false;
      
      protected var §&&§:Boolean = false;
      
      private var § !6§:Number;
      
      private var §0!j§:Number;
      
      private var §9I§:Number;
      
      private var §1I§:Number;
      
      private var §@b§:String;
      
      private var §3!%§:String;
      
      private var §=B§:String;
      
      private var §=!H§:String;
      
      private var §@!!§:String;
      
      private var §5w§:String;
      
      public function §9j§(param1:XML, param2:§8;§, param3:MovieClip = null)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            addr794:
            while(true)
            {
               §§pop().§§slot[4] = §§pop();
               addr796:
               while(true)
               {
                  §§push(§§newactivation());
                  continue loop0;
               }
            }
         }
      }
      
      private function §[x§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§2o§);
            while(true)
            {
               if(§§pop())
               {
                  continue;
               }
               if(_loc1_)
               {
                  this.§2o§ = new §7!T§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§9I§,this.§1I§,this.§@b§,this.§3!%§,this.§=B§,this.§=!H§,this.§5w§,this.§@!!§);
               }
            }
         }
         while(true)
         {
            §§goto(addr125);
         }
      }
      
      private function §5!e§(param1:XML) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(_loc4_ || _loc2_)
         {
            if(this.mParentContainer)
            {
               §§push(_loc2_);
               loop0:
               while(true)
               {
                  §§push(0);
                  addr141:
                  while(true)
                  {
                     if(§§pop() == §§pop())
                     {
                        addr142:
                        while(true)
                        {
                           this.§ !6§ = this.mParentContainer.viewWidth;
                           addr147:
                           while(true)
                           {
                              continue loop0;
                           }
                        }
                        addr142:
                     }
                     else
                     {
                        this.§ !6§ = _loc2_;
                        while(true)
                        {
                           continue loop0;
                           addr80:
                           loop8:
                           while(_loc4_ || _loc2_)
                           {
                              if(!_loc5_)
                              {
                                 if(!_loc5_)
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       this.§9I§ = this.§ !6§;
                                       while(true)
                                       {
                                          if(_loc5_)
                                          {
                                             continue loop8;
                                          }
                                          addr56:
                                          if(_loc4_ || param1)
                                          {
                                             this.§1I§ = this.§0!j§;
                                             if(_loc4_ || _loc2_)
                                             {
                                                return;
                                             }
                                             continue;
                                          }
                                          addr126:
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                continue loop5;
                                             }
                                             §§goto(addr56);
                                          }
                                       }
                                       continue loop8;
                                    }
                                    addr49:
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       this.§ !6§ = _loc2_;
                                       addr159:
                                       while(true)
                                       {
                                          this.§0!j§ = _loc3_;
                                       }
                                    }
                                    addr156:
                                 }
                                 while(true)
                                 {
                                    §§goto(addr49);
                                 }
                              }
                              else
                              {
                                 §§goto(addr147);
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr156);
         }
         §§goto(addr159);
      }
      
      private function §6!>§(param1:XML) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§@b§ = param1.@alignH;
            loop0:
            while(true)
            {
               this.§3!%§ = param1.@alignV;
               while(true)
               {
                  this.§=B§ = param1.@scaleH;
                  while(_loc5_)
                  {
                     this.§=!H§ = param1.@scaleV;
                     loop3:
                     while(!(_loc4_ && this))
                     {
                        while(true)
                        {
                           this.§@!!§ = param1.@scaleFunction;
                           addr39:
                           while(_loc5_)
                           {
                              continue loop0;
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§5w§ = param1.@aspectRatioFixed;
            if(!(_loc4_ && param1))
            {
               if(true)
               {
                  break;
               }
               §§goto(addr34);
            }
            §§goto(addr39);
         }
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         if(!(_loc4_ && _loc3_))
         {
            this.§9!§(_loc2_);
            do
            {
               this.§,K§(_loc3_);
            }
            while(_loc4_ && _loc2_);
            
         }
      }
      
      private function §,K§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            loop0:
            while(§§pop())
            {
               if(!(_loc2_ && _loc3_))
               {
                  §§push(param1);
                  if(_loc3_)
                  {
                     §§push(§§pop().toUpperCase());
                  }
                  loop1:
                  while(true)
                  {
                     param1 = §§pop();
                     addr75:
                     while(true)
                     {
                        §§push(param1);
                        if(_loc3_)
                        {
                           if(!_loc2_)
                           {
                              if(§§pop() != "TRUE")
                              {
                                 break loop0;
                              }
                              if(_loc3_)
                              {
                                 this.§&&§ = true;
                              }
                              if(_loc3_)
                              {
                                 break loop0;
                              }
                              continue;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
               §§goto(addr75);
            }
            return;
         }
         §§goto(addr75);
      }
      
      private function §9!§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               addr76:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc2_)
                        {
                           if(!(_loc2_ || param1))
                           {
                              continue loop0;
                           }
                           this.§!m§ = true;
                        }
                        break;
                     }
                     return;
                     addr59:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      public function readInitialVisibility(param1:XML) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = param1.@visible;
         if(_loc4_ || _loc3_)
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
                     if(!§§pop())
                     {
                        while(true)
                        {
                           loop7:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 this.setVisibility(true);
                                 loop8:
                                 while(true)
                                 {
                                    if(_loc3_)
                                    {
                                       while(!_loc3_)
                                       {
                                          this.setVisibility(false);
                                          loop18:
                                          while(true)
                                          {
                                             addr129:
                                             while(true)
                                             {
                                                §§push(param1.@enabled);
                                                loop10:
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      loop12:
                                                      while(_loc4_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         while(true)
                                                         {
                                                            if(_loc4_ || this)
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc3_ && this)
                                                               {
                                                                  break;
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  while(§§pop())
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     addr98:
                                                                     if(!_loc3_)
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     addr121:
                                                                     while(!(_loc3_ && _loc3_))
                                                                     {
                                                                        §§push(_loc2_);
                                                                        if(_loc3_ && _loc3_)
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        if(!(_loc4_ || param1))
                                                                        {
                                                                           continue loop10;
                                                                        }
                                                                        §§push(§§pop().toUpperCase() == "FALSE");
                                                                        if(_loc4_)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              if(_loc3_)
                                                                              {
                                                                                 continue loop7;
                                                                              }
                                                                              if(!(_loc4_ || param1))
                                                                              {
                                                                                 continue loop1;
                                                                              }
                                                                              §§goto(addr65);
                                                                           }
                                                                           §§goto(addr104);
                                                                        }
                                                                        §§goto(addr120);
                                                                        continue loop12;
                                                                     }
                                                                     continue loop11;
                                                                  }
                                                                  return;
                                                                  addr65:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                               }
                                                               §§goto(addr121);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  break loop8;
                                                               }
                                                               addr178:
                                                            }
                                                         }
                                                         continue loop2;
                                                      }
                                                      continue loop0;
                                                   }
                                                }
                                                continue loop18;
                                             }
                                          }
                                       }
                                       break;
                                       addr168:
                                    }
                                    §§goto(addr129);
                                 }
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    continue loop0;
                                 }
                              }
                              §§goto(addr168);
                           }
                        }
                        addr166:
                     }
                     §§goto(addr178);
                  }
               }
            }
         }
         §§goto(addr173);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.clear();
            while(true)
            {
               §§push(this.mParentContainer);
               if(!(_loc1_ && _loc1_))
               {
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        continue;
                     }
                     addr109:
                  }
                  while(true)
                  {
                     if(this.mClip.numChildren <= 0)
                     {
                        do
                        {
                           this.mClip = null;
                           do
                           {
                              this.§2o§ = null;
                           }
                           while(_loc1_ && this);
                           
                        }
                        while(!(_loc2_ || _loc1_));
                        
                        if(!_loc1_)
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
               break;
            }
            addr105:
            §§pop().mClip.removeChild(this.mClip);
            §§goto(addr109);
         }
         §§goto(addr105);
         §§push(this.mParentContainer);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            super.listenerEventOccured(param1,param2);
            loop0:
            while(true)
            {
               §§push(this.mParentContainer);
               if(_loc3_)
               {
                  if(!§§pop())
                  {
                     §§goto(addr34);
                  }
                  if(!_loc3_)
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
                  §§pop().containerEventOccured(param1,param2,this);
                  continue loop0;
               }
            }
            addr34:
            return;
         }
         §§goto(addr46);
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§&!g§ = param1;
            loop0:
            while(true)
            {
               this.mClip.visible = this.§&!g§ && this.§2c§;
               do
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     if(!this.visible)
                     {
                        removeEventListeners();
                        if(!(_loc3_ || this))
                        {
                           continue;
                        }
                        if(_loc3_ || param1)
                        {
                           addr25:
                           return;
                           addr58:
                        }
                     }
                     addEventListeners();
                     continue;
                  }
                  continue loop0;
               }
               while(!(_loc3_ || this));
               
               §§goto(addr25);
            }
         }
         §§goto(addr58);
      }
      
      public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§2c§ = param1;
            loop0:
            while(true)
            {
               this.mClip.visible = this.§&!g§ && this.§2c§;
               loop1:
               while(true)
               {
                  §§push(this.visible);
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        removeEventListeners();
                        loop3:
                        while(true)
                        {
                           addr41:
                           while(true)
                           {
                              §§push(this.§@!T§);
                              if(_loc3_ || param1)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc2_ && param1)
                                    {
                                       addr89:
                                       if(!_loc2_)
                                       {
                                          addr91:
                                          this.mClip.gotoAndPlay(1);
                                          break loop3;
                                       }
                                       continue loop0;
                                    }
                                    if(!_loc3_)
                                    {
                                       continue loop1;
                                    }
                                    if(_loc3_ || _loc2_)
                                    {
                                       §§push(param1);
                                       break;
                                    }
                                    addr116:
                                    while(true)
                                    {
                                       addEventListeners();
                                       continue loop1;
                                    }
                                 }
                                 §§goto(addr20);
                              }
                              break;
                           }
                           continue loop2;
                           addr26:
                           this.mClip.gotoAndStop(1);
                           if(_loc2_ && param1)
                           {
                              break;
                           }
                           if(!_loc3_)
                           {
                              continue;
                           }
                           §§goto(addr20);
                        }
                        addr20:
                        return;
                        addr95:
                     }
                     §§goto(addr116);
                  }
               }
            }
         }
         §§goto(addr91);
      }
      
      public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.mClip.mouseEnabled != param1)
            {
               if(_loc2_ || param1)
               {
                  this.mClip.mouseEnabled = param1;
                  addr74:
                  while(true)
                  {
                  }
                  addr74:
               }
               §§goto(addr74);
            }
            while(this.mClip.mouseChildren != param1)
            {
               if(!_loc3_)
               {
                  if(_loc3_)
                  {
                     continue;
                  }
                  this.mClip.mouseChildren = param1;
               }
               break;
            }
            return;
         }
         §§goto(addr74);
      }
      
      public function getParentView() : §'!^§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.mClip.x = Math.round(param1);
            while(true)
            {
               §§push(this.§2o§);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        continue;
                     }
                     addr74:
                  }
                  return;
               }
               break;
            }
            addr70:
            §§pop().x = this.mClip.x;
            §§goto(addr74);
         }
         §§goto(addr70);
         §§push(this.§2o§);
      }
      
      public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.mClip.y = Math.round(param1);
            while(true)
            {
               §§push(this.§2o§);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        if(!_loc3_)
                        {
                           addr43:
                           §§push(this.§2o§);
                           break;
                        }
                        continue;
                     }
                     addr49:
                  }
                  return;
               }
               break;
            }
            §§pop().y = this.mClip.y;
            §§goto(addr49);
         }
         §§goto(addr43);
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
         if(_loc3_)
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
         if(!(_loc3_ && _loc3_))
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
                     while(true)
                     {
                        §§pop();
                        addr104:
                        loop6:
                        while(true)
                        {
                           §§push(this.mClip is MovieClip);
                           if(_loc4_)
                           {
                              if(_loc4_)
                              {
                                 while(§§pop())
                                 {
                                    if(_loc4_)
                                    {
                                       §§push(param2);
                                       loop4:
                                       while(true)
                                       {
                                          if(!_loc4_)
                                          {
                                             continue loop1;
                                          }
                                          if(!§§pop())
                                          {
                                             this.mClip.gotoAndStop(param1);
                                             if(!(_loc3_ && param1))
                                             {
                                                if(!_loc3_)
                                                {
                                                   continue loop0;
                                                }
                                                addr90:
                                                while(true)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      this.mClip.gotoAndPlay(param1);
                                                      break loop4;
                                                   }
                                                   continue loop6;
                                                }
                                             }
                                             break;
                                          }
                                          continue loop6;
                                       }
                                       break;
                                       addr87:
                                    }
                                    §§goto(addr90);
                                 }
                                 addr25:
                                 return;
                                 addr82:
                              }
                              continue;
                           }
                           §§goto(addr87);
                        }
                     }
                  }
                  §§goto(addr82);
               }
            }
         }
         §§goto(addr104);
      }
      
      public function get viewWidth() : Number
      {
         return this.§ !6§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§0!j§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§ !6§ = param1;
            do
            {
               this.§[x§();
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§0!j§ = param1;
            do
            {
               this.§[x§();
            }
            while(!_loc3_);
            
         }
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§&&§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§&&§ = param1;
         }
      }
   }
}
