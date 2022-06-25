package §=R§
{
   import §1n§.§ C§;
   import §6z§.§[g§;
   import §`M§.§9!#§;
   import com.rovio.assets.§9!N§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §&W§ extends §7!"§
   {
       
      
      public var mParentContainer:§9!#§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §@!"§:Boolean = false;
      
      public var §2]§:Boolean = true;
      
      public var §&!&§:Boolean = false;
      
      public var §@h§:Boolean = false;
      
      private var §-q§:§4x§;
      
      private var §62§:Boolean = false;
      
      protected var §"!E§:Boolean = false;
      
      private var §1z§:Number;
      
      private var §3C§:Number;
      
      private var §%W§:Number;
      
      private var §@C§:Number;
      
      private var §2!5§:String;
      
      private var §<!"§:String;
      
      private var §+!x§:String;
      
      private var §;S§:String;
      
      private var §'`§:String;
      
      private var §;o§:String;
      
      public function §&W§(param1:XML, param2:§9!#§, param3:MovieClip = null)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[4] = §§pop();
               while(true)
               {
                  §§push(§§newactivation());
                  while(true)
                  {
                     §§push(null);
                     loop4:
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
                                                if(!_loc6_)
                                                {
                                                   break;
                                                }
                                                if(!_loc6_)
                                                {
                                                   continue loop1;
                                                }
                                                §§pop().§§slot[8] = §§pop();
                                                while(true)
                                                {
                                                   §§push(§§newactivation());
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §§pop().§§slot[1] = param1;
                                                      loop15:
                                                      while(true)
                                                      {
                                                         §§push(§§newactivation());
                                                         addr717:
                                                         while(true)
                                                         {
                                                            §§pop().§§slot[2] = param2;
                                                            continue loop15;
                                                            addr391:
                                                            if(_loc6_ || this)
                                                            {
                                                               continue loop14;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                while(!(_loc5_ && this))
                                                {
                                                   §§push("Asset instance not found!! [");
                                                   if(_loc6_)
                                                   {
                                                      §§push(§§pop() + this.mName);
                                                      if(!(_loc5_ && param2))
                                                      {
                                                         addr551:
                                                         §§push("] parent: [");
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc5_)
                                                            {
                                                               addr570:
                                                               §§push(§§pop() + this.mParentContainer.mName);
                                                               if(!_loc5_)
                                                               {
                                                                  §§push("]");
                                                               }
                                                               §§pop().§§slot[5] = §§pop();
                                                               §§goto(addr571);
                                                            }
                                                            §§goto(addr570);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      §§goto(addr570);
                                                   }
                                                   §§goto(addr551);
                                                }
                                             }
                                             continue loop4;
                                          }
                                       }
                                    }
                                 }
                              }
                              while(!(_loc5_ && this))
                              {
                                 §§push(0.5);
                                 if(_loc6_)
                                 {
                                    if(!_loc5_)
                                    {
                                       §§goto(addr466);
                                       §§push(Number(§§pop()));
                                    }
                                    §§goto(addr481);
                                 }
                                 §§goto(addr466);
                              }
                           }
                        }
                     }
                     if(!(_loc6_ || param1))
                     {
                        continue;
                     }
                     §§pop().§§slot[4] = §9!N§.§0!k§(this.mName);
                     §§goto(addr667);
                  }
               }
            }
         }
      }
      
      private function §&#§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§-q§);
            while(true)
            {
               if(§§pop())
               {
                  continue;
               }
               if(!(_loc1_ && _loc1_))
               {
                  this.§-q§ = new §4x§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§%W§,this.§@C§,this.§2!5§,this.§<!"§,this.§+!x§,this.§;S§,this.§;o§,this.§'`§);
               }
            }
         }
         while(true)
         {
            §§goto(addr111);
         }
      }
      
      private function §,o§(param1:XML) : void
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
                  addr142:
                  while(true)
                  {
                     if(§§pop() == §§pop())
                     {
                        addr143:
                        while(true)
                        {
                           this.§1z§ = this.mParentContainer.viewWidth;
                        }
                        addr143:
                     }
                     else
                     {
                        this.§1z§ = _loc2_;
                        while(true)
                        {
                           if(!(_loc4_ && _loc2_))
                           {
                              continue loop0;
                           }
                        }
                        addr129:
                     }
                     addr148:
                     while(true)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            §§goto(addr157);
         }
         §§goto(addr82);
      }
      
      private function §,z§(param1:XML) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            this.§2!5§ = param1.@alignH;
            while(true)
            {
               this.§<!"§ = param1.@alignV;
               addr83:
               while(_loc5_)
               {
               }
            }
         }
         while(true)
         {
            this.§+!x§ = param1.@scaleH;
            while(true)
            {
               this.§;S§ = param1.@scaleV;
               loop4:
               while(_loc5_)
               {
                  do
                  {
                     this.§'`§ = param1.@scaleFunction;
                     while(!(_loc4_ && param1))
                     {
                        if(!_loc4_)
                        {
                           this.§;o§ = param1.@aspectRatioFixed;
                           if(_loc4_ && _loc3_)
                           {
                              continue;
                           }
                           §§goto(addr37);
                        }
                        else
                        {
                           §§goto(addr83);
                        }
                     }
                     continue loop4;
                  }
                  while(false);
                  
                  var _loc2_:String = param1.@scrollRect;
                  var _loc3_:String = param1.@scaleOnMouseOver;
                  if(!(_loc4_ && _loc3_))
                  {
                     this.§]!V§(_loc2_);
                     this.§;1§(_loc3_);
                     addr131:
                     if(!_loc5_)
                     {
                        §§goto(addr131);
                     }
                  }
                  return;
               }
            }
         }
      }
      
      private function §;1§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
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
                     if(_loc3_ || this)
                     {
                        while(true)
                        {
                           §§push(§§pop().toUpperCase());
                        }
                        addr82:
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
                              if(§§pop() == "TRUE")
                              {
                                 if(_loc3_)
                                 {
                                    if(!(_loc3_ || param1))
                                    {
                                       continue;
                                    }
                                    if(_loc2_)
                                    {
                                       continue loop0;
                                    }
                                    this.§"!E§ = true;
                                 }
                                 addr69:
                                 break;
                              }
                              break;
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
            §§goto(addr82);
         }
         §§goto(addr69);
      }
      
      private function §]!V§(param1:String) : void
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
               addr82:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc3_ || _loc2_)
                        {
                           this.§62§ = true;
                        }
                        if(_loc3_ || param1)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     return;
                     addr60:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
            addr81:
         }
         while(true)
         {
            §§push(param1);
            if(_loc3_)
            {
               §§push(§§pop().toUpperCase() == "TRUE");
               if(!(_loc3_ || this))
               {
                  continue;
               }
               if(_loc2_)
               {
                  §§goto(addr82);
               }
               §§goto(addr60);
            }
            else
            {
               §§goto(addr81);
            }
         }
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
                              while(true)
                              {
                                 §§push(§§pop().toUpperCase() == "FALSE");
                                 addr161:
                                 while(!_loc3_)
                                 {
                                 }
                                 continue loop1;
                                 loop13:
                                 for(; !(_loc3_ && _loc3_); §§push(_loc2_),if(!(_loc4_ || this))
                                 {
                                    continue;
                                 },if(_loc4_ || param1)
                                 {
                                    §§push(§§pop().toUpperCase() == "FALSE");
                                    if(!_loc3_)
                                    {
                                       if(!_loc4_)
                                       {
                                          continue loop3;
                                       }
                                       §§goto(addr56);
                                    }
                                    §§goto(addr117);
                                 },§§goto(addr130))
                                 {
                                    if(_loc3_)
                                    {
                                       continue loop0;
                                    }
                                    §§push(Boolean(§§pop()));
                                    if(!(_loc3_ && this))
                                    {
                                       if(_loc4_)
                                       {
                                          §§push(§§pop());
                                          if(!_loc4_)
                                          {
                                             continue loop2;
                                          }
                                          if(!§§pop())
                                          {
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc4_)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         if(!(_loc4_ || _loc2_))
                                                         {
                                                            break;
                                                         }
                                                         this.setEnabled(false);
                                                         addr82:
                                                         if(_loc4_)
                                                         {
                                                            if(!(_loc3_ && param1))
                                                            {
                                                               §§goto(addr29);
                                                            }
                                                            else
                                                            {
                                                               addr155:
                                                            }
                                                            addr155:
                                                            loop17:
                                                            while(true)
                                                            {
                                                               addr126:
                                                               while(true)
                                                               {
                                                                  §§push(param1.@enabled);
                                                                  addr130:
                                                                  while(true)
                                                                  {
                                                                     _loc2_ = §§pop();
                                                                  }
                                                                  continue loop17;
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(_loc4_ || this)
                                                            {
                                                               continue loop13;
                                                               §§goto(addr117);
                                                            }
                                                            addr118:
                                                         }
                                                         while(!(_loc3_ && _loc3_))
                                                         {
                                                            §§push(_loc2_);
                                                            continue loop13;
                                                         }
                                                         while(true)
                                                         {
                                                            this.setVisibility(false);
                                                            §§goto(addr131);
                                                         }
                                                         addr131:
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr126);
                                                      }
                                                   }
                                                   §§goto(addr82);
                                                }
                                                addr29:
                                                return;
                                             }
                                             continue loop4;
                                             addr56:
                                          }
                                          addr117:
                                          while(true)
                                          {
                                             §§pop();
                                          }
                                          addr117:
                                          §§goto(addr118);
                                       }
                                       else
                                       {
                                          §§goto(addr161);
                                       }
                                    }
                                    §§goto(addr117);
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           this.setVisibility(true);
                           §§goto(addr155);
                        }
                        §§goto(addr82);
                     }
                  }
               }
            }
         }
         §§goto(addr155);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.clear();
            while(true)
            {
               §§push(this.mParentContainer);
               if(!(_loc2_ || _loc1_))
               {
                  break;
               }
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     continue;
                  }
                  addr109:
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
                        while(!(_loc1_ && this))
                        {
                           this.§-q§ = null;
                           if(!_loc1_)
                           {
                              continue loop2;
                           }
                        }
                        continue loop1;
                     }
                     while(!_loc2_);
                     
                     return;
                  }
                  this.mClip.removeChildAt(0);
               }
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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            super.listenerEventOccured(param1,param2);
            loop0:
            while(true)
            {
               §§push(this.mParentContainer);
               if(!(_loc3_ && this))
               {
                  if(!§§pop())
                  {
                     §§goto(addr45);
                  }
                  if(_loc3_)
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
            addr45:
            return;
         }
         §§goto(addr62);
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§2]§ = param1;
            loop0:
            while(true)
            {
               this.mClip.visible = this.§2]§ && this.§@!"§;
               while(true)
               {
                  if(!_loc2_)
                  {
                     if(this.visible)
                     {
                        break;
                     }
                     removeEventListeners();
                     if(_loc2_ && _loc3_)
                     {
                        return;
                     }
                     addr20:
                     addr72:
                     continue;
                  }
                  continue loop0;
               }
               addEventListeners();
               §§goto(addr72);
            }
         }
         §§goto(addr20);
      }
      
      public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§@!"§ = param1;
            while(true)
            {
               this.mClip.visible = this.§2]§ && this.§@!"§;
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
                           continue loop1;
                        }
                        addr93:
                     }
                     else
                     {
                        removeEventListeners();
                        loop3:
                        while(true)
                        {
                           if(_loc3_)
                           {
                              continue loop1;
                           }
                           loop4:
                           while(true)
                           {
                              §§push(this.§@h§);
                              if(!_loc3_)
                              {
                                 if(!§§pop())
                                 {
                                    return;
                                 }
                                 addr19:
                                 addr19:
                                 if(_loc2_)
                                 {
                                    §§push(param1);
                                    continue loop2;
                                 }
                                 continue loop3;
                              }
                              continue loop2;
                              addr119:
                              while(true)
                              {
                                 continue loop4;
                              }
                           }
                           §§goto(addr19);
                        }
                     }
                  }
               }
               if(_loc3_ && _loc3_)
               {
                  continue;
               }
               §§goto(addr119);
            }
         }
         §§goto(addr119);
      }
      
      public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(this.mClip.mouseEnabled != param1)
            {
               while(true)
               {
                  this.mClip.mouseEnabled = param1;
                  addr74:
                  while(true)
                  {
                  }
               }
               addr70:
            }
            loop2:
            for(; this.mClip.mouseChildren != param1; §§goto(addr74))
            {
               if(!_loc3_)
               {
                  if(_loc3_)
                  {
                     continue;
                  }
                  while(true)
                  {
                     this.mClip.mouseChildren = param1;
                  }
               }
               while(true)
               {
                  if(!_loc3_)
                  {
                     break loop2;
                  }
                  §§goto(addr70);
               }
            }
            return;
         }
         §§goto(addr58);
      }
      
      public function getParentView() : § C§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.mClip.x = Math.round(param1);
            loop0:
            while(true)
            {
               §§push(this.§-q§);
               if(_loc3_)
               {
                  if(!§§pop())
                  {
                     §§goto(addr20);
                  }
                  if(!(_loc3_ || _loc2_))
                  {
                     continue;
                  }
                  while(true)
                  {
                     §§push(this.§-q§);
                  }
               }
               while(true)
               {
                  §§pop().x = this.mClip.x;
                  continue loop0;
               }
            }
            addr20:
            return;
         }
         §§goto(addr57);
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
               §§push(this.§-q§);
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        if(!_loc3_)
                        {
                           §§push(this.§-q§);
                           break;
                        }
                        continue;
                     }
                     addr64:
                  }
                  return;
               }
               break;
            }
            §§pop().y = this.mClip.y;
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
         if(!(_loc3_ && param1))
         {
            super.goToFrame(param1,param2);
            loop0:
            while(true)
            {
               §§push(Boolean(this.mClip));
               if(_loc4_)
               {
                  if(§§pop())
                  {
                     loop5:
                     while(true)
                     {
                        §§pop();
                        addr114:
                        addr92:
                        while(true)
                        {
                           §§push(this.mClip is MovieClip);
                           if(_loc3_ && param2)
                           {
                              break;
                           }
                           if(_loc4_)
                           {
                           }
                           continue loop5;
                        }
                        loop2:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              this.mClip.gotoAndStop(param1);
                              if(_loc4_)
                              {
                                 if(_loc4_ || param2)
                                 {
                                    §§goto(addr25);
                                 }
                                 addr93:
                                 while(true)
                                 {
                                    if(_loc4_ || this)
                                    {
                                       addr100:
                                       this.mClip.gotoAndPlay(param1);
                                       break loop2;
                                    }
                                    continue loop2;
                                 }
                                 addr93:
                              }
                              break;
                           }
                           §§goto(addr93);
                        }
                        §§goto(addr25);
                     }
                     addr113:
                  }
                  while(§§pop())
                  {
                     if(_loc4_ || param2)
                     {
                        continue loop0;
                     }
                     §§goto(addr93);
                  }
                  addr25:
                  return;
               }
               §§goto(addr113);
            }
         }
         §§goto(addr100);
      }
      
      public function get viewWidth() : Number
      {
         return this.§1z§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§3C§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§1z§ = param1;
         }
         do
         {
            this.§&#§();
         }
         while(!(_loc2_ || _loc3_));
         
      }
      
      public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§3C§ = param1;
         }
         do
         {
            this.§&#§();
         }
         while(!_loc2_);
         
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§"!E§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§"!E§ = param1;
         }
      }
   }
}
