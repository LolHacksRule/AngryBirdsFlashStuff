package §@s§
{
   import §0!<§.§#y§;
   import §1;§.§!!1§;
   import §=^§.§`f§;
   import com.rovio.assets.§,u§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §3!?§ extends §'!0§
   {
       
      
      public var mParentContainer:§`f§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §9l§:Boolean = false;
      
      public var §const§:Boolean = true;
      
      public var §"!"§:Boolean = false;
      
      public var §,@§:Boolean = false;
      
      private var §<!%§:§`D§;
      
      private var §89§:Boolean = false;
      
      protected var §0J§:Boolean = false;
      
      private var §8w§:Number;
      
      private var §44§:Number;
      
      private var §20§:Number;
      
      private var §40§:Number;
      
      private var § if§:String;
      
      private var §>Z§:String;
      
      private var §&!B§:String;
      
      private var §[I§:String;
      
      private var §7l§:String;
      
      private var §6x§:String;
      
      public function §3!?§(param1:XML, param2:§`f§, param3:MovieClip = null)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(_loc5_)
         {
            §§push(null);
            if(_loc5_ || param2)
            {
               §§pop().§§slot[4] = §§pop();
               addr34:
               §§push(§§newactivation());
               §§push(null);
               if(!_loc6_)
               {
                  §§pop().§§slot[5] = §§pop();
                  if(!_loc6_)
                  {
                     §§push(§§newactivation());
                     §§push(NaN);
                     if(_loc5_)
                     {
                        §§pop().§§slot[6] = §§pop();
                        §§push(§§newactivation());
                        if(!_loc6_)
                        {
                           §§push(NaN);
                           if(!_loc6_)
                           {
                              §§pop().§§slot[7] = §§pop();
                              if(!(_loc6_ && this))
                              {
                                 addr62:
                                 var tmp:Sprite = null;
                                 var data:XML = param1;
                                 if(_loc5_)
                                 {
                                    §§push(§§newactivation());
                                    if(_loc5_ || param1)
                                    {
                                       §§pop().§§slot[2] = param2;
                                       if(!(_loc6_ && param2))
                                       {
                                          var clip:MovieClip = param3;
                                          if(!_loc6_)
                                          {
                                             this.mParentContainer = parentContainer;
                                             if(!(_loc6_ && param2))
                                             {
                                                this.mName = data.@name;
                                                addr107:
                                                §§push(§§newactivation());
                                                if(!(_loc6_ && param3))
                                                {
                                                   if(§§pop().§§slot[3])
                                                   {
                                                      if(!(_loc6_ && param1))
                                                      {
                                                         this.mClip = clip;
                                                         §§push(this.mParentContainer);
                                                         if(!(_loc6_ && param2))
                                                         {
                                                            if(§§pop())
                                                            {
                                                               addr138:
                                                               §§push(this.mParentContainer);
                                                               if(!_loc6_)
                                                               {
                                                                  §§pop().mClip.addChild(this.mClip);
                                                                  addr292:
                                                                  §§push(§§newactivation());
                                                                  if(!(_loc6_ && param1))
                                                                  {
                                                                     if(§§pop().§§slot[1].@isOverlay.toString().toUpperCase() == "TRUE")
                                                                     {
                                                                        if(_loc5_ || param2)
                                                                        {
                                                                           this.§"!"§ = true;
                                                                           if(_loc5_)
                                                                           {
                                                                              var color:Number = 16777215;
                                                                              addr323:
                                                                              §§push(§§newactivation());
                                                                              §§push(0.5);
                                                                              if(!(_loc6_ && this))
                                                                              {
                                                                                 addr331:
                                                                                 §§push(Number(§§pop()));
                                                                                 if(!(_loc6_ && param3))
                                                                                 {
                                                                                    addr339:
                                                                                    §§pop().§§slot[7] = §§pop();
                                                                                    if(data.@overlayColor.toString() != "")
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          addr348:
                                                                                          §§push(§§newactivation());
                                                                                          if(_loc5_ || param2)
                                                                                          {
                                                                                             addr362:
                                                                                             §§pop().§§slot[6] = Number(parseInt(data.@overlayColor));
                                                                                             addr363:
                                                                                             §§push(§§newactivation());
                                                                                             if(_loc5_ || this)
                                                                                             {
                                                                                                if(§§pop().§§slot[1].@overlayAlpha.toString() != "")
                                                                                                {
                                                                                                   addr376:
                                                                                                   §§push(§§newactivation());
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      §§pop().§§slot[7] = Number(parseFloat(data.@overlayAlpha));
                                                                                                   }
                                                                                                   addr439:
                                                                                                   if(§§pop().§§slot[1].@isBehind.toString().toUpperCase() == "TRUE")
                                                                                                   {
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         addr449:
                                                                                                         §§push(parentContainer);
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            if(§§pop().§"!"§)
                                                                                                            {
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  addr456:
                                                                                                                  §§push(parentContainer);
                                                                                                                  if(_loc5_ || param1)
                                                                                                                  {
                                                                                                                     addr465:
                                                                                                                     §§pop().mClip.setChildIndex(this.mClip,1);
                                                                                                                     addr480:
                                                                                                                     §§push(§§newactivation());
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr475:
                                                                                                                     §§pop().mClip.setChildIndex(this.mClip,0);
                                                                                                                     §§goto(addr480);
                                                                                                                  }
                                                                                                                  §§goto(addr480);
                                                                                                               }
                                                                                                               §§goto(addr507);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(§§newactivation());
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  §§goto(addr475);
                                                                                                                  §§push(§§pop().§§slot[2]);
                                                                                                               }
                                                                                                            }
                                                                                                            if(§§pop().§§slot[1].@animateOnActivation.toString().toUpperCase() == "TRUE")
                                                                                                            {
                                                                                                               this.§,@§ = true;
                                                                                                               addr487:
                                                                                                               if(_loc5_ || param3)
                                                                                                               {
                                                                                                                  addr507:
                                                                                                                  this.mClip.stop();
                                                                                                                  §§goto(addr510);
                                                                                                               }
                                                                                                            }
                                                                                                            addr510:
                                                                                                            super(this.mClip);
                                                                                                            this.readInitialVisibility(data);
                                                                                                            §§goto(addr518);
                                                                                                         }
                                                                                                         §§goto(addr465);
                                                                                                      }
                                                                                                      §§goto(addr456);
                                                                                                   }
                                                                                                   §§goto(addr465);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr439);
                                                                                             addr356:
                                                                                          }
                                                                                          §§goto(addr449);
                                                                                       }
                                                                                       §§push(§§newactivation());
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          addr389:
                                                                                          §§pop().§§slot[8] = this.getParentView().§<6§(color,alpha);
                                                                                          addr398:
                                                                                          this.mClip.addChildAt(tmp,0);
                                                                                          if(_loc5_ || param1)
                                                                                          {
                                                                                             addr411:
                                                                                             §§push(Boolean(this.mParentContainer));
                                                                                             if(_loc5_ || param1)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(!(_loc6_ && param3))
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      if(!(_loc6_ && param2))
                                                                                                      {
                                                                                                         §§goto(addr439);
                                                                                                         §§push(§§newactivation());
                                                                                                      }
                                                                                                      §§goto(addr456);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr439);
                                                                                          }
                                                                                          §§goto(addr507);
                                                                                       }
                                                                                       §§goto(addr439);
                                                                                    }
                                                                                    §§goto(addr363);
                                                                                 }
                                                                                 §§goto(addr362);
                                                                              }
                                                                              §§goto(addr339);
                                                                           }
                                                                           §§goto(addr487);
                                                                        }
                                                                        §§goto(addr507);
                                                                     }
                                                                     §§goto(addr411);
                                                                  }
                                                                  §§goto(addr439);
                                                                  addr146:
                                                               }
                                                               §§goto(addr411);
                                                            }
                                                            §§goto(addr146);
                                                         }
                                                         else
                                                         {
                                                            addr212:
                                                            if(§§pop())
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  this.mClip = this.mParentContainer.mClip.getChildByName(this.mName) as MovieClip;
                                                                  if(this.mClip == null)
                                                                  {
                                                                     if(!(_loc6_ && param2))
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        §§push("Asset instance not found!! [");
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(§§pop() + this.mName);
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§push("] parent: [");
                                                                              if(_loc5_)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!(_loc6_ && param1))
                                                                                 {
                                                                                    addr274:
                                                                                    §§push(§§pop() + this.mParentContainer.mName);
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       §§push("]");
                                                                                    }
                                                                                    §§pop().§§slot[5] = §§pop();
                                                                                    §#y§.log(error);
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       function():void
                                                                                       {
                                                                                          throw new Error(error);
                                                                                       }();
                                                                                       if(!(_loc6_ && param3))
                                                                                       {
                                                                                          §§goto(addr292);
                                                                                       }
                                                                                       §§goto(addr376);
                                                                                    }
                                                                                    §§goto(addr411);
                                                                                 }
                                                                                 §§goto(addr274);
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                           }
                                                                        }
                                                                        §§goto(addr274);
                                                                     }
                                                                     §§goto(addr456);
                                                                  }
                                                                  §§goto(addr292);
                                                               }
                                                               §§goto(addr348);
                                                            }
                                                         }
                                                         §§goto(addr292);
                                                      }
                                                      §§goto(addr398);
                                                   }
                                                   else
                                                   {
                                                      §§push(§§newactivation());
                                                      if(_loc5_ || param2)
                                                      {
                                                         if(§§pop().§§slot[1].@fromLibrary.toString().toUpperCase() == "TRUE")
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               var cls:Class = §,u§.§'[§(this.mName);
                                                               if(!_loc6_)
                                                               {
                                                                  this.mClip = new cls();
                                                                  §§push(this.mParentContainer);
                                                                  if(!(_loc6_ && param1))
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        addr187:
                                                                        §§push(this.mParentContainer);
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§pop().mClip.addChild(this.mClip);
                                                                           if(!(_loc6_ && param1))
                                                                           {
                                                                              addr202:
                                                                              §§goto(addr292);
                                                                           }
                                                                           §§goto(addr376);
                                                                        }
                                                                        §§goto(addr411);
                                                                     }
                                                                     §§goto(addr202);
                                                                  }
                                                                  §§goto(addr411);
                                                               }
                                                            }
                                                            §§goto(addr465);
                                                         }
                                                         else
                                                         {
                                                            §§push(this.mParentContainer);
                                                            if(!(_loc6_ && param2))
                                                            {
                                                               §§goto(addr212);
                                                            }
                                                         }
                                                         §§goto(addr411);
                                                      }
                                                   }
                                                   §§goto(addr389);
                                                }
                                                §§goto(addr356);
                                             }
                                          }
                                          §§goto(addr138);
                                       }
                                       §§goto(addr187);
                                    }
                                    §§goto(addr449);
                                 }
                                 §§goto(addr107);
                              }
                              addr518:
                              this.§ !I§(data);
                              if(!_loc6_)
                              {
                                 this.§`L§(data);
                              }
                              return;
                           }
                           §§goto(addr331);
                        }
                        §§goto(addr323);
                     }
                     §§goto(addr339);
                  }
                  §§goto(addr323);
               }
            }
            §§goto(addr62);
         }
         §§goto(addr34);
      }
      
      private function § Y§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§<!%§);
         if(_loc1_ || _loc1_)
         {
            if(!§§pop())
            {
               if(!_loc2_)
               {
                  this.§<!%§ = new §`D§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§20§,this.§40§,this.§ if§,this.§>Z§,this.§&!B§,this.§[I§,this.§6x§,this.§7l§);
                  if(!_loc2_)
                  {
                     addr72:
                     this.§<!%§.§5!C§(this.§8w§,this.§44§);
                     addr70:
                     if(!(_loc2_ && _loc2_))
                     {
                        this.mClip.x = this.§<!%§.x;
                        if(!_loc1_)
                        {
                        }
                        §§goto(addr121);
                     }
                  }
                  this.mClip.y = this.§<!%§.y;
                  if(!(_loc2_ && _loc2_))
                  {
                     this.mClip.scaleX = this.§<!%§.scaleX;
                     addr121:
                     this.mClip.scaleY = this.§<!%§.scaleY;
                     §§goto(addr127);
                  }
                  addr127:
                  if(this.§89§)
                  {
                     if(_loc1_)
                     {
                        this.mClip.scrollRect = new Rectangle(0,0,this.§20§,this.§40§);
                     }
                  }
                  return;
               }
               §§goto(addr121);
            }
            §§goto(addr70);
         }
         §§goto(addr72);
      }
      
      private function § !I§(param1:XML) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§8w§ = _loc2_;
            this.§44§ = _loc3_;
            §§goto(addr93);
         }
         else
         {
            §§push(_loc2_);
            if(!_loc5_)
            {
               §§push(0);
               if(!_loc5_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(!_loc5_)
                     {
                        this.§8w§ = this.mParentContainer.viewWidth;
                     }
                  }
                  else
                  {
                     this.§8w§ = _loc2_;
                  }
                  addr63:
                  §§push(_loc3_);
                  §§push(0);
               }
               if(§§pop() == §§pop())
               {
                  this.§44§ = this.mParentContainer.viewHeight;
                  if(_loc4_ || this)
                  {
                     §§goto(addr93);
                  }
               }
               else
               {
                  this.§44§ = _loc3_;
                  if(!_loc5_)
                  {
                     addr93:
                     this.§20§ = this.§8w§;
                     if(!(_loc5_ && this))
                     {
                        addr104:
                        this.§40§ = this.§44§;
                     }
                     return;
                  }
               }
               §§goto(addr104);
            }
            §§goto(addr63);
         }
      }
      
      private function §`L§(param1:XML) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         this.§ if§ = param1.@alignH;
         if(_loc4_ || this)
         {
            this.§>Z§ = param1.@alignV;
            if(_loc4_)
            {
               this.§&!B§ = param1.@scaleH;
               addr33:
               if(_loc4_)
               {
                  this.§[I§ = param1.@scaleV;
                  if(!(_loc5_ && param1))
                  {
                     this.§7l§ = param1.@scaleFunction;
                     addr60:
                  }
               }
               this.§6x§ = param1.@aspectRatioFixed;
               var _loc2_:String = param1.@scrollRect;
               var _loc3_:String = param1.@scaleOnMouseOver;
               if(!(_loc5_ && this))
               {
                  this.§ use§(_loc2_);
                  if(_loc4_)
                  {
                     addr98:
                     this.§21§(_loc3_);
                  }
                  return;
               }
               §§goto(addr98);
            }
            §§goto(addr60);
         }
         §§goto(addr33);
      }
      
      private function §21§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(param1);
            if(_loc3_ || _loc3_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr45:
                     §§push(param1);
                     if(_loc3_ || _loc2_)
                     {
                        addr63:
                        §§push(§§pop().toUpperCase());
                        if(!_loc2_)
                        {
                           §§goto(addr67);
                        }
                        §§goto(addr76);
                     }
                     addr67:
                     param1 = §§pop();
                     if(_loc3_ || this)
                     {
                        addr76:
                        if(param1 == "TRUE")
                        {
                           if(_loc2_ && _loc2_)
                           {
                           }
                        }
                        §§goto(addr88);
                     }
                     this.§0J§ = true;
                     §§goto(addr88);
                  }
                  §§goto(addr76);
               }
               addr88:
               return;
            }
            §§goto(addr63);
         }
         §§goto(addr45);
      }
      
      private function § use§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            if(!(_loc2_ && param1))
            {
               §§push(Boolean(§§pop()));
               if(!(_loc2_ && _loc2_))
               {
                  if(§§pop())
                  {
                     if(_loc3_ || _loc2_)
                     {
                        §§pop();
                        if(_loc3_)
                        {
                           addr71:
                           if(param1.toUpperCase() == "TRUE")
                           {
                              if(!_loc3_)
                              {
                              }
                           }
                           §§goto(addr77);
                        }
                        this.§89§ = true;
                        §§goto(addr77);
                     }
                  }
               }
            }
            §§goto(addr71);
         }
         addr77:
      }
      
      public function readInitialVisibility(param1:XML) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = param1.@visible;
         if(!_loc3_)
         {
            §§push(_loc2_);
            if(!(_loc3_ && param1))
            {
               §§push(Boolean(§§pop()));
               if(!_loc3_)
               {
                  §§push(§§pop());
                  if(_loc4_ || this)
                  {
                     if(§§pop())
                     {
                        if(_loc4_)
                        {
                           §§pop();
                           if(_loc4_ || _loc2_)
                           {
                              §§push(_loc2_);
                              if(_loc4_)
                              {
                                 §§push(§§pop().toUpperCase() == "FALSE");
                                 if(_loc4_)
                                 {
                                    addr71:
                                    if(§§pop())
                                    {
                                       if(!_loc3_)
                                       {
                                          addr74:
                                          this.setVisibility(false);
                                          addr81:
                                          §§push(param1.@enabled);
                                          if(!_loc3_)
                                          {
                                             addr96:
                                             _loc2_ = §§pop();
                                             §§push(_loc2_);
                                             if(!_loc3_)
                                             {
                                                §§push(Boolean(§§pop()));
                                                if(!(_loc3_ && param1))
                                                {
                                                   addr109:
                                                   if(§§pop())
                                                   {
                                                   }
                                                   §§goto(addr117);
                                                }
                                                §§goto(addr112);
                                             }
                                          }
                                          addr117:
                                          if(_loc4_)
                                          {
                                             addr112:
                                             §§pop();
                                             §§push(_loc2_);
                                          }
                                          if(§§pop())
                                          {
                                             addr118:
                                             this.setEnabled(false);
                                          }
                                          return;
                                          §§push(§§pop().toUpperCase() == "FALSE");
                                          addr77:
                                       }
                                       §§goto(addr118);
                                    }
                                    else
                                    {
                                       this.setVisibility(true);
                                    }
                                    §§goto(addr81);
                                 }
                                 §§goto(addr112);
                              }
                              §§goto(addr96);
                           }
                           §§goto(addr77);
                        }
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr109);
               }
               §§goto(addr117);
            }
            §§goto(addr96);
         }
         §§goto(addr74);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.clear();
            if(_loc1_ || _loc1_)
            {
               §§push(this.mParentContainer);
               if(_loc1_ || _loc2_)
               {
                  if(!§§pop())
                  {
                  }
                  §§goto(addr70);
               }
               §§pop().mClip.removeChild(this.mClip);
               §§goto(addr70);
            }
            §§goto(addr54);
         }
         addr70:
         if(_loc1_)
         {
            addr54:
            §§push(this.mParentContainer);
         }
         do
         {
            if(this.mClip.numChildren <= 0)
            {
               if(_loc1_ || _loc2_)
               {
                  this.mClip = null;
                  if(_loc1_)
                  {
                     break;
                  }
               }
               §§goto(addr98);
            }
            this.mClip.removeChildAt(0);
         }
         while(!_loc2_);
         
         this.§<!%§ = null;
         addr98:
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            super.listenerEventOccured(param1,param2);
            if(!_loc3_)
            {
               §§push(this.mParentContainer);
               if(_loc4_)
               {
                  if(!§§pop())
                  {
                  }
                  §§goto(addr53);
               }
               §§pop().containerEventOccured(param1,param2,this);
               §§goto(addr53);
            }
            §§goto(addr47);
         }
         addr53:
         if(_loc4_)
         {
            addr47:
            §§push(this.mParentContainer);
         }
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§const§ = param1;
            if(_loc2_)
            {
               this.mClip.visible = this.§const§ && this.§9l§;
               if(!_loc3_)
               {
                  if(this.visible)
                  {
                     if(!_loc3_)
                     {
                        addr67:
                        addEventListeners();
                        if(_loc2_)
                        {
                           addr71:
                        }
                     }
                     §§goto(addr71);
                  }
                  else
                  {
                     removeEventListeners();
                  }
               }
               return;
            }
            §§goto(addr67);
         }
         §§goto(addr71);
      }
      
      public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§9l§ = param1;
            if(_loc3_)
            {
               this.mClip.visible = this.§const§ && this.§9l§;
               §§push(this.visible);
               if(_loc3_ || _loc2_)
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        addEventListeners();
                        addr75:
                     }
                     §§goto(addr75);
                  }
                  else
                  {
                     removeEventListeners();
                  }
                  §§push(this.§,@§);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr87);
                  }
                  §§goto(addr91);
               }
               addr87:
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr91:
                     if(!param1)
                     {
                        this.mClip.gotoAndStop(1);
                     }
                     §§goto(addr101);
                  }
                  this.mClip.gotoAndPlay(1);
               }
               addr101:
               return;
            }
            §§goto(addr91);
         }
         §§goto(addr75);
      }
      
      public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(this.mClip.mouseEnabled != param1)
            {
               if(_loc3_)
               {
                  this.mClip.mouseEnabled = param1;
                  if(_loc2_ && this)
                  {
                  }
                  §§goto(addr69);
               }
            }
            if(this.mClip.mouseChildren != param1)
            {
               if(!_loc2_)
               {
                  §§goto(addr69);
               }
            }
            §§goto(addr69);
         }
         addr69:
         this.mClip.mouseChildren = param1;
      }
      
      public function getParentView() : §!!1§
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
            if(_loc3_ || this)
            {
               §§push(this.§<!%§);
               if(!(_loc2_ && _loc2_))
               {
                  if(!§§pop())
                  {
                  }
                  §§goto(addr70);
               }
               §§pop().x = this.mClip.x;
               §§goto(addr70);
            }
            §§goto(addr64);
         }
         addr70:
         if(!_loc2_)
         {
            addr64:
            §§push(this.§<!%§);
         }
      }
      
      public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.mClip.y = Math.round(param1);
            if(!_loc2_)
            {
               §§push(this.§<!%§);
               if(_loc3_ || param1)
               {
                  if(!§§pop())
                  {
                  }
                  §§goto(addr75);
               }
               §§pop().y = this.mClip.y;
            }
            addr75:
            if(!(_loc2_ && _loc3_))
            {
               addr69:
               §§push(this.§<!%§);
            }
            return;
         }
         §§goto(addr69);
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
         if(_loc3_ || _loc3_)
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
         if(!(_loc3_ && param2))
         {
            super.goToFrame(param1,param2);
         }
         §§push(Boolean(this.mClip));
         if(!(_loc3_ && this))
         {
            if(§§pop())
            {
               if(_loc4_ || param1)
               {
                  addr57:
                  §§pop();
                  §§push(this.mClip is MovieClip);
                  if(!(_loc3_ && param2))
                  {
                     §§goto(addr79);
                  }
               }
               §§goto(addr83);
            }
            addr79:
            if(§§pop())
            {
               if(!_loc3_)
               {
                  addr83:
                  if(!param2)
                  {
                     this.mClip.gotoAndStop(param1);
                  }
                  §§goto(addr100);
               }
               this.mClip.gotoAndPlay(param1);
               if(_loc4_ || _loc3_)
               {
               }
            }
            addr100:
            return;
         }
         §§goto(addr57);
      }
      
      public function get viewWidth() : Number
      {
         return this.§8w§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§44§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§8w§ = param1;
            if(_loc3_ || _loc2_)
            {
               this.§ Y§();
            }
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§44§ = param1;
            if(!(_loc3_ && param1))
            {
               this.§ Y§();
            }
         }
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
   }
}
