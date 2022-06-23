package §0!#§
{
   import §%4§.§4!=§;
   import §-!D§.§4!,§;
   import §3a§.§7!+§;
   import com.rovio.assets.§]!>§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §'!,§ extends §-P§
   {
       
      
      public var mParentContainer:§4!=§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §`!L§:Boolean = false;
      
      public var §"a§:Boolean = true;
      
      public var §]!0§:Boolean = false;
      
      public var §0-§:Boolean = false;
      
      private var §"!9§:§"F§;
      
      private var §?G§:Boolean = false;
      
      protected var §4%§:Boolean = false;
      
      private var §5n§:Number;
      
      private var §@!$§:Number;
      
      private var §7!H§:Number;
      
      private var §'z§:Number;
      
      private var §[O§:String;
      
      private var §<k§:String;
      
      private var §7!A§:String;
      
      private var §8f§:String;
      
      private var §-?§:String;
      
      private var §9§:String;
      
      public function §'!,§(param1:XML, param2:§4!=§, param3:MovieClip = null)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc6_)
         {
            §§push(null);
            if(!_loc6_)
            {
               §§pop().§§slot[5] = §§pop();
               §§push(§§newactivation());
               if(_loc5_ || param1)
               {
                  §§push(null);
                  if(_loc5_)
                  {
                     §§pop().§§slot[6] = §§pop();
                     §§push(§§newactivation());
                     if(_loc5_ || param1)
                     {
                        §§pop().§§slot[7] = NaN;
                        var alpha:Number = NaN;
                        §§push(§§newactivation());
                        if(_loc5_)
                        {
                           addr58:
                           §§pop().§§slot[9] = null;
                           if(!_loc6_)
                           {
                              var data:XML = param1;
                              if(_loc5_)
                              {
                                 §§push(§§newactivation());
                                 if(!(_loc6_ && param3))
                                 {
                                    §§pop().§§slot[2] = param2;
                                    if(!(_loc6_ && this))
                                    {
                                       addr85:
                                       var clip:MovieClip = param3;
                                       this.mParentContainer = parentContainer;
                                       this.mName = data.@name;
                                       §§push(§§newactivation());
                                       if(!_loc6_)
                                       {
                                          if(§§pop().§§slot[3])
                                          {
                                             if(!(_loc6_ && param2))
                                             {
                                                this.mClip = clip;
                                                if(!(_loc6_ && param1))
                                                {
                                                   §§push(this.mParentContainer);
                                                   if(_loc5_ || param1)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc6_ && param1))
                                                         {
                                                            §§push(this.mParentContainer);
                                                            if(!_loc6_)
                                                            {
                                                               addr140:
                                                               §§pop().mClip.addChild(this.mClip);
                                                               if(_loc5_)
                                                               {
                                                                  addr308:
                                                                  if(data.@isOverlay.toString().toUpperCase() == "TRUE")
                                                                  {
                                                                     this.§]!0§ = true;
                                                                     if(_loc5_ || param1)
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(!(_loc6_ && param2))
                                                                        {
                                                                           §§pop().§§slot[7] = Number(16777215);
                                                                           addr337:
                                                                           alpha = 0.5;
                                                                           if(_loc5_ || param2)
                                                                           {
                                                                              addr348:
                                                                              addr347:
                                                                              if(data.@overlayColor.toString() != "")
                                                                              {
                                                                                 addr354:
                                                                                 var color:Number = parseInt(data.@overlayColor);
                                                                                 addr353:
                                                                              }
                                                                              §§push(§§newactivation());
                                                                              if(!(_loc6_ && param1))
                                                                              {
                                                                                 if(§§pop().§§slot[1].@overlayAlpha.toString() != "")
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       addr376:
                                                                                       §§push(§§newactivation());
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          addr379:
                                                                                          §§pop().§§slot[8] = Number(parseFloat(data.@overlayAlpha));
                                                                                          addr386:
                                                                                          §§push(§§newactivation());
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             §§pop().§§slot[9] = this.getParentView().§>W§(color,alpha);
                                                                                             this.mClip.addChildAt(tmp,0);
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                addr406:
                                                                                                §§push(Boolean(this.mParentContainer));
                                                                                                if(_loc5_ || param1)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(_loc5_ || param3)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         §§push(data.@isBehind.toString().toUpperCase() == "TRUE");
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc5_ || param1)
                                                                                                   {
                                                                                                      addr441:
                                                                                                      §§push(§§newactivation());
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         addr444:
                                                                                                         §§push(§§pop().§§slot[2]);
                                                                                                         if(_loc5_ || param2)
                                                                                                         {
                                                                                                            if(§§pop().§]!0§)
                                                                                                            {
                                                                                                               addr454:
                                                                                                               §§push(§§newactivation());
                                                                                                               if(_loc5_ || param2)
                                                                                                               {
                                                                                                                  addr462:
                                                                                                                  §§push(§§pop().§§slot[2]);
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     §§pop().mClip.setChildIndex(this.mClip,1);
                                                                                                                     addr480:
                                                                                                                     if(data.@animateOnActivation.toString().toUpperCase() == "TRUE")
                                                                                                                     {
                                                                                                                        addr487:
                                                                                                                        this.§0-§ = true;
                                                                                                                        if(!(_loc6_ && param1))
                                                                                                                        {
                                                                                                                           addr497:
                                                                                                                           this.mClip.stop();
                                                                                                                           addr500:
                                                                                                                           §§push(§§newactivation());
                                                                                                                           if(!(_loc6_ && param3))
                                                                                                                           {
                                                                                                                              addr508:
                                                                                                                              §§pop().§§slot[4] = this.mClip;
                                                                                                                              if(this.mClip.MouseHitArea)
                                                                                                                              {
                                                                                                                                 addr516:
                                                                                                                                 this.mClip.MouseHitArea.alpha = 0;
                                                                                                                                 if(_loc5_ || param1)
                                                                                                                                 {
                                                                                                                                    addr528:
                                                                                                                                    §§push(§§newactivation());
                                                                                                                                    if(_loc5_ || param2)
                                                                                                                                    {
                                                                                                                                       addr536:
                                                                                                                                       §§pop().§§slot[4] = this.mClip.MouseHitArea;
                                                                                                                                       addr552:
                                                                                                                                       targetSprite.visible = true;
                                                                                                                                       addr555:
                                                                                                                                       super(targetSprite);
                                                                                                                                       if(!_loc5_)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                       return;
                                                                                                                                       addr551:
                                                                                                                                    }
                                                                                                                                    §§goto(addr552);
                                                                                                                                 }
                                                                                                                                 §§goto(addr555);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr552);
                                                                                                                        }
                                                                                                                        addr561:
                                                                                                                        this.readInitialVisibility(data);
                                                                                                                        addr565:
                                                                                                                        this.§+!5§(data);
                                                                                                                        if(!(_loc6_ && this))
                                                                                                                        {
                                                                                                                           this.§`!,§(data);
                                                                                                                        }
                                                                                                                        §§goto(addr552);
                                                                                                                     }
                                                                                                                     §§goto(addr500);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr475:
                                                                                                                     §§pop().mClip.setChildIndex(this.mClip,0);
                                                                                                                     §§goto(addr480);
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr474:
                                                                                                                  §§goto(addr475);
                                                                                                                  §§push(§§pop().§§slot[2]);
                                                                                                               }
                                                                                                               §§goto(addr475);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(§§newactivation());
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  §§goto(addr474);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr552);
                                                                                                         }
                                                                                                         §§goto(addr475);
                                                                                                      }
                                                                                                      §§goto(addr462);
                                                                                                   }
                                                                                                   §§goto(addr552);
                                                                                                }
                                                                                                §§goto(addr480);
                                                                                             }
                                                                                             §§goto(addr497);
                                                                                          }
                                                                                          §§goto(addr480);
                                                                                       }
                                                                                       §§goto(addr462);
                                                                                    }
                                                                                    §§goto(addr551);
                                                                                 }
                                                                                 §§goto(addr386);
                                                                              }
                                                                              §§goto(addr480);
                                                                           }
                                                                           §§goto(addr454);
                                                                        }
                                                                        §§goto(addr348);
                                                                     }
                                                                     §§goto(addr386);
                                                                  }
                                                                  §§goto(addr406);
                                                                  addr146:
                                                               }
                                                               §§goto(addr376);
                                                            }
                                                            else
                                                            {
                                                               addr188:
                                                               if(§§pop())
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     §§push(this.mParentContainer);
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§pop().mClip.addChild(this.mClip);
                                                                        addr199:
                                                                     }
                                                                     else
                                                                     {
                                                                        addr209:
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc5_ || param1)
                                                                           {
                                                                              addr217:
                                                                              this.mClip = this.mParentContainer.mClip.getChildByName(this.mName) as MovieClip;
                                                                              if(_loc5_)
                                                                              {
                                                                                 if(this.mClip == null)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       addr235:
                                                                                       §§push(§§newactivation());
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§push("Asset instance not found!! [");
                                                                                          if(!(_loc6_ && param3))
                                                                                          {
                                                                                             §§push(§§pop() + this.mName);
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                §§push("] parent: [");
                                                                                                if(_loc5_ || this)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(!(_loc6_ && param3))
                                                                                                   {
                                                                                                      §§push(§§pop() + this.mParentContainer.mName);
                                                                                                      if(_loc5_ || param1)
                                                                                                      {
                                                                                                      }
                                                                                                      addr290:
                                                                                                      §§pop().§§slot[6] = §§pop();
                                                                                                      §7!+§.log(error);
                                                                                                      if(_loc5_ || param3)
                                                                                                      {
                                                                                                         function():void
                                                                                                         {
                                                                                                            throw new Error(error);
                                                                                                         }();
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            §§goto(addr308);
                                                                                                         }
                                                                                                         §§goto(addr347);
                                                                                                      }
                                                                                                      §§goto(addr441);
                                                                                                   }
                                                                                                   §§push("]");
                                                                                                }
                                                                                                §§push(§§pop() + §§pop());
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr290);
                                                                                       }
                                                                                       §§goto(addr337);
                                                                                    }
                                                                                    §§goto(addr516);
                                                                                 }
                                                                                 §§goto(addr308);
                                                                              }
                                                                              §§goto(addr353);
                                                                           }
                                                                           §§goto(addr386);
                                                                        }
                                                                     }
                                                                     §§goto(addr308);
                                                                  }
                                                                  §§goto(addr290);
                                                               }
                                                               §§goto(addr199);
                                                            }
                                                         }
                                                         §§goto(addr235);
                                                      }
                                                      §§goto(addr146);
                                                   }
                                                   §§goto(addr140);
                                                }
                                                §§goto(addr565);
                                             }
                                             else
                                             {
                                                addr163:
                                                §§push(§§newactivation());
                                                if(_loc5_ || param2)
                                                {
                                                   §§pop().§§slot[5] = §]!>§.§8!@§(this.mName);
                                                   if(!_loc6_)
                                                   {
                                                      this.mClip = new cls();
                                                      §§push(this.mParentContainer);
                                                      if(_loc5_)
                                                      {
                                                         §§goto(addr188);
                                                      }
                                                      §§goto(addr406);
                                                   }
                                                   §§goto(addr217);
                                                }
                                             }
                                             §§goto(addr354);
                                          }
                                          else
                                          {
                                             §§push(§§newactivation());
                                             if(!(_loc6_ && param2))
                                             {
                                                if(§§pop().§§slot[1].@fromLibrary.toString().toUpperCase() == "TRUE")
                                                {
                                                   if(_loc5_)
                                                   {
                                                      §§goto(addr163);
                                                   }
                                                   §§goto(addr561);
                                                }
                                                else
                                                {
                                                   §§push(this.mParentContainer);
                                                   if(!(_loc6_ && param2))
                                                   {
                                                      §§goto(addr209);
                                                   }
                                                }
                                                §§goto(addr406);
                                             }
                                          }
                                          §§goto(addr379);
                                       }
                                       §§goto(addr508);
                                    }
                                    §§goto(addr528);
                                 }
                                 §§goto(addr444);
                              }
                              §§goto(addr487);
                           }
                           §§goto(addr552);
                        }
                        §§goto(addr85);
                     }
                     §§goto(addr536);
                  }
               }
               §§goto(addr348);
            }
            §§goto(addr58);
         }
         §§goto(addr348);
      }
      
      private function §!!#§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§"!9§);
            if(_loc1_ || _loc1_)
            {
               if(!§§pop())
               {
                  this.§"!9§ = new §"F§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§7!H§,this.§'z§,this.§[O§,this.§<k§,this.§7!A§,this.§8f§,this.§9§,this.§-?§);
               }
               §§push(this.§"!9§);
            }
            §§pop().§7!'§(this.§5n§,this.§@!$§);
            this.mClip.x = this.§"!9§.x;
            this.mClip.y = this.§"!9§.y;
            this.mClip.scaleX = this.§"!9§.scaleX;
            if(_loc1_ || _loc1_)
            {
               this.mClip.scaleY = this.§"!9§.scaleY;
               if(!(_loc2_ && _loc1_))
               {
                  if(this.§?G§)
                  {
                     if(!_loc2_)
                     {
                        addr133:
                        this.mClip.scrollRect = new Rectangle(0,0,this.§7!H§,this.§'z§);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr133);
      }
      
      private function §+!5§(param1:XML) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            if(_loc4_)
            {
               this.§5n§ = _loc2_;
               if(!_loc5_)
               {
                  this.§@!$§ = _loc3_;
                  if(!(_loc4_ || param1))
                  {
                     addr67:
                     this.§5n§ = this.mParentContainer.viewWidth;
                     if(_loc3_ == 0)
                     {
                        if(_loc4_ || _loc3_)
                        {
                           this.§@!$§ = this.mParentContainer.viewHeight;
                           addr103:
                        }
                        §§goto(addr115);
                     }
                     else
                     {
                        this.§@!$§ = _loc3_;
                     }
                  }
                  addr107:
                  this.§7!H§ = this.§5n§;
                  this.§'z§ = this.§@!$§;
                  §§goto(addr115);
               }
               §§goto(addr103);
            }
            addr115:
            return;
         }
         §§push(_loc2_);
         if(!_loc5_)
         {
            §§push(0);
            if(!(_loc5_ && param1))
            {
               if(§§pop() == §§pop())
               {
                  §§goto(addr67);
               }
               else
               {
                  this.§5n§ = _loc2_;
                  if(!_loc5_)
                  {
                     §§goto(addr67);
                  }
               }
               §§goto(addr107);
            }
            §§goto(addr67);
         }
         §§goto(addr67);
      }
      
      private function §`!,§(param1:XML) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         this.§[O§ = param1.@alignH;
         if(_loc5_ || _loc2_)
         {
            this.§<k§ = param1.@alignV;
            if(!_loc4_)
            {
               addr44:
               this.§7!A§ = param1.@scaleH;
               this.§8f§ = param1.@scaleV;
            }
            this.§-?§ = param1.@scaleFunction;
            this.§9§ = param1.@aspectRatioFixed;
            var _loc2_:String = param1.@scrollRect;
            var _loc3_:String = param1.@scaleOnMouseOver;
            if(!(_loc4_ && _loc2_))
            {
               this.§9L§(_loc2_);
               if(_loc5_)
               {
                  addr90:
                  this.§%B§(_loc3_);
               }
               return;
            }
            §§goto(addr90);
         }
         §§goto(addr44);
      }
      
      private function §%B§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            if(!(_loc2_ && this))
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc2_)
                  {
                     §§push(param1);
                     if(_loc3_)
                     {
                        §§goto(addr58);
                     }
                     §§goto(addr67);
                  }
                  §§goto(addr75);
               }
               §§goto(addr67);
            }
            addr58:
            §§push(§§pop().toUpperCase());
            if(_loc3_ || _loc2_)
            {
               addr67:
               param1 = §§pop();
               §§goto(addr78);
            }
            if(§§pop() == "TRUE")
            {
               if(!_loc2_)
               {
                  addr75:
                  this.§4%§ = true;
               }
               §§goto(addr78);
            }
            addr78:
            if(_loc3_)
            {
               §§push(param1);
            }
            return;
         }
         §§goto(addr75);
      }
      
      private function §9L§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            if(_loc3_ || _loc2_)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc2_ && this))
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        addr59:
                        §§pop();
                        §§goto(addr79);
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc3_ || _loc2_)
                     {
                        §§goto(addr79);
                     }
                  }
                  addr79:
                  if(_loc3_ || _loc2_)
                  {
                     addr68:
                     §§push(param1.toUpperCase() == "TRUE");
                  }
                  this.§?G§ = true;
                  return;
               }
               §§goto(addr59);
            }
            §§goto(addr68);
         }
         §§goto(addr59);
      }
      
      public function readInitialVisibility(param1:XML) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = param1.@visible;
         §§push(_loc2_);
         if(!_loc3_)
         {
            §§push(Boolean(§§pop()));
            if(_loc4_ || this)
            {
               §§push(§§pop());
               if(_loc4_ || this)
               {
                  if(§§pop())
                  {
                     if(_loc4_ || this)
                     {
                        §§pop();
                        §§push(_loc2_);
                        if(_loc4_)
                        {
                           §§push(§§pop().toUpperCase() == "FALSE");
                           if(!(_loc3_ && param1))
                           {
                              addr72:
                              if(§§pop())
                              {
                                 this.setVisibility(false);
                                 if(!_loc3_)
                                 {
                                    addr84:
                                    §§push(param1.@enabled);
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       _loc2_ = §§pop();
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          addr102:
                                          §§push(_loc2_);
                                          if(_loc4_ || _loc3_)
                                          {
                                          }
                                          addr134:
                                          if(§§pop().toUpperCase() == "FALSE")
                                          {
                                             if(!_loc3_)
                                             {
                                                this.setEnabled(false);
                                             }
                                          }
                                       }
                                       §§goto(addr143);
                                    }
                                    §§push(Boolean(§§pop()));
                                    if(!_loc3_)
                                    {
                                       addr124:
                                       if(§§pop())
                                       {
                                          if(_loc4_ || _loc3_)
                                          {
                                             addr132:
                                             §§pop();
                                             §§goto(addr134);
                                             §§push(_loc2_);
                                          }
                                       }
                                    }
                                    §§goto(addr134);
                                 }
                                 addr143:
                                 return;
                              }
                              this.setVisibility(true);
                              if(_loc4_)
                              {
                                 §§goto(addr84);
                              }
                              §§goto(addr102);
                           }
                        }
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr72);
               }
               §§goto(addr124);
            }
            §§goto(addr132);
         }
         §§goto(addr102);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.clear();
            if(_loc1_)
            {
               §§push(this.mParentContainer);
               if(_loc1_)
               {
                  if(§§pop())
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        this.mParentContainer.mClip.removeChild(this.mClip);
                        addr46:
                     }
                  }
                  do
                  {
                     if(this.mClip.numChildren <= 0)
                     {
                        if(!(_loc2_ && _loc1_))
                        {
                           this.mClip = null;
                           if(!_loc2_)
                           {
                              break;
                           }
                        }
                        §§goto(addr88);
                     }
                     this.mClip.removeChildAt(0);
                  }
                  while(_loc1_);
                  
                  this.§"!9§ = null;
                  addr88:
                  return;
               }
               §§goto(addr46);
            }
         }
         §§goto(addr46);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            super.listenerEventOccured(param1,param2);
            if(!_loc4_)
            {
               addr39:
               §§push(this.mParentContainer);
               if(_loc3_)
               {
                  if(!§§pop())
                  {
                  }
                  §§goto(addr57);
               }
               §§pop().containerEventOccured(param1,param2,this);
            }
            addr57:
            if(!(_loc4_ && param2))
            {
               §§push(this.mParentContainer);
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§"a§ = param1;
            if(_loc3_ || this)
            {
               this.mClip.visible = this.§"a§ && this.§`!L§;
               if(!_loc2_)
               {
                  §§goto(addr63);
               }
               §§goto(addr77);
            }
         }
         addr63:
         if(this.visible)
         {
            if(!_loc2_)
            {
               addEventListeners();
               if(_loc3_ || this)
               {
                  addr77:
               }
            }
         }
         else
         {
            removeEventListeners();
         }
      }
      
      public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§`!L§ = param1;
            this.mClip.visible = this.§"a§ && this.§`!L§;
            §§push(this.visible);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  addEventListeners();
                  if(!_loc3_)
                  {
                     addr70:
                     §§push(this.§0-§);
                     if(_loc2_)
                     {
                        if(§§pop())
                        {
                           if(_loc2_ || _loc3_)
                           {
                              addr83:
                              if(param1)
                              {
                                 addr84:
                                 this.mClip.gotoAndPlay(1);
                                 addr88:
                              }
                              else
                              {
                                 this.mClip.gotoAndStop(1);
                              }
                           }
                        }
                        return;
                     }
                     §§goto(addr83);
                  }
                  §§goto(addr88);
               }
               else
               {
                  removeEventListeners();
               }
               §§goto(addr70);
            }
            §§goto(addr83);
         }
         §§goto(addr84);
      }
      
      public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.mClip.mouseEnabled != param1)
            {
               if(_loc3_ || this)
               {
                  this.mClip.mouseEnabled = param1;
                  if(_loc3_)
                  {
                     addr57:
                     if(this.mClip.mouseChildren != param1)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           this.mClip.mouseChildren = param1;
                        }
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr57);
      }
      
      public function getParentView() : §4!,§
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
            if(_loc2_ || this)
            {
               §§push(this.§"!9§);
               if(!_loc3_)
               {
                  if(!§§pop())
                  {
                  }
                  §§goto(addr54);
               }
               §§pop().x = this.mClip.x;
            }
         }
         addr54:
         if(_loc2_)
         {
            §§push(this.§"!9§);
         }
      }
      
      public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.mClip.y = Math.round(param1);
            if(!(_loc3_ && param1))
            {
               addr41:
               §§push(this.§"!9§);
               if(!(_loc3_ && _loc3_))
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        addr55:
                        this.§"!9§.y = this.mClip.y;
                     }
                  }
                  return;
               }
            }
            §§goto(addr55);
         }
         §§goto(addr41);
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
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         super.goToFrame(param1,param2);
         §§push(Boolean(this.mClip));
         if(!_loc4_)
         {
            if(§§pop())
            {
               if(!(_loc4_ && _loc3_))
               {
                  addr44:
                  §§pop();
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(this.mClip is MovieClip);
                     if(!_loc4_)
                     {
                        §§goto(addr68);
                     }
                     §§goto(addr77);
                  }
                  §§goto(addr84);
               }
            }
            addr68:
            if(§§pop())
            {
               if(_loc3_ || this)
               {
                  addr77:
                  if(param2)
                  {
                     this.mClip.gotoAndPlay(param1);
                     if(!_loc4_)
                     {
                        addr84:
                     }
                  }
                  else
                  {
                     this.mClip.gotoAndStop(param1);
                  }
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function get viewWidth() : Number
      {
         return this.§5n§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§@!$§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§5n§ = param1;
            if(_loc2_)
            {
               addr28:
               this.§!!#§();
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§@!$§ = param1;
            if(_loc2_ || param1)
            {
               this.§!!#§();
            }
         }
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§4%§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§4%§ = param1;
         }
      }
   }
}
