package §_-wp§
{
   import §_-V7§.§_-rJ§;
   import §_-wT§.§_-c9§;
   import flash.display.DisplayObject;
   import flash.filters.BevelFilter;
   import flash.filters.BitmapFilter;
   import flash.filters.BlurFilter;
   import flash.filters.ColorMatrixFilter;
   import flash.filters.ConvolutionFilter;
   import flash.filters.DisplacementMapFilter;
   import flash.filters.DropShadowFilter;
   import flash.filters.GlowFilter;
   import flash.filters.GradientBevelFilter;
   import flash.filters.GradientGlowFilter;
   import flash.filters.ShaderFilter;
   
   public class §_-3L§ extends §_-rJ§
   {
      
      public static const §_-5n§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §_-5n§ = ["x","y","z","scaleX","scaleY","scaleZ","rotation","rotationX","rotationY","rotationZ","alpha","width","height","_bevelFilter","_blurFilter","_colorMatrixFilter","_convolutionFilter","_displacementMapFilter","_dropShadowFilter","_glowFilter","_gradientBevelFilter","_gradientGlowFilter","_shaderFilter"];
         }
      }
      
      protected var _flags:uint = 0;
      
      protected var §_-3D§:DisplayObjectParameter;
      
      protected var §_-9Z§:DisplayObject = null;
      
      protected var §_-CQ§:DisplayObjectParameter;
      
      public function §_-3L§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§_-CQ§ = new DisplayObjectParameter();
            if(!(_loc1_ && _loc1_))
            {
               addr39:
               this.§_-3D§ = new DisplayObjectParameter();
               if(!(_loc1_ && this))
               {
                  super();
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      public static function §_-mO§(param1:§_-c9§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            param1.§_-tG§(§_-3L§,DisplayObject,§_-5n§);
         }
      }
      
      override public function setObject(param1:String, param2:Object) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(!_loc3_)
         {
            if(§§pop() == "_blurFilter")
            {
               this.§_-nT§(param2 as BitmapFilter,BlurFilter);
               return;
            }
            if(param1 == "_glowFilter")
            {
               if(!(_loc3_ && param2))
               {
                  this.§_-nT§(param2 as BitmapFilter,GlowFilter);
                  return;
               }
            }
            else
            {
               if(param1 == "_dropShadowFilter")
               {
                  if(_loc4_)
                  {
                     this.§_-nT§(param2 as BitmapFilter,DropShadowFilter);
                     return;
                  }
               }
               if(param1 == "_colorMatrixFilter")
               {
                  this.§_-nT§(param2 as BitmapFilter,ColorMatrixFilter);
                  return;
               }
               if(param1 == "_bevelFilter")
               {
                  if(_loc4_)
                  {
                     this.§_-nT§(param2 as BitmapFilter,BevelFilter);
                     if(_loc4_)
                     {
                        return;
                     }
                  }
                  §§goto(addr175);
               }
               addr98:
               if(param1 == "_gradientGlowFilter")
               {
                  this.§_-nT§(param2 as BitmapFilter,GradientGlowFilter);
                  return;
               }
               if(param1 != "_gradientBevelFilter")
               {
                  if(param1 == "_convolutionFilter")
                  {
                     if(_loc4_ || param2)
                     {
                        this.§_-nT§(param2 as BitmapFilter,ConvolutionFilter);
                        return;
                     }
                  }
                  else
                  {
                     if(param1 == "_displacementMapFilter")
                     {
                        if(_loc4_ || param2)
                        {
                           this.§_-nT§(param2 as BitmapFilter,DisplacementMapFilter);
                           if(_loc3_ && _loc3_)
                           {
                              §§goto(addr175);
                           }
                        }
                     }
                     else if(param1 == "_shaderFilter")
                     {
                        §§goto(addr175);
                     }
                     else
                     {
                        return;
                     }
                     §§goto(addr175);
                  }
                  return;
               }
               this.§_-nT§(param2 as BitmapFilter,GradientBevelFilter);
               if(!(_loc3_ && param1))
               {
                  return;
               }
            }
            addr175:
            this.§_-nT§(param2 as BitmapFilter,ShaderFilter);
            return;
         }
         §§goto(addr98);
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(param1 == "x")
         {
            if(_loc4_)
            {
               this._flags |= 1;
               §§push(this.§_-3D§);
               §§push(this.§_-3D§);
               if(!(_loc5_ && param2))
               {
                  §§push(§§pop().relativeFlags);
                  if(!_loc5_)
                  {
                     if(param3)
                     {
                        §§goto(addr52);
                     }
                     else
                     {
                        §§push(0);
                        if(!(_loc5_ && param2))
                        {
                           addr52:
                           §§push(§§pop() | 1);
                           if(_loc4_)
                           {
                              §§pop().relativeFlags = §§pop();
                              if(_loc4_ || param2)
                              {
                                 this.§_-3D§.x = param2;
                                 if(_loc5_ && this)
                                 {
                                 }
                                 §§goto(addr767);
                              }
                              else
                              {
                                 addr503:
                                 this.§_-3D§.rotationY = param2;
                                 if(!_loc5_)
                                 {
                                    §§goto(addr767);
                                 }
                                 else
                                 {
                                    addr652:
                                    §§push(this.§_-3D§);
                                    §§push(this.§_-3D§.relativeFlags);
                                    if(!(_loc5_ && param3))
                                    {
                                       §§push(param3);
                                       if(!_loc5_)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc4_ || this)
                                             {
                                                addr675:
                                                §§push(2048);
                                                if(!(_loc5_ && param2))
                                                {
                                                   addr694:
                                                   §§push(§§pop() | §§pop());
                                                   if(_loc4_)
                                                   {
                                                      §§pop().relativeFlags = §§pop();
                                                      addr698:
                                                      §§push(this.§_-3D§);
                                                      if(!(_loc5_ && this))
                                                      {
                                                         addr707:
                                                         §§push(param2);
                                                         if(!(_loc5_ && this))
                                                         {
                                                            addr715:
                                                            §§pop().width = §§pop();
                                                         }
                                                         §§goto(addr767);
                                                      }
                                                      else
                                                      {
                                                         addr765:
                                                         §§push(param2);
                                                      }
                                                      §§pop().height = §§pop();
                                                   }
                                                   §§goto(addr767);
                                                }
                                                else
                                                {
                                                   addr748:
                                                   §§push(§§pop() | §§pop());
                                                }
                                                §§goto(addr760);
                                             }
                                             else
                                             {
                                                addr747:
                                                §§goto(addr748);
                                                §§push(4096);
                                             }
                                             §§goto(addr748);
                                          }
                                          else
                                          {
                                             §§push(0);
                                             if(_loc4_ || this)
                                             {
                                                §§goto(addr694);
                                                §§push(§§pop());
                                             }
                                             else
                                             {
                                                addr758:
                                                §§goto(addr748);
                                                §§push(§§pop());
                                             }
                                             addr760:
                                             §§pop().relativeFlags = §§pop();
                                             if(_loc4_)
                                             {
                                                §§goto(addr765);
                                                §§push(this.§_-3D§);
                                             }
                                             §§goto(addr767);
                                          }
                                       }
                                       else
                                       {
                                          addr746:
                                          if(§§pop())
                                          {
                                             §§goto(addr747);
                                          }
                                          else
                                          {
                                             §§goto(addr758);
                                             §§push(0);
                                          }
                                          §§goto(addr748);
                                       }
                                       §§goto(addr747);
                                    }
                                    §§goto(addr675);
                                 }
                              }
                              §§goto(addr767);
                           }
                           else
                           {
                              addr614:
                              §§pop().relativeFlags = §§pop();
                              if(!(_loc5_ && param2))
                              {
                                 addr624:
                                 this.§_-3D§.alpha = param2;
                                 if(!(_loc4_ || param3))
                                 {
                                    §§goto(addr698);
                                 }
                                 §§goto(addr767);
                              }
                           }
                           addr767:
                           return;
                           §§push(§§pop());
                        }
                     }
                     §§goto(addr748);
                  }
                  else
                  {
                     addr169:
                     addr174:
                     §§push(§§pop() | 4);
                     if(!(_loc5_ && param2))
                     {
                        §§pop().relativeFlags = §§pop();
                        if(_loc4_)
                        {
                           this.§_-3D§.z = param2;
                        }
                     }
                     else
                     {
                        addr550:
                        §§pop().relativeFlags = §§pop();
                        this.§_-3D§.rotationZ = param2;
                        if(_loc4_ || param1)
                        {
                        }
                     }
                     §§goto(addr767);
                     §§push(this.§_-3D§.relativeFlags);
                     if(_loc4_ || param2)
                     {
                        §§goto(addr746);
                        §§push(param3);
                     }
                  }
                  §§goto(addr747);
               }
               else
               {
                  §§pop().relativeFlags = §§pop().relativeFlags | (!!param3 ? 64 : 0);
                  addr386:
                  §§push(this.§_-3D§);
                  if(!_loc5_)
                  {
                     §§push(param2);
                     if(!_loc5_)
                     {
                        §§pop().rotation = §§pop();
                     }
                     else
                     {
                        addr462:
                        §§pop().rotationX = §§pop();
                     }
                  }
                  §§goto(addr767);
               }
            }
            §§goto(addr503);
         }
         else if(param1 == "y")
         {
            if(_loc4_ || param1)
            {
               this._flags |= 2;
               §§push(this.§_-3D§);
               if(_loc4_ || param1)
               {
                  §§push(this.§_-3D§);
                  if(!_loc5_)
                  {
                     §§push(§§pop().relativeFlags);
                     if(param3)
                     {
                        §§push(2);
                        if(_loc4_ || param1)
                        {
                           addr126:
                           §§push(§§pop() | §§pop());
                           if(!(_loc5_ && this))
                           {
                              §§pop().relativeFlags = §§pop();
                              this.§_-3D§.y = param2;
                           }
                           §§goto(addr767);
                        }
                        else
                        {
                           addr501:
                           §§pop().relativeFlags = §§pop() | §§pop();
                           addr497:
                           §§goto(addr503);
                        }
                     }
                     else
                     {
                        §§push(0);
                        if(_loc4_ || this)
                        {
                           §§goto(addr126);
                           §§push(§§pop());
                        }
                        else
                        {
                           addr458:
                           §§pop().relativeFlags = §§pop() | §§pop();
                           §§goto(addr462);
                           §§push(this.§_-3D§);
                           §§push(param2);
                        }
                        §§goto(addr767);
                     }
                     §§goto(addr767);
                  }
                  else
                  {
                     addr316:
                     §§push(§§pop().relativeFlags);
                     §§push(param3);
                     if(!(_loc5_ && param1))
                     {
                        if(§§pop())
                        {
                           if(!(_loc5_ && param3))
                           {
                              addr338:
                              §§push(§§pop() | 32);
                              if(_loc4_)
                              {
                                 §§pop().relativeFlags = §§pop();
                                 §§push(this.§_-3D§);
                                 if(_loc4_)
                                 {
                                    §§push(param2);
                                    if(_loc4_ || param3)
                                    {
                                       §§pop().scaleZ = §§pop();
                                       if(_loc4_ || param2)
                                       {
                                          §§goto(addr767);
                                       }
                                       else
                                       {
                                          §§goto(addr652);
                                       }
                                    }
                                    §§goto(addr715);
                                 }
                                 else
                                 {
                                    §§goto(addr735);
                                 }
                              }
                           }
                           §§goto(addr675);
                        }
                        else
                        {
                           §§push(0);
                        }
                        §§goto(addr338);
                     }
                     else
                     {
                        addr495:
                        if(§§pop())
                        {
                           §§goto(addr497);
                           §§push(256);
                        }
                        else
                        {
                           §§goto(addr501);
                           §§push(0);
                        }
                        §§goto(addr501);
                     }
                  }
                  §§goto(addr501);
               }
               else
               {
                  addr231:
                  §§pop().scaleX = param2;
                  if(_loc4_)
                  {
                     §§goto(addr767);
                  }
                  else
                  {
                     addr254:
                     §§push(this.§_-3D§);
                     if(_loc4_ || this)
                     {
                        §§push(this.§_-3D§);
                        if(_loc4_ || param3)
                        {
                           §§push(§§pop().relativeFlags);
                           §§push(param3);
                           if(!_loc5_)
                           {
                              §§push(§§pop() | (!!§§pop() ? 16 : 0));
                              if(!(_loc5_ && param2))
                              {
                                 §§pop().relativeFlags = §§pop();
                                 this.§_-3D§.scaleY = param2;
                                 §§goto(addr767);
                              }
                              else
                              {
                                 §§goto(addr458);
                              }
                           }
                           else
                           {
                              §§goto(addr495);
                           }
                           §§goto(addr767);
                        }
                        §§goto(addr652);
                     }
                     else
                     {
                        §§goto(addr735);
                     }
                  }
                  §§goto(addr767);
               }
            }
            §§goto(addr462);
         }
         else if(param1 == "z")
         {
            this._flags |= 4;
            if(_loc4_ || this)
            {
               §§push(this.§_-3D§);
               if(_loc4_)
               {
                  §§push(this.§_-3D§.relativeFlags);
                  §§push(param3);
                  if(_loc4_)
                  {
                     if(§§pop())
                     {
                        if(!_loc5_)
                        {
                           §§goto(addr169);
                        }
                        else
                        {
                           addr604:
                           §§push(1024);
                           if(!_loc5_)
                           {
                              addr607:
                              §§push(§§pop() | §§pop());
                              if(_loc4_)
                              {
                                 §§goto(addr614);
                              }
                              else
                              {
                                 §§goto(addr675);
                              }
                           }
                           else
                           {
                              §§goto(addr694);
                           }
                           §§goto(addr675);
                        }
                     }
                     else
                     {
                        §§push(0);
                     }
                     §§goto(addr174);
                  }
                  else
                  {
                     addr430:
                     if(§§pop())
                     {
                        if(!(_loc5_ && this))
                        {
                           §§push(128);
                           if(_loc4_ || this)
                           {
                              §§goto(addr458);
                           }
                           else
                           {
                              §§goto(addr607);
                           }
                        }
                        else
                        {
                           §§goto(addr675);
                        }
                     }
                     else
                     {
                        §§push(0);
                        if(_loc4_ || this)
                        {
                           §§goto(addr458);
                           §§push(§§pop());
                        }
                        else
                        {
                           addr547:
                           §§push(§§pop() | §§pop());
                           if(_loc4_)
                           {
                              §§goto(addr550);
                           }
                        }
                        §§goto(addr767);
                     }
                  }
                  §§goto(addr675);
               }
               §§goto(addr765);
            }
            else
            {
               addr299:
               this._flags |= 32;
               §§push(this.§_-3D§);
               §§push(this.§_-3D§);
               if(_loc4_ || param1)
               {
                  §§goto(addr316);
               }
               §§goto(addr652);
            }
         }
         else if(param1 == "scaleX")
         {
            this._flags |= 8;
            §§push(this.§_-3D§);
            if(_loc4_ || param2)
            {
               §§push(this.§_-3D§);
               if(!(_loc5_ && this))
               {
                  §§push(§§pop().relativeFlags);
                  if(!_loc5_)
                  {
                     §§pop().relativeFlags = §§pop() | (!!param3 ? 8 : 0);
                     §§goto(addr231);
                     §§push(this.§_-3D§);
                  }
                  else
                  {
                     §§goto(addr386);
                  }
                  §§goto(addr169);
               }
               §§goto(addr652);
            }
            else
            {
               §§goto(addr624);
            }
         }
         else
         {
            §§push(param1);
            if(_loc4_)
            {
               if(§§pop() == "scaleY")
               {
                  this._flags |= 16;
                  if(!(_loc5_ && param2))
                  {
                     §§goto(addr254);
                  }
                  §§goto(addr715);
               }
               else if(param1 == "scaleZ")
               {
                  §§goto(addr299);
               }
               else
               {
                  if(param1 == "rotation")
                  {
                     this._flags |= 64;
                     §§push(this.§_-3D§);
                     if(!_loc5_)
                     {
                        §§goto(addr386);
                        §§push(this.§_-3D§);
                     }
                     else
                     {
                        §§goto(addr707);
                     }
                     §§goto(addr698);
                  }
                  else if(param1 == "rotationX")
                  {
                     if(!_loc5_)
                     {
                        this._flags |= 128;
                        §§push(this.§_-3D§);
                        if(_loc4_ || this)
                        {
                           §§push(this.§_-3D§);
                           if(_loc4_)
                           {
                              §§goto(addr430);
                              §§push(§§pop().relativeFlags);
                              §§push(param3);
                           }
                           §§goto(addr169);
                        }
                        else
                        {
                           addr585:
                           §§push(this.§_-3D§.relativeFlags);
                           if(_loc4_ || param3)
                           {
                              §§push(param3);
                              if(_loc4_ || param2)
                              {
                                 if(§§pop())
                                 {
                                    §§goto(addr604);
                                 }
                                 else
                                 {
                                    §§push(0);
                                 }
                                 §§goto(addr607);
                              }
                              else
                              {
                                 §§goto(addr746);
                              }
                           }
                           else
                           {
                              §§goto(addr675);
                           }
                           §§goto(addr748);
                        }
                     }
                     §§goto(addr52);
                  }
                  else
                  {
                     if(param1 == "rotationY")
                     {
                        if(_loc4_ || param3)
                        {
                           this._flags |= 256;
                           if(_loc4_ || this)
                           {
                              §§push(this.§_-3D§);
                              §§push(this.§_-3D§.relativeFlags);
                              §§push(param3);
                              if(_loc4_)
                              {
                                 §§goto(addr495);
                              }
                              else
                              {
                                 addr539:
                                 if(§§pop())
                                 {
                                    §§goto(addr547);
                                    §§push(512);
                                 }
                                 else
                                 {
                                    §§push(0);
                                    if(!_loc5_)
                                    {
                                       §§goto(addr547);
                                    }
                                    else
                                    {
                                       §§goto(addr607);
                                    }
                                 }
                              }
                              §§goto(addr675);
                           }
                           §§goto(addr169);
                        }
                        §§goto(addr698);
                     }
                     else
                     {
                        §§push(param1);
                        if(_loc4_ || param1)
                        {
                           if(§§pop() == "rotationZ")
                           {
                              this._flags |= 512;
                              §§push(this.§_-3D§);
                              §§push(this.§_-3D§);
                              if(_loc4_ || param2)
                              {
                                 §§goto(addr539);
                                 §§push(§§pop().relativeFlags);
                                 §§push(param3);
                              }
                              else
                              {
                                 §§goto(addr652);
                              }
                              §§goto(addr748);
                           }
                           else
                           {
                              §§push(param1);
                              if(!_loc5_)
                              {
                                 if(§§pop() == "alpha")
                                 {
                                    if(_loc4_)
                                    {
                                       this._flags |= 1024;
                                       if(_loc4_ || param1)
                                       {
                                          §§goto(addr585);
                                          §§push(this.§_-3D§);
                                       }
                                       §§goto(addr624);
                                    }
                                    else
                                    {
                                       addr720:
                                       this._flags |= 4096;
                                       if(_loc4_ || param2)
                                       {
                                          §§goto(addr169);
                                       }
                                       §§goto(addr767);
                                    }
                                 }
                                 else
                                 {
                                    §§push(param1);
                                 }
                                 §§goto(addr767);
                              }
                           }
                           §§goto(addr767);
                        }
                     }
                     §§goto(addr767);
                  }
                  §§goto(addr767);
               }
               §§goto(addr767);
            }
            if(§§pop() == "width")
            {
               if(_loc4_)
               {
                  this._flags |= 2048;
                  if(_loc4_ || param1)
                  {
                     §§goto(addr652);
                  }
                  §§goto(addr698);
               }
               §§goto(addr652);
            }
            else if(param1 == "height")
            {
               §§goto(addr720);
            }
         }
         §§goto(addr767);
      }
      
      protected function §_-nT§(param1:BitmapFilter, param2:Class) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Array = this.§_-9Z§.filters;
         var _loc4_:uint = _loc3_.length;
         var _loc5_:* = uint(0);
         loop0:
         while(true)
         {
            §§push(_loc5_);
            while(true)
            {
               if(§§pop() >= _loc4_)
               {
                  _loc3_.push(param1);
                  if(_loc7_)
                  {
                     addr89:
                     this.§_-9Z§.filters = _loc3_;
                     break;
                  }
                  break;
               }
               if(!(_loc3_[_loc5_] is param2))
               {
                  §§push(_loc5_);
                  if(_loc7_)
                  {
                     §§push(uint(§§pop() + 1));
                     if(_loc6_ && _loc3_)
                     {
                        continue;
                     }
                  }
                  _loc5_ = §§pop();
                  if(_loc6_)
                  {
                     break;
                  }
                  continue loop0;
               }
               _loc3_[_loc5_] = param1;
               this.§_-9Z§.filters = _loc3_;
               if(_loc7_)
               {
                  return;
               }
               §§goto(addr89);
            }
            return;
         }
      }
      
      override public function get target() : Object
      {
         return this.§_-9Z§;
      }
      
      protected function §_-sg§(param1:Class) : BitmapFilter
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:BitmapFilter = null;
         var _loc3_:Array = this.§_-9Z§.filters;
         var _loc4_:uint = _loc3_.length;
         var _loc5_:* = uint(0);
         while(_loc5_ < _loc4_)
         {
            if((_loc2_ = _loc3_[_loc5_] as BitmapFilter) is param1)
            {
               if(!(_loc8_ && _loc3_))
               {
                  return _loc2_;
               }
            }
            §§push(_loc5_);
            if(_loc7_)
            {
               §§push(uint(§§pop() + 1));
            }
            _loc5_ = §§pop();
         }
         _loc2_ = new param1();
         if(!_loc8_)
         {
            _loc3_.push(_loc2_);
            if(!_loc8_)
            {
               addr94:
               this.§_-9Z§.filters = _loc3_;
            }
            return _loc2_;
         }
         §§goto(addr94);
      }
      
      override protected function newInstance() : §_-rJ§
      {
         return new §_-3L§();
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            if(param1 == "x")
            {
               if(_loc5_ || param2)
               {
                  this._flags |= 1;
                  if(!_loc4_)
                  {
                     §§push(this.§_-CQ§);
                     §§push(this.§_-CQ§.relativeFlags);
                     if(!(_loc4_ && param1))
                     {
                        if(param3)
                        {
                           addr630:
                           §§push(1);
                           if(!_loc4_)
                           {
                              §§push(§§pop());
                           }
                           §§push(§§pop() | §§pop());
                           if(!(_loc4_ && param3))
                           {
                              §§pop().relativeFlags = §§pop();
                              §§push(this.§_-CQ§);
                              §§push(param2);
                              if(!_loc4_)
                              {
                                 §§pop().rotationZ = §§pop();
                                 addr795:
                                 return;
                                 addr649:
                              }
                              else
                              {
                                 addr745:
                                 §§pop().width = §§pop();
                                 §§goto(addr795);
                              }
                           }
                           else
                           {
                              addr685:
                              §§pop().relativeFlags = §§pop();
                              §§push(this.§_-CQ§);
                              if(!_loc4_)
                              {
                                 addr691:
                                 §§pop().alpha = param2;
                              }
                              else
                              {
                                 addr794:
                                 §§pop().height = param2;
                                 addr793:
                              }
                           }
                           §§goto(addr795);
                        }
                        else
                        {
                           §§push(0);
                        }
                        §§pop().relativeFlags = §§pop() | §§pop();
                        if(_loc5_)
                        {
                           §§push(this.§_-CQ§);
                           if(!_loc4_)
                           {
                              §§push(param2);
                              if(_loc5_ || this)
                              {
                                 §§pop().x = §§pop();
                                 if(_loc5_ || param3)
                                 {
                                    §§goto(addr795);
                                 }
                                 else
                                 {
                                    addr452:
                                    this._flags |= 128;
                                    §§push(this.§_-CQ§);
                                    if(_loc5_ || param1)
                                    {
                                       addr471:
                                       §§push(this.§_-CQ§.relativeFlags);
                                       if(param3)
                                       {
                                          §§push(128);
                                          if(!(_loc4_ && param3))
                                          {
                                             addr491:
                                             §§push(§§pop() | §§pop());
                                             if(!_loc4_)
                                             {
                                                §§pop().relativeFlags = §§pop();
                                                addr495:
                                                this.§_-CQ§.rotationX = param2;
                                                addr499:
                                             }
                                             else
                                             {
                                                addr732:
                                                §§pop().relativeFlags = §§pop();
                                                if(_loc5_ || param2)
                                                {
                                                   addr740:
                                                   §§push(this.§_-CQ§);
                                                   if(_loc5_)
                                                   {
                                                      addr744:
                                                      §§goto(addr745);
                                                      §§push(param2);
                                                   }
                                                   else
                                                   {
                                                      addr765:
                                                      §§push(this.§_-CQ§.relativeFlags | (!!param3 ? 4096 : 0));
                                                   }
                                                }
                                             }
                                             §§goto(addr795);
                                          }
                                          else
                                          {
                                             addr558:
                                             §§push(§§pop() | §§pop());
                                             if(!_loc4_)
                                             {
                                                §§pop().relativeFlags = §§pop();
                                                if(_loc5_ || param2)
                                                {
                                                   §§push(this.§_-CQ§);
                                                   if(!_loc4_)
                                                   {
                                                      addr573:
                                                      §§push(param2);
                                                      if(_loc5_ || param1)
                                                      {
                                                         §§pop().rotationY = §§pop();
                                                         addr582:
                                                      }
                                                      §§goto(addr795);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr744);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr740);
                                                }
                                                §§goto(addr744);
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push(0);
                                          if(!(_loc4_ && param1))
                                          {
                                             §§goto(addr491);
                                             §§push(§§pop());
                                          }
                                          else
                                          {
                                             addr729:
                                             §§push(§§pop() | §§pop());
                                             if(!_loc4_)
                                             {
                                                §§goto(addr732);
                                             }
                                          }
                                       }
                                       addr776:
                                       §§pop().relativeFlags = §§pop();
                                       if(!(_loc4_ && this))
                                       {
                                          addr791:
                                          §§goto(addr793);
                                          §§push(this.§_-CQ§);
                                       }
                                       §§goto(addr795);
                                    }
                                    §§goto(addr744);
                                 }
                              }
                              else
                              {
                                 addr322:
                                 §§pop().scaleY = §§pop();
                                 §§goto(addr795);
                              }
                              §§goto(addr795);
                           }
                           else
                           {
                              addr177:
                              §§push(this.§_-CQ§.relativeFlags);
                              if(!(_loc4_ && this))
                              {
                                 §§push(param3);
                                 if(_loc5_ || param3)
                                 {
                                    if(§§pop())
                                    {
                                       §§push(4);
                                       if(_loc5_ || param3)
                                       {
                                          addr210:
                                          §§pop().relativeFlags = §§pop() | §§pop();
                                          if(!_loc4_)
                                          {
                                             §§push(this.§_-CQ§);
                                             if(!_loc4_)
                                             {
                                                §§push(param2);
                                                if(_loc5_ || param3)
                                                {
                                                   §§pop().z = §§pop();
                                                   if(!_loc4_)
                                                   {
                                                      §§goto(addr795);
                                                   }
                                                   else
                                                   {
                                                      addr383:
                                                      this._flags |= 64;
                                                      addr389:
                                                      §§push(this.§_-CQ§);
                                                      if(_loc5_)
                                                      {
                                                         §§push(this.§_-CQ§.relativeFlags);
                                                         if(param3)
                                                         {
                                                            §§push(64);
                                                            if(!_loc4_)
                                                            {
                                                               addr419:
                                                               §§pop().relativeFlags = §§pop() | §§pop();
                                                               §§push(this.§_-CQ§);
                                                               if(_loc5_ || this)
                                                               {
                                                                  §§push(param2);
                                                                  if(_loc5_ || this)
                                                                  {
                                                                     §§pop().rotation = §§pop();
                                                                     if(_loc5_)
                                                                     {
                                                                        addr441:
                                                                        §§goto(addr795);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr452);
                                                                     }
                                                                  }
                                                                  §§goto(addr745);
                                                               }
                                                               §§goto(addr744);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr630);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(0);
                                                            if(_loc5_ || param2)
                                                            {
                                                               §§goto(addr419);
                                                               §§push(§§pop());
                                                            }
                                                         }
                                                         §§goto(addr491);
                                                      }
                                                      §§goto(addr765);
                                                   }
                                                }
                                                §§goto(addr691);
                                             }
                                             §§goto(addr573);
                                          }
                                          §§goto(addr745);
                                       }
                                       else
                                       {
                                          addr681:
                                          §§push(§§pop() | §§pop());
                                          if(_loc5_)
                                          {
                                             §§goto(addr685);
                                          }
                                          §§goto(addr795);
                                       }
                                    }
                                    else
                                    {
                                       §§push(0);
                                       if(_loc5_)
                                       {
                                          §§goto(addr210);
                                          §§push(§§pop());
                                       }
                                       else
                                       {
                                          addr633:
                                          §§push(§§pop());
                                       }
                                    }
                                    §§goto(addr630);
                                 }
                                 else
                                 {
                                    addr545:
                                    if(§§pop())
                                    {
                                       §§push(256);
                                       if(_loc5_ || param3)
                                       {
                                          §§goto(addr558);
                                          §§push(§§pop());
                                       }
                                       else
                                       {
                                          §§goto(addr681);
                                       }
                                       §§goto(addr776);
                                    }
                                    else
                                    {
                                       §§goto(addr558);
                                       §§push(0);
                                    }
                                    §§goto(addr558);
                                 }
                              }
                           }
                           §§goto(addr765);
                        }
                        §§goto(addr389);
                     }
                     else
                     {
                        addr622:
                        §§push(512);
                        if(_loc4_ && this)
                        {
                           addr728:
                           §§goto(addr729);
                           §§push(§§pop());
                        }
                        §§goto(addr795);
                     }
                  }
                  §§goto(addr582);
               }
               else
               {
                  addr175:
                  §§push(this.§_-CQ§);
               }
               §§goto(addr177);
            }
            else if(param1 == "y")
            {
               this._flags |= 2;
               §§push(this.§_-CQ§);
               §§push(this.§_-CQ§.relativeFlags);
               §§push(param3);
               if(_loc5_ || param1)
               {
                  if(§§pop())
                  {
                     if(_loc5_ || param1)
                     {
                        §§push(2);
                        if(_loc5_ || this)
                        {
                           addr134:
                           §§pop().relativeFlags = §§pop() | §§pop();
                           if(_loc5_ || this)
                           {
                              §§push(this.§_-CQ§);
                              §§push(param2);
                              if(_loc5_)
                              {
                                 §§pop().y = §§pop();
                                 if(_loc5_ || this)
                                 {
                                    §§goto(addr795);
                                 }
                                 else
                                 {
                                    addr364:
                                    §§push(this.§_-CQ§);
                                    if(_loc5_)
                                    {
                                       §§pop().scaleZ = param2;
                                       addr370:
                                       §§goto(addr795);
                                    }
                                    else
                                    {
                                       §§goto(addr793);
                                    }
                                 }
                                 §§goto(addr795);
                              }
                              §§goto(addr794);
                           }
                           §§goto(addr370);
                        }
                        §§goto(addr795);
                     }
                     else
                     {
                        addr537:
                        §§push(param3);
                        if(!(_loc4_ && param3))
                        {
                           §§goto(addr545);
                        }
                        else
                        {
                           addr716:
                           if(§§pop())
                           {
                              addr717:
                              §§goto(addr729);
                              §§push(2048);
                           }
                           else
                           {
                              §§push(0);
                              if(_loc5_ || param2)
                              {
                                 §§goto(addr728);
                              }
                           }
                        }
                     }
                     §§goto(addr771);
                  }
                  else
                  {
                     §§push(0);
                     if(!(_loc4_ && param3))
                     {
                        §§goto(addr134);
                        §§push(§§pop());
                     }
                     else
                     {
                        §§goto(addr630);
                     }
                     §§goto(addr794);
                  }
               }
               §§goto(addr765);
            }
            else if(param1 == "z")
            {
               if(_loc5_)
               {
                  this._flags |= 4;
                  if(!(_loc4_ && param2))
                  {
                     §§goto(addr175);
                  }
                  §§goto(addr441);
               }
               else
               {
                  addr241:
                  §§push(this.§_-CQ§);
                  §§push(this.§_-CQ§.relativeFlags);
                  if(param3)
                  {
                     addr255:
                     §§push(§§pop() | 8);
                     if(_loc5_)
                     {
                        §§pop().relativeFlags = §§pop();
                        this.§_-CQ§.scaleX = param2;
                     }
                     else
                     {
                        addr311:
                        §§pop().relativeFlags = §§pop();
                        §§push(this.§_-CQ§);
                        if(_loc5_ || param3)
                        {
                           §§goto(addr322);
                           §§push(param2);
                        }
                        else
                        {
                           addr710:
                           §§push(this.§_-CQ§.relativeFlags);
                           if(_loc5_)
                           {
                              §§push(param3);
                              if(_loc5_)
                              {
                                 §§goto(addr716);
                              }
                              §§goto(addr765);
                           }
                           §§goto(addr771);
                        }
                     }
                     §§goto(addr795);
                  }
                  else
                  {
                     §§push(0);
                     if(_loc5_)
                     {
                        §§goto(addr255);
                        §§push(§§pop());
                     }
                  }
               }
               §§goto(addr774);
            }
            else if(param1 == "scaleX")
            {
               this._flags |= 8;
               if(_loc5_)
               {
                  §§goto(addr241);
               }
               else
               {
                  §§goto(addr499);
               }
            }
            else
            {
               §§push(param1);
               if(!(_loc4_ && param2))
               {
                  if(§§pop() == "scaleY")
                  {
                     this._flags |= 16;
                     §§push(this.§_-CQ§);
                     §§push(this.§_-CQ§);
                     if(_loc5_)
                     {
                        §§push(§§pop().relativeFlags);
                        if(_loc5_)
                        {
                           §§push(param3);
                           if(!(_loc4_ && param3))
                           {
                              if(§§pop())
                              {
                                 addr310:
                                 §§goto(addr311);
                                 §§push(§§pop() | 16);
                              }
                              else
                              {
                                 §§push(0);
                                 if(!(_loc4_ && param1))
                                 {
                                    §§goto(addr310);
                                    §§push(§§pop());
                                 }
                                 else
                                 {
                                    §§goto(addr633);
                                 }
                              }
                              §§goto(addr794);
                           }
                           else
                           {
                              §§goto(addr471);
                           }
                        }
                        §§goto(addr717);
                     }
                     else
                     {
                        addr603:
                        §§push(§§pop().relativeFlags);
                        if(_loc5_ || param1)
                        {
                           addr611:
                           §§push(param3);
                           if(!_loc4_)
                           {
                              if(§§pop())
                              {
                                 if(_loc5_ || param3)
                                 {
                                    §§goto(addr622);
                                 }
                                 else
                                 {
                                    §§goto(addr717);
                                 }
                              }
                              else
                              {
                                 §§goto(addr633);
                                 §§push(0);
                              }
                              §§goto(addr630);
                           }
                           else
                           {
                              §§goto(addr716);
                           }
                        }
                     }
                     §§goto(addr765);
                  }
                  else
                  {
                     §§push(param1);
                     if(_loc5_)
                     {
                        if(§§pop() == "scaleZ")
                        {
                           this._flags |= 32;
                           if(_loc5_)
                           {
                              §§push(this.§_-CQ§);
                              §§push(this.§_-CQ§);
                              if(!_loc4_)
                              {
                                 §§push(§§pop().relativeFlags);
                                 if(param3)
                                 {
                                    if(!_loc4_)
                                    {
                                       §§pop().relativeFlags = 32 | (!(_loc4_ && param3) ? §§pop() : §§pop());
                                       §§goto(addr364);
                                    }
                                    else
                                    {
                                       §§goto(addr611);
                                    }
                                 }
                                 else
                                 {
                                    §§push(0);
                                    if(!_loc4_)
                                    {
                                       §§goto(addr361);
                                    }
                                    §§goto(addr795);
                                 }
                                 §§goto(addr728);
                              }
                              else
                              {
                                 §§goto(addr710);
                              }
                           }
                           else
                           {
                              §§goto(addr495);
                           }
                           §§goto(addr795);
                        }
                        else
                        {
                           §§push(param1);
                           if(_loc5_)
                           {
                              addr374:
                              if(§§pop() == "rotation")
                              {
                                 if(_loc5_ || param2)
                                 {
                                    §§goto(addr383);
                                 }
                                 §§goto(addr649);
                              }
                              else
                              {
                                 addr443:
                                 if(param1 == "rotationX")
                                 {
                                    if(!(_loc4_ && param3))
                                    {
                                       §§goto(addr452);
                                    }
                                    else
                                    {
                                       §§goto(addr691);
                                    }
                                 }
                                 else
                                 {
                                    §§push(param1);
                                    if(!_loc4_)
                                    {
                                       addr503:
                                       if(§§pop() == "rotationY")
                                       {
                                          if(!(_loc4_ && this))
                                          {
                                             this._flags |= 256;
                                             if(!(_loc4_ && param2))
                                             {
                                                §§push(this.§_-CQ§);
                                                §§push(this.§_-CQ§);
                                                if(_loc5_ || param2)
                                                {
                                                   §§goto(addr537);
                                                   §§push(§§pop().relativeFlags);
                                                }
                                                §§goto(addr765);
                                             }
                                             §§goto(addr791);
                                          }
                                          else
                                          {
                                             addr750:
                                             this._flags |= 4096;
                                             §§push(this.§_-CQ§);
                                             if(_loc5_ || param2)
                                             {
                                                §§goto(addr765);
                                             }
                                          }
                                          §§goto(addr794);
                                       }
                                       else if(param1 == "rotationZ")
                                       {
                                          this._flags |= 512;
                                          if(_loc5_ || this)
                                          {
                                             §§goto(addr603);
                                             §§push(this.§_-CQ§);
                                             §§push(this.§_-CQ§);
                                          }
                                          §§goto(addr791);
                                       }
                                       else
                                       {
                                          §§push(param1);
                                          if(_loc5_ || param3)
                                          {
                                             if(§§pop() == "alpha")
                                             {
                                                if(!_loc4_)
                                                {
                                                   this._flags |= 1024;
                                                   addr668:
                                                   §§push(this.§_-CQ§);
                                                   §§push(this.§_-CQ§.relativeFlags);
                                                   if(param3)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         §§goto(addr681);
                                                         §§push(1024);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr717);
                                                      }
                                                      §§goto(addr471);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr681);
                                                      §§push(0);
                                                   }
                                                   §§goto(addr681);
                                                }
                                                §§goto(addr685);
                                             }
                                             else
                                             {
                                                §§push(param1);
                                             }
                                             §§goto(addr795);
                                          }
                                          if(§§pop() == "width")
                                          {
                                             if(!_loc4_)
                                             {
                                                this._flags |= 2048;
                                                §§push(this.§_-CQ§);
                                                if(!_loc4_)
                                                {
                                                   §§goto(addr710);
                                                }
                                                §§goto(addr744);
                                             }
                                             §§goto(addr791);
                                          }
                                          else
                                          {
                                             §§push(param1);
                                          }
                                          §§goto(addr795);
                                       }
                                       §§goto(addr795);
                                    }
                                    if(§§pop() == "height")
                                    {
                                       §§goto(addr750);
                                    }
                                    §§goto(addr795);
                                 }
                                 §§goto(addr795);
                              }
                           }
                           §§goto(addr503);
                        }
                     }
                     §§goto(addr374);
                  }
               }
               §§goto(addr443);
            }
            §§goto(addr795);
         }
         §§goto(addr668);
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:DisplayObject = this.§_-9Z§;
         var _loc3_:DisplayObjectParameter = this.§_-3D§;
         var _loc4_:DisplayObjectParameter = this.§_-CQ§;
         §§push(this._flags);
         if(_loc7_)
         {
            §§push(uint(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(1 - param1);
         if(!_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(_loc5_);
         §§push(1);
         if(_loc7_ || this)
         {
            §§push(§§pop() & §§pop());
            §§push(0);
            if(_loc7_)
            {
               if(§§pop() != §§pop())
               {
                  if(_loc7_ || _loc3_)
                  {
                     _loc2_.x = _loc4_.x * _loc6_ + _loc3_.x * param1;
                     addr70:
                     §§push(_loc5_ & 2);
                     if(!_loc8_)
                     {
                        if(§§pop() != 0)
                        {
                           _loc2_.y = _loc4_.y * _loc6_ + _loc3_.y * param1;
                           if(!(_loc8_ && _loc3_))
                           {
                              addr95:
                              §§push(_loc5_);
                              if(!(_loc8_ && param1))
                              {
                                 §§push(4);
                                 if(_loc7_ || _loc2_)
                                 {
                                    §§push(§§pop() & §§pop());
                                    §§push(0);
                                    if(!(_loc8_ && this))
                                    {
                                       if(§§pop() != §§pop())
                                       {
                                          if(!(_loc8_ && param1))
                                          {
                                             _loc2_.z = _loc4_.z * _loc6_ + _loc3_.z * param1;
                                             addr139:
                                             §§push(_loc5_);
                                             if(!_loc8_)
                                             {
                                                §§push(§§pop() & 56);
                                                if(!(_loc8_ && param1))
                                                {
                                                   addr152:
                                                   if(§§pop() != 0)
                                                   {
                                                      §§push(_loc5_);
                                                      §§push(8);
                                                      if(_loc7_ || this)
                                                      {
                                                         addr163:
                                                         §§push(§§pop() & §§pop());
                                                         §§push(0);
                                                         if(_loc7_ || _loc2_)
                                                         {
                                                            if(§§pop() != §§pop())
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  _loc2_.scaleX = _loc4_.scaleX * _loc6_ + _loc3_.scaleX * param1;
                                                                  if(_loc7_)
                                                                  {
                                                                     addr187:
                                                                     §§push(_loc5_);
                                                                     if(_loc7_)
                                                                     {
                                                                        if((§§pop() & 16) != 0)
                                                                        {
                                                                           if(_loc7_ || _loc2_)
                                                                           {
                                                                              _loc2_.scaleY = _loc4_.scaleY * _loc6_ + _loc3_.scaleY * param1;
                                                                              if(_loc7_)
                                                                              {
                                                                                 addr214:
                                                                                 if((_loc5_ & 32) != 0)
                                                                                 {
                                                                                    if(!(_loc8_ && param1))
                                                                                    {
                                                                                       addr233:
                                                                                       _loc2_.scaleZ = _loc4_.scaleZ * _loc6_ + _loc3_.scaleZ * param1;
                                                                                       addr244:
                                                                                       §§push(_loc5_ & 960);
                                                                                       if(_loc7_ || _loc3_)
                                                                                       {
                                                                                          if(§§pop() != 0)
                                                                                          {
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                addr258:
                                                                                                §§push(_loc5_);
                                                                                                if(!(_loc8_ && _loc2_))
                                                                                                {
                                                                                                   §§push(§§pop() & 64);
                                                                                                   §§push(0);
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      if(§§pop() != §§pop())
                                                                                                      {
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            _loc2_.rotation = _loc4_.rotation * _loc6_ + _loc3_.rotation * param1;
                                                                                                            addr285:
                                                                                                            §§push(_loc5_);
                                                                                                            §§push(128);
                                                                                                            if(!(_loc8_ && param1))
                                                                                                            {
                                                                                                               addr294:
                                                                                                               §§push(§§pop() & §§pop());
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                                  if(§§pop() != 0)
                                                                                                                  {
                                                                                                                     _loc2_.rotationX = _loc4_.rotationX * _loc6_ + _loc3_.rotationX * param1;
                                                                                                                     if(!(_loc8_ && param1))
                                                                                                                     {
                                                                                                                        addr317:
                                                                                                                        §§push(_loc5_);
                                                                                                                        §§push(256);
                                                                                                                        if(!_loc8_)
                                                                                                                        {
                                                                                                                           addr321:
                                                                                                                           §§push(§§pop() & §§pop());
                                                                                                                           §§push(0);
                                                                                                                           if(_loc7_ || _loc3_)
                                                                                                                           {
                                                                                                                              addr330:
                                                                                                                              if(§§pop() != §§pop())
                                                                                                                              {
                                                                                                                                 addr331:
                                                                                                                                 _loc2_.rotationY = _loc4_.rotationY * _loc6_ + _loc3_.rotationY * param1;
                                                                                                                              }
                                                                                                                              §§push(_loc5_);
                                                                                                                              if(_loc7_)
                                                                                                                              {
                                                                                                                                 §§push(512);
                                                                                                                                 if(!_loc8_)
                                                                                                                                 {
                                                                                                                                    addr348:
                                                                                                                                    §§push(§§pop() & §§pop());
                                                                                                                                    if(!_loc8_)
                                                                                                                                    {
                                                                                                                                       addr351:
                                                                                                                                       if(§§pop() != 0)
                                                                                                                                       {
                                                                                                                                          addr353:
                                                                                                                                          _loc2_.rotationZ = _loc4_.rotationZ * _loc6_ + _loc3_.rotationZ * param1;
                                                                                                                                          if(_loc7_)
                                                                                                                                          {
                                                                                                                                             addr366:
                                                                                                                                             §§push(_loc5_);
                                                                                                                                             if(!_loc8_)
                                                                                                                                             {
                                                                                                                                                addr370:
                                                                                                                                                §§push(§§pop() & 7168);
                                                                                                                                                §§push(0);
                                                                                                                                                if(_loc7_ || param1)
                                                                                                                                                {
                                                                                                                                                   addr379:
                                                                                                                                                   if(§§pop() != §§pop())
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc8_ && this))
                                                                                                                                                      {
                                                                                                                                                         addr387:
                                                                                                                                                         §§push(_loc5_);
                                                                                                                                                         if(!(_loc8_ && _loc2_))
                                                                                                                                                         {
                                                                                                                                                            addr395:
                                                                                                                                                            if((§§pop() & 1024) != 0)
                                                                                                                                                            {
                                                                                                                                                               _loc2_.alpha = _loc4_.alpha * _loc6_ + _loc3_.alpha * param1;
                                                                                                                                                               addr410:
                                                                                                                                                               §§push(_loc5_);
                                                                                                                                                               if(_loc7_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  addr418:
                                                                                                                                                                  §§push(2048);
                                                                                                                                                                  if(_loc7_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() & §§pop());
                                                                                                                                                                     §§push(0);
                                                                                                                                                                     if(!_loc8_)
                                                                                                                                                                     {
                                                                                                                                                                        addr425:
                                                                                                                                                                        if(§§pop() != §§pop())
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc8_)
                                                                                                                                                                           {
                                                                                                                                                                              _loc2_.width = _loc4_.width * _loc6_ + _loc3_.width * param1;
                                                                                                                                                                              addr439:
                                                                                                                                                                              §§push(_loc5_ & 4096);
                                                                                                                                                                              §§push(0);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr439);
                                                                                                                                                                     }
                                                                                                                                                                     if(§§pop() != §§pop())
                                                                                                                                                                     {
                                                                                                                                                                        _loc2_.height = _loc4_.height * _loc6_ + _loc3_.height * param1;
                                                                                                                                                                        addr462:
                                                                                                                                                                        return;
                                                                                                                                                                        addr444:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr462);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr439);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr410);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr418);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr444);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr462);
                                                                                                                                                }
                                                                                                                                                §§goto(addr425);
                                                                                                                                             }
                                                                                                                                             §§goto(addr418);
                                                                                                                                          }
                                                                                                                                          §§goto(addr439);
                                                                                                                                       }
                                                                                                                                       §§goto(addr366);
                                                                                                                                    }
                                                                                                                                    §§goto(addr439);
                                                                                                                                 }
                                                                                                                                 §§goto(addr370);
                                                                                                                              }
                                                                                                                              §§goto(addr395);
                                                                                                                           }
                                                                                                                           §§goto(addr379);
                                                                                                                        }
                                                                                                                        §§goto(addr370);
                                                                                                                     }
                                                                                                                     §§goto(addr410);
                                                                                                                  }
                                                                                                                  §§goto(addr317);
                                                                                                               }
                                                                                                               §§goto(addr370);
                                                                                                            }
                                                                                                            §§goto(addr321);
                                                                                                         }
                                                                                                         §§goto(addr353);
                                                                                                      }
                                                                                                      §§goto(addr285);
                                                                                                   }
                                                                                                   §§goto(addr330);
                                                                                                }
                                                                                                §§goto(addr395);
                                                                                             }
                                                                                             §§goto(addr439);
                                                                                          }
                                                                                          §§goto(addr366);
                                                                                       }
                                                                                       §§goto(addr351);
                                                                                    }
                                                                                    §§goto(addr366);
                                                                                 }
                                                                                 §§goto(addr244);
                                                                              }
                                                                              §§goto(addr258);
                                                                           }
                                                                           §§goto(addr317);
                                                                        }
                                                                     }
                                                                     §§goto(addr214);
                                                                  }
                                                                  §§goto(addr317);
                                                               }
                                                               §§goto(addr331);
                                                            }
                                                            §§goto(addr187);
                                                         }
                                                         §§goto(addr395);
                                                      }
                                                      §§goto(addr294);
                                                   }
                                                   §§goto(addr244);
                                                }
                                             }
                                             §§goto(addr214);
                                          }
                                          §§goto(addr233);
                                       }
                                       §§goto(addr139);
                                    }
                                    §§goto(addr425);
                                 }
                                 §§goto(addr321);
                              }
                              §§goto(addr370);
                           }
                           §§goto(addr317);
                        }
                        §§goto(addr95);
                     }
                     §§goto(addr163);
                  }
                  §§goto(addr387);
               }
               §§goto(addr70);
            }
            §§goto(addr152);
         }
         §§goto(addr348);
      }
      
      override public function set target(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§_-9Z§ = param1 as DisplayObject;
         }
      }
      
      override protected function resolveValues() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:DisplayObject = this.§_-9Z§;
         var _loc2_:DisplayObjectParameter = this.§_-3D§;
         var _loc3_:DisplayObjectParameter = this.§_-CQ§;
         §§push(this._flags);
         if(_loc5_ || _loc1_)
         {
            §§push(uint(§§pop()));
         }
         var _loc4_:*;
         §§push((_loc4_ = §§pop()) & 1);
         if(_loc5_ || _loc2_)
         {
            §§push(0);
            if(!_loc6_)
            {
               if(§§pop() != §§pop())
               {
                  if(isNaN(_loc3_.x))
                  {
                     _loc3_.x = _loc1_.x;
                     addr84:
                     if(isNaN(_loc2_.x))
                     {
                        if(_loc5_ || _loc2_)
                        {
                           _loc2_.x = _loc1_.x;
                           addr128:
                           if((_loc4_ & 2) != 0)
                           {
                              if(isNaN(_loc3_.y))
                              {
                                 _loc3_.y = _loc1_.y;
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    addr170:
                                    if(isNaN(_loc2_.y))
                                    {
                                       _loc2_.y = _loc1_.y;
                                       addr193:
                                       §§push(_loc4_);
                                       if(_loc5_)
                                       {
                                          §§push(§§pop() & 4);
                                          if(_loc5_ || this)
                                          {
                                             if(§§pop() != 0)
                                             {
                                                if(isNaN(_loc3_.z))
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      _loc3_.z = _loc1_.z;
                                                      if(_loc5_ || this)
                                                      {
                                                         addr257:
                                                         if(isNaN(_loc2_.z))
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               _loc2_.z = _loc1_.z;
                                                               if(!(_loc6_ && this))
                                                               {
                                                                  addr303:
                                                                  §§push(_loc4_);
                                                                  §§push(8);
                                                                  if(_loc5_ || _loc2_)
                                                                  {
                                                                     if((§§pop() & §§pop()) != 0)
                                                                     {
                                                                        if(isNaN(_loc3_.scaleX))
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              _loc3_.scaleX = _loc1_.scaleX;
                                                                              addr356:
                                                                              if(isNaN(_loc2_.scaleX))
                                                                              {
                                                                                 _loc2_.scaleX = _loc1_.scaleX;
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    addr388:
                                                                                    if((_loc4_ & 16) != 0)
                                                                                    {
                                                                                       if(isNaN(_loc3_.scaleY))
                                                                                       {
                                                                                          _loc3_.scaleY = _loc1_.scaleY;
                                                                                          addr425:
                                                                                          if(isNaN(_loc2_.scaleY))
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                _loc2_.scaleY = _loc1_.scaleY;
                                                                                                addr478:
                                                                                                §§push(_loc4_);
                                                                                                if(_loc5_ || _loc2_)
                                                                                                {
                                                                                                   §§push(32);
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      §§push(§§pop() & §§pop());
                                                                                                      §§push(0);
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         if(§§pop() != §§pop())
                                                                                                         {
                                                                                                            if(_loc5_ || _loc1_)
                                                                                                            {
                                                                                                               addr501:
                                                                                                               if(isNaN(_loc3_.scaleZ))
                                                                                                               {
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     _loc3_.scaleZ = _loc1_.scaleZ;
                                                                                                                     addr549:
                                                                                                                     if(isNaN(_loc2_.scaleZ))
                                                                                                                     {
                                                                                                                        _loc2_.scaleZ = _loc1_.scaleZ;
                                                                                                                        if(!(_loc6_ && _loc2_))
                                                                                                                        {
                                                                                                                           addr607:
                                                                                                                           if((_loc4_ & 64) != 0)
                                                                                                                           {
                                                                                                                              if(isNaN(_loc3_.rotation))
                                                                                                                              {
                                                                                                                                 addr617:
                                                                                                                                 _loc3_.rotation = _loc1_.rotation;
                                                                                                                                 addr648:
                                                                                                                                 if(isNaN(_loc2_.rotation))
                                                                                                                                 {
                                                                                                                                    addr653:
                                                                                                                                    _loc2_.rotation = _loc1_.rotation;
                                                                                                                                    if(_loc5_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       addr694:
                                                                                                                                       §§push(_loc4_);
                                                                                                                                       if(!_loc6_)
                                                                                                                                       {
                                                                                                                                          addr700:
                                                                                                                                          if((§§pop() & 128) != 0)
                                                                                                                                          {
                                                                                                                                             addr701:
                                                                                                                                             if(isNaN(_loc3_.rotationX))
                                                                                                                                             {
                                                                                                                                                addr706:
                                                                                                                                                _loc3_.rotationX = _loc1_.rotationX;
                                                                                                                                                if(!(_loc6_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   addr740:
                                                                                                                                                   if(isNaN(_loc2_.rotationX))
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc6_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         _loc2_.rotationX = _loc1_.rotationX;
                                                                                                                                                         if(_loc5_ || _loc1_)
                                                                                                                                                         {
                                                                                                                                                            addr786:
                                                                                                                                                            §§push(_loc4_);
                                                                                                                                                            if(!_loc6_)
                                                                                                                                                            {
                                                                                                                                                               addr790:
                                                                                                                                                               if((§§pop() & 256) != 0)
                                                                                                                                                               {
                                                                                                                                                                  addr793:
                                                                                                                                                                  if(isNaN(_loc3_.rotationY))
                                                                                                                                                                  {
                                                                                                                                                                     addr798:
                                                                                                                                                                     _loc3_.rotationY = _loc1_.rotationY;
                                                                                                                                                                     if(!_loc6_)
                                                                                                                                                                     {
                                                                                                                                                                        addr829:
                                                                                                                                                                        if(isNaN(_loc2_.rotationY))
                                                                                                                                                                        {
                                                                                                                                                                           _loc2_.rotationY = _loc1_.rotationY;
                                                                                                                                                                           if(!_loc6_)
                                                                                                                                                                           {
                                                                                                                                                                              addr863:
                                                                                                                                                                              §§push(_loc4_ & 512);
                                                                                                                                                                              if(!_loc6_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr868:
                                                                                                                                                                                 if(§§pop() != 0)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(isNaN(_loc3_.rotationZ))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc5_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr882:
                                                                                                                                                                                          _loc3_.rotationZ = _loc1_.rotationZ;
                                                                                                                                                                                          if(!_loc6_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr902:
                                                                                                                                                                                             if(isNaN(_loc2_.rotationZ))
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc2_.rotationZ = _loc1_.rotationZ;
                                                                                                                                                                                                if(!_loc6_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr938:
                                                                                                                                                                                                   §§push(_loc4_);
                                                                                                                                                                                                   §§push(1024);
                                                                                                                                                                                                   if(!_loc6_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr944:
                                                                                                                                                                                                      if((§§pop() & §§pop()) != 0)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(isNaN(_loc3_.alpha))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc3_.alpha = _loc1_.alpha;
                                                                                                                                                                                                            addr954:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr960:
                                                                                                                                                                                                            if((_loc3_.relativeFlags & 1024) != 0)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr961:
                                                                                                                                                                                                               _loc3_.alpha += _loc1_.alpha;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(isNaN(_loc2_.alpha))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc6_ && this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc2_.alpha = _loc1_.alpha;
                                                                                                                                                                                                               addr1014:
                                                                                                                                                                                                               §§push(_loc4_);
                                                                                                                                                                                                               if(_loc5_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1017:
                                                                                                                                                                                                                  §§push(2048);
                                                                                                                                                                                                                  if(_loc5_ || _loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() & §§pop());
                                                                                                                                                                                                                     if(_loc5_ || _loc1_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1034:
                                                                                                                                                                                                                        if(§§pop() != 0)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc6_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1037:
                                                                                                                                                                                                                              if(isNaN(_loc3_.width))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc5_ || _loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr1049:
                                                                                                                                                                                                                                    _loc3_.width = _loc1_.width;
                                                                                                                                                                                                                                    if(_loc6_ && _loc1_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr1083:
                                                                                                                                                                                                                                    if(isNaN(_loc2_.width))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc5_ || _loc3_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1095:
                                                                                                                                                                                                                                          _loc2_.width = _loc1_.width;
                                                                                                                                                                                                                                          if(_loc5_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1129:
                                                                                                                                                                                                                                             §§push(_loc4_);
                                                                                                                                                                                                                                             if(_loc5_ || _loc3_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1137:
                                                                                                                                                                                                                                                addr1138:
                                                                                                                                                                                                                                                addr1140:
                                                                                                                                                                                                                                                if((§§pop() & 4096) != 0)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1202);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr1184:
                                                                                                                                                                                                                                             if((§§pop() & 4096) != 0)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1195:
                                                                                                                                                                                                                                                _loc2_.height += _loc1_.height;
                                                                                                                                                                                                                                                §§goto(addr1202);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr1202:
                                                                                                                                                                                                                                             return;
                                                                                                                                                                                                                                             addr1101:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(isNaN(_loc3_.height))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc5_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1148:
                                                                                                                                                                                                                                                _loc3_.height = _loc1_.height;
                                                                                                                                                                                                                                                addr1170:
                                                                                                                                                                                                                                                if(isNaN(_loc2_.height))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1175:
                                                                                                                                                                                                                                                   _loc2_.height = _loc1_.height;
                                                                                                                                                                                                                                                   if(!_loc5_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1202);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr1184);
                                                                                                                                                                                                                                                   §§push(_loc2_.relativeFlags);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1202);
                                                                                                                                                                                                                                                addr1152:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1202);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1156:
                                                                                                                                                                                                                                             §§push(_loc3_.relativeFlags & 4096);
                                                                                                                                                                                                                                             if(_loc5_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1160:
                                                                                                                                                                                                                                                if(§§pop() != 0)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc6_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1163:
                                                                                                                                                                                                                                                      _loc3_.height += _loc1_.height;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1170);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1184);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1101);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc2_.relativeFlags);
                                                                                                                                                                                                                                       if(_loc5_ || _loc2_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1111:
                                                                                                                                                                                                                                          §§push(2048);
                                                                                                                                                                                                                                          if(!(_loc6_ && this))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1121:
                                                                                                                                                                                                                                             if((§§pop() & §§pop()) != 0)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1122:
                                                                                                                                                                                                                                                _loc2_.width += _loc1_.width;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1129);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1137);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1122);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1065:
                                                                                                                                                                                                                                 §§push(_loc3_.relativeFlags & 2048);
                                                                                                                                                                                                                                 §§push(0);
                                                                                                                                                                                                                                 if(_loc5_ || this)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr1073:
                                                                                                                                                                                                                                    if(§§pop() != §§pop())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc3_.width += _loc1_.width;
                                                                                                                                                                                                                                       if(!_loc6_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr1083);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1195);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1083);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1121);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1137);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1129);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1138);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1129);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1049);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc2_.relativeFlags);
                                                                                                                                                                                                            if(_loc5_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr994:
                                                                                                                                                                                                               §§push(§§pop() & 1024);
                                                                                                                                                                                                               §§push(0);
                                                                                                                                                                                                               if(!_loc6_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(§§pop() != §§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1000:
                                                                                                                                                                                                                     _loc2_.alpha += _loc1_.alpha;
                                                                                                                                                                                                                     if(_loc5_ || _loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr1014);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1049);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1014);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1140);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1111);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1014);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1156);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1152);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc2_.relativeFlags);
                                                                                                                                                                                                if(_loc5_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr918:
                                                                                                                                                                                                   §§push(512);
                                                                                                                                                                                                   if(!_loc6_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() & §§pop());
                                                                                                                                                                                                      if(_loc5_ || _loc1_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr929:
                                                                                                                                                                                                         if(§§pop() != 0)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc2_.rotationZ += _loc1_.rotationZ;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr938);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1065);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1137);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr994);
                                                                                                                                                                                             addr888:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr961);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1129);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       addr892:
                                                                                                                                                                                       if((_loc3_.relativeFlags & 512) != 0)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc3_.rotationZ += _loc1_.rotationZ;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr902);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr938);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr929);
                                                                                                                                                                              addr840:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1000);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           addr844:
                                                                                                                                                                           §§push(_loc2_.relativeFlags & 256);
                                                                                                                                                                           §§push(0);
                                                                                                                                                                           if(_loc5_ || _loc1_)
                                                                                                                                                                           {
                                                                                                                                                                              addr853:
                                                                                                                                                                              if(§§pop() != §§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc6_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr856:
                                                                                                                                                                                    _loc2_.rotationY += _loc1_.rotationY;
                                                                                                                                                                                    §§goto(addr863);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1163);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr863);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1160);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr902);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc3_.relativeFlags);
                                                                                                                                                                     if(!_loc6_)
                                                                                                                                                                     {
                                                                                                                                                                        addr809:
                                                                                                                                                                        §§push(256);
                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() & §§pop());
                                                                                                                                                                           if(_loc5_ || _loc1_)
                                                                                                                                                                           {
                                                                                                                                                                              addr820:
                                                                                                                                                                              if(§§pop() != 0)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc3_.rotationY += _loc1_.rotationY;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr829);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1121);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr844);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1156);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr863);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1111);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1095);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1122);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc2_.relativeFlags);
                                                                                                                                                      if(!(_loc6_ && _loc1_))
                                                                                                                                                      {
                                                                                                                                                         §§push(128);
                                                                                                                                                         if(_loc5_)
                                                                                                                                                         {
                                                                                                                                                            addr777:
                                                                                                                                                            if((§§pop() & §§pop()) != 0)
                                                                                                                                                            {
                                                                                                                                                               _loc2_.rotationX += _loc1_.rotationX;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr786);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr994);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1017);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1148);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§push(_loc3_.relativeFlags);
                                                                                                                                                if(!(_loc6_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   addr727:
                                                                                                                                                   §§push(§§pop() & 128);
                                                                                                                                                   if(_loc5_)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop() != 0)
                                                                                                                                                      {
                                                                                                                                                         _loc3_.rotationX += _loc1_.rotationX;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr740);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr820);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr1129);
                                                                                                                                          }
                                                                                                                                          §§goto(addr786);
                                                                                                                                       }
                                                                                                                                       §§goto(addr809);
                                                                                                                                       addr664:
                                                                                                                                    }
                                                                                                                                    §§goto(addr706);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§push(_loc2_.relativeFlags);
                                                                                                                                    §§push(64);
                                                                                                                                    if(!(_loc6_ && _loc1_))
                                                                                                                                    {
                                                                                                                                       addr675:
                                                                                                                                       §§push(§§pop() & §§pop());
                                                                                                                                       if(_loc5_ || _loc1_)
                                                                                                                                       {
                                                                                                                                          §§push(0);
                                                                                                                                          if(_loc5_)
                                                                                                                                          {
                                                                                                                                             addr686:
                                                                                                                                             if(§§pop() != §§pop())
                                                                                                                                             {
                                                                                                                                                _loc2_.rotation += _loc1_.rotation;
                                                                                                                                             }
                                                                                                                                             §§goto(addr694);
                                                                                                                                          }
                                                                                                                                          §§goto(addr853);
                                                                                                                                       }
                                                                                                                                       §§goto(addr868);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr892);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§push(_loc3_.relativeFlags);
                                                                                                                                 §§push(64);
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() & §§pop());
                                                                                                                                    §§push(0);
                                                                                                                                    if(_loc5_)
                                                                                                                                    {
                                                                                                                                       if(§§pop() != §§pop())
                                                                                                                                       {
                                                                                                                                          if(_loc5_)
                                                                                                                                          {
                                                                                                                                             _loc3_.rotation += _loc1_.rotation;
                                                                                                                                             if(!(_loc6_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                §§goto(addr648);
                                                                                                                                             }
                                                                                                                                             §§goto(addr888);
                                                                                                                                          }
                                                                                                                                          §§goto(addr961);
                                                                                                                                       }
                                                                                                                                       §§goto(addr648);
                                                                                                                                    }
                                                                                                                                    §§goto(addr686);
                                                                                                                                 }
                                                                                                                                 §§goto(addr863);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr694);
                                                                                                                        }
                                                                                                                        §§goto(addr701);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push(_loc2_.relativeFlags);
                                                                                                                        §§push(32);
                                                                                                                        if(_loc5_ || _loc2_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() & §§pop());
                                                                                                                           if(!(_loc6_ && this))
                                                                                                                           {
                                                                                                                              if(§§pop() != 0)
                                                                                                                              {
                                                                                                                                 _loc2_.scaleZ += _loc1_.scaleZ;
                                                                                                                                 if(_loc5_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr607);
                                                                                                                                 }
                                                                                                                                 §§goto(addr617);
                                                                                                                              }
                                                                                                                              §§goto(addr607);
                                                                                                                           }
                                                                                                                           §§goto(addr892);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr1065);
                                                                                                                     addr512:
                                                                                                                  }
                                                                                                                  §§goto(addr653);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§push(_loc3_.relativeFlags);
                                                                                                                  if(!(_loc6_ && this))
                                                                                                                  {
                                                                                                                     §§push(§§pop() & 32);
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        if(§§pop() != 0)
                                                                                                                        {
                                                                                                                           if(!(_loc6_ && _loc3_))
                                                                                                                           {
                                                                                                                              addr535:
                                                                                                                              _loc3_.scaleZ += _loc1_.scaleZ;
                                                                                                                              if(_loc5_ || _loc1_)
                                                                                                                              {
                                                                                                                                 §§goto(addr549);
                                                                                                                              }
                                                                                                                              §§goto(addr793);
                                                                                                                           }
                                                                                                                           §§goto(addr653);
                                                                                                                        }
                                                                                                                        §§goto(addr549);
                                                                                                                     }
                                                                                                                     §§goto(addr1160);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr809);
                                                                                                            }
                                                                                                            §§goto(addr863);
                                                                                                         }
                                                                                                         §§goto(addr607);
                                                                                                      }
                                                                                                      §§goto(addr944);
                                                                                                   }
                                                                                                   §§goto(addr790);
                                                                                                }
                                                                                                §§goto(addr1065);
                                                                                                addr436:
                                                                                             }
                                                                                             §§goto(addr1175);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(_loc2_.relativeFlags);
                                                                                             if(_loc5_ || this)
                                                                                             {
                                                                                                addr448:
                                                                                                §§push(§§pop() & 16);
                                                                                                §§push(0);
                                                                                                if(!(_loc6_ && _loc1_))
                                                                                                {
                                                                                                   if(§§pop() != §§pop())
                                                                                                   {
                                                                                                      if(_loc5_ || this)
                                                                                                      {
                                                                                                         _loc2_.scaleY += _loc1_.scaleY;
                                                                                                         if(_loc5_ || _loc3_)
                                                                                                         {
                                                                                                            §§goto(addr478);
                                                                                                         }
                                                                                                         §§goto(addr1049);
                                                                                                      }
                                                                                                      §§goto(addr798);
                                                                                                   }
                                                                                                   §§goto(addr478);
                                                                                                }
                                                                                                §§goto(addr1137);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr918);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(_loc3_.relativeFlags);
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             §§push(§§pop() & 16);
                                                                                             if(_loc5_ || _loc1_)
                                                                                             {
                                                                                                if(§§pop() != 0)
                                                                                                {
                                                                                                   _loc3_.scaleY += _loc1_.scaleY;
                                                                                                }
                                                                                                §§goto(addr425);
                                                                                             }
                                                                                             §§goto(addr1065);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr727);
                                                                                    }
                                                                                    §§goto(addr478);
                                                                                 }
                                                                                 §§goto(addr535);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(_loc2_.relativeFlags);
                                                                                 if(_loc5_ || _loc1_)
                                                                                 {
                                                                                    addr377:
                                                                                    if((§§pop() & 8) != 0)
                                                                                    {
                                                                                       _loc2_.scaleX += _loc1_.scaleX;
                                                                                    }
                                                                                    §§goto(addr388);
                                                                                 }
                                                                              }
                                                                              §§goto(addr607);
                                                                           }
                                                                           §§goto(addr512);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(_loc3_.relativeFlags);
                                                                           if(_loc5_ || _loc1_)
                                                                           {
                                                                              §§push(§§pop() & 8);
                                                                              §§push(0);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 if(§§pop() != §§pop())
                                                                                 {
                                                                                    if(!(_loc6_ && _loc1_))
                                                                                    {
                                                                                       addr349:
                                                                                       _loc3_.scaleX += _loc1_.scaleX;
                                                                                       §§goto(addr356);
                                                                                    }
                                                                                    §§goto(addr1037);
                                                                                 }
                                                                                 §§goto(addr356);
                                                                              }
                                                                              §§goto(addr607);
                                                                           }
                                                                        }
                                                                        §§goto(addr1156);
                                                                     }
                                                                     §§goto(addr388);
                                                                  }
                                                                  §§goto(addr675);
                                                               }
                                                               §§goto(addr664);
                                                            }
                                                            §§goto(addr856);
                                                         }
                                                         else
                                                         {
                                                            §§push(_loc2_.relativeFlags & 4);
                                                            §§push(0);
                                                            if(_loc5_ || _loc1_)
                                                            {
                                                               if(§§pop() != §§pop())
                                                               {
                                                                  _loc2_.z += _loc1_.z;
                                                                  if(!(_loc6_ && _loc1_))
                                                                  {
                                                                     §§goto(addr303);
                                                                  }
                                                                  §§goto(addr349);
                                                               }
                                                               §§goto(addr303);
                                                            }
                                                         }
                                                         §§goto(addr1073);
                                                      }
                                                      §§goto(addr501);
                                                   }
                                                   §§goto(addr840);
                                                }
                                                else
                                                {
                                                   §§push(_loc3_.relativeFlags);
                                                   §§push(4);
                                                   if(_loc5_)
                                                   {
                                                      §§push(§§pop() & §§pop());
                                                      if(_loc5_)
                                                      {
                                                         §§push(0);
                                                         if(_loc5_ || _loc1_)
                                                         {
                                                            if(§§pop() != §§pop())
                                                            {
                                                               if(_loc5_ || this)
                                                               {
                                                                  _loc3_.z += _loc1_.z;
                                                                  §§goto(addr257);
                                                               }
                                                               §§goto(addr882);
                                                            }
                                                            §§goto(addr257);
                                                         }
                                                         §§goto(addr700);
                                                      }
                                                      §§goto(addr607);
                                                   }
                                                }
                                                §§goto(addr863);
                                             }
                                             §§goto(addr303);
                                          }
                                          §§goto(addr777);
                                       }
                                       §§goto(addr377);
                                    }
                                    else
                                    {
                                       if((_loc2_.relativeFlags & 2) != 0)
                                       {
                                          _loc2_.y += _loc1_.y;
                                       }
                                       §§goto(addr193);
                                    }
                                 }
                                 §§goto(addr798);
                              }
                              else
                              {
                                 §§push(_loc3_.relativeFlags & 2);
                                 if(_loc5_ || _loc2_)
                                 {
                                    if(§§pop() != 0)
                                    {
                                       _loc3_.y += _loc1_.y;
                                    }
                                    §§goto(addr170);
                                 }
                              }
                              §§goto(addr448);
                           }
                           §§goto(addr193);
                        }
                        §§goto(addr436);
                     }
                     else
                     {
                        §§push(_loc2_.relativeFlags & 1);
                        if(!(_loc6_ && _loc2_))
                        {
                           §§push(0);
                           if(_loc5_ || _loc2_)
                           {
                              if(§§pop() != §§pop())
                              {
                                 _loc2_.x += _loc1_.x;
                              }
                              §§goto(addr128);
                           }
                           §§goto(addr960);
                        }
                     }
                     §§goto(addr777);
                  }
                  else
                  {
                     §§push(_loc3_.relativeFlags & 1);
                     if(_loc5_ || _loc3_)
                     {
                        §§push(0);
                        if(_loc5_)
                        {
                           if(§§pop() != §§pop())
                           {
                              if(!_loc6_)
                              {
                                 _loc3_.x += _loc1_.x;
                                 §§goto(addr84);
                              }
                              §§goto(addr954);
                           }
                           §§goto(addr84);
                        }
                        §§goto(addr1034);
                     }
                  }
                  §§goto(addr1160);
               }
               §§goto(addr128);
            }
            §§goto(addr777);
         }
         §§goto(addr388);
      }
      
      override public function getObject(param1:String) : Object
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(param1 != "_blurFilter")
            {
               if(param1 == "_glowFilter")
               {
                  if(_loc3_ || this)
                  {
                     return this.§_-sg§(GlowFilter);
                  }
               }
               else
               {
                  if(param1 == "_dropShadowFilter")
                  {
                     return this.§_-sg§(DropShadowFilter);
                  }
                  addr58:
                  if(param1 == "_colorMatrixFilter")
                  {
                     return this.§_-sg§(ColorMatrixFilter);
                  }
                  if(param1 == "_bevelFilter")
                  {
                     return this.§_-sg§(BevelFilter);
                  }
                  §§push(param1);
                  if(!(_loc2_ && this))
                  {
                     if(§§pop() == "_gradientGlowFilter")
                     {
                        return this.§_-sg§(GradientGlowFilter);
                     }
                     if(param1 == "_gradientBevelFilter")
                     {
                        return this.§_-sg§(GradientBevelFilter);
                     }
                     §§goto(addr102);
                  }
                  addr110:
                  if(§§pop() == "_displacementMapFilter")
                  {
                     if(!_loc2_)
                     {
                        return this.§_-sg§(DisplacementMapFilter);
                     }
                  }
                  if(param1 == "_shaderFilter")
                  {
                     return this.§_-sg§(ShaderFilter);
                  }
                  return null;
               }
               addr105:
               return this.§_-sg§(ConvolutionFilter);
            }
            if(!(_loc2_ && _loc2_))
            {
               return this.§_-sg§(BlurFilter);
            }
            addr102:
            if(param1 == "_convolutionFilter")
            {
               §§goto(addr105);
            }
            else
            {
               §§push(param1);
            }
            §§goto(addr110);
         }
         §§goto(addr58);
      }
      
      override protected function copyFrom(param1:§_-rJ§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.copyFrom(param1);
         }
         var _loc2_:§_-3L§ = param1 as §_-3L§;
         if(_loc4_ || _loc2_)
         {
            this.§_-9Z§ = _loc2_.§_-9Z§;
            if(!_loc3_)
            {
               this.§_-CQ§.copyFrom(_loc2_.§_-CQ§);
               if(!_loc3_)
               {
                  this.§_-3D§.copyFrom(_loc2_.§_-3D§);
                  if(_loc4_ || param1)
                  {
                  }
                  §§goto(addr74);
               }
            }
            this._flags = _loc2_._flags;
         }
         addr74:
      }
   }
}

class DisplayObjectParameter
{
    
   
   public var width:Number;
   
   public var scaleX:Number;
   
   public var scaleY:Number;
   
   public var scaleZ:Number;
   
   public var rotationX:Number;
   
   public var rotationY:Number;
   
   public var rotationZ:Number;
   
   public var alpha:Number;
   
   public var relativeFlags:uint = 0;
   
   public var height:Number;
   
   public var x:Number;
   
   public var y:Number;
   
   public var z:Number;
   
   public var rotation:Number;
   
   function DisplayObjectParameter()
   {
      super();
   }
   
   public function copyFrom(param1:DisplayObjectParameter) : void
   {
      this.relativeFlags = param1.relativeFlags;
      this.x = param1.x;
      this.y = param1.y;
      this.z = param1.z;
      this.scaleX = param1.scaleX;
      this.scaleY = param1.scaleY;
      this.scaleZ = param1.scaleZ;
      this.rotation = param1.rotation;
      this.rotationX = param1.rotationX;
      this.rotationY = param1.rotationY;
      this.rotationZ = param1.rotationZ;
      this.alpha = param1.alpha;
      this.width = param1.width;
      this.height = param1.height;
   }
}
