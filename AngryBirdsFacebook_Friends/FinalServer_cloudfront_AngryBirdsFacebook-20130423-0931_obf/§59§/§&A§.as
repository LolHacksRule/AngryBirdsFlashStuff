package §59§
{
   import §,l§.§#!,§;
   import §9@§.§3,§;
   import §9@§.§`!=§;
   import §=!@§.§=!N§;
   import §@!%§.§#!$§;
   import §^"F§.§4!2§;
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class §&A§ extends EventDispatcher
   {
       
      
      private var § !j§:String;
      
      private var §>"#§:§="C§;
      
      private var §0"7§:String;
      
      private var §>"4§:MovieClip;
      
      protected var §0!g§:MovieClip;
      
      private var §[y§:Array;
      
      private var §5f§:String;
      
      private var §=!?§:int;
      
      public function §&A§(param1:§="C§, param2:String, param3:String, param4:MovieClip, param5:String, param6:int = 5)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            super();
            while(true)
            {
               this.§>"#§ = param1;
               addr96:
               while(true)
               {
                  this.§ !j§ = param2;
                  loop2:
                  while(true)
                  {
                     this.§0"7§ = param3;
                     loop3:
                     while(true)
                     {
                        this.§0!g§ = param4;
                        while(true)
                        {
                           this.§5f§ = param5;
                           while(!_loc7_)
                           {
                              if(!_loc8_)
                              {
                                 continue loop3;
                              }
                              if(!(_loc7_ && param2))
                              {
                                 if(_loc8_)
                                 {
                                    return;
                                    addr48:
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
               }
               addr55:
               if(!_loc8_)
               {
                  continue;
               }
               this.§2C§();
               if(!_loc7_)
               {
                  §§goto(addr29);
               }
               while(_loc8_)
               {
                  §§goto(addr55);
                  §§goto(addr67);
               }
               addr67:
               §§goto(addr96);
               addr53:
            }
         }
         while(true)
         {
            this.§=!?§ = param6;
            §§goto(addr53);
         }
         §§goto(addr48);
      }
      
      private function §7!2§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§^!-§.easterEgg1Button.visible = false;
            do
            {
               (AngryBirdsFP11.sUserProgress as §#!$§).§9!'§("1000-1");
            }
            while(_loc2_ && _loc3_);
            
         }
      }
      
      private function §^"#§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if((AngryBirdsFP11.sUserProgress as §#!$§).§,"F§("1000-1"))
            {
               this.§^!-§.easterEgg1Button.visible = false;
               if(_loc2_ || this)
               {
                  if(_loc1_ && _loc2_)
                  {
                     addr86:
                     this.§^!-§.easterEgg1Button.visible = true;
                     loop1:
                     while(true)
                     {
                        this.§^!-§.easterEgg1Button.addEventListener(MouseEvent.CLICK,this.§7!2§);
                        addr76:
                        addr78:
                        while(_loc1_)
                        {
                           continue loop1;
                        }
                     }
                  }
                  return;
               }
               §§goto(addr76);
            }
            §§goto(addr86);
         }
         §§goto(addr78);
      }
      
      protected function §2C§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(this.§;"R§.id == §4!2§.§4"X§)
            {
               while(true)
               {
                  this.§^"#§();
                  addr118:
                  while(true)
                  {
                  }
                  addr92:
                  if(_loc2_ && _loc2_)
                  {
                     continue;
                  }
                  this.§!9§();
                  while(_loc1_ || this)
                  {
                     this.§^!-§.description.text = this.§5f§;
                     do
                     {
                        this.§35§();
                     }
                     while(_loc2_ && _loc2_);
                     
                     if(!(_loc1_ || this))
                     {
                        continue;
                     }
                     if(_loc1_)
                     {
                        return;
                     }
                     while(!_loc2_)
                     {
                        §§goto(addr92);
                     }
                     §§goto(addr118);
                     addr90:
                  }
                  while(true)
                  {
                     if(_loc1_)
                     {
                        this.§4"5§();
                        §§goto(addr90);
                     }
                     break;
                     §§goto(addr69);
                  }
                  addr69:
                  while(true)
                  {
                     this.§`!Z§();
                     §§goto(addr103);
                  }
                  addr103:
                  addr109:
               }
            }
            while(true)
            {
               this.§?!a§();
               §§goto(addr109);
               §§goto(addr118);
            }
         }
         §§goto(addr118);
      }
      
      protected function §4"5§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§0!g§.iconContainer.addChild(this.icon);
            while(true)
            {
               this.§0!g§.buttonMode = true;
               loop1:
               while(!(_loc1_ && _loc2_))
               {
                  while(true)
                  {
                     this.§0!g§.mouseChildren = false;
                     if(!(_loc1_ && _loc1_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr69);
      }
      
      protected function §35§() : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:TextField = null;
         var _loc4_:TextField = null;
         var _loc5_:TextField = null;
         var _loc6_:MovieClip = null;
         var _loc7_:SimpleButton = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         if(_loc12_)
         {
            this.§[y§ = [];
         }
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            while(true)
            {
               §§push(this.§=!?§);
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     §§push(_loc1_);
                     if(_loc11_ && _loc3_)
                     {
                        break;
                     }
                     §§push(1);
                     if(!_loc12_)
                     {
                        continue;
                     }
                     §§push(int(§§pop() + §§pop()));
                     if(!(_loc12_ || _loc1_))
                     {
                        break;
                     }
                     _loc2_ = §§pop();
                     if(!(_loc11_ && _loc2_))
                     {
                        _loc3_ = this.§^!-§["price" + _loc2_];
                        _loc4_ = this.§^!-§["amount" + _loc2_];
                        _loc5_ = this.§^!-§["free" + _loc2_];
                        _loc6_ = this.§^!-§["icon" + _loc2_];
                        if(_loc12_)
                        {
                           _loc3_.text = "x " + §3,§.§3!Y§(this.§>"#§.getPricePoint(_loc1_).price);
                           if(!(_loc11_ && _loc3_))
                           {
                              _loc4_.text = "x " + §3,§.§3!Y§(this.§>"#§.getPricePoint(_loc1_).§ !?§);
                              loop3:
                              for(; _loc5_; if(_loc11_ && _loc2_)
                              {
                                 continue;
                              },loop8:
                              while(true)
                              {
                                 if(this.§>"#§.getPricePoint(_loc1_).§4!m§ > 0)
                                 {
                                    if(!(_loc11_ && _loc3_))
                                    {
                                       if(!(_loc11_ && _loc3_))
                                       {
                                          _loc5_.text = _loc8_ + this.§>"#§.getPricePoint(_loc1_).§#!-§() + _loc9_;
                                          if(_loc12_ || _loc2_)
                                          {
                                             break loop3;
                                          }
                                          §§goto(addr265);
                                       }
                                       else
                                       {
                                          §§goto(addr207);
                                       }
                                    }
                                    break;
                                 }
                                 _loc5_.text = "";
                                 if(!_loc11_)
                                 {
                                    while(true)
                                    {
                                       if(true)
                                       {
                                          break loop3;
                                       }
                                       continue loop8;
                                    }
                                    addr120:
                                 }
                                 break;
                              },addr262:,_loc6_.mouseChildren = false)
                              {
                                 while(true)
                                 {
                                    _loc5_.mouseEnabled = false;
                                    addr207:
                                    loop5:
                                    while(true)
                                    {
                                       §§push("+");
                                       loop6:
                                       while(true)
                                       {
                                          _loc8_ = §§pop();
                                          while(true)
                                          {
                                             §§push(" free!");
                                             if(!(_loc11_ && this))
                                             {
                                                _loc9_ = §§pop();
                                                if(_loc11_)
                                                {
                                                   break;
                                                }
                                                if(!_loc11_)
                                                {
                                                   if(!_loc12_)
                                                   {
                                                      break loop5;
                                                   }
                                                   continue loop3;
                                                }
                                                continue;
                                             }
                                             continue loop6;
                                          }
                                          addr265:
                                          (_loc7_ = this.§^!-§["buy" + _loc2_]).addEventListener(MouseEvent.CLICK,this.§9!C§);
                                          if(!(_loc11_ && _loc2_))
                                          {
                                             this.§[y§.push(_loc7_);
                                             if(!_loc12_)
                                             {
                                                continue loop0;
                                             }
                                          }
                                          _loc1_++;
                                          continue loop0;
                                       }
                                    }
                                 }
                              }
                              _loc3_.mouseEnabled = _loc4_.mouseEnabled = _loc6_.mouseEnabled = false;
                              if(!(_loc11_ && _loc3_))
                              {
                                 §§goto(addr262);
                              }
                           }
                           §§goto(addr265);
                        }
                        §§goto(addr120);
                     }
                  }
                  return;
               }
            }
         }
      }
      
      private function §9!C§(param1:MouseEvent) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:* = 0;
         var _loc4_:SimpleButton = null;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc3_:int = 0;
         for each(_loc4_ in this.§[y§)
         {
            if(_loc4_ == param1.currentTarget)
            {
               if(_loc9_)
               {
                  §§push(_loc3_);
                  if(!_loc10_)
                  {
                     §§push(int(§§pop()));
                  }
                  _loc2_ = §§pop();
                  if(_loc9_)
                  {
                     break;
                  }
               }
            }
            else
            {
               _loc3_++;
            }
         }
         if(!(_loc10_ && _loc2_))
         {
            §§push(int(_loc4_.parent.x + _loc4_.x + param1.localX));
            while(true)
            {
               _loc5_ = §§pop();
               loop2:
               while(true)
               {
                  §§push(int(_loc4_.parent.y + _loc4_.y + param1.localY));
                  if(_loc9_ || _loc3_)
                  {
                     _loc6_ = §§pop();
                     while(true)
                     {
                        dispatchEvent(new §=!N§(§=!N§.§[",§,false,false,this.§>"#§,this.§>"#§.getPricePoint(_loc2_),new Point(_loc5_,_loc6_)));
                        if(_loc9_ || param1)
                        {
                           if(!_loc10_)
                           {
                              break;
                           }
                           continue loop2;
                        }
                     }
                     return;
                     addr139:
                  }
                  break;
               }
            }
         }
         §§goto(addr139);
      }
      
      public function §!9§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§#!,§.§&"5§.§]![§(this.§;"R§.id));
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc2_)
         {
            this.§0!g§.tagForNumberOfPowerups.visible = _loc1_ > 0;
            do
            {
               this.§0!g§.tagForNumberOfPowerups.numberOfPowerups.text = §`!=§.§;"D§(_loc1_);
            }
            while(!_loc2_);
            
         }
      }
      
      protected function §?!a§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§0!g§.addEventListener(MouseEvent.CLICK,this.§[!o§);
            while(true)
            {
               this.§0!g§.addEventListener(MouseEvent.ROLL_OVER,this.§`!W§);
               loop1:
               while(_loc2_ || _loc1_)
               {
                  while(true)
                  {
                     this.§0!g§.addEventListener(MouseEvent.ROLL_OUT,this.§`!Z§);
                     if(_loc2_ || this)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr75);
      }
      
      protected function §!![§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§0!g§.removeEventListener(MouseEvent.CLICK,this.§[!o§);
            while(true)
            {
               this.§0!g§.removeEventListener(MouseEvent.ROLL_OVER,this.§`!W§);
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     this.§0!g§.removeEventListener(MouseEvent.ROLL_OUT,this.§`!Z§);
                     if(_loc1_ || _loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr69);
      }
      
      protected function §[!o§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            dispatchEvent(new §=!N§(§=!N§.§9o§));
         }
      }
      
      protected function §`!W§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§0!g§.gotoAndStop("MouseOver");
         }
      }
      
      protected function §`!Z§(param1:MouseEvent = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§0!g§.gotoAndStop("Normal");
         }
      }
      
      public function §^+§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§0!g§.gotoAndStop("Normal");
         }
         do
         {
            this.§?!a§();
         }
         while(!_loc1_);
         
      }
      
      public function §<]§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§0!g§.gotoAndStop("Selected");
         }
         do
         {
            this.§!![§();
         }
         while(!_loc2_);
         
      }
      
      public function get §;"R§() : §="C§
      {
         return this.§>"#§;
      }
      
      public function get §^!-§() : MovieClip
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§>"4§)
            {
               if(_loc3_)
               {
                  §§goto(addr34);
               }
            }
            var _loc1_:Class = §?q§.§ q§(this.§0"7§);
            if(!(_loc2_ && this))
            {
               this.§>"4§ = new _loc1_();
            }
            return this.§>"4§;
         }
         addr34:
         return this.§>"4§;
      }
      
      private function get icon() : MovieClip
      {
         var _loc1_:Class = §?q§.§ q§(this.§ !j§);
         return new _loc1_();
      }
   }
}
