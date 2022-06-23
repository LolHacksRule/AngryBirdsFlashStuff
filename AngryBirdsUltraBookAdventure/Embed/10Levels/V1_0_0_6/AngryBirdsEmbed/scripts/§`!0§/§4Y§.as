package §`!0§
{
   import §0w§.§0#§;
   import §4C§.§1!=§;
   import §>K§.§9X§;
   import com.rovio.assets.§!Q§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §4Y§ extends §"?§
   {
       
      
      public var mParentContainer:§1!=§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §>U§:Boolean = false;
      
      public var §2!-§:Boolean = true;
      
      public var §&I§:Boolean = false;
      
      public var §?=§:Boolean = false;
      
      private var §6T§:§2+§;
      
      private var §?!G§:Boolean = false;
      
      protected var get:Boolean = false;
      
      private var §`i§:Number;
      
      private var §!j§:Number;
      
      private var §8!D§:Number;
      
      private var §%I§:Number;
      
      private var §3!B§:String;
      
      private var §-Q§:String;
      
      private var §]P§:String;
      
      private var §-=§:String;
      
      private var §3!@§:String;
      
      private var §[6§:String;
      
      public function §4Y§(param1:XML, param2:§1!=§, param3:MovieClip = null)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         §§push(null);
         if(!_loc6_)
         {
            §§pop().§§slot[4] = §§pop();
            §§push(§§newactivation());
            if(!(_loc6_ && param1))
            {
               §§push(null);
               if(!_loc6_)
               {
                  addr37:
                  §§pop().§§slot[5] = §§pop();
                  if(_loc5_)
                  {
                     var color:Number = NaN;
                     if(!_loc6_)
                     {
                        var alpha:Number = NaN;
                        addr51:
                        var tmp:Sprite = null;
                        §§push(§§newactivation());
                        if(_loc5_ || param2)
                        {
                           §§pop().§§slot[1] = param1;
                           §§push(§§newactivation());
                           if(_loc5_ || this)
                           {
                              §§pop().§§slot[2] = param2;
                              if(_loc5_)
                              {
                                 §§push(§§newactivation());
                                 if(!_loc6_)
                                 {
                                    §§pop().§§slot[3] = param3;
                                    if(!_loc6_)
                                    {
                                       addr82:
                                       this.mParentContainer = parentContainer;
                                       this.mName = data.@name;
                                       §§push(§§newactivation());
                                       if(_loc5_)
                                       {
                                          if(§§pop().§§slot[3])
                                          {
                                             if(!(_loc6_ && param1))
                                             {
                                                this.mClip = clip;
                                                if(_loc5_)
                                                {
                                                   §§push(this.mParentContainer);
                                                   if(!_loc6_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§push(this.mParentContainer);
                                                         if(!(_loc6_ && param1))
                                                         {
                                                            §§pop().mClip.addChild(this.mClip);
                                                            if(!(_loc6_ && param2))
                                                            {
                                                               addr264:
                                                               §§push(§§newactivation());
                                                               if(!_loc6_)
                                                               {
                                                                  if(§§pop().§§slot[1].@isOverlay.toString().toUpperCase() == "TRUE")
                                                                  {
                                                                     this.§&I§ = true;
                                                                     if(_loc5_ || param1)
                                                                     {
                                                                        addr284:
                                                                        §§push(§§newactivation());
                                                                        §§push(Number(16777215));
                                                                        if(_loc5_)
                                                                        {
                                                                           §§pop().§§slot[6] = §§pop();
                                                                           if(!(_loc6_ && param2))
                                                                           {
                                                                              addr296:
                                                                              §§push(§§newactivation());
                                                                              if(_loc5_)
                                                                              {
                                                                                 addr301:
                                                                                 §§pop().§§slot[7] = Number(0.5);
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    §§goto(addr304);
                                                                                 }
                                                                                 §§goto(addr497);
                                                                              }
                                                                              §§goto(addr397);
                                                                           }
                                                                           §§goto(addr439);
                                                                        }
                                                                        §§goto(addr301);
                                                                     }
                                                                     §§goto(addr422);
                                                                  }
                                                                  §§goto(addr361);
                                                               }
                                                               §§goto(addr337);
                                                               addr134:
                                                            }
                                                            §§goto(addr380);
                                                         }
                                                         else
                                                         {
                                                            addr195:
                                                            if(§§pop())
                                                            {
                                                               this.mClip = this.mParentContainer.mClip.getChildByName(this.mName) as MovieClip;
                                                               if(this.mClip == null)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     §§push("Asset instance not found!! [");
                                                                     if(!(_loc6_ && param3))
                                                                     {
                                                                        §§push(§§pop() + this.mName);
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push("] parent: [");
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc5_ || param1)
                                                                              {
                                                                                 addr255:
                                                                                 §§push(§§pop() + this.mParentContainer.mName);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    addr253:
                                                                                    §§push("]");
                                                                                 }
                                                                                 §§pop().§§slot[5] = §§pop();
                                                                                 §9X§.log(error);
                                                                                 function():void
                                                                                 {
                                                                                    throw new Error(error);
                                                                                 }();
                                                                                 §§goto(addr264);
                                                                              }
                                                                           }
                                                                           §§goto(addr255);
                                                                           §§push(§§pop() + §§pop());
                                                                        }
                                                                        §§goto(addr253);
                                                                     }
                                                                     §§goto(addr255);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr264);
                                                         }
                                                      }
                                                      §§goto(addr134);
                                                   }
                                                   else
                                                   {
                                                      addr167:
                                                      if(§§pop())
                                                      {
                                                         if(_loc5_ || param2)
                                                         {
                                                            §§push(this.mParentContainer);
                                                            if(_loc5_)
                                                            {
                                                               §§pop().mClip.addChild(this.mClip);
                                                               if(_loc5_)
                                                               {
                                                                  addr185:
                                                                  §§goto(addr264);
                                                               }
                                                               addr304:
                                                               if(data.@overlayColor.toString() != "")
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     addr312:
                                                                     §§push(§§newactivation());
                                                                     §§push(Number(parseInt(data.@overlayColor)));
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§pop().§§slot[6] = §§pop();
                                                                        §§goto(addr322);
                                                                     }
                                                                     §§goto(addr337);
                                                                  }
                                                                  §§goto(addr497);
                                                               }
                                                               addr322:
                                                               if(data.@overlayAlpha.toString() != "")
                                                               {
                                                                  addr328:
                                                                  §§push(§§newactivation());
                                                                  if(!_loc6_)
                                                                  {
                                                                     addr337:
                                                                     §§pop().§§slot[7] = Number(parseFloat(data.@overlayAlpha));
                                                                  }
                                                                  addr432:
                                                                  §§pop().§§slot[2].mClip.setChildIndex(this.mClip,0);
                                                                  addr431:
                                                                  if(!_loc6_)
                                                                  {
                                                                     addr439:
                                                                     addr440:
                                                                     if(data.@animateOnActivation.toString().toUpperCase() == "TRUE")
                                                                     {
                                                                     }
                                                                     §§goto(addr476);
                                                                  }
                                                                  this.§?=§ = true;
                                                                  if(!(_loc6_ && this))
                                                                  {
                                                                     this.mClip.stop();
                                                                     if(!(_loc6_ && param3))
                                                                     {
                                                                        §§goto(addr476);
                                                                     }
                                                                     addr476:
                                                                     super(this.mClip);
                                                                     this.readInitialVisibility(data);
                                                                     if(_loc5_ || param1)
                                                                     {
                                                                        addr491:
                                                                        this.§+c§(data);
                                                                        if(!_loc6_)
                                                                        {
                                                                           addr497:
                                                                           this.§&!=§(data);
                                                                        }
                                                                     }
                                                                     §§goto(addr501);
                                                                  }
                                                                  §§goto(addr491);
                                                               }
                                                               tmp = this.getParentView().§&g§(color,alpha);
                                                               if(_loc5_ || param3)
                                                               {
                                                                  this.mClip.addChildAt(tmp,0);
                                                                  addr361:
                                                                  §§push(Boolean(this.mParentContainer));
                                                                  if(_loc5_ || this)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc5_ || param3)
                                                                        {
                                                                           addr380:
                                                                           §§pop();
                                                                           addr412:
                                                                           §§push(§§newactivation());
                                                                           if(!(_loc6_ && this))
                                                                           {
                                                                              §§push(§§pop().§§slot[1].@isBehind.toString().toUpperCase() == "TRUE");
                                                                           }
                                                                           §§push(§§pop().§§slot[2]);
                                                                           if(!_loc6_)
                                                                           {
                                                                              addr415:
                                                                              §§pop().mClip.setChildIndex(this.mClip,1);
                                                                              if(_loc5_)
                                                                              {
                                                                                 addr422:
                                                                              }
                                                                              §§goto(addr439);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr432);
                                                                           }
                                                                        }
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        addr397:
                                                                        §§push(parentContainer);
                                                                        if(_loc5_ || this)
                                                                        {
                                                                           if(§§pop().§&I§)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    §§goto(addr412);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr431);
                                                                                 }
                                                                              }
                                                                              §§goto(addr439);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(§§newactivation());
                                                                              if(!(_loc6_ && param2))
                                                                              {
                                                                                 §§goto(addr432);
                                                                              }
                                                                           }
                                                                           §§goto(addr440);
                                                                        }
                                                                        §§goto(addr415);
                                                                     }
                                                                     §§goto(addr439);
                                                                  }
                                                                  §§goto(addr380);
                                                               }
                                                               addr501:
                                                               return;
                                                            }
                                                            §§goto(addr361);
                                                         }
                                                         §§goto(addr312);
                                                      }
                                                      §§goto(addr185);
                                                   }
                                                }
                                                §§goto(addr439);
                                             }
                                             §§goto(addr255);
                                          }
                                          else
                                          {
                                             addr136:
                                             if(data.@fromLibrary.toString().toUpperCase() == "TRUE")
                                             {
                                                var cls:Class = §!Q§.§^!H§(this.mName);
                                                if(!_loc6_)
                                                {
                                                   this.mClip = new cls();
                                                   if(!(_loc6_ && param3))
                                                   {
                                                      §§push(this.mParentContainer);
                                                      if(_loc5_)
                                                      {
                                                         §§goto(addr167);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr195);
                                                      }
                                                   }
                                                   §§goto(addr328);
                                                }
                                                §§goto(addr296);
                                             }
                                             else
                                             {
                                                §§push(this.mParentContainer);
                                                if(_loc5_ || param1)
                                                {
                                                   §§goto(addr195);
                                                }
                                             }
                                          }
                                          §§goto(addr361);
                                       }
                                       §§goto(addr136);
                                    }
                                    §§goto(addr439);
                                 }
                                 §§goto(addr380);
                              }
                              §§goto(addr264);
                           }
                           §§goto(addr337);
                        }
                        §§goto(addr284);
                     }
                     §§goto(addr497);
                  }
                  §§goto(addr82);
               }
               §§goto(addr51);
            }
            §§goto(addr328);
         }
         §§goto(addr37);
      }
      
      private function §with§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§6T§);
         if(!(_loc2_ && this))
         {
            if(!§§pop())
            {
               if(_loc1_ || _loc2_)
               {
                  this.§6T§ = new §2+§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§8!D§,this.§%I§,this.§3!B§,this.§-Q§,this.§]P§,this.§-=§,this.§[6§,this.§3!@§);
                  if(!(_loc2_ && this))
                  {
                     addr82:
                     this.§6T§.§3!3§(this.§`i§,this.§!j§);
                     addr80:
                     if(!(_loc2_ && _loc1_))
                     {
                        this.mClip.x = this.§6T§.x;
                        this.mClip.y = this.§6T§.y;
                        if(!_loc2_)
                        {
                           this.mClip.scaleX = this.§6T§.scaleX;
                           addr124:
                           this.mClip.scaleY = this.§6T§.scaleY;
                           if(this.§?!G§)
                           {
                              this.mClip.scrollRect = new Rectangle(0,0,this.§8!D§,this.§%I§);
                           }
                        }
                        return;
                     }
                  }
                  §§goto(addr124);
               }
            }
            §§goto(addr80);
         }
         §§goto(addr82);
      }
      
      private function §+c§(param1:XML) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!_loc5_)
         {
            if(!this.mParentContainer)
            {
               if(!(_loc5_ && this))
               {
                  this.§`i§ = _loc2_;
                  if(!_loc5_)
                  {
                     this.§!j§ = _loc3_;
                  }
                  else
                  {
                     addr69:
                     this.§`i§ = this.mParentContainer.viewWidth;
                     if(!_loc4_)
                     {
                     }
                     if(_loc3_ == 0)
                     {
                        if(_loc4_)
                        {
                           addr97:
                           this.§!j§ = this.mParentContainer.viewHeight;
                        }
                     }
                     else
                     {
                        this.§!j§ = _loc3_;
                     }
                  }
                  this.§8!D§ = this.§`i§;
                  if(!_loc5_)
                  {
                     this.§%I§ = this.§!j§;
                  }
                  §§goto(addr116);
               }
               §§goto(addr97);
            }
            else
            {
               §§push(_loc2_);
               if(!_loc5_)
               {
                  §§push(0);
                  if(_loc4_)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(!(_loc5_ && _loc3_))
                        {
                           §§goto(addr69);
                        }
                        §§goto(addr97);
                     }
                     else
                     {
                        this.§`i§ = _loc2_;
                        if(!_loc5_)
                        {
                           §§goto(addr69);
                        }
                        §§goto(addr116);
                     }
                  }
                  §§goto(addr69);
               }
            }
            §§goto(addr69);
         }
         addr116:
      }
      
      private function §&!=§(param1:XML) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         this.§3!B§ = param1.@alignH;
         this.§-Q§ = param1.@alignV;
         this.§]P§ = param1.@scaleH;
         if(!_loc4_)
         {
            this.§-=§ = param1.@scaleV;
            if(_loc5_)
            {
               addr47:
               this.§3!@§ = param1.@scaleFunction;
               this.§[6§ = param1.@aspectRatioFixed;
            }
            var _loc2_:String = param1.@scrollRect;
            var _loc3_:String = param1.@scaleOnMouseOver;
            if(_loc5_ || this)
            {
               this.§]&§(_loc2_);
               if(_loc5_ || this)
               {
                  this.§5=§(_loc3_);
               }
            }
            return;
         }
         §§goto(addr47);
      }
      
      private function §5=§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(param1);
            if(_loc2_ || param1)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     §§push(param1);
                     if(_loc2_ || _loc2_)
                     {
                        §§push(§§pop().toUpperCase());
                        if(!_loc2_)
                        {
                        }
                        §§goto(addr70);
                     }
                     param1 = §§pop();
                     if(!_loc3_)
                     {
                        addr70:
                        if(§§pop() == "TRUE")
                        {
                           if(!_loc3_)
                           {
                              addr74:
                              this.get = true;
                           }
                           §§goto(addr77);
                        }
                        addr77:
                        return;
                        §§push(param1);
                     }
                  }
               }
               §§goto(addr74);
            }
            §§goto(addr70);
         }
         §§goto(addr74);
      }
      
      private function §]&§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(param1);
            if(!(_loc2_ && _loc2_))
            {
               §§push(Boolean(§§pop()));
               if(!(_loc2_ && _loc3_))
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        addr64:
                        §§pop();
                        if(!_loc2_)
                        {
                           §§goto(addr71);
                        }
                        §§goto(addr74);
                     }
                  }
                  addr71:
                  §§goto(addr68);
               }
               §§goto(addr64);
            }
            addr68:
            §§goto(addr67);
         }
         addr67:
         if(param1.toUpperCase() == "TRUE")
         {
            if(_loc3_)
            {
               addr74:
               this.§?!G§ = true;
            }
         }
      }
      
      public function readInitialVisibility(param1:XML) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = param1.@visible;
         if(!_loc3_)
         {
            §§push(_loc2_);
            if(_loc4_ || this)
            {
               §§push(Boolean(§§pop()));
               if(_loc4_)
               {
                  §§push(§§pop());
                  if(!(_loc3_ && _loc2_))
                  {
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           §§pop();
                           §§push(_loc2_);
                           if(_loc4_ || _loc3_)
                           {
                              addr54:
                              §§push(§§pop().toUpperCase() == "FALSE");
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr74:
                                 if(§§pop())
                                 {
                                    if(!_loc3_)
                                    {
                                       this.setVisibility(false);
                                       if(_loc4_ || param1)
                                       {
                                          addr93:
                                          §§push(param1.@enabled);
                                          if(_loc4_)
                                          {
                                             addr98:
                                             _loc2_ = §§pop();
                                             if(_loc4_ || this)
                                             {
                                                addr106:
                                                §§push(_loc2_);
                                                if(!(_loc3_ && param1))
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(!(_loc3_ && _loc2_))
                                                   {
                                                      addr132:
                                                      if(§§pop())
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            addr136:
                                                            §§pop();
                                                            addr138:
                                                            §§push(_loc2_.toUpperCase() == "FALSE");
                                                         }
                                                      }
                                                   }
                                                   if(§§pop())
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                      }
                                                   }
                                                   §§goto(addr147);
                                                }
                                                §§goto(addr138);
                                             }
                                             this.setEnabled(false);
                                             §§goto(addr147);
                                          }
                                          §§goto(addr138);
                                          addr87:
                                       }
                                       addr147:
                                       return;
                                    }
                                    §§goto(addr93);
                                 }
                                 else
                                 {
                                    this.setVisibility(true);
                                    if(_loc4_)
                                    {
                                       §§goto(addr93);
                                    }
                                 }
                                 §§goto(addr106);
                              }
                              §§goto(addr136);
                           }
                           §§goto(addr98);
                        }
                        §§goto(addr132);
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr132);
               }
               §§goto(addr74);
            }
            §§goto(addr54);
         }
         §§goto(addr87);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.clear();
            if(!_loc2_)
            {
               §§push(this.mParentContainer);
               if(_loc1_ || this)
               {
                  if(§§pop())
                  {
                     if(!(_loc2_ && this))
                     {
                        this.mParentContainer.mClip.removeChild(this.mClip);
                        addr51:
                     }
                  }
                  do
                  {
                     if(this.mClip.numChildren <= 0)
                     {
                        if(!_loc2_)
                        {
                           break;
                        }
                        §§goto(addr90);
                     }
                     this.mClip.removeChildAt(0);
                  }
                  while(!(_loc2_ && _loc2_));
                  
                  this.mClip = null;
                  if(_loc1_)
                  {
                     §§goto(addr90);
                  }
                  addr90:
                  this.§6T§ = null;
                  return;
               }
               §§goto(addr51);
            }
         }
         §§goto(addr51);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            super.listenerEventOccured(param1,param2);
            if(!_loc3_)
            {
               §§push(this.mParentContainer);
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(!(_loc3_ && param1))
                     {
                        addr54:
                        this.mParentContainer.containerEventOccured(param1,param2,this);
                     }
                  }
                  return;
               }
               §§goto(addr54);
            }
         }
         §§goto(addr54);
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§2!-§ = param1;
            if(!_loc2_)
            {
               this.mClip.visible = this.§2!-§ && this.§>U§;
               addr24:
               if(!_loc2_)
               {
                  §§goto(addr58);
               }
               §§goto(addr68);
            }
            addr58:
            if(this.visible)
            {
               if(!(_loc2_ && this))
               {
                  addr68:
                  addEventListeners();
                  if(_loc2_ && _loc3_)
                  {
                  }
               }
            }
            else
            {
               removeEventListeners();
            }
            return;
         }
         §§goto(addr24);
      }
      
      public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         this.§>U§ = param1;
         this.mClip.visible = this.§2!-§ && this.§>U§;
         if(_loc3_ || this)
         {
            §§push(this.visible);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  addEventListeners();
                  addr71:
                  §§push(this.§?=§);
                  if(!_loc2_)
                  {
                     if(§§pop())
                     {
                        if(_loc3_)
                        {
                           addr89:
                           if(param1)
                           {
                              if(_loc3_ || param1)
                              {
                                 this.mClip.gotoAndPlay(1);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr108:
                                 }
                              }
                           }
                           else
                           {
                              this.mClip.gotoAndStop(1);
                           }
                        }
                        §§goto(addr108);
                     }
                     return;
                  }
                  §§goto(addr89);
               }
               else
               {
                  removeEventListeners();
                  if(_loc3_ || param1)
                  {
                     §§goto(addr71);
                  }
               }
            }
            §§goto(addr89);
         }
         §§goto(addr108);
      }
      
      public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(this.mClip.mouseEnabled != param1)
            {
               if(!_loc2_)
               {
                  this.mClip.mouseEnabled = param1;
                  if(!_loc2_)
                  {
                     addr57:
                     if(this.mClip.mouseChildren != param1)
                     {
                        if(_loc2_ && param1)
                        {
                        }
                     }
                     §§goto(addr73);
                  }
                  this.mClip.mouseChildren = param1;
               }
               §§goto(addr73);
            }
            §§goto(addr57);
         }
         addr73:
      }
      
      public function getParentView() : §0#§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.mClip.x = Math.round(param1);
            if(_loc3_ || param1)
            {
               §§push(this.§6T§);
               if(!(_loc2_ && _loc3_))
               {
                  if(!§§pop())
                  {
                  }
                  §§goto(addr80);
               }
               §§pop().x = this.mClip.x;
               §§goto(addr80);
            }
            §§goto(addr74);
         }
         addr80:
         if(_loc3_ || param1)
         {
            addr74:
            §§push(this.§6T§);
         }
      }
      
      public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.mClip.y = Math.round(param1);
            if(_loc2_)
            {
               §§push(this.§6T§);
               if(_loc2_ || _loc2_)
               {
                  if(!§§pop())
                  {
                  }
                  §§goto(addr59);
               }
               §§pop().y = this.mClip.y;
            }
            addr59:
            if(_loc2_ || _loc2_)
            {
               addr53:
               §§push(this.§6T§);
            }
            return;
         }
         §§goto(addr53);
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
         if(_loc3_)
         {
            super.goToFrame(param1,param2);
            §§push(Boolean(this.mClip));
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(_loc3_ || param2)
                  {
                     §§pop();
                     if(_loc3_ || param2)
                     {
                        §§push(this.mClip is MovieClip);
                        if(_loc3_)
                        {
                           §§goto(addr70);
                        }
                        §§goto(addr72);
                     }
                     §§goto(addr73);
                  }
               }
            }
            addr70:
            if(§§pop())
            {
               addr72:
               if(param2)
               {
                  addr73:
                  this.mClip.gotoAndPlay(param1);
               }
               else
               {
                  this.mClip.gotoAndStop(param1);
               }
            }
            return;
         }
         §§goto(addr73);
      }
      
      public function get viewWidth() : Number
      {
         return this.§`i§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§!j§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§`i§ = param1;
            if(_loc3_ || _loc2_)
            {
               addr44:
               this.§with§();
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§!j§ = param1;
            if(!(_loc3_ && this))
            {
               this.§with§();
            }
         }
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.get;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.get = param1;
         }
      }
   }
}
