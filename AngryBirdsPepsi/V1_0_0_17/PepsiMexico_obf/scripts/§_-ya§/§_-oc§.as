package §_-ya§
{
   import §_-4g§.Texture;
   import §_-LP§.Sprite;
   import §_-LP§.§_-19§;
   import §_-LP§.§_-rC§;
   import §_-Ra§.§_-2X§;
   import §_-hU§.§_-MB§;
   import flash.display.BitmapData;
   
   public class §_-oc§
   {
      
      public static const §_-Z8§:String = "CutScene_Type_Intro";
      
      public static const §_-A9§:String = "CutScene_Type_Outro";
      
      public static const §_-Qf§:String = "CutScene_Type_Final_Outro";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §_-Z8§ = "CutScene_Type_Intro";
            if(!_loc1_)
            {
               §_-A9§ = "CutScene_Type_Outro";
               if(!_loc1_)
               {
                  addr33:
                  §_-Qf§ = "CutScene_Type_Final_Outro";
               }
               return;
            }
         }
         §§goto(addr33);
      }
      
      private var §_-Uc§:String;
      
      private var §_-x9§:Vector.<§_-ga§>;
      
      private var §_-c0§:Number;
      
      private var §_-yT§:Number;
      
      private var §_-sa§:Number;
      
      private var §_-cr§:Number;
      
      private var §_-Cv§:Sprite;
      
      private var §_-BX§:Boolean = true;
      
      private var §_-D0§:uint;
      
      private var §_-UR§:Texture;
      
      private var §_-RB§:Boolean;
      
      private var §_-t3§:Boolean;
      
      private var §_-sM§:§_-19§;
      
      private var §_-j0§:§_-19§;
      
      public function §_-oc§(param1:Object, param2:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:§_-ga§ = null;
         var _loc4_:Object = null;
         this.§_-x9§ = new Vector.<§_-ga§>();
         super();
         if(!_loc7_)
         {
            this.§_-c0§ = 0;
            if(!(_loc7_ && param2))
            {
               if(param1)
               {
                  §§push(param2);
                  if(!_loc7_)
                  {
                     if(§§pop().search("intro") != -1)
                     {
                        addr49:
                        this.§_-Uc§ = §_-Z8§;
                        if(!_loc8_)
                        {
                        }
                     }
                     else
                     {
                        addr56:
                        if(param2.search("complete") != -1)
                        {
                           this.§_-Uc§ = §_-A9§;
                        }
                     }
                     var _loc5_:int = 0;
                     var _loc6_:* = param1;
                     loop0:
                     while(true)
                     {
                        §§push(§§hasnext(_loc6_,_loc5_));
                        if(_loc8_)
                        {
                           if(§§pop())
                           {
                              _loc4_ = §§nextvalue(_loc5_,_loc6_);
                              _loc3_ = this.§_-c§(_loc4_);
                              if(!(_loc7_ && this))
                              {
                                 if(!_loc3_)
                                 {
                                    continue;
                                 }
                                 if(!(_loc8_ || _loc3_))
                                 {
                                    continue;
                                 }
                              }
                              this.§_-x9§.push(_loc3_);
                              continue;
                           }
                           if(_loc8_ || param2)
                           {
                              if(_loc8_)
                              {
                                 if(_loc8_ || this)
                                 {
                                    _loc5_ = 0;
                                    if(!_loc7_)
                                    {
                                       addr133:
                                       _loc6_ = this.§_-x9§;
                                       while(true)
                                       {
                                          §§push(§§hasnext(_loc6_,_loc5_));
                                          break loop0;
                                       }
                                       addr206:
                                    }
                                 }
                                 §§goto(addr210);
                              }
                           }
                           §§goto(addr133);
                        }
                        break;
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           _loc3_ = §§nextvalue(_loc5_,_loc6_);
                           §§push(_loc3_ is §_-tW§);
                           if(_loc8_)
                           {
                              if(§§pop())
                              {
                                 if(_loc8_)
                                 {
                                    (_loc3_ as §_-tW§).§_-lX§(this.§_-sa§,this.§_-cr§);
                                 }
                                 (_loc3_ as §_-tW§).§_-OZ§ = this.§_-BX§;
                                 if(_loc8_ || param1)
                                 {
                                 }
                                 continue;
                              }
                              §§push(_loc3_ is §_-fs§);
                           }
                           if(§§pop())
                           {
                              (_loc3_ as §_-fs§).§_-lX§(this.§_-sa§,this.§_-cr§);
                              if(!(_loc7_ && param1))
                              {
                                 (_loc3_ as §_-fs§).§_-q6§ = this.§_-BX§;
                              }
                           }
                           continue;
                        }
                        §§goto(addr133);
                     }
                  }
                  §§goto(addr56);
               }
               addr210:
               return;
            }
         }
         §§goto(addr49);
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-Cv§;
      }
      
      private function §_-c§(param1:Object) : §_-ga§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Object = null;
         var _loc3_:BitmapData = null;
         var _loc4_:* = param1.action;
         if(§_-ga§.§_-ao§ === _loc4_)
         {
            §§push(0);
         }
         else if(§_-ga§.§_-8R§ === _loc4_)
         {
            §§push(1);
         }
         else if(§_-ga§.§_-uz§ === _loc4_)
         {
            if(!_loc6_)
            {
               §§push(2);
               if(_loc5_ || this)
               {
               }
               §§goto(addr257);
            }
            else
            {
               addr236:
               §§push(6);
            }
            addr237:
            §§goto(addr257);
         }
         else
         {
            §§push(§_-ga§.END);
            if(_loc5_ || _loc2_)
            {
               if(§§pop() === _loc4_)
               {
                  addr257:
                  switch(§§pop())
                  {
                     case 0:
                        return new §_-fs§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y);
                     case 1:
                        _loc2_ = param1.scroll_target;
                        if(_loc5_)
                        {
                           if(_loc2_.type != "sprite")
                           {
                              break;
                           }
                        }
                        return new §_-tW§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y);
                     case 2:
                        return new §_-fd§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
                     case 3:
                        this.§_-yT§ = param1.time * 1000;
                        break;
                     case 4:
                        this.§_-sa§ = param1.width;
                        this.§_-cr§ = param1.height;
                        if(!this.§_-UR§)
                        {
                           _loc3_ = new BitmapData(16,16,false,4278190080);
                           if(_loc5_ || _loc3_)
                           {
                              this.§_-UR§ = §_-2X§.§_-mE§.§_-pz§(_loc3_);
                              if(_loc6_)
                              {
                              }
                              addr140:
                              break;
                           }
                           this.§_-t3§ = true;
                        }
                        §§goto(addr140);
                     case 5:
                        this.§_-BX§ = false;
                        break;
                     case 6:
                        this.§_-BX§ = true;
                        break;
                     case 7:
                        this.§_-D0§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
                  }
                  return null;
                  §§push(3);
               }
               else
               {
                  if(§_-ga§.§_-sO§ === _loc4_)
                  {
                     if(!_loc6_)
                     {
                        §§push(4);
                        if(!_loc6_)
                        {
                           §§goto(addr257);
                        }
                        else
                        {
                           §§goto(addr237);
                        }
                     }
                  }
                  else if(§_-ga§.§_-8Q§ !== _loc4_)
                  {
                     addr234:
                     if(§_-ga§.§_-tu§ === _loc4_)
                     {
                        §§goto(addr236);
                     }
                     else
                     {
                        if(§_-ga§.§_-1B§ === _loc4_)
                        {
                           §§push(7);
                           if(_loc6_)
                           {
                           }
                           §§goto(addr257);
                        }
                        else
                        {
                           §§goto(addr257);
                           §§push(8);
                        }
                        §§goto(addr257);
                     }
                  }
                  §§goto(addr257);
                  §§push(5);
               }
               §§goto(addr257);
            }
            §§goto(addr234);
         }
         §§goto(addr257);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§_-Cv§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§goto(addr29);
                  }
               }
               §§goto(addr44);
            }
            addr29:
            this.§_-Cv§.dispose();
            if(_loc1_)
            {
               this.§_-Cv§ = null;
               if(!_loc2_)
               {
                  addr44:
                  if(this.§_-UR§)
                  {
                     if(this.§_-t3§)
                     {
                        §_-2X§.§_-mE§.§_-tO§(this.§_-UR§);
                        if(!_loc1_)
                        {
                        }
                        §§goto(addr77);
                     }
                     this.§_-UR§ = null;
                     if(_loc1_ || this)
                     {
                     }
                     §§goto(addr77);
                  }
               }
               §§goto(addr77);
            }
            this.§_-x9§ = null;
            §§goto(addr77);
         }
         addr77:
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(!this.§_-Cv§)
            {
               if(!(_loc4_ && this))
               {
                  addr25:
                  this.§_-Cv§ = new Sprite();
                  if(!_loc4_)
                  {
                     addr31:
                     §§push(this);
                     §§push(this.§_-c0§);
                     if(!(_loc4_ && this))
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§_-c0§ = §§pop();
                  }
                  var _loc2_:int = this.§_-x9§.length - 1;
                  loop0:
                  while(true)
                  {
                     §§push(_loc2_);
                     while(§§pop() >= 0)
                     {
                        if(!this.§_-x9§[_loc2_].update(this.§_-c0§,this.§_-Cv§))
                        {
                           this.§_-x9§.splice(_loc2_,1);
                        }
                        §§push(_loc2_);
                        if(_loc3_)
                        {
                           §§push(§§pop() - 1);
                           if(_loc3_ || _loc2_)
                           {
                              continue loop0;
                           }
                        }
                     }
                     if(_loc3_)
                     {
                        this.§_-a9§();
                        this.§_-2N§();
                        this.§_-RK§();
                     }
                     return this.§_-c0§ < this.§_-yT§;
                  }
               }
            }
            §§goto(addr31);
         }
         §§goto(addr25);
      }
      
      private function §_-RK§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§_-Cv§);
         §§push(§_-MB§.§_-Rs§);
         if(_loc2_ || _loc1_)
         {
            §§push(§§pop() / §_-MB§.§_-y3§);
            if(!(_loc1_ && _loc1_))
            {
               §§push(1024);
               if(!(_loc1_ && _loc1_))
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc1_ && _loc2_))
                  {
                     addr51:
                     §§push(1024);
                     if(_loc2_ || _loc1_)
                     {
                        addr69:
                        §§push(§§pop() - §§pop());
                        if(!(_loc1_ && this))
                        {
                           addr67:
                           §§push(2);
                        }
                        §§pop().x = §§pop();
                        §§push(this.§_-j0§);
                        if(_loc2_)
                        {
                           if(§§pop())
                           {
                              addr77:
                              §§push(this.§_-j0§);
                              §§push(§_-MB§.§_-Rs§);
                              if(_loc2_ || _loc2_)
                              {
                                 §§push(§§pop() / §_-MB§.§_-y3§);
                                 if(!_loc1_)
                                 {
                                    §§push(1024);
                                    if(!_loc1_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc1_)
                                       {
                                          addr97:
                                          §§push(1024);
                                          if(_loc2_ || this)
                                          {
                                             addr112:
                                             §§push(§§pop() - §§pop());
                                             if(_loc2_ || _loc1_)
                                             {
                                                addr121:
                                                §§push(§§pop() / 2);
                                             }
                                             §§pop().width = §§pop();
                                             if(!_loc1_)
                                             {
                                                addr125:
                                                §§push(this.§_-sM§);
                                                if(_loc2_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc1_ && _loc1_))
                                                      {
                                                         §§push(this.§_-sM§);
                                                         if(_loc2_ || _loc2_)
                                                         {
                                                            §§push(§_-MB§.§_-Rs§);
                                                            if(_loc2_)
                                                            {
                                                               §§push(§§pop() / §_-MB§.§_-y3§);
                                                               if(_loc2_)
                                                               {
                                                                  §§push(1024);
                                                                  if(!(_loc1_ && _loc1_))
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc2_ || this)
                                                                     {
                                                                        §§push(1024);
                                                                        if(_loc2_ || _loc1_)
                                                                        {
                                                                           §§goto(addr179);
                                                                        }
                                                                        §§goto(addr188);
                                                                     }
                                                                     §§goto(addr203);
                                                                  }
                                                                  §§goto(addr179);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr203);
                                                      }
                                                   }
                                                   addr179:
                                                   §§push(§§pop() - §§pop());
                                                   if(!(_loc1_ && _loc2_))
                                                   {
                                                      addr188:
                                                      §§push(§§pop() / 2);
                                                      if(_loc2_ || _loc1_)
                                                      {
                                                         addr203:
                                                         §§pop().width = §§pop();
                                                         §§push(this.§_-sM§);
                                                         §§push(-this.§_-sM§.width);
                                                      }
                                                   }
                                                   §§pop().x = §§pop();
                                                   return;
                                                }
                                             }
                                             §§goto(addr203);
                                          }
                                       }
                                       §§goto(addr121);
                                    }
                                    §§goto(addr112);
                                 }
                                 §§goto(addr121);
                              }
                              §§goto(addr97);
                           }
                           §§goto(addr125);
                        }
                        §§goto(addr77);
                     }
                     §§push(§§pop() / §§pop());
                  }
               }
               §§goto(addr69);
            }
            §§goto(addr51);
         }
         §§goto(addr67);
      }
      
      private function §_-a9§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§_-rC§ = null;
         var _loc1_:Sprite = this.§_-Cv§.getChildByName(§_-fs§.§_-6G§) as Sprite;
         if(!_loc3_)
         {
            if(_loc1_)
            {
               addr37:
               _loc2_ = new §_-rC§(this.§_-sa§,this.§_-cr§,this.§_-D0§);
               if(!_loc3_)
               {
                  _loc2_.y = _loc1_.§_-cB§.top;
                  if(_loc3_)
                  {
                  }
                  §§goto(addr67);
               }
               _loc1_.addChildAt(_loc2_,0);
            }
            addr67:
            return;
         }
         §§goto(addr37);
      }
      
      private function §_-2N§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:§_-19§ = null;
         if(_loc4_ || _loc3_)
         {
            if(this.§_-RB§)
            {
               if(!(_loc5_ && _loc2_))
               {
                  return;
               }
            }
         }
         var _loc1_:Sprite = this.§_-Cv§.getChildByName(§_-fs§.§_-6G§) as Sprite;
         if(_loc4_)
         {
            if(_loc1_)
            {
               if(_loc4_ || _loc2_)
               {
                  addr56:
                  if(this.§_-UR§)
                  {
                     if(_loc4_ || _loc1_)
                     {
                        §§push(1);
                        if(_loc4_)
                        {
                           §§push(int(§§pop() + Math.ceil((§_-MB§.§_-SP§ - §_-tW§.§_-SP§) / 2)));
                        }
                        _loc2_ = §§pop();
                        if(_loc4_ || _loc2_)
                        {
                           addr88:
                           _loc3_ = new §_-19§(this.§_-UR§);
                           if(!_loc5_)
                           {
                              _loc3_.width = §_-MB§.§_-1q§;
                              if(!(_loc5_ && this))
                              {
                                 §§goto(addr107);
                              }
                              §§goto(addr142);
                           }
                           addr107:
                           _loc3_.height = _loc2_;
                           if(_loc4_ || _loc2_)
                           {
                              §§push(_loc3_);
                              §§push(_loc1_.§_-cB§.bottom - §_-tW§.§_-SP§);
                              if(!(_loc5_ && _loc2_))
                              {
                                 §§push(§§pop() - _loc3_.height);
                              }
                              §§pop().y = §§pop();
                              if(!(_loc5_ && this))
                              {
                                 addr142:
                                 this.§_-Cv§.addChild(_loc3_);
                              }
                           }
                           _loc3_ = new §_-19§(this.§_-UR§);
                           if(_loc4_ || _loc1_)
                           {
                              _loc3_.width = §_-MB§.§_-1q§;
                              if(_loc4_ || _loc3_)
                              {
                                 _loc3_.height = _loc2_;
                                 if(_loc4_)
                                 {
                                    _loc3_.y = _loc1_.§_-cB§.bottom - 1;
                                    if(_loc4_ || this)
                                    {
                                    }
                                    §§goto(addr199);
                                 }
                                 this.§_-Cv§.addChild(_loc3_);
                              }
                           }
                           addr199:
                           _loc3_ = new §_-19§(this.§_-UR§);
                           _loc3_.width = 1;
                           _loc3_.height = §_-MB§.§_-SP§;
                           §§push(_loc3_);
                           §§push(_loc1_.§_-cB§.bottom - §_-tW§.§_-SP§);
                           if(_loc4_ || _loc3_)
                           {
                              §§push(§§pop() - _loc2_);
                           }
                           §§pop().y = §§pop();
                           _loc3_.x = 0;
                           this.§_-sM§ = _loc3_;
                           if(_loc4_ || this)
                           {
                              this.§_-Cv§.addChild(_loc3_);
                           }
                           _loc3_ = new §_-19§(this.§_-UR§);
                           _loc3_.width = 1;
                           if(_loc4_ || _loc1_)
                           {
                              _loc3_.height = §_-MB§.§_-SP§;
                              if(!(_loc5_ && _loc3_))
                              {
                                 §§push(_loc3_);
                                 §§push(_loc1_.§_-cB§.bottom - §_-tW§.§_-SP§);
                                 if(!(_loc5_ && _loc1_))
                                 {
                                    §§push(§§pop() - _loc2_);
                                 }
                                 §§pop().y = §§pop();
                                 if(!(_loc5_ && this))
                                 {
                                    _loc3_.x = §_-MB§.§_-1q§;
                                 }
                                 §§goto(addr315);
                              }
                              this.§_-j0§ = _loc3_;
                              this.§_-Cv§.addChild(_loc3_);
                           }
                        }
                        §§goto(addr315);
                     }
                  }
                  §§goto(addr315);
               }
               §§goto(addr88);
            }
            addr315:
            this.§_-RB§ = true;
            return;
         }
         §§goto(addr56);
      }
      
      public function clone() : §_-oc§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§_-ga§ = null;
         var _loc1_:§_-oc§ = new §_-oc§(null,null);
         for each(_loc2_ in this.§_-x9§)
         {
            if(_loc6_)
            {
               _loc1_.§_-x9§.push(_loc2_.clone());
            }
         }
         if(_loc6_)
         {
            _loc1_.§_-c0§ = this.§_-c0§;
            _loc1_.§_-yT§ = this.§_-yT§;
            _loc1_.§_-sa§ = this.§_-sa§;
            if(!_loc5_)
            {
               _loc1_.§_-cr§ = this.§_-cr§;
               _loc1_.§_-BX§ = this.§_-BX§;
               _loc1_.§_-D0§ = this.§_-D0§;
               addr89:
               _loc1_.§_-UR§ = this.§_-UR§;
               _loc1_.§_-Uc§ = this.§_-Uc§;
            }
            return _loc1_;
         }
         §§goto(addr89);
      }
      
      public function get §_-99§() : String
      {
         return this.§_-Uc§;
      }
      
      public function set §_-99§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§_-Uc§ = param1;
         }
      }
   }
}
