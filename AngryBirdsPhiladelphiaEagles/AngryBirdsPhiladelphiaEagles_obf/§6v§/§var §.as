package §6v§
{
   import §"U§.§[Q§;
   import §]!-§.§`o§;
   import §`K§.§ L§;
   import com.rovio.assets.§[!D§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §var § extends §`M§
   {
       
      
      public var mParentContainer:§[Q§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var mActive:Boolean = false;
      
      public var §9'§:Boolean = true;
      
      public var §!!K§:Boolean = false;
      
      public var §&B§:Boolean = false;
      
      private var §7!Q§:§0R§;
      
      private var §`!N§:Boolean = false;
      
      protected var §;R§:Boolean = false;
      
      private var §[2§:Number;
      
      private var §-$§:Number;
      
      private var §'!§:Number;
      
      private var §#!@§:Number;
      
      private var §<s§:String;
      
      private var §]a§:String;
      
      private var §!l§:String;
      
      private var §8H§:String;
      
      private var §?_§:String;
      
      private var §!!#§:String;
      
      public function §var §(param1:XML, param2:§[Q§, param3:MovieClip = null)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         §§push(null);
         loop0:
         while(true)
         {
            §§pop().§§slot[5] = §§pop();
            loop1:
            while(true)
            {
               §§push(§§newactivation());
               loop2:
               while(true)
               {
                  §§push(null);
                  loop3:
                  while(!_loc6_)
                  {
                     §§pop().§§slot[6] = §§pop();
                     loop4:
                     while(true)
                     {
                        var color:Number = NaN;
                        §§push(§§newactivation());
                        loop5:
                        while(true)
                        {
                           §§push(NaN);
                           loop6:
                           while(true)
                           {
                              §§pop().§§slot[8] = §§pop();
                              loop7:
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
                                    §§pop().§§slot[9] = §§pop();
                                    var data:XML = param1;
                                    var parentContainer:§[Q§ = param2;
                                    loop9:
                                    while(true)
                                    {
                                       §§push(§§newactivation());
                                       loop10:
                                       while(true)
                                       {
                                          §§pop().§§slot[3] = param3;
                                          this.mParentContainer = parentContainer;
                                          loop11:
                                          while(true)
                                          {
                                             this.mName = data.@name;
                                             loop12:
                                             while(true)
                                             {
                                                §§push(§§newactivation());
                                                loop13:
                                                while(true)
                                                {
                                                   if(§§pop().§§slot[3])
                                                   {
                                                      this.mClip = clip;
                                                      loop51:
                                                      while(true)
                                                      {
                                                         §§push(this.mParentContainer);
                                                         loop52:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(this.mParentContainer);
                                                                  continue loop11;
                                                               }
                                                               addr506:
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  loop17:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     while(true)
                                                                     {
                                                                        if(§§pop().§§slot[1].@isOverlay.toString().toUpperCase() == "TRUE")
                                                                        {
                                                                           this.§!!K§ = true;
                                                                           if(_loc5_)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(§§newactivation());
                                                                              while(!_loc6_)
                                                                              {
                                                                                 §§pop().§§slot[7] = Number(16777215);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§newactivation());
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       continue loop10;
                                                                                    }
                                                                                    continue loop12;
                                                                                    loop26:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().§§slot[8] = Number(parseFloat(data.@overlayAlpha));
                                                                                       if(_loc6_ && param1)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       loop27:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§newactivation());
                                                                                          loop28:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().§§slot[9] = this.getParentView().§2!3§(color,alpha);
                                                                                             this.mClip.addChildAt(tmp,0);
                                                                                             addr215:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.mParentContainer);
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      while(§§pop())
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               §§push(§§newactivation());
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               continue loop2;
                                                                                                            }
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                         continue loop28;
                                                                                                         if(!(_loc6_ && this))
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                      }
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         §§push(§§newactivation());
                                                                                                         continue loop28;
                                                                                                      }
                                                                                                      loop34:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§newactivation());
                                                                                                         loop35:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop().§§slot[1].@animateOnActivation.toString().toUpperCase() == "TRUE")
                                                                                                            {
                                                                                                               this.§&B§ = true;
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  this.mClip.stop();
                                                                                                                  loop37:
                                                                                                                  while(_loc5_)
                                                                                                                  {
                                                                                                                     loop42:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        super(targetSprite);
                                                                                                                        if(_loc6_ && param1)
                                                                                                                        {
                                                                                                                           continue loop37;
                                                                                                                        }
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           continue loop4;
                                                                                                                        }
                                                                                                                        this.readInitialVisibility(data);
                                                                                                                        while(!_loc6_)
                                                                                                                        {
                                                                                                                           this.§-!5§(data);
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              this.§#R§(data);
                                                                                                                              if(_loc6_)
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              if(_loc5_)
                                                                                                                              {
                                                                                                                                 return;
                                                                                                                              }
                                                                                                                              addr474:
                                                                                                                              addr117:
                                                                                                                              loop39:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    if(!this.mClip.MouseHitArea)
                                                                                                                                    {
                                                                                                                                       continue loop42;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       this.mClip.MouseHitArea.alpha = 0;
                                                                                                                                       continue loop26;
                                                                                                                                       addr79:
                                                                                                                                       §§pop().§§slot[4] = this.mClip.MouseHitArea;
                                                                                                                                       if(_loc6_ && this)
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       if(!_loc6_)
                                                                                                                                       {
                                                                                                                                          if(_loc5_)
                                                                                                                                          {
                                                                                                                                             continue loop42;
                                                                                                                                          }
                                                                                                                                          continue loop7;
                                                                                                                                       }
                                                                                                                                       §§goto(addr506);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc5_)
                                                                                                                                       {
                                                                                                                                          break loop39;
                                                                                                                                       }
                                                                                                                                       if(this.mClip == null)
                                                                                                                                       {
                                                                                                                                          if(!(_loc6_ && param2))
                                                                                                                                          {
                                                                                                                                             §§push(§§newactivation());
                                                                                                                                             while(!_loc6_)
                                                                                                                                             {
                                                                                                                                                §§push("Asset instance not found!! [");
                                                                                                                                                if(!_loc6_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + this.mName);
                                                                                                                                                   if(!_loc6_)
                                                                                                                                                   {
                                                                                                                                                      addr408:
                                                                                                                                                      §§push("] parent: [");
                                                                                                                                                      if(_loc5_ || param2)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(_loc5_ || param2)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + this.mParentContainer.mName);
                                                                                                                                                            if(!_loc6_)
                                                                                                                                                            {
                                                                                                                                                               addr430:
                                                                                                                                                               §§push(§§pop() + "]");
                                                                                                                                                            }
                                                                                                                                                            §§pop().§§slot[6] = §§pop();
                                                                                                                                                            § L§.log(error);
                                                                                                                                                            function():void
                                                                                                                                                            {
                                                                                                                                                               throw new Error(error);
                                                                                                                                                            }();
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               continue loop17;
                                                                                                                                                            }
                                                                                                                                                            addr378:
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr430);
                                                                                                                                                }
                                                                                                                                                §§goto(addr408);
                                                                                                                                             }
                                                                                                                                             continue loop13;
                                                                                                                                             addr398:
                                                                                                                                          }
                                                                                                                                          continue loop51;
                                                                                                                                       }
                                                                                                                                       continue loop17;
                                                                                                                                    }
                                                                                                                                    addr452:
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 addr434:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    continue loop17;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           continue loop26;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           continue loop34;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        continue loop34;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§newactivation());
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  continue loop35;
                                                                                                               }
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§pop().§§slot[4] = this.mClip;
                                                                                                               §§goto(addr117);
                                                                                                            }
                                                                                                            addr251:
                                                                                                            while(!_loc6_)
                                                                                                            {
                                                                                                               if(§§pop().§§slot[1].@overlayAlpha.toString() != "")
                                                                                                               {
                                                                                                                  §§push(§§newactivation());
                                                                                                                  continue loop26;
                                                                                                               }
                                                                                                               continue loop27;
                                                                                                            }
                                                                                                            loop24:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  continue loop5;
                                                                                                               }
                                                                                                               if(§§pop().§§slot[1].@overlayColor.toString() != "")
                                                                                                               {
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     addr295:
                                                                                                                     if(!(_loc6_ && param2))
                                                                                                                     {
                                                                                                                        §§push(§§newactivation());
                                                                                                                        if(_loc5_ || this)
                                                                                                                        {
                                                                                                                           addr310:
                                                                                                                           §§push(Number(parseInt(data.@overlayColor)));
                                                                                                                           if(_loc5_ || param2)
                                                                                                                           {
                                                                                                                              addr323:
                                                                                                                              if(!(_loc5_ || param3))
                                                                                                                              {
                                                                                                                                 while(_loc5_)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    §§goto(addr323);
                                                                                                                                 }
                                                                                                                                 continue loop6;
                                                                                                                                 addr344:
                                                                                                                              }
                                                                                                                              §§pop().§§slot[7] = §§pop();
                                                                                                                              addr249:
                                                                                                                              §§goto(addr251);
                                                                                                                              §§push(§§newactivation());
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop().§§slot[8] = §§pop();
                                                                                                                              §§goto(addr310);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr398);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.mParentContainer);
                                                                                                                           break loop24;
                                                                                                                           §§goto(addr295);
                                                                                                                        }
                                                                                                                        addr468:
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     continue loop24;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr249);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().mClip.addChild(this.mClip);
                                                                                                      §§goto(addr474);
                                                                                                   }
                                                                                                   addr470:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         continue loop52;
                                                                                                      }
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         continue loop17;
                                                                                                      }
                                                                                                      this.mClip = this.mParentContainer.mClip.getChildByName(this.mName) as MovieClip;
                                                                                                   }
                                                                                                   addr439:
                                                                                                }
                                                                                                §§goto(addr452);
                                                                                             }
                                                                                             continue loop52;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop10;
                                                                              }
                                                                              continue;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr215);
                                                                        }
                                                                        §§goto(addr378);
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                               }
                                                               addr484:
                                                            }
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      if(data.@fromLibrary.toString().toUpperCase() == "TRUE")
                                                      {
                                                         §§push(§§newactivation());
                                                         continue loop12;
                                                      }
                                                      §§push(this.mParentContainer);
                                                   }
                                                   §§goto(addr439);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    if(!(_loc5_ || this))
                                    {
                                       continue;
                                    }
                                    §§goto(addr79);
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
      }
      
      private function §"!H§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§7!Q§);
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     this.§7!Q§ = new §0R§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§'!§,this.§#!@§,this.§<s§,this.§]a§,this.§!l§,this.§8H§,this.§!!#§,this.§?_§);
                     addr162:
                     while(true)
                     {
                     }
                  }
                  addr122:
               }
               while(true)
               {
                  §§push(this.§7!Q§);
                  if(!_loc1_)
                  {
                     break;
                  }
                  §§pop().§ q§(this.§[2§,this.§-$§);
                  while(true)
                  {
                     this.mClip.x = this.§7!Q§.x;
                     addr99:
                     this.mClip.scaleX = this.§7!Q§.scaleX;
                     do
                     {
                        this.mClip.scaleY = this.§7!Q§.scaleY;
                     }
                     while(!_loc1_);
                     
                     if(!(_loc2_ && _loc1_))
                     {
                        if(this.§`!N§)
                        {
                           if(!_loc2_)
                           {
                              if(!_loc1_)
                              {
                                 while(_loc1_ || this)
                                 {
                                    §§goto(addr99);
                                 }
                                 §§goto(addr122);
                                 addr92:
                              }
                              if(_loc1_)
                              {
                                 this.mClip.scrollRect = new Rectangle(0,0,this.§'!§,this.§#!@§);
                              }
                              else
                              {
                                 §§goto(addr162);
                              }
                           }
                        }
                        return;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.mClip.y = this.§7!Q§.y;
            §§goto(addr92);
         }
      }
      
      private function §-!5§(param1:XML) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!_loc4_)
         {
            if(!this.mParentContainer)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this.§[2§ = _loc2_;
               }
               while(true)
               {
                  this.§-$§ = _loc3_;
                  §§goto(addr47);
               }
               addr142:
            }
            else
            {
               §§push(_loc2_);
               while(true)
               {
                  §§push(0);
                  loop1:
                  while(true)
                  {
                     if(§§pop() == §§pop())
                     {
                        while(true)
                        {
                           this.§[2§ = this.mParentContainer.viewWidth;
                        }
                        addr118:
                     }
                     else
                     {
                        this.§[2§ = _loc2_;
                        if(_loc4_)
                        {
                           while(true)
                           {
                           }
                           addr123:
                        }
                        while(true)
                        {
                           §§push(_loc3_);
                           if(!_loc5_)
                           {
                              break loop1;
                           }
                           §§push(0);
                           if(_loc4_)
                           {
                              continue loop1;
                           }
                           if(§§pop() == §§pop())
                           {
                              this.§-$§ = this.mParentContainer.viewHeight;
                              loop2:
                              while(true)
                              {
                                 addr47:
                                 do
                                 {
                                    this.§'!§ = this.§[2§;
                                    do
                                    {
                                       this.§#!@§ = this.§-$§;
                                    }
                                    while(_loc4_ && _loc3_);
                                    
                                 }
                                 while(_loc4_);
                                 
                                 return;
                                 addr69:
                                 while(true)
                                 {
                                    if(_loc4_ && _loc2_)
                                    {
                                       continue loop2;
                                    }
                                    if(_loc4_)
                                    {
                                       §§goto(addr142);
                                    }
                                    §§goto(addr47);
                                 }
                              }
                           }
                           else
                           {
                              this.§-$§ = _loc3_;
                              §§goto(addr69);
                           }
                           §§goto(addr69);
                        }
                     }
                     §§goto(addr123);
                  }
               }
            }
            §§goto(addr69);
         }
         §§goto(addr118);
      }
      
      private function §#R§(param1:XML) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§<s§ = param1.@alignH;
            this.§]a§ = param1.@alignV;
            while(true)
            {
               this.§!l§ = param1.@scaleH;
               loop1:
               while(!(_loc5_ && _loc2_))
               {
                  this.§8H§ = param1.@scaleV;
                  loop2:
                  while(true)
                  {
                     addr28:
                     while(true)
                     {
                        this.§?_§ = param1.@scaleFunction;
                        if(_loc5_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr41);
      }
      
      private function §try §(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            if(!(_loc3_ && param1))
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§push(param1);
                     if(_loc2_ || param1)
                     {
                        addr88:
                        §§push(§§pop().toUpperCase());
                        while(true)
                        {
                           param1 = §§pop();
                           while(true)
                           {
                              §§push(param1);
                              if(!(_loc2_ || this))
                              {
                                 break;
                              }
                              if(§§pop() == "TRUE")
                              {
                                 if(!(_loc3_ && this))
                                 {
                                    this.§;R§ = true;
                                 }
                                 if(!_loc2_)
                                 {
                                    continue;
                                 }
                                 if(_loc3_)
                                 {
                                    continue loop2;
                                 }
                              }
                           }
                        }
                        addr88:
                     }
                     §§goto(addr88);
                  }
                  addr78:
               }
               return;
            }
            §§goto(addr88);
         }
         §§goto(addr78);
      }
      
      private function §<k§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!_loc2_)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc3_ || _loc2_)
                        {
                           this.§`!N§ = true;
                        }
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     return;
                     addr63:
                  }
               }
               addr84:
               while(true)
               {
                  §§pop();
                  continue loop0;
               }
            }
            addr79:
         }
         while(true)
         {
            §§push(param1);
            if(!(_loc2_ && param1))
            {
               §§push(§§pop().toUpperCase() == "TRUE");
               if(!_loc3_)
               {
                  continue;
               }
            }
            else
            {
               §§goto(addr79);
            }
            §§goto(addr63);
         }
      }
      
      public function readInitialVisibility(param1:XML) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = param1.@visible;
         §§push(_loc2_);
         loop0:
         while(true)
         {
            §§push(Boolean(§§pop()));
            loop1:
            while(true)
            {
               §§push(§§pop());
               addr148:
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
                              addr29:
                              if(!(_loc3_ || _loc2_))
                              {
                                 continue;
                              }
                              §§push(§§pop().toUpperCase() == "FALSE");
                              if(!_loc3_)
                              {
                                 addr91:
                                 loop12:
                                 while(true)
                                 {
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§pop();
                                       if(_loc3_)
                                       {
                                          if(_loc3_)
                                          {
                                             §§push(_loc2_);
                                             if(_loc3_)
                                             {
                                                §§goto(addr29);
                                             }
                                             loop11:
                                             while(true)
                                             {
                                                if(_loc3_)
                                                {
                                                   continue loop0;
                                                }
                                                addr118:
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                   continue loop11;
                                                }
                                                continue loop3;
                                             }
                                             addr103:
                                             §§goto(addr43);
                                          }
                                          while(true)
                                          {
                                             this.setVisibility(false);
                                             break loop12;
                                          }
                                          addr141:
                                       }
                                       break;
                                    }
                                    continue loop1;
                                 }
                                 while(true)
                                 {
                                    §§goto(addr104);
                                 }
                                 addr91:
                              }
                              if(_loc3_)
                              {
                                 addr43:
                                 if(§§pop())
                                 {
                                    addr45:
                                    if(!(_loc4_ && param1))
                                    {
                                       this.setEnabled(false);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          if(!(_loc3_ || this))
                                          {
                                             continue loop4;
                                          }
                                          while(true)
                                          {
                                             §§goto(addr118);
                                             §§push(param1.@enabled);
                                             break loop12;
                                          }
                                          §§goto(addr45);
                                       }
                                       addr126:
                                    }
                                 }
                                 return;
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    §§goto(addr141);
                                 }
                                 else
                                 {
                                    this.setVisibility(true);
                                 }
                              }
                              addr140:
                              §§goto(addr126);
                           }
                        }
                     }
                     addr149:
                  }
                  while(true)
                  {
                     §§goto(addr140);
                  }
               }
            }
         }
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
               if(!(_loc2_ && _loc2_))
               {
                  if(§§pop())
                  {
                     if(_loc1_)
                     {
                        if(!_loc2_)
                        {
                           addr97:
                           §§push(this.mParentContainer);
                           break;
                        }
                        continue;
                     }
                     addr103:
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
                              this.§7!Q§ = null;
                           }
                           while(!_loc1_);
                           
                        }
                        while(!(_loc1_ || _loc1_));
                        
                        if(!(_loc2_ && _loc1_))
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
            §§goto(addr103);
         }
         §§goto(addr97);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.listenerEventOccured(param1,param2);
            while(true)
            {
               §§push(this.mParentContainer);
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        continue;
                     }
                     addr54:
                  }
                  return;
               }
               break;
            }
            addr50:
            §§pop().containerEventOccured(param1,param2,this);
            §§goto(addr54);
         }
         §§goto(addr50);
         §§push(this.mParentContainer);
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§9'§ = param1;
            while(true)
            {
               this.mClip.visible = this.§9'§ && this.mActive;
               addr47:
               if(_loc3_ && _loc2_)
               {
                  continue;
               }
               §§goto(addr19);
            }
         }
         do
         {
            if(!this.visible)
            {
               removeEventListeners();
               if(_loc2_ || _loc2_)
               {
                  if(_loc3_)
                  {
                     continue;
                  }
                  §§goto(addr47);
               }
               else
               {
                  addr73:
               }
            }
            continue;
            addr19:
            return;
         }
         while(_loc3_);
         
         addEventListeners();
         §§goto(addr73);
      }
      
      public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         this.mActive = param1;
         this.mClip.visible = this.§9'§ && this.mActive;
         §§push(this.visible);
         loop0:
         while(true)
         {
            if(!§§pop())
            {
               removeEventListeners();
               do
               {
                  if(!(_loc2_ && param1))
                  {
                     while(true)
                     {
                        §§push(this.§&B§);
                        if(!(_loc2_ && _loc3_))
                        {
                           if(!_loc2_)
                           {
                              if(§§pop())
                              {
                                 addr56:
                                 if(param1)
                                 {
                                    if(_loc3_)
                                    {
                                       this.mClip.gotoAndPlay(1);
                                       break;
                                    }
                                    continue;
                                 }
                                 this.mClip.gotoAndStop(1);
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                              }
                              §§goto(addr18);
                           }
                           continue loop0;
                        }
                        §§goto(addr56);
                     }
                     continue;
                     addr32:
                  }
                  else
                  {
                     while(true)
                     {
                        addEventListeners();
                     }
                     addr98:
                  }
                  while(true)
                  {
                     §§goto(addr32);
                  }
               }
               while(_loc2_ && this);
               
               addr18:
               return;
            }
            §§goto(addr98);
         }
      }
      
      public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
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
                  addr63:
                  if(_loc2_ && this)
                  {
                     continue;
                  }
                  addr20:
                  return;
                  addr70:
               }
            }
            for(; this.mClip.mouseChildren != param1; §§goto(addr80))
            {
               if(!(_loc2_ && _loc2_))
               {
                  if(!_loc3_)
                  {
                     continue;
                  }
                  this.mClip.mouseChildren = param1;
               }
               §§goto(addr63);
            }
            §§goto(addr20);
         }
         §§goto(addr70);
      }
      
      public function getParentView() : §`o§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.mClip.x = Math.round(param1);
         }
         do
         {
            §§push(this.§7!Q§);
            if(!(_loc3_ && _loc3_))
            {
               if(!§§pop())
               {
                  §§goto(addr19);
               }
               if(_loc3_)
               {
                  continue;
               }
               §§push(this.§7!Q§);
            }
            §§pop().x = this.mClip.x;
         }
         while(!_loc2_);
         
         addr19:
      }
      
      public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.mClip.y = Math.round(param1);
         }
         do
         {
            §§push(this.§7!Q§);
            if(!(_loc3_ && _loc3_))
            {
               if(!§§pop())
               {
                  §§goto(addr24);
               }
               if(_loc3_ && this)
               {
                  continue;
               }
               §§push(this.§7!Q§);
            }
            §§pop().y = this.mClip.y;
         }
         while(!_loc2_);
         
         addr24:
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
         if(_loc3_ || param1)
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
            §§push(Boolean(this.mClip));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr95:
                     while(true)
                     {
                        §§push(this.mClip is MovieClip);
                        if(_loc4_)
                        {
                           if(_loc4_ || param2)
                           {
                              while(§§pop())
                              {
                                 if(_loc4_)
                                 {
                                    §§push(param2);
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          continue loop0;
                                       }
                                       if(§§pop())
                                       {
                                          if(!_loc3_)
                                          {
                                             this.mClip.gotoAndPlay(param1);
                                          }
                                       }
                                       else
                                       {
                                          this.mClip.gotoAndStop(param1);
                                          if(!(_loc3_ && param1))
                                          {
                                             break loop0;
                                          }
                                       }
                                    }
                                    addr78:
                                 }
                                 break loop0;
                              }
                              break loop0;
                              addr73:
                           }
                           continue;
                        }
                        §§goto(addr78);
                     }
                  }
               }
               §§goto(addr73);
            }
            return;
         }
         §§goto(addr95);
      }
      
      public function get viewWidth() : Number
      {
         return this.§[2§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§-$§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§[2§ = param1;
            do
            {
               this.§"!H§();
            }
            while(!_loc2_);
            
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§-$§ = param1;
            do
            {
               this.§"!H§();
            }
            while(!(_loc3_ || _loc2_));
            
         }
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§;R§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§;R§ = param1;
         }
      }
   }
}
