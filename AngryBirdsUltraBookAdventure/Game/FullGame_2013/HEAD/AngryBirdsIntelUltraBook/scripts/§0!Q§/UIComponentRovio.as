package §0!Q§
{
   import §6a§.UIContainerRovio;
   import §<u§.Log;
   import §=!5§.§`X§;
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class UIComponentRovio extends UIEventListenerRovio
   {
       
      
      public var mParentContainer:UIContainerRovio;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §]`§:Boolean = false;
      
      public var §0x§:Boolean = true;
      
      public var §"p§:Boolean = false;
      
      public var §>7§:Boolean = false;
      
      private var §0!#§:§3%§;
      
      private var §0!E§:Boolean = false;
      
      protected var §5N§:Boolean = false;
      
      private var §;!`§:Number;
      
      private var §2§:Number;
      
      private var §+z§:Number;
      
      private var §-G§:Number;
      
      private var §&2§:String;
      
      private var §[!+§:String;
      
      private var §2o§:String;
      
      private var §@?§:String;
      
      private var §'!d§:String;
      
      private var §0M§:String;
      
      public function UIComponentRovio(param1:XML, param2:UIContainerRovio, param3:MovieClip = null)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
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
                        §§push(§§pop());
                        while(true)
                        {
                           §§pop().§§slot[5] = §§pop();
                           while(true)
                           {
                              §§push(§§newactivation());
                              loop7:
                              while(true)
                              {
                                 §§push(NaN);
                                 addr793:
                                 while(true)
                                 {
                                    §§pop().§§slot[6] = §§pop();
                                    addr794:
                                    while(true)
                                    {
                                       §§push(§§newactivation());
                                       addr787:
                                       while(true)
                                       {
                                          §§push(NaN);
                                          addr788:
                                          while(true)
                                          {
                                             §§pop().§§slot[7] = §§pop();
                                             addr789:
                                             while(true)
                                             {
                                                §§push(§§newactivation());
                                                addr777:
                                                while(true)
                                                {
                                                   §§push(null);
                                                   if(!_loc5_)
                                                   {
                                                      break;
                                                   }
                                                   if(!_loc5_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   §§pop().§§slot[8] = §§pop();
                                                   while(true)
                                                   {
                                                      §§push(§§newactivation());
                                                      continue loop7;
                                                   }
                                                }
                                                continue loop4;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            while(!(_loc6_ && this))
            {
               §§pop().§§slot[8] = this.getParentView().§7!%§(color,alpha);
               §§goto(addr367);
            }
         }
      }
      
      private function §6t§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§0!#§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               addr140:
               while(true)
               {
                  if(!§§pop())
                  {
                     continue loop0;
                  }
                  while(true)
                  {
                     this.§0!#§ = new §3%§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§+z§,this.§-G§,this.§&2§,this.§[!+§,this.§2o§,this.§@?§,this.§0M§,this.§'!d§);
                     addr181:
                     while(true)
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.mClip.scaleX = this.§0!#§.scaleX;
            §§goto(addr94);
         }
      }
      
      private function §1!R§(param1:XML) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(_loc4_ || this)
         {
            if(this.mParentContainer)
            {
               §§push(_loc2_);
               loop0:
               while(true)
               {
                  §§push(0);
                  addr134:
                  while(true)
                  {
                     if(§§pop() != §§pop())
                     {
                        this.§;!`§ = _loc2_;
                        loop2:
                        while(true)
                        {
                           if(_loc4_)
                           {
                              continue loop0;
                           }
                           loop10:
                           while(true)
                           {
                              this.§2§ = _loc3_;
                              addr145:
                              addr55:
                              while(!(_loc4_ || _loc3_))
                              {
                                 while(true)
                                 {
                                    this.§;!`§ = _loc2_;
                                    continue loop10;
                                 }
                                 continue loop10;
                              }
                              loop5:
                              while(true)
                              {
                                 this.§+z§ = this.§;!`§;
                                 while(true)
                                 {
                                    if(!_loc5_)
                                    {
                                       this.§-G§ = this.§2§;
                                       if(!_loc4_)
                                       {
                                          continue;
                                       }
                                       addr43:
                                       if(_loc4_ || param1)
                                       {
                                          if(!_loc4_)
                                          {
                                             continue loop2;
                                          }
                                          if(_loc4_)
                                          {
                                             return;
                                          }
                                          addr93:
                                          while(true)
                                          {
                                             this.§2§ = this.mParentContainer.viewHeight;
                                             continue loop2;
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             continue loop5;
                                             §§goto(addr43);
                                          }
                                          addr79:
                                       }
                                    }
                                 }
                                 addr140:
                                 while(true)
                                 {
                                    continue loop0;
                                 }
                              }
                              continue loop2;
                           }
                        }
                     }
                     addr135:
                     while(true)
                     {
                        this.§;!`§ = this.mParentContainer.viewWidth;
                        §§goto(addr140);
                     }
                  }
               }
            }
            §§goto(addr157);
         }
         §§goto(addr140);
      }
      
      private function §-@§(param1:XML) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            this.§&2§ = param1.@alignH;
            loop0:
            while(true)
            {
               this.§[!+§ = param1.@alignV;
               while(true)
               {
                  this.§2o§ = param1.@scaleH;
                  while(!(_loc4_ && param1))
                  {
                     this.§@?§ = param1.@scaleV;
                     while(!(_loc4_ && _loc3_))
                     {
                        while(true)
                        {
                           this.§'!d§ = param1.@scaleFunction;
                           do
                           {
                              this.§0M§ = param1.@aspectRatioFixed;
                           }
                           while(!_loc5_);
                           
                           if(_loc4_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr43);
         }
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         if(!(_loc4_ && _loc2_))
         {
            this.§ X§(_loc2_);
            do
            {
               this.§=![§(_loc3_);
            }
            while(!(_loc5_ || this));
            
         }
      }
      
      private function §=![§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(param1);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     addr85:
                     §§push(param1);
                     if(!_loc2_)
                     {
                        addr90:
                        §§push(§§pop().toUpperCase());
                        while(true)
                        {
                           param1 = §§pop();
                        }
                        addr90:
                     }
                     §§goto(addr90);
                  }
                  while(true)
                  {
                     §§push(param1);
                     if(!(_loc2_ && param1))
                     {
                        if(§§pop() == "TRUE")
                        {
                           if(_loc3_ || param1)
                           {
                              if(_loc2_)
                              {
                                 continue;
                              }
                              this.§5N§ = true;
                           }
                           break;
                        }
                        break;
                     }
                     §§goto(addr90);
                  }
               }
               return;
            }
            §§goto(addr90);
         }
         §§goto(addr85);
      }
      
      private function § X§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               addr89:
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  if(_loc2_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(!§§pop())
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc2_ || param1)
                           {
                              if(_loc3_ && param1)
                              {
                                 continue loop0;
                              }
                              this.§0!E§ = true;
                           }
                           break;
                        }
                        break;
                        addr55:
                        if(!_loc3_)
                        {
                           continue;
                        }
                        continue loop1;
                     }
                     return;
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
            addr88:
         }
         while(true)
         {
            §§push(param1);
            if(_loc2_)
            {
               §§push(§§pop().toUpperCase() == "TRUE");
               if(_loc2_ || _loc2_)
               {
                  if(!_loc2_)
                  {
                     continue;
                  }
                  §§push(Boolean(§§pop()));
               }
               §§goto(addr55);
            }
            else
            {
               §§goto(addr88);
            }
         }
      }
      
      public function readInitialVisibility(param1:XML) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:String = param1.@visible;
         if(!(_loc4_ && this))
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
                     §§push(Boolean(§§pop()));
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 while(true)
                                 {
                                    §§push(§§pop().toUpperCase() == "FALSE");
                                    addr187:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    loop14:
                                    for(; _loc3_ || param1; §§push(_loc2_),if(!_loc3_)
                                    {
                                       continue;
                                    },if(!(_loc3_ || _loc3_))
                                    {
                                       continue loop0;
                                    },§§push(§§pop().toUpperCase() == "FALSE"),if(!_loc4_)
                                    {
                                       if(_loc4_)
                                       {
                                          continue loop4;
                                       }
                                       §§push(Boolean(§§pop()));
                                    },§§goto(addr51))
                                    {
                                       §§push(Boolean(§§pop()));
                                       loop15:
                                       for(; !_loc4_; if(_loc4_ && param1)
                                       {
                                          continue;
                                       },if(_loc3_)
                                       {
                                          if(_loc4_)
                                          {
                                             continue loop1;
                                          }
                                          §§goto(addr69);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc4_ && param1))
                                                {
                                                   while(true)
                                                   {
                                                      this.setVisibility(false);
                                                   }
                                                   addr197:
                                                }
                                                §§goto(addr201);
                                             }
                                             else
                                             {
                                                this.setVisibility(true);
                                                §§goto(addr181);
                                             }
                                          }
                                          addr189:
                                       },§§goto(addr181))
                                       {
                                          §§push(§§pop());
                                          if(!(_loc4_ && param1))
                                          {
                                             if(_loc4_ && param1)
                                             {
                                                continue loop3;
                                             }
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(_loc4_)
                                          {
                                             continue loop2;
                                          }
                                          if(!§§pop())
                                          {
                                             while(§§pop())
                                             {
                                                if(_loc3_)
                                                {
                                                   this.setEnabled(false);
                                                }
                                                if(!_loc3_)
                                                {
                                                   while(true)
                                                   {
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         if(!(_loc3_ || param1))
                                                         {
                                                            break;
                                                         }
                                                         continue loop14;
                                                      }
                                                      addr181:
                                                      addr181:
                                                      while(true)
                                                      {
                                                      }
                                                   }
                                                   continue loop5;
                                                   addr129:
                                                }
                                                addr79:
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   break;
                                                }
                                                addr156:
                                                addr201:
                                                while(!(_loc4_ && _loc3_))
                                                {
                                                   §§push(_loc2_);
                                                   continue loop14;
                                                   §§goto(addr79);
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr156);
                                                }
                                                addr156:
                                                while(true)
                                                {
                                                   §§push(param1.@enabled);
                                                   continue loop0;
                                                   §§goto(addr181);
                                                }
                                             }
                                             return;
                                             addr69:
                                          }
                                          while(true)
                                          {
                                             §§pop();
                                             addr51:
                                             if(!(_loc4_ && this))
                                             {
                                                continue loop15;
                                             }
                                          }
                                          §§goto(addr129);
                                       }
                                       §§goto(addr187);
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr189);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr197);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.clear();
            while(true)
            {
               §§push(this.mParentContainer);
               if(!(_loc1_ && _loc1_))
               {
                  if(§§pop())
                  {
                     if(!_loc1_)
                     {
                        continue;
                     }
                     addr107:
                  }
                  while(true)
                  {
                     if(this.mClip.numChildren <= 0)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           this.mClip = null;
                        }
                        do
                        {
                           this.§0!#§ = null;
                        }
                        while(_loc1_);
                        
                        if(_loc2_)
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
            §§pop().mClip.removeChild(this.mClip);
         }
         §§goto(addr107);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            super.listenerEventOccured(param1,param2);
            do
            {
               §§push(this.mParentContainer);
               if(_loc3_ || param2)
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
            while(!(_loc3_ || _loc3_));
            
         }
         addr24:
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§0x§ = param1;
            loop0:
            do
            {
               this.mClip.visible = this.§0x§ && this.§]`§;
               do
               {
                  if(this.visible)
                  {
                     continue;
                  }
                  removeEventListeners();
                  if(!_loc3_)
                  {
                     if(!_loc3_)
                     {
                        §§goto(addr19);
                     }
                     continue;
                  }
                  continue loop0;
               }
               while(_loc3_);
               
               addEventListeners();
            }
            while(!_loc2_);
            
         }
         addr19:
      }
      
      public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§]`§ = param1;
            while(true)
            {
               this.mClip.visible = this.§0x§ && this.§]`§;
               loop1:
               for(; _loc3_ || _loc3_; if(!(_loc3_ || param1))
               {
                  continue;
               },while(true)
               {
                  §§goto(addr75);
               },addr74:)
               {
                  §§push(this.visible);
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           addEventListeners();
                           loop4:
                           while(true)
                           {
                              loop5:
                              while(true)
                              {
                                 §§push(this.§>7§);
                                 if(_loc3_)
                                 {
                                    if(_loc3_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc3_ || _loc3_)
                                          {
                                             continue loop1;
                                          }
                                          addr88:
                                          addr88:
                                          while(true)
                                          {
                                             if(!(_loc2_ && this))
                                             {
                                                break loop4;
                                             }
                                             continue loop4;
                                          }
                                          addr88:
                                       }
                                       §§goto(addr20);
                                    }
                                    continue loop2;
                                 }
                                 addr75:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       this.mClip.gotoAndStop(1);
                                       if(_loc3_ || this)
                                       {
                                          if(!_loc2_)
                                          {
                                             §§goto(addr20);
                                          }
                                       }
                                       §§goto(addr88);
                                    }
                                    if(!(_loc2_ && this))
                                    {
                                       break loop5;
                                    }
                                    addr102:
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          continue loop5;
                                       }
                                       continue loop3;
                                    }
                                 }
                                 §§goto(addr88);
                              }
                              this.mClip.gotoAndPlay(1);
                              §§goto(addr88);
                           }
                           addr20:
                           return;
                        }
                     }
                     else
                     {
                        removeEventListeners();
                     }
                     §§goto(addr102);
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(this.mClip.mouseEnabled != param1)
            {
               while(true)
               {
                  this.mClip.mouseEnabled = param1;
                  addr79:
                  while(true)
                  {
                  }
               }
               addr75:
            }
            while(this.mClip.mouseChildren != param1)
            {
               if(_loc2_ || _loc2_)
               {
                  if(_loc3_)
                  {
                     §§goto(addr79);
                     continue;
                  }
                  if(!_loc3_)
                  {
                     addr65:
                     this.mClip.mouseChildren = param1;
                  }
                  else
                  {
                     §§goto(addr75);
                  }
               }
               break;
            }
            return;
         }
         §§goto(addr65);
      }
      
      public function getParentView() : §`X§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.mClip.x = Math.round(param1);
         }
         do
         {
            §§push(this.§0!#§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  §§goto(addr30);
               }
               if(_loc2_)
               {
                  continue;
               }
               §§push(this.§0!#§);
            }
            §§pop().x = this.mClip.x;
         }
         while(_loc2_);
         
         addr30:
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
               §§push(this.§0!#§);
               if(_loc3_ || _loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc3_ || _loc2_)
                     {
                        if(_loc3_)
                        {
                           addr70:
                           §§push(this.§0!#§);
                           break;
                        }
                        continue;
                     }
                     addr76:
                  }
                  return;
               }
               break;
            }
            §§pop().y = this.mClip.y;
            §§goto(addr76);
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
         if(!_loc2_)
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
         if(_loc3_)
         {
            super.goToFrame(param1,param2);
            loop0:
            while(true)
            {
               §§push(Boolean(this.mClip));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  if(!(_loc4_ && this))
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.mClip is MovieClip);
                           if(!(_loc4_ && _loc3_))
                           {
                              §§push(Boolean(§§pop()));
                              if(!(_loc4_ && _loc3_))
                              {
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop6:
                                       while(true)
                                       {
                                          §§push(param2);
                                          addr75:
                                          addr106:
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                continue loop2;
                                             }
                                             if(_loc4_)
                                             {
                                                continue loop1;
                                             }
                                             if(§§pop())
                                             {
                                                if(!_loc3_)
                                                {
                                                   break;
                                                }
                                                if(!_loc4_)
                                                {
                                                   continue loop0;
                                                }
                                                continue loop3;
                                             }
                                             this.mClip.gotoAndStop(param1);
                                             if(_loc4_ && param2)
                                             {
                                                break;
                                             }
                                             if(!_loc4_)
                                             {
                                             }
                                             continue loop6;
                                          }
                                       }
                                    }
                                    return;
                                 }
                                 addr72:
                              }
                           }
                           §§goto(addr75);
                        }
                     }
                  }
                  §§goto(addr72);
               }
            }
         }
         this.mClip.gotoAndPlay(param1);
         §§goto(addr106);
      }
      
      public function get viewWidth() : Number
      {
         return this.§;!`§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§2§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§;!`§ = param1;
         }
         do
         {
            this.§6t§();
         }
         while(!(_loc2_ || _loc3_));
         
      }
      
      public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§2§ = param1;
         }
         do
         {
            this.§6t§();
         }
         while(_loc3_ && this);
         
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§5N§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§5N§ = param1;
         }
      }
   }
}
