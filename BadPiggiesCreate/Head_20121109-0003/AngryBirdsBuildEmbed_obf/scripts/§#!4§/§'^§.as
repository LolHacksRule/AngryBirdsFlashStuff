package §#!4§
{
   import § !r§.§`![§;
   import §!y§.§2U§;
   import §"!E§.§[!s§;
   import com.rovio.assets.§1F§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §'^§ extends §+!S§
   {
       
      
      public var mParentContainer:§[!s§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §8W§:Boolean = false;
      
      public var §6!4§:Boolean = true;
      
      public var §%v§:Boolean = false;
      
      public var §@w§:Boolean = false;
      
      private var §9d§:§%§;
      
      private var §?+§:Boolean = false;
      
      protected var §-!c§:Boolean = false;
      
      private var §;b§:Number;
      
      private var §7!L§:Number;
      
      private var §=!M§:Number;
      
      private var §%7§:Number;
      
      private var §1b§:String;
      
      private var §"F§:String;
      
      private var §4L§:String;
      
      private var §5!q§:String;
      
      private var §2v§:String;
      
      private var § e§:String;
      
      public function §'^§(param1:XML, param2:§[!s§, param3:MovieClip = null)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc6_)
         {
            §§push(null);
            if(_loc5_ || param2)
            {
               §§pop().§§slot[4] = §§pop();
               §§push(§§newactivation());
               §§push(null);
               if(_loc5_ || param2)
               {
                  §§pop().§§slot[5] = §§pop();
                  if(_loc5_ || param1)
                  {
                     §§push(§§newactivation());
                     if(_loc5_ || param1)
                     {
                        §§push(NaN);
                        if(_loc5_)
                        {
                           §§pop().§§slot[6] = §§pop();
                           if(_loc5_ || param3)
                           {
                              §§push(§§newactivation());
                              §§push(NaN);
                              if(!(_loc6_ && this))
                              {
                                 §§pop().§§slot[7] = §§pop();
                                 addr82:
                                 var tmp:Sprite = null;
                                 if(_loc5_)
                                 {
                                    §§push(§§newactivation());
                                    if(_loc5_)
                                    {
                                       §§pop().§§slot[1] = param1;
                                       var parentContainer:§[!s§ = param2;
                                       if(!(_loc6_ && param3))
                                       {
                                          §§push(§§newactivation());
                                          if(!(_loc6_ && this))
                                          {
                                             §§pop().§§slot[3] = param3;
                                             this.mParentContainer = parentContainer;
                                             this.mName = data.@name;
                                             if(clip)
                                             {
                                                this.mClip = clip;
                                                §§push(this.mParentContainer);
                                                if(_loc5_ || param1)
                                                {
                                                   if(§§pop())
                                                   {
                                                      §§push(this.mParentContainer);
                                                      if(!(_loc6_ && param2))
                                                      {
                                                         §§pop().mClip.addChild(this.mClip);
                                                         if(_loc5_ || param3)
                                                         {
                                                            addr299:
                                                            if(data.@isOverlay.toString().toUpperCase() == "TRUE")
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  addr308:
                                                                  this.§%v§ = true;
                                                                  if(_loc5_ || param3)
                                                                  {
                                                                     addr318:
                                                                     §§push(§§newactivation());
                                                                     §§push(Number(16777215));
                                                                     if(_loc5_)
                                                                     {
                                                                        §§pop().§§slot[6] = §§pop();
                                                                        addr327:
                                                                        var alpha:Number = 0.5;
                                                                        if(data.@overlayColor.toString() != "")
                                                                        {
                                                                           addr335:
                                                                           §§push(§§newactivation());
                                                                           §§push(Number(parseInt(data.@overlayColor)));
                                                                           if(!(_loc6_ && param2))
                                                                           {
                                                                              §§pop().§§slot[6] = §§pop();
                                                                           }
                                                                           addr366:
                                                                           §§pop().§§slot[7] = §§pop();
                                                                           §§push(§§newactivation());
                                                                           if(!_loc6_)
                                                                           {
                                                                              addr370:
                                                                              §§pop().§§slot[8] = this.getParentView().§&!s§(color,alpha);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 this.mClip.addChildAt(tmp,0);
                                                                                 addr387:
                                                                                 §§push(Boolean(this.mParentContainer));
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          §§pop();
                                                                                          addr397:
                                                                                          §§push(§§newactivation());
                                                                                          if(_loc5_ || param2)
                                                                                          {
                                                                                             addr411:
                                                                                             if(§§pop().§§slot[1].@isBehind.toString().toUpperCase() == "TRUE")
                                                                                             {
                                                                                                if(!(_loc6_ && param2))
                                                                                                {
                                                                                                   addr420:
                                                                                                   §§push(parentContainer);
                                                                                                   if(!(_loc6_ && param1))
                                                                                                   {
                                                                                                      if(§§pop().§%v§)
                                                                                                      {
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            addr432:
                                                                                                            §§push(parentContainer);
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               §§pop().mClip.setChildIndex(this.mClip,1);
                                                                                                               addr451:
                                                                                                               if(data.@animateOnActivation.toString().toUpperCase() == "TRUE")
                                                                                                               {
                                                                                                                  this.§@w§ = true;
                                                                                                                  addr471:
                                                                                                                  this.mClip.stop();
                                                                                                                  addr474:
                                                                                                                  super(this.mClip);
                                                                                                                  if(_loc5_ || param1)
                                                                                                                  {
                                                                                                                     this.readInitialVisibility(data);
                                                                                                                     this.§>!v§(data);
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        addr495:
                                                                                                                        this.§=e§(data);
                                                                                                                     }
                                                                                                                     return;
                                                                                                                  }
                                                                                                                  §§goto(addr495);
                                                                                                               }
                                                                                                               §§goto(addr474);
                                                                                                            }
                                                                                                            §§goto(addr451);
                                                                                                         }
                                                                                                         §§goto(addr471);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push(§§newactivation());
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            §§push(§§pop().§§slot[2]);
                                                                                                         }
                                                                                                         §§goto(addr451);
                                                                                                      }
                                                                                                   }
                                                                                                   §§pop().mClip.setChildIndex(this.mClip,0);
                                                                                                }
                                                                                                §§goto(addr432);
                                                                                             }
                                                                                             §§goto(addr451);
                                                                                          }
                                                                                          §§goto(addr420);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr411);
                                                                              }
                                                                              §§goto(addr471);
                                                                           }
                                                                           §§goto(addr451);
                                                                        }
                                                                        §§push(§§newactivation());
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(§§pop().§§slot[1].@overlayAlpha.toString() != "")
                                                                           {
                                                                              §§push(§§newactivation());
                                                                              if(!_loc6_)
                                                                              {
                                                                                 addr360:
                                                                                 §§goto(addr366);
                                                                                 §§push(Number(parseFloat(data.@overlayAlpha)));
                                                                              }
                                                                              §§goto(addr370);
                                                                           }
                                                                           §§goto(addr366);
                                                                        }
                                                                        §§goto(addr451);
                                                                     }
                                                                  }
                                                                  §§goto(addr366);
                                                               }
                                                               §§goto(addr471);
                                                            }
                                                            §§goto(addr387);
                                                            addr157:
                                                         }
                                                         §§goto(addr432);
                                                      }
                                                      else
                                                      {
                                                         addr205:
                                                         §§pop().mClip.addChild(this.mClip);
                                                      }
                                                      §§goto(addr299);
                                                   }
                                                   §§goto(addr157);
                                                }
                                                §§goto(addr205);
                                             }
                                             else if(data.@fromLibrary.toString().toUpperCase() == "TRUE")
                                             {
                                                if(!(_loc6_ && param1))
                                                {
                                                   addr172:
                                                   var cls:Class = §1F§.§"!_§(this.mName);
                                                   if(!_loc6_)
                                                   {
                                                      this.mClip = new cls();
                                                      §§push(this.mParentContainer);
                                                      if(!(_loc6_ && param2))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            addr196:
                                                            §§push(this.mParentContainer);
                                                            if(!(_loc6_ && param2))
                                                            {
                                                               §§goto(addr205);
                                                            }
                                                            else
                                                            {
                                                               addr219:
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     this.mClip = this.mParentContainer.mClip.getChildByName(this.mName) as MovieClip;
                                                                     if(_loc5_)
                                                                     {
                                                                        if(this.mClip == null)
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§push(§§newactivation());
                                                                              §§push("Asset instance not found!! [");
                                                                              if(!_loc6_)
                                                                              {
                                                                                 §§push(§§pop() + this.mName);
                                                                                 if(_loc5_ || param3)
                                                                                 {
                                                                                    addr264:
                                                                                    §§push("] parent: [");
                                                                                    if(!(_loc6_ && param2))
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!(_loc6_ && param1))
                                                                                       {
                                                                                          addr288:
                                                                                          §§push(§§pop() + this.mParentContainer.mName);
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             §§push("]");
                                                                                          }
                                                                                          §§pop().§§slot[5] = §§pop();
                                                                                          §`![§.log(error);
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             function():void
                                                                                             {
                                                                                                throw new Error(error);
                                                                                             }();
                                                                                             §§goto(addr299);
                                                                                          }
                                                                                          §§goto(addr308);
                                                                                       }
                                                                                       §§goto(addr288);
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                 }
                                                                                 §§goto(addr288);
                                                                              }
                                                                              §§goto(addr264);
                                                                           }
                                                                           §§goto(addr397);
                                                                        }
                                                                        §§goto(addr299);
                                                                     }
                                                                  }
                                                                  §§goto(addr471);
                                                               }
                                                               §§goto(addr299);
                                                            }
                                                         }
                                                         §§goto(addr205);
                                                      }
                                                      §§goto(addr219);
                                                   }
                                                   §§goto(addr299);
                                                }
                                                §§goto(addr471);
                                             }
                                             else
                                             {
                                                §§push(this.mParentContainer);
                                                if(_loc5_ || this)
                                                {
                                                   §§goto(addr219);
                                                }
                                             }
                                             §§goto(addr387);
                                          }
                                          §§goto(addr335);
                                       }
                                       §§goto(addr196);
                                    }
                                    §§goto(addr360);
                                 }
                                 §§goto(addr172);
                              }
                              §§goto(addr327);
                           }
                           §§goto(addr308);
                        }
                     }
                     §§goto(addr335);
                  }
                  §§goto(addr318);
               }
            }
            §§goto(addr82);
         }
         §§goto(addr370);
      }
      
      private function §@!1§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§9d§);
            if(!(_loc1_ && _loc2_))
            {
               if(!§§pop())
               {
                  this.§9d§ = new §%§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§=!M§,this.§%7§,this.§1b§,this.§"F§,this.§4L§,this.§5!q§,this.§ e§,this.§2v§);
               }
               §§push(this.§9d§);
            }
            §§pop().§^=§(this.§;b§,this.§7!L§);
            if(_loc2_ || this)
            {
               addr83:
               this.mClip.x = this.§9d§.x;
               if(!_loc1_)
               {
                  this.mClip.y = this.§9d§.y;
                  if(!_loc1_)
                  {
                     this.mClip.scaleX = this.§9d§.scaleX;
                     this.mClip.scaleY = this.§9d§.scaleY;
                     if(_loc2_)
                     {
                        if(this.§?+§)
                        {
                           addr126:
                           this.mClip.scrollRect = new Rectangle(0,0,this.§=!M§,this.§%7§);
                        }
                        return;
                     }
                  }
               }
            }
            §§goto(addr126);
         }
         §§goto(addr83);
      }
      
      private function §>!v§(param1:XML) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!_loc5_)
         {
            if(!this.mParentContainer)
            {
               this.§;b§ = _loc2_;
               this.§7!L§ = _loc3_;
               if(_loc5_ && this)
               {
                  addr96:
                  this.§7!L§ = this.mParentContainer.viewHeight;
               }
               addr107:
               this.§=!M§ = this.§;b§;
               if(_loc4_ || this)
               {
                  this.§%7§ = this.§7!L§;
               }
            }
            else
            {
               §§push(_loc2_);
               if(!(_loc5_ && _loc2_))
               {
                  §§push(0);
                  if(_loc4_)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(_loc4_ || _loc3_)
                        {
                           this.§;b§ = this.mParentContainer.viewWidth;
                        }
                     }
                     else
                     {
                        this.§;b§ = _loc2_;
                     }
                     addr82:
                     §§push(_loc3_);
                     §§push(0);
                  }
                  if(§§pop() == §§pop())
                  {
                     if(!_loc4_)
                     {
                     }
                     §§goto(addr96);
                  }
                  else
                  {
                     this.§7!L§ = _loc3_;
                     if(!_loc5_)
                     {
                        §§goto(addr107);
                     }
                     §§goto(addr122);
                  }
               }
               §§goto(addr82);
            }
         }
         addr122:
      }
      
      private function §=e§(param1:XML) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§1b§ = param1.@alignH;
            this.§"F§ = param1.@alignV;
            this.§4L§ = param1.@scaleH;
            this.§5!q§ = param1.@scaleV;
         }
         this.§2v§ = param1.@scaleFunction;
         if(_loc5_ || this)
         {
            this.§ e§ = param1.@aspectRatioFixed;
         }
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         if(_loc5_ || this)
         {
            this.§6!1§(_loc2_);
            if(_loc5_ || _loc2_)
            {
               this.§^!V§(_loc3_);
            }
         }
      }
      
      private function §^!V§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            if(!(_loc2_ && this))
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     §§push(param1);
                     if(!(_loc2_ && param1))
                     {
                        addr58:
                        §§push(§§pop().toUpperCase());
                        if(_loc3_ || param1)
                        {
                           §§goto(addr67);
                        }
                        §§goto(addr71);
                     }
                     addr67:
                     param1 = §§pop();
                     if(_loc3_)
                     {
                        addr71:
                        if(param1 == "TRUE")
                        {
                           if(_loc3_ || _loc2_)
                           {
                           }
                        }
                        §§goto(addr83);
                     }
                     this.§-!c§ = true;
                     §§goto(addr83);
                  }
                  §§goto(addr71);
               }
               addr83:
               return;
            }
            §§goto(addr58);
         }
         §§goto(addr71);
      }
      
      private function §6!1§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(param1);
            if(!_loc3_)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc3_ && _loc2_))
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        §§pop();
                        §§goto(addr76);
                     }
                  }
               }
               if(§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     this.§?+§ = true;
                  }
               }
               §§goto(addr76);
            }
            §§goto(addr62);
         }
         addr76:
         if(!_loc3_)
         {
            addr62:
            §§push(param1.toUpperCase() == "TRUE");
         }
      }
      
      public function readInitialVisibility(param1:XML) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = param1.@visible;
         §§push(_loc2_);
         if(!_loc4_)
         {
            §§push(Boolean(§§pop()));
            if(_loc3_)
            {
               §§push(§§pop());
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        §§pop();
                        §§push(_loc2_);
                        if(!(_loc4_ && _loc3_))
                        {
                           §§push(§§pop().toUpperCase() == "FALSE");
                           if(!_loc4_)
                           {
                              addr56:
                              if(§§pop())
                              {
                                 if(!(_loc4_ && this))
                                 {
                                    this.setVisibility(false);
                                    addr73:
                                    §§push(param1.@enabled);
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       addr93:
                                       _loc2_ = §§pop();
                                    }
                                    §§goto(addr109);
                                 }
                                 §§push(_loc2_);
                                 if(_loc3_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!_loc4_)
                                    {
                                       addr101:
                                       if(§§pop())
                                       {
                                          if(!_loc3_)
                                          {
                                          }
                                          §§goto(addr109);
                                       }
                                       addr109:
                                       §§goto(addr106);
                                    }
                                    §§pop();
                                 }
                                 addr106:
                                 if(§§pop().toUpperCase() == "FALSE")
                                 {
                                    if(_loc3_ || param1)
                                    {
                                       this.setEnabled(false);
                                    }
                                 }
                                 return;
                              }
                              this.setVisibility(true);
                              if(_loc3_)
                              {
                                 §§goto(addr73);
                              }
                              §§push(_loc2_);
                           }
                        }
                        §§goto(addr73);
                     }
                  }
                  §§goto(addr56);
               }
               §§goto(addr101);
            }
            §§goto(addr73);
         }
         §§goto(addr93);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.clear();
            if(!_loc1_)
            {
               addr28:
               §§push(this.mParentContainer);
               if(!(_loc1_ && _loc1_))
               {
                  if(§§pop())
                  {
                     if(_loc2_ || _loc2_)
                     {
                        addr57:
                        this.mParentContainer.mClip.removeChild(this.mClip);
                     }
                  }
                  do
                  {
                     if(this.mClip.numChildren <= 0)
                     {
                        if(!(_loc1_ && _loc1_))
                        {
                           break;
                        }
                        §§goto(addr106);
                     }
                     this.mClip.removeChildAt(0);
                  }
                  while(_loc2_ || this);
                  
                  this.mClip = null;
                  if(_loc2_ || this)
                  {
                     §§goto(addr106);
                  }
                  addr106:
                  this.§9d§ = null;
                  return;
               }
            }
            §§goto(addr57);
         }
         §§goto(addr28);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super.listenerEventOccured(param1,param2);
            if(_loc3_)
            {
               §§push(this.mParentContainer);
               if(!(_loc4_ && param2))
               {
                  if(!§§pop())
                  {
                  }
                  §§goto(addr72);
               }
               §§pop().containerEventOccured(param1,param2,this);
               §§goto(addr72);
            }
            §§goto(addr66);
         }
         addr72:
         if(!(_loc4_ && param1))
         {
            addr66:
            §§push(this.mParentContainer);
         }
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§6!4§ = param1;
            if(!(_loc3_ && this))
            {
               this.mClip.visible = this.§6!4§ && this.§8W§;
               if(!(_loc3_ && this))
               {
                  if(this.visible)
                  {
                     if(_loc2_ || _loc2_)
                     {
                     }
                  }
                  else
                  {
                     removeEventListeners();
                  }
                  §§goto(addr84);
               }
               addEventListeners();
               if(!_loc2_)
               {
               }
            }
         }
         addr84:
      }
      
      public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§8W§ = param1;
            if(!(_loc3_ && param1))
            {
               this.mClip.visible = this.§6!4§ && this.§8W§;
               addr33:
               if(_loc2_)
               {
                  §§push(this.visible);
                  if(!_loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc2_)
                        {
                           addr74:
                           addEventListeners();
                           addr76:
                        }
                        §§goto(addr76);
                     }
                     else
                     {
                        removeEventListeners();
                     }
                     §§push(this.§@w§);
                     if(!_loc3_)
                     {
                        if(§§pop())
                        {
                           addr85:
                           if(param1)
                           {
                              if(!_loc3_)
                              {
                                 this.mClip.gotoAndPlay(1);
                                 if(!_loc2_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              this.mClip.gotoAndStop(1);
                           }
                        }
                        return;
                     }
                  }
                  §§goto(addr85);
               }
            }
            §§goto(addr74);
         }
         §§goto(addr33);
      }
      
      public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.mClip.mouseEnabled != param1)
            {
               if(!(_loc2_ && param1))
               {
                  §§goto(addr51);
               }
               §§goto(addr69);
            }
            §§goto(addr62);
         }
         addr51:
         this.mClip.mouseEnabled = param1;
         if(_loc3_ || param1)
         {
            addr62:
            if(this.mClip.mouseChildren != param1)
            {
               if(!_loc2_)
               {
                  addr69:
                  this.mClip.mouseChildren = param1;
               }
            }
         }
      }
      
      public function getParentView() : §2U§
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
            if(!_loc2_)
            {
               §§push(this.§9d§);
               if(!(_loc2_ && _loc3_))
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
         if(!(_loc2_ && _loc3_))
         {
            addr64:
            §§push(this.§9d§);
         }
      }
      
      public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.mClip.y = Math.round(param1);
            if(!_loc3_)
            {
               §§push(this.§9d§);
               if(!(_loc3_ && this))
               {
                  if(!§§pop())
                  {
                  }
                  §§goto(addr59);
               }
               §§pop().y = this.mClip.y;
               §§goto(addr59);
            }
            §§goto(addr53);
         }
         addr59:
         if(!_loc3_)
         {
            addr53:
            §§push(this.§9d§);
         }
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
         if(!(_loc3_ && param2))
         {
            super.goToFrame(param1,param2);
            §§push(Boolean(this.mClip));
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     §§pop();
                     §§push(this.mClip is MovieClip);
                     if(_loc4_)
                     {
                        §§goto(addr83);
                     }
                     if(§§pop())
                     {
                        this.mClip.gotoAndPlay(param1);
                        if(_loc3_ && this)
                        {
                        }
                     }
                     else
                     {
                        this.mClip.gotoAndStop(param1);
                     }
                     §§goto(addr83);
                  }
               }
            }
            §§goto(addr83);
         }
         addr83:
         if(§§pop())
         {
            §§push(param2);
         }
      }
      
      public function get viewWidth() : Number
      {
         return this.§;b§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§7!L§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§;b§ = param1;
            if(_loc2_)
            {
               this.§@!1§();
            }
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§7!L§ = param1;
            if(!_loc2_)
            {
               this.§@!1§();
            }
         }
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
   }
}
