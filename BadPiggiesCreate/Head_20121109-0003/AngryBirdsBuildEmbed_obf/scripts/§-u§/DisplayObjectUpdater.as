package §-u§
{
   import §3§.§8Y§;
   import §]s§.§&[§;
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
   
   public class DisplayObjectUpdater extends §8Y§
   {
      
      public static const §03§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §03§ = ["x","y","z","scaleX","scaleY","scaleZ","rotation","rotationX","rotationY","rotationZ","alpha","width","height","_bevelFilter","_blurFilter","_colorMatrixFilter","_convolutionFilter","_displacementMapFilter","_dropShadowFilter","_glowFilter","_gradientBevelFilter","_gradientGlowFilter","_shaderFilter"];
         }
      }
      
      protected var _flags:uint = 0;
      
      protected var §;u§:DisplayObjectParameter;
      
      protected var §?!p§:DisplayObject = null;
      
      protected var §%f§:DisplayObjectParameter;
      
      public function DisplayObjectUpdater()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§%f§ = new DisplayObjectParameter();
            if(_loc1_)
            {
               this.§;u§ = new DisplayObjectParameter();
               if(_loc1_)
               {
                  addr45:
                  super();
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      public static function §-V§(param1:§&[§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            param1.§6p§(DisplayObjectUpdater,DisplayObject,§03§);
         }
      }
      
      override public function setObject(param1:String, param2:Object) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         §§push("_blurFilter");
         if(!(_loc3_ && param2))
         {
            if(§§pop() == §§pop())
            {
               this.§+!0§(param2 as BitmapFilter,BlurFilter);
               return;
            }
            §§push(param1);
            §§push("_glowFilter");
            if(_loc4_ || _loc3_)
            {
               if(§§pop() == §§pop())
               {
                  this.§+!0§(param2 as BitmapFilter,GlowFilter);
                  if(!(_loc3_ && param1))
                  {
                     return;
                  }
               }
               else
               {
                  if(param1 == "_dropShadowFilter")
                  {
                     if(_loc4_ || _loc3_)
                     {
                        this.§+!0§(param2 as BitmapFilter,DropShadowFilter);
                        if(_loc4_)
                        {
                           return;
                        }
                        §§goto(addr228);
                     }
                     §§goto(addr228);
                  }
                  else
                  {
                     §§push(param1);
                     if(!_loc3_)
                     {
                        if(§§pop() == "_colorMatrixFilter")
                        {
                           if(_loc4_ || param1)
                           {
                              this.§+!0§(param2 as BitmapFilter,ColorMatrixFilter);
                              if(_loc4_ || param2)
                              {
                                 return;
                              }
                              §§goto(addr228);
                           }
                           else
                           {
                              addr217:
                              §§push(param1);
                              §§push("_displacementMapFilter");
                           }
                           §§goto(addr228);
                        }
                        else
                        {
                           §§push(param1);
                           if(!_loc3_)
                           {
                              §§goto(addr130);
                           }
                           §§goto(addr177);
                        }
                     }
                     addr130:
                     if(§§pop() == "_bevelFilter")
                     {
                        if(!_loc3_)
                        {
                           this.§+!0§(param2 as BitmapFilter,BevelFilter);
                           return;
                        }
                        §§goto(addr222);
                     }
                     else
                     {
                        §§push(param1);
                        if(!_loc3_)
                        {
                           §§push("_gradientGlowFilter");
                           if(!(_loc3_ && _loc3_))
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(_loc4_ || param2)
                                 {
                                    this.§+!0§(param2 as BitmapFilter,GradientGlowFilter);
                                    return;
                                 }
                                 addr234:
                                 this.§+!0§(param2 as BitmapFilter,ShaderFilter);
                              }
                              else
                              {
                                 addr177:
                                 §§push(param1);
                                 §§push("_gradientBevelFilter");
                                 if(_loc4_ || param2)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       if(_loc4_)
                                       {
                                          this.§+!0§(param2 as BitmapFilter,GradientBevelFilter);
                                          return;
                                       }
                                       §§goto(addr222);
                                    }
                                    else
                                    {
                                       if(param1 == "_convolutionFilter")
                                       {
                                          this.§+!0§(param2 as BitmapFilter,ConvolutionFilter);
                                          return;
                                       }
                                       §§goto(addr217);
                                    }
                                    §§goto(addr222);
                                 }
                                 addr219:
                                 if(§§pop() == §§pop())
                                 {
                                    if(!_loc3_)
                                    {
                                       §§goto(addr222);
                                    }
                                 }
                                 else
                                 {
                                    addr231:
                                    if(param1 == "_shaderFilter")
                                    {
                                       if(_loc4_)
                                       {
                                          §§goto(addr234);
                                       }
                                    }
                                    else
                                    {
                                       return;
                                    }
                                 }
                              }
                              return;
                           }
                           §§goto(addr219);
                        }
                        §§goto(addr217);
                     }
                     §§goto(addr222);
                  }
                  §§goto(addr228);
               }
               addr228:
               return;
            }
            §§goto(addr130);
         }
         §§goto(addr231);
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(param1);
            if(!_loc5_)
            {
               §§push("x");
               if(_loc4_ || param3)
               {
                  if(§§pop() == §§pop())
                  {
                     this._flags |= 1;
                     if(!_loc5_)
                     {
                        §§push(this.§;u§);
                        §§push(this.§;u§);
                        if(!_loc5_)
                        {
                           §§push(§§pop().relativeFlags);
                           if(param3)
                           {
                              §§push(1);
                              if(!_loc5_)
                              {
                                 §§push(§§pop());
                              }
                              else
                              {
                                 addr821:
                                 §§pop().relativeFlags = §§pop() | §§pop();
                                 addr822:
                                 §§push(this.§;u§);
                                 §§push(param2);
                                 if(_loc4_ || param3)
                                 {
                                    addr832:
                                    §§pop().width = §§pop();
                                    if(_loc4_ || param2)
                                    {
                                       addr892:
                                       return;
                                       addr840:
                                    }
                                 }
                                 else
                                 {
                                    addr891:
                                    §§pop().height = §§pop();
                                 }
                                 §§goto(addr892);
                                 addr820:
                              }
                              §§goto(addr892);
                           }
                           else
                           {
                              §§push(0);
                           }
                           §§push(§§pop() | §§pop());
                           if(!(_loc5_ && param2))
                           {
                              §§pop().relativeFlags = §§pop();
                              §§push(this.§;u§);
                              if(!_loc5_)
                              {
                                 §§pop().x = param2;
                              }
                              else
                              {
                                 addr562:
                                 §§pop().rotationX = param2;
                              }
                           }
                           else
                           {
                              addr178:
                              §§pop().relativeFlags = §§pop();
                              if(!(_loc5_ && param2))
                              {
                                 §§push(this.§;u§);
                                 §§push(param2);
                                 if(_loc4_ || this)
                                 {
                                    §§pop().z = §§pop();
                                    if(_loc5_ && this)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    addr497:
                                    §§pop().rotation = §§pop();
                                 }
                              }
                           }
                           §§goto(addr892);
                        }
                        else
                        {
                           addr358:
                           §§push(§§pop().relativeFlags);
                           if(param3)
                           {
                              if(!(_loc5_ && param1))
                              {
                                 addr373:
                                 §§push(§§pop() | 32);
                                 if(_loc4_ || param2)
                                 {
                                    §§pop().relativeFlags = §§pop();
                                    if(!(_loc5_ && param2))
                                    {
                                       §§push(this.§;u§);
                                       if(_loc4_ || param3)
                                       {
                                          §§push(param2);
                                          if(!_loc5_)
                                          {
                                             §§pop().scaleZ = §§pop();
                                             §§goto(addr892);
                                          }
                                          else
                                          {
                                             §§goto(addr832);
                                          }
                                       }
                                       else
                                       {
                                          addr878:
                                          §§push(this.§;u§.relativeFlags);
                                          §§push(param3);
                                       }
                                    }
                                    else
                                    {
                                       addr626:
                                    }
                                    §§goto(addr892);
                                 }
                                 else
                                 {
                                    addr676:
                                    §§pop().relativeFlags = §§pop();
                                    §§push(this.§;u§);
                                    if(!_loc5_)
                                    {
                                       §§push(param2);
                                       if(!_loc5_)
                                       {
                                          §§pop().rotationZ = §§pop();
                                          if(_loc4_ || param2)
                                          {
                                             addr692:
                                          }
                                          §§goto(addr892);
                                       }
                                       else
                                       {
                                          addr769:
                                          §§pop().alpha = §§pop();
                                       }
                                       §§goto(addr892);
                                    }
                                    else
                                    {
                                       addr720:
                                       §§push(this.§;u§);
                                       if(_loc4_ || this)
                                       {
                                          addr729:
                                          §§push(§§pop().relativeFlags);
                                          if(_loc4_)
                                          {
                                             §§push(param3);
                                             if(!(_loc5_ && this))
                                             {
                                                if(§§pop())
                                                {
                                                   addr753:
                                                   §§pop().relativeFlags = §§pop() | 1024;
                                                   if(!_loc5_)
                                                   {
                                                      addr757:
                                                      §§push(this.§;u§);
                                                      if(!(_loc5_ && this))
                                                      {
                                                         addr766:
                                                         §§push(param2);
                                                         if(_loc4_)
                                                         {
                                                            §§goto(addr769);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr832);
                                                         }
                                                      }
                                                      §§goto(addr892);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr822);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(0);
                                                   if(!(_loc5_ && this))
                                                   {
                                                      §§goto(addr753);
                                                      §§push(§§pop());
                                                   }
                                                   else
                                                   {
                                                      addr886:
                                                      §§pop().relativeFlags = §§pop() | §§pop();
                                                      addr885:
                                                      §§push(this.§;u§);
                                                   }
                                                }
                                                addr890:
                                                §§goto(addr891);
                                                §§push(param2);
                                             }
                                             else
                                             {
                                                addr807:
                                                if(§§pop())
                                                {
                                                   addr808:
                                                   §§goto(addr809);
                                                   §§push(2048);
                                                }
                                                else
                                                {
                                                   §§push(0);
                                                   if(_loc4_ || param1)
                                                   {
                                                      addr819:
                                                      §§goto(addr820);
                                                      §§push(§§pop());
                                                   }
                                                   §§goto(addr891);
                                                }
                                                §§goto(addr891);
                                             }
                                             §§goto(addr885);
                                          }
                                          else
                                          {
                                             addr881:
                                             §§push(4096);
                                          }
                                          §§goto(addr886);
                                       }
                                       else
                                       {
                                          addr798:
                                          §§push(§§pop().relativeFlags);
                                          §§push(param3);
                                          if(!(_loc5_ && param2))
                                          {
                                             §§goto(addr807);
                                          }
                                          else
                                          {
                                             addr880:
                                             if(§§pop())
                                             {
                                                §§goto(addr881);
                                             }
                                             else
                                             {
                                                §§goto(addr886);
                                                §§push(0);
                                             }
                                             §§goto(addr886);
                                          }
                                       }
                                       §§goto(addr807);
                                    }
                                 }
                                 §§goto(addr880);
                              }
                              else
                              {
                                 addr457:
                                 §§push(64);
                                 if(_loc4_ || param2)
                                 {
                                    addr469:
                                    §§push(§§pop() | §§pop());
                                    if(!(_loc5_ && param2))
                                    {
                                       addr477:
                                       §§pop().relativeFlags = §§pop();
                                       if(_loc4_)
                                       {
                                          addr480:
                                          §§push(this.§;u§);
                                          if(!(_loc5_ && param1))
                                          {
                                             §§push(param2);
                                             if(!(_loc5_ && param3))
                                             {
                                                §§goto(addr497);
                                             }
                                             else
                                             {
                                                §§goto(addr769);
                                             }
                                          }
                                          else
                                          {
                                             addr789:
                                             §§push(this.§;u§);
                                             if(!(_loc5_ && this))
                                             {
                                                §§goto(addr798);
                                             }
                                             else
                                             {
                                                §§goto(addr878);
                                             }
                                          }
                                          §§goto(addr892);
                                       }
                                       else
                                       {
                                          addr640:
                                          §§push(this.§;u§);
                                          §§push(this.§;u§);
                                          if(!_loc5_)
                                          {
                                             §§push(§§pop().relativeFlags);
                                             if(_loc4_ || this)
                                             {
                                                §§push(param3);
                                                if(_loc4_)
                                                {
                                                   addr655:
                                                   if(§§pop())
                                                   {
                                                      if(_loc4_ || param1)
                                                      {
                                                         §§push(512);
                                                         if(!(_loc5_ && param2))
                                                         {
                                                            addr675:
                                                            §§goto(addr676);
                                                            §§push(§§pop() | §§pop());
                                                         }
                                                         §§goto(addr881);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr878);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(0);
                                                   }
                                                   §§goto(addr675);
                                                }
                                                §§goto(addr807);
                                             }
                                             §§goto(addr808);
                                          }
                                          else
                                          {
                                             §§goto(addr878);
                                          }
                                       }
                                       §§goto(addr878);
                                    }
                                    §§goto(addr821);
                                 }
                                 else
                                 {
                                    addr611:
                                    §§pop().relativeFlags = §§pop() | §§pop();
                                    if(_loc4_)
                                    {
                                       addr615:
                                       §§push(this.§;u§);
                                       if(_loc4_ || param2)
                                       {
                                          addr625:
                                          §§pop().rotationY = param2;
                                          §§goto(addr626);
                                       }
                                       else
                                       {
                                          §§goto(addr821);
                                       }
                                    }
                                    else
                                    {
                                       addr703:
                                       this._flags |= 1024;
                                       if(_loc4_ || param3)
                                       {
                                          §§push(this.§;u§);
                                          if(!_loc5_)
                                          {
                                             §§goto(addr720);
                                          }
                                          §§goto(addr766);
                                       }
                                    }
                                    §§goto(addr891);
                                 }
                              }
                              §§goto(addr757);
                           }
                           else
                           {
                              §§push(0);
                           }
                           §§goto(addr373);
                        }
                     }
                     else
                     {
                        addr787:
                        §§push(this.§;u§);
                     }
                     §§goto(addr789);
                  }
                  else
                  {
                     §§push(param1);
                     §§push("y");
                     if(_loc4_ || param3)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(_loc4_)
                           {
                              this._flags |= 2;
                              if(_loc4_ || this)
                              {
                                 §§push(this.§;u§);
                                 §§push(this.§;u§.relativeFlags);
                                 §§push(param3);
                                 if(!(_loc5_ && param3))
                                 {
                                    §§push(§§pop() | (!!§§pop() ? 2 : 0));
                                    if(!_loc5_)
                                    {
                                       §§pop().relativeFlags = §§pop();
                                       if(!_loc5_)
                                       {
                                          §§push(this.§;u§);
                                          if(_loc4_)
                                          {
                                             §§push(param2);
                                             if(!(_loc5_ && param3))
                                             {
                                                §§pop().y = §§pop();
                                                if(!_loc5_)
                                                {
                                                   §§goto(addr892);
                                                }
                                                else
                                                {
                                                   §§goto(addr480);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr625);
                                             }
                                             §§goto(addr892);
                                          }
                                          else
                                          {
                                             §§goto(addr766);
                                          }
                                       }
                                       else
                                       {
                                          addr285:
                                          §§push(this.§;u§);
                                          if(_loc4_)
                                          {
                                             §§push(this.§;u§.relativeFlags);
                                             if(param3)
                                             {
                                                §§push(16);
                                                if(!(_loc5_ && this))
                                                {
                                                   addr313:
                                                   §§pop().relativeFlags = §§pop() | §§pop();
                                                   §§push(this.§;u§);
                                                   §§push(param2);
                                                   if(!_loc5_)
                                                   {
                                                      §§pop().scaleY = §§pop();
                                                      if(!_loc5_)
                                                      {
                                                         §§goto(addr892);
                                                      }
                                                      else
                                                      {
                                                         addr781:
                                                         this._flags |= 2048;
                                                         §§goto(addr787);
                                                      }
                                                   }
                                                   §§goto(addr832);
                                                }
                                                else
                                                {
                                                   addr610:
                                                   §§goto(addr611);
                                                   §§push(§§pop());
                                                }
                                                §§goto(addr890);
                                             }
                                             else
                                             {
                                                §§push(0);
                                                if(!(_loc5_ && param2))
                                                {
                                                   §§goto(addr313);
                                                   §§push(§§pop());
                                                }
                                                else
                                                {
                                                   addr468:
                                                   §§goto(addr469);
                                                   §§push(§§pop());
                                                }
                                             }
                                             §§goto(addr821);
                                          }
                                          else
                                          {
                                             §§goto(addr878);
                                          }
                                       }
                                       §§goto(addr878);
                                    }
                                    else
                                    {
                                       §§goto(addr178);
                                    }
                                 }
                                 §§goto(addr655);
                              }
                              else
                              {
                                 addr268:
                                 §§goto(addr892);
                              }
                           }
                           §§goto(addr703);
                        }
                        else
                        {
                           if(param1 == "z")
                           {
                              this._flags |= 4;
                              if(!_loc5_)
                              {
                                 §§push(this.§;u§);
                                 if(!_loc5_)
                                 {
                                    §§push(this.§;u§.relativeFlags);
                                    if(!(_loc5_ && param1))
                                    {
                                       if(param3)
                                       {
                                          §§push(4);
                                          if(_loc4_ || param1)
                                          {
                                             §§push(§§pop());
                                          }
                                          §§goto(addr675);
                                       }
                                       else
                                       {
                                          §§push(0);
                                       }
                                       §§push(§§pop() | §§pop());
                                       if(!_loc5_)
                                       {
                                          §§goto(addr178);
                                       }
                                       else
                                       {
                                          §§goto(addr477);
                                       }
                                    }
                                    §§goto(addr753);
                                 }
                                 else
                                 {
                                    addr428:
                                    §§push(this.§;u§.relativeFlags);
                                    §§push(param3);
                                    if(!(_loc5_ && param3))
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc5_ && param3))
                                          {
                                             §§goto(addr457);
                                          }
                                          §§goto(addr881);
                                       }
                                       else
                                       {
                                          §§goto(addr468);
                                          §§push(0);
                                       }
                                       §§goto(addr469);
                                    }
                                    else
                                    {
                                       addr603:
                                       if(§§pop())
                                       {
                                          §§goto(addr611);
                                          §§push(256);
                                       }
                                       else
                                       {
                                          §§push(0);
                                          if(_loc4_)
                                          {
                                             §§goto(addr610);
                                          }
                                          else
                                          {
                                             §§goto(addr675);
                                          }
                                       }
                                       §§goto(addr720);
                                    }
                                 }
                                 §§goto(addr675);
                              }
                              §§goto(addr676);
                           }
                           else
                           {
                              §§push(param1);
                              §§push("scaleX");
                           }
                           §§goto(addr892);
                        }
                     }
                     if(§§pop() == §§pop())
                     {
                        if(!_loc5_)
                        {
                           this._flags |= 8;
                           if(_loc4_)
                           {
                              §§push(this.§;u§);
                              if(!(_loc5_ && this))
                              {
                                 §§push(this.§;u§);
                                 if(!(_loc5_ && param2))
                                 {
                                    §§push(§§pop().relativeFlags);
                                    §§push(param3);
                                    if(!_loc5_)
                                    {
                                       if(§§pop())
                                       {
                                          addr253:
                                          §§pop().relativeFlags = §§pop() | 8;
                                          §§push(this.§;u§);
                                          §§push(param2);
                                          if(_loc4_)
                                          {
                                             §§pop().scaleX = §§pop();
                                             if(!(_loc5_ && this))
                                             {
                                                §§goto(addr268);
                                             }
                                             else
                                             {
                                                §§goto(addr497);
                                             }
                                          }
                                          §§goto(addr892);
                                       }
                                       else
                                       {
                                          §§push(0);
                                          if(!(_loc5_ && param1))
                                          {
                                             §§goto(addr253);
                                             §§push(§§pop());
                                          }
                                          else
                                          {
                                             addr556:
                                             §§pop().relativeFlags = §§pop() | §§pop();
                                             §§push(this.§;u§);
                                             if(_loc4_)
                                             {
                                                §§goto(addr562);
                                             }
                                             else
                                             {
                                                addr592:
                                                §§push(this.§;u§.relativeFlags);
                                                §§push(param3);
                                                if(_loc4_ || param1)
                                                {
                                                   §§goto(addr603);
                                                }
                                                §§goto(addr807);
                                             }
                                          }
                                       }
                                       §§goto(addr891);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr878);
                                 }
                                 §§goto(addr880);
                              }
                              else
                              {
                                 §§goto(addr789);
                              }
                           }
                           else
                           {
                              §§goto(addr285);
                           }
                           §§goto(addr878);
                        }
                        else
                        {
                           addr511:
                           this._flags |= 128;
                           if(!_loc5_)
                           {
                              §§push(this.§;u§);
                              if(_loc4_)
                              {
                                 addr523:
                                 §§push(this.§;u§);
                                 if(!(_loc5_ && param3))
                                 {
                                    §§push(§§pop().relativeFlags);
                                    if(_loc4_ || param3)
                                    {
                                       §§push(param3);
                                       if(!(_loc5_ && param1))
                                       {
                                          if(§§pop())
                                          {
                                             §§goto(addr556);
                                             §§push(128);
                                          }
                                          else
                                          {
                                             §§push(0);
                                             if(_loc4_)
                                             {
                                                §§goto(addr556);
                                             }
                                          }
                                          §§goto(addr819);
                                       }
                                       §§goto(addr807);
                                    }
                                    §§goto(addr798);
                                 }
                                 §§goto(addr729);
                              }
                              else
                              {
                                 §§goto(addr640);
                              }
                           }
                        }
                        §§goto(addr692);
                     }
                     else
                     {
                        addr270:
                        if(param1 == "scaleY")
                        {
                           if(!(_loc5_ && param3))
                           {
                              this._flags |= 16;
                           }
                           §§goto(addr285);
                        }
                        else if(param1 == "scaleZ")
                        {
                           if(_loc4_ || param2)
                           {
                              this._flags |= 32;
                              if(_loc4_ || param1)
                              {
                                 §§push(this.§;u§);
                                 if(_loc4_ || param3)
                                 {
                                    §§goto(addr358);
                                    §§push(this.§;u§);
                                 }
                                 else
                                 {
                                    §§goto(addr523);
                                 }
                                 §§goto(addr729);
                              }
                              §§goto(addr615);
                           }
                           §§goto(addr497);
                        }
                        else
                        {
                           §§push(param1);
                           if(!(_loc5_ && param2))
                           {
                              if(§§pop() == "rotation")
                              {
                                 this._flags |= 64;
                                 §§push(this.§;u§);
                                 if(_loc4_ || this)
                                 {
                                    §§goto(addr428);
                                 }
                                 §§goto(addr625);
                              }
                              else
                              {
                                 §§push(param1);
                                 if(_loc4_)
                                 {
                                    if(§§pop() == "rotationX")
                                    {
                                       if(_loc4_ || param1)
                                       {
                                          §§goto(addr511);
                                       }
                                       §§goto(addr692);
                                    }
                                    else
                                    {
                                       §§push(param1);
                                       if(!(_loc5_ && param2))
                                       {
                                          §§push("rotationY");
                                          if(_loc4_ || this)
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                this._flags |= 256;
                                                if(_loc4_)
                                                {
                                                   §§goto(addr592);
                                                   §§push(this.§;u§);
                                                }
                                                else
                                                {
                                                   addr844:
                                                   this._flags |= 4096;
                                                   if(_loc4_ || param3)
                                                   {
                                                      §§push(this.§;u§);
                                                      if(!(_loc5_ && this))
                                                      {
                                                         §§goto(addr878);
                                                      }
                                                      §§goto(addr890);
                                                   }
                                                   §§goto(addr892);
                                                }
                                                §§goto(addr892);
                                             }
                                             else
                                             {
                                                addr628:
                                                if(param1 == "rotationZ")
                                                {
                                                   this._flags |= 512;
                                                   if(_loc4_)
                                                   {
                                                      §§goto(addr640);
                                                   }
                                                   §§goto(addr840);
                                                }
                                                else
                                                {
                                                   addr694:
                                                   if(param1 == "alpha")
                                                   {
                                                      if(!(_loc5_ && this))
                                                      {
                                                         §§goto(addr703);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr842:
                                                      §§push(param1);
                                                      if(_loc4_ || this)
                                                      {
                                                         §§push("width");
                                                      }
                                                      if(§§pop() == "height")
                                                      {
                                                         §§goto(addr844);
                                                      }
                                                   }
                                                   §§goto(addr892);
                                                }
                                             }
                                             §§goto(addr892);
                                          }
                                          if(§§pop() == §§pop())
                                          {
                                             §§goto(addr781);
                                          }
                                          else
                                          {
                                             §§push(param1);
                                          }
                                          §§goto(addr892);
                                       }
                                       §§goto(addr842);
                                    }
                                 }
                                 §§goto(addr628);
                              }
                           }
                           §§goto(addr694);
                        }
                     }
                  }
                  §§goto(addr892);
               }
               §§goto(addr628);
            }
            §§goto(addr270);
         }
         §§goto(addr821);
      }
      
      protected function §+!0§(param1:BitmapFilter, param2:Class) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Array = this.§?!p§.filters;
         var _loc4_:uint = _loc3_.length;
         var _loc5_:uint = 0;
         loop0:
         while(true)
         {
            §§push(_loc5_);
            while(§§pop() < _loc4_)
            {
               if(_loc3_[_loc5_] is param2)
               {
                  _loc3_[_loc5_] = param1;
                  if(!_loc6_)
                  {
                     this.§?!p§.filters = _loc3_;
                     if(_loc7_ || this)
                     {
                        return;
                     }
                     addr107:
                     addr107:
                     return;
                  }
                  break;
               }
               §§push(_loc5_);
               if(!(_loc6_ && param2))
               {
                  §§push(uint(§§pop() + 1));
                  if(_loc7_)
                  {
                     continue loop0;
                  }
                  continue;
               }
               continue loop0;
            }
            _loc3_.push(param1);
            if(!_loc6_)
            {
               this.§?!p§.filters = _loc3_;
            }
            §§goto(addr107);
         }
      }
      
      override public function get target() : Object
      {
         return this.§?!p§;
      }
      
      protected function §6I§(param1:Class) : BitmapFilter
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:BitmapFilter = null;
         var _loc3_:Array = this.§?!p§.filters;
         var _loc4_:uint = _loc3_.length;
         var _loc5_:* = uint(0);
         while(_loc5_ < _loc4_)
         {
            if((_loc2_ = _loc3_[_loc5_] as BitmapFilter) is param1)
            {
               if(_loc8_ || this)
               {
                  return _loc2_;
               }
            }
            else
            {
               §§push(_loc5_);
               if(!_loc7_)
               {
                  §§push(uint(§§pop() + 1));
               }
               _loc5_ = §§pop();
            }
         }
         _loc2_ = new param1();
         if(!(_loc7_ && this))
         {
            _loc3_.push(_loc2_);
            if(!(_loc7_ && _loc2_))
            {
               addr114:
               this.§?!p§.filters = _loc3_;
            }
            return _loc2_;
         }
         §§goto(addr114);
      }
      
      override protected function newInstance() : §8Y§
      {
         return new DisplayObjectUpdater();
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(param1);
            if(!_loc5_)
            {
               §§push("x");
               if(!(_loc5_ && param1))
               {
                  if(§§pop() == §§pop())
                  {
                     this._flags |= 1;
                     §§push(this.§%f§);
                     if(_loc4_ || this)
                     {
                        §§push(this.§%f§.relativeFlags);
                        §§push(param3);
                        if(!_loc5_)
                        {
                           if(§§pop())
                           {
                              if(_loc4_)
                              {
                                 §§push(1);
                                 if(_loc4_ || param3)
                                 {
                                    addr66:
                                    §§pop().relativeFlags = §§pop() | §§pop();
                                    if(_loc4_ || param3)
                                    {
                                       addr75:
                                       this.§%f§.x = param2;
                                       if(_loc5_ && param2)
                                       {
                                          addr125:
                                          §§push(this.§%f§);
                                          if(_loc4_)
                                          {
                                             §§pop().y = param2;
                                             if(_loc4_)
                                             {
                                                addr133:
                                             }
                                          }
                                          else
                                          {
                                             addr650:
                                             §§pop().rotationZ = param2;
                                             addr649:
                                             if(_loc5_ && param1)
                                             {
                                                addr710:
                                             }
                                          }
                                          §§goto(addr838);
                                       }
                                       §§goto(addr838);
                                    }
                                    §§goto(addr133);
                                 }
                                 else
                                 {
                                    addr689:
                                    §§push(§§pop() | §§pop());
                                    if(!(_loc5_ && this))
                                    {
                                       §§pop().relativeFlags = §§pop();
                                       addr707:
                                       this.§%f§.alpha = param2;
                                       addr706:
                                       if(!_loc5_)
                                       {
                                          §§goto(addr710);
                                       }
                                       else
                                       {
                                          addr724:
                                          §§push(this.§%f§);
                                          if(_loc4_ || param1)
                                          {
                                             §§push(this.§%f§);
                                             if(!_loc5_)
                                             {
                                                §§push(§§pop().relativeFlags);
                                                if(!_loc5_)
                                                {
                                                   §§push(param3);
                                                   if(!(_loc5_ && param2))
                                                   {
                                                      addr748:
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc5_ && param3))
                                                         {
                                                            addr763:
                                                            §§pop().relativeFlags = §§pop() | 2048;
                                                            if(!(_loc5_ && param2))
                                                            {
                                                               §§push(this.§%f§);
                                                               if(_loc4_)
                                                               {
                                                                  addr776:
                                                                  §§push(param2);
                                                                  if(_loc4_)
                                                                  {
                                                                     §§pop().width = §§pop();
                                                                     if(!_loc5_)
                                                                     {
                                                                        addr782:
                                                                        §§goto(addr838);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr788:
                                                                        this._flags |= 4096;
                                                                        if(!(_loc5_ && param3))
                                                                        {
                                                                           addr813:
                                                                           §§push(this.§%f§);
                                                                           §§push(this.§%f§.relativeFlags);
                                                                           if(!_loc5_)
                                                                           {
                                                                              addr826:
                                                                              §§pop().relativeFlags = §§pop() | (!!param3 ? 4096 : 0);
                                                                              addr818:
                                                                              if(_loc4_ || this)
                                                                              {
                                                                              }
                                                                              §§goto(addr838);
                                                                           }
                                                                           §§goto(addr820);
                                                                        }
                                                                        addr836:
                                                                        §§push(this.§%f§);
                                                                        §§push(param2);
                                                                     }
                                                                     §§goto(addr838);
                                                                  }
                                                                  §§pop().height = §§pop();
                                                                  §§goto(addr838);
                                                               }
                                                               §§goto(addr813);
                                                            }
                                                            §§goto(addr782);
                                                         }
                                                         §§goto(addr818);
                                                      }
                                                      else
                                                      {
                                                         §§push(0);
                                                         if(_loc4_)
                                                         {
                                                            addr762:
                                                            §§goto(addr763);
                                                            §§push(§§pop());
                                                         }
                                                      }
                                                      §§goto(addr824);
                                                   }
                                                   §§goto(addr818);
                                                }
                                                §§goto(addr820);
                                             }
                                          }
                                          §§goto(addr813);
                                       }
                                    }
                                    §§goto(addr826);
                                 }
                              }
                              else
                              {
                                 addr278:
                                 §§push(16);
                                 if(!(_loc5_ && param3))
                                 {
                                    addr292:
                                    §§pop().relativeFlags = §§pop() | §§pop();
                                    this.§%f§.scaleY = param2;
                                    addr286:
                                 }
                                 §§goto(addr838);
                              }
                              §§goto(addr762);
                           }
                           else
                           {
                              §§push(0);
                           }
                           §§goto(addr66);
                        }
                        else
                        {
                           addr621:
                           if(§§pop())
                           {
                              §§goto(addr634);
                           }
                           else
                           {
                              §§push(0);
                              if(!(_loc5_ && this))
                              {
                                 addr633:
                                 addr634:
                                 §§push(§§pop() | 512);
                                 if(_loc4_)
                                 {
                                    §§pop().relativeFlags = §§pop();
                                    if(!_loc5_)
                                    {
                                       addr640:
                                       §§push(this.§%f§);
                                       if(_loc4_ || param2)
                                       {
                                          §§goto(addr649);
                                       }
                                       else
                                       {
                                          §§goto(addr836);
                                       }
                                    }
                                    §§goto(addr658);
                                 }
                                 addr838:
                                 return;
                                 §§push(§§pop());
                              }
                              else
                              {
                                 §§goto(addr689);
                              }
                           }
                           §§goto(addr826);
                        }
                     }
                     §§goto(addr706);
                  }
                  else if(param1 == "y")
                  {
                     this._flags |= 2;
                     §§push(this.§%f§);
                     if(!(_loc5_ && this))
                     {
                        §§push(this.§%f§);
                        if(_loc4_)
                        {
                           §§push(§§pop().relativeFlags);
                           §§push(param3);
                           if(_loc4_)
                           {
                              if(§§pop())
                              {
                                 §§push(2);
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop());
                                 }
                                 else
                                 {
                                    §§goto(addr286);
                                 }
                                 §§goto(addr838);
                              }
                              else
                              {
                                 §§push(0);
                              }
                              §§pop().relativeFlags = §§pop() | §§pop();
                              if(!_loc5_)
                              {
                                 §§goto(addr125);
                              }
                              else
                              {
                                 §§goto(addr813);
                              }
                           }
                           §§goto(addr826);
                        }
                        else
                        {
                           addr681:
                           §§push(§§pop().relativeFlags);
                           if(!_loc5_)
                           {
                              addr684:
                              §§push(param3);
                              if(!_loc5_)
                              {
                                 addr687:
                                 if(§§pop())
                                 {
                                    addr688:
                                    §§goto(addr689);
                                    §§push(1024);
                                 }
                                 else
                                 {
                                    §§push(0);
                                    if(!_loc5_)
                                    {
                                       addr694:
                                       §§goto(addr689);
                                       §§push(§§pop());
                                    }
                                 }
                                 §§goto(addr824);
                              }
                              §§goto(addr748);
                           }
                           §§goto(addr688);
                        }
                     }
                     else
                     {
                        addr419:
                        §§push(param2);
                        if(_loc4_)
                        {
                           §§pop().rotation = §§pop();
                           if(!(_loc5_ && param3))
                           {
                              §§goto(addr838);
                           }
                           else
                           {
                              §§goto(addr836);
                           }
                        }
                        §§goto(addr838);
                     }
                     §§goto(addr650);
                  }
                  else
                  {
                     §§push(param1);
                     if(_loc4_)
                     {
                        if(§§pop() == "z")
                        {
                           this._flags |= 4;
                           if(!_loc5_)
                           {
                              §§push(this.§%f§);
                              if(!(_loc5_ && param2))
                              {
                                 §§push(this.§%f§);
                                 if(_loc4_ || param2)
                                 {
                                    §§push(§§pop().relativeFlags);
                                    if(param3)
                                    {
                                       if(_loc4_)
                                       {
                                          addr182:
                                          §§pop().relativeFlags = §§pop() | 4;
                                          if(_loc4_)
                                          {
                                             this.§%f§.z = param2;
                                             §§goto(addr838);
                                          }
                                          else
                                          {
                                             §§goto(addr724);
                                          }
                                       }
                                       else
                                       {
                                          addr274:
                                          §§push(param3);
                                          if(!_loc5_)
                                          {
                                             if(§§pop())
                                             {
                                                §§goto(addr278);
                                             }
                                             else
                                             {
                                                §§push(0);
                                                if(!_loc5_)
                                                {
                                                   §§goto(addr292);
                                                   §§push(§§pop());
                                                }
                                                else
                                                {
                                                   addr351:
                                                   §§pop().relativeFlags = §§pop() | §§pop();
                                                   addr353:
                                                   §§push(this.§%f§);
                                                   if(!_loc5_)
                                                   {
                                                      §§pop().scaleZ = param2;
                                                      §§goto(addr838);
                                                   }
                                                   else
                                                   {
                                                      addr487:
                                                      §§push(param2);
                                                      if(!(_loc5_ && param2))
                                                      {
                                                         §§pop().rotationX = §§pop();
                                                         if(_loc4_)
                                                         {
                                                            addr498:
                                                            §§goto(addr838);
                                                         }
                                                         else
                                                         {
                                                            addr669:
                                                            this._flags |= 1024;
                                                            addr675:
                                                            §§push(this.§%f§);
                                                            if(!_loc5_)
                                                            {
                                                               §§goto(addr681);
                                                               §§push(this.§%f§);
                                                            }
                                                            §§goto(addr836);
                                                         }
                                                      }
                                                      §§goto(addr707);
                                                   }
                                                   addr345:
                                                }
                                                §§goto(addr838);
                                             }
                                          }
                                       }
                                       §§goto(addr748);
                                    }
                                    else
                                    {
                                       §§push(0);
                                       if(_loc4_ || param1)
                                       {
                                          §§goto(addr182);
                                          §§push(§§pop());
                                       }
                                    }
                                    §§goto(addr762);
                                 }
                                 else
                                 {
                                    addr605:
                                    §§push(§§pop().relativeFlags);
                                    if(!(_loc5_ && param1))
                                    {
                                       §§push(param3);
                                       if(!(_loc5_ && param2))
                                       {
                                          §§goto(addr621);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr684);
                                    }
                                    §§goto(addr748);
                                 }
                              }
                              §§goto(addr650);
                           }
                           §§goto(addr353);
                        }
                        else
                        {
                           §§push(param1);
                           if(!(_loc5_ && param2))
                           {
                              §§push("scaleX");
                              if(!_loc5_)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    if(!_loc5_)
                                    {
                                       this._flags |= 8;
                                       §§push(this.§%f§);
                                       if(!_loc5_)
                                       {
                                          §§push(this.§%f§.relativeFlags);
                                          if(_loc4_)
                                          {
                                             §§push(param3);
                                             if(!_loc5_)
                                             {
                                                if(§§pop())
                                                {
                                                   addr236:
                                                   §§pop().relativeFlags = §§pop() | 8;
                                                   §§push(this.§%f§);
                                                   §§push(param2);
                                                   if(_loc4_ || param3)
                                                   {
                                                      §§pop().scaleX = §§pop();
                                                      if(!_loc4_)
                                                      {
                                                      }
                                                      §§goto(addr838);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr292);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(0);
                                                   if(!(_loc5_ && param3))
                                                   {
                                                      §§goto(addr236);
                                                      §§push(§§pop());
                                                   }
                                                   else
                                                   {
                                                      addr350:
                                                      §§goto(addr351);
                                                      §§push(§§pop());
                                                   }
                                                }
                                                §§goto(addr351);
                                             }
                                             §§goto(addr748);
                                          }
                                          §§goto(addr684);
                                       }
                                       else
                                       {
                                          §§goto(addr419);
                                       }
                                    }
                                    §§goto(addr710);
                                 }
                                 else
                                 {
                                    §§push(param1);
                                    if(_loc4_)
                                    {
                                       addr255:
                                       §§push("scaleY");
                                       if(!_loc5_)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             this._flags |= 16;
                                             §§push(this.§%f§);
                                             §§push(this.§%f§);
                                             if(_loc4_)
                                             {
                                                §§push(§§pop().relativeFlags);
                                                if(!_loc5_)
                                                {
                                                   §§goto(addr274);
                                                }
                                                else
                                                {
                                                   addr543:
                                                   §§push(param3);
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§push(256);
                                                         if(!(_loc5_ && param2))
                                                         {
                                                            §§push(§§pop());
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr633);
                                                         }
                                                         §§goto(addr838);
                                                      }
                                                      else
                                                      {
                                                         §§push(0);
                                                      }
                                                      addr565:
                                                      §§pop().relativeFlags = §§pop() | §§pop();
                                                      if(_loc4_ || this)
                                                      {
                                                         this.§%f§.rotationY = param2;
                                                         §§goto(addr838);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr782);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr687);
                                                   }
                                                   §§goto(addr826);
                                                }
                                             }
                                             else
                                             {
                                                addr535:
                                                §§push(§§pop().relativeFlags);
                                                if(!(_loc5_ && param2))
                                                {
                                                   §§goto(addr543);
                                                }
                                             }
                                             §§goto(addr820);
                                          }
                                          else
                                          {
                                             §§push(param1);
                                             if(_loc4_ || param2)
                                             {
                                                addr307:
                                                §§push("scaleZ");
                                                if(_loc4_)
                                                {
                                                   if(§§pop() == §§pop())
                                                   {
                                                      this._flags |= 32;
                                                      if(_loc4_)
                                                      {
                                                         §§push(this.§%f§);
                                                         if(_loc4_)
                                                         {
                                                            §§push(this.§%f§);
                                                            if(_loc4_)
                                                            {
                                                               §§push(§§pop().relativeFlags);
                                                               §§push(param3);
                                                               if(!(_loc5_ && param1))
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc5_ && param3))
                                                                     {
                                                                        §§goto(addr345);
                                                                        §§push(32);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr394:
                                                                        §§push(param3);
                                                                        if(_loc4_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              addr415:
                                                                              §§pop().relativeFlags = §§pop() | 64;
                                                                              §§goto(addr419);
                                                                              §§push(this.§%f§);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(0);
                                                                              if(!_loc5_)
                                                                              {
                                                                                 §§goto(addr415);
                                                                                 §§push(§§pop());
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr634);
                                                                              }
                                                                              §§goto(addr838);
                                                                           }
                                                                           §§goto(addr838);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr621);
                                                                        }
                                                                     }
                                                                     §§goto(addr689);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(0);
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§goto(addr350);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr474:
                                                                        §§push(§§pop() | §§pop());
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§pop().relativeFlags = §§pop();
                                                                           if(!(_loc5_ && this))
                                                                           {
                                                                              §§goto(addr487);
                                                                              §§push(this.§%f§);
                                                                           }
                                                                           §§goto(addr675);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr565);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr782);
                                                               }
                                                               else
                                                               {
                                                                  addr461:
                                                                  if(§§pop())
                                                                  {
                                                                     §§goto(addr474);
                                                                     §§push(128);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(0);
                                                                     if(!(_loc5_ && this))
                                                                     {
                                                                        §§goto(addr474);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr694);
                                                            }
                                                            §§goto(addr681);
                                                         }
                                                         §§goto(addr419);
                                                      }
                                                      §§goto(addr675);
                                                   }
                                                   else
                                                   {
                                                      §§push(param1);
                                                      §§push("rotation");
                                                      if(_loc4_ || param3)
                                                      {
                                                         if(§§pop() == §§pop())
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               this._flags |= 64;
                                                               if(_loc4_)
                                                               {
                                                                  §§push(this.§%f§);
                                                                  §§push(this.§%f§);
                                                                  if(!(_loc5_ && param2))
                                                                  {
                                                                     §§push(§§pop().relativeFlags);
                                                                     if(_loc4_)
                                                                     {
                                                                        §§goto(addr394);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr543);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr605);
                                                                  }
                                                                  §§goto(addr748);
                                                               }
                                                               §§goto(addr782);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr498);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(param1);
                                                            §§push("rotationX");
                                                            if(_loc4_)
                                                            {
                                                               addr435:
                                                               if(§§pop() == §§pop())
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     this._flags |= 128;
                                                                     §§push(this.§%f§);
                                                                     if(!(_loc5_ && this))
                                                                     {
                                                                        §§push(this.§%f§);
                                                                        if(_loc4_)
                                                                        {
                                                                           §§push(§§pop().relativeFlags);
                                                                           §§push(param3);
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§goto(addr461);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr621);
                                                                           }
                                                                        }
                                                                        §§goto(addr681);
                                                                     }
                                                                     §§goto(addr776);
                                                                  }
                                                                  §§goto(addr498);
                                                               }
                                                               else
                                                               {
                                                                  §§push(param1);
                                                                  if(_loc4_ || this)
                                                                  {
                                                                     §§push("rotationY");
                                                                     if(_loc4_ || param1)
                                                                     {
                                                                        if(§§pop() == §§pop())
                                                                        {
                                                                           this._flags |= 256;
                                                                           if(_loc4_ || param2)
                                                                           {
                                                                              §§push(this.§%f§);
                                                                              §§push(this.§%f§);
                                                                              if(!_loc5_)
                                                                              {
                                                                                 §§goto(addr535);
                                                                              }
                                                                              §§goto(addr813);
                                                                           }
                                                                           §§goto(addr640);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(param1);
                                                                           §§push("rotationZ");
                                                                           if(_loc4_ || param2)
                                                                           {
                                                                           }
                                                                           addr785:
                                                                           if(§§pop() == §§pop())
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 §§goto(addr788);
                                                                              }
                                                                           }
                                                                           §§goto(addr838);
                                                                        }
                                                                     }
                                                                     if(§§pop() == §§pop())
                                                                     {
                                                                        this._flags |= 512;
                                                                        if(_loc4_ || param1)
                                                                        {
                                                                           §§goto(addr605);
                                                                           §§push(this.§%f§);
                                                                           §§push(this.§%f§);
                                                                        }
                                                                        §§goto(addr707);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(param1);
                                                                        if(_loc4_ || param2)
                                                                        {
                                                                        }
                                                                        addr784:
                                                                        §§goto(addr785);
                                                                        §§push("height");
                                                                     }
                                                                     §§goto(addr838);
                                                                  }
                                                                  addr668:
                                                                  if(§§pop() == "alpha")
                                                                  {
                                                                     §§goto(addr669);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(param1);
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§push("width");
                                                                        if(!_loc4_)
                                                                        {
                                                                        }
                                                                        §§goto(addr785);
                                                                     }
                                                                     §§goto(addr784);
                                                                  }
                                                               }
                                                               §§goto(addr669);
                                                            }
                                                         }
                                                         §§goto(addr838);
                                                      }
                                                      if(§§pop() == §§pop())
                                                      {
                                                         this._flags |= 2048;
                                                         §§goto(addr724);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr784);
                                                         §§push(param1);
                                                      }
                                                      §§goto(addr838);
                                                   }
                                                }
                                             }
                                             §§goto(addr784);
                                          }
                                       }
                                       §§goto(addr435);
                                    }
                                    §§goto(addr307);
                                 }
                              }
                              §§goto(addr668);
                           }
                           §§goto(addr255);
                        }
                     }
                     §§goto(addr784);
                  }
                  §§goto(addr838);
               }
               §§goto(addr785);
            }
            §§goto(addr784);
         }
         §§goto(addr75);
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:DisplayObject = this.§?!p§;
         var _loc3_:DisplayObjectParameter = this.§;u§;
         var _loc4_:DisplayObjectParameter = this.§%f§;
         §§push(this._flags);
         if(!(_loc7_ && _loc2_))
         {
            §§push(uint(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(1 - param1);
         if(!(_loc7_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         if(!(_loc7_ && this))
         {
            §§push(_loc5_ & 1);
            if(_loc8_ || param1)
            {
               §§push(0);
               if(!_loc7_)
               {
                  if(§§pop() != §§pop())
                  {
                     if(!_loc7_)
                     {
                        _loc2_.x = _loc4_.x * _loc6_ + _loc3_.x * param1;
                        if(!_loc7_)
                        {
                           addr88:
                           §§push(_loc5_);
                           §§push(2);
                           if(_loc8_)
                           {
                              §§push(§§pop() & §§pop());
                              if(!(_loc7_ && param1))
                              {
                                 §§push(0);
                                 if(!_loc7_)
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       _loc2_.y = _loc4_.y * _loc6_ + _loc3_.y * param1;
                                       addr115:
                                       §§push(_loc5_);
                                       if(_loc8_)
                                       {
                                          addr119:
                                          §§push(§§pop() & 4);
                                          if(!_loc7_)
                                          {
                                             addr122:
                                             if(§§pop() != 0)
                                             {
                                                if(_loc8_ || this)
                                                {
                                                   _loc2_.z = _loc4_.z * _loc6_ + _loc3_.z * param1;
                                                   addr142:
                                                   §§push(_loc5_);
                                                   if(_loc8_ || this)
                                                   {
                                                      §§push(56);
                                                      if(!(_loc7_ && _loc3_))
                                                      {
                                                         §§push(§§pop() & §§pop());
                                                         if(_loc8_ || param1)
                                                         {
                                                            addr166:
                                                            if(§§pop() != 0)
                                                            {
                                                               §§push(_loc5_);
                                                               §§push(8);
                                                               if(!(_loc7_ && _loc3_))
                                                               {
                                                                  §§push(§§pop() & §§pop());
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§push(0);
                                                                     if(!(_loc7_ && this))
                                                                     {
                                                                        if(§§pop() != §§pop())
                                                                        {
                                                                           _loc2_.scaleX = _loc4_.scaleX * _loc6_ + _loc3_.scaleX * param1;
                                                                        }
                                                                        §§push(_loc5_);
                                                                        if(_loc8_)
                                                                        {
                                                                           §§push(16);
                                                                           if(!(_loc7_ && param1))
                                                                           {
                                                                              §§push(§§pop() & §§pop());
                                                                              if(!(_loc7_ && _loc2_))
                                                                              {
                                                                                 addr219:
                                                                                 §§push(0);
                                                                                 if(_loc8_ || this)
                                                                                 {
                                                                                    if(§§pop() != §§pop())
                                                                                    {
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          _loc2_.scaleY = _loc4_.scaleY * _loc6_ + _loc3_.scaleY * param1;
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             addr243:
                                                                                             §§push(_loc5_);
                                                                                             if(!(_loc7_ && param1))
                                                                                             {
                                                                                                addr251:
                                                                                                §§push(32);
                                                                                                if(!(_loc7_ && this))
                                                                                                {
                                                                                                   addr270:
                                                                                                   §§push(§§pop() & §§pop());
                                                                                                   §§push(0);
                                                                                                   if(_loc8_ || _loc2_)
                                                                                                   {
                                                                                                      if(§§pop() != §§pop())
                                                                                                      {
                                                                                                         if(!(_loc7_ && _loc2_))
                                                                                                         {
                                                                                                            _loc2_.scaleZ = _loc4_.scaleZ * _loc6_ + _loc3_.scaleZ * param1;
                                                                                                            if(!(_loc7_ && param1))
                                                                                                            {
                                                                                                               addr304:
                                                                                                               if((_loc5_ & 960) != 0)
                                                                                                               {
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                     addr312:
                                                                                                                     §§push(_loc5_);
                                                                                                                     §§push(64);
                                                                                                                     if(!(_loc7_ && _loc3_))
                                                                                                                     {
                                                                                                                        addr320:
                                                                                                                        §§push(§§pop() & §§pop());
                                                                                                                        if(!(_loc7_ && param1))
                                                                                                                        {
                                                                                                                           addr329:
                                                                                                                           if(§§pop() != 0)
                                                                                                                           {
                                                                                                                              _loc2_.rotation = _loc4_.rotation * _loc6_ + _loc3_.rotation * param1;
                                                                                                                              if(_loc8_)
                                                                                                                              {
                                                                                                                                 addr343:
                                                                                                                                 §§push(_loc5_);
                                                                                                                                 if(_loc8_ || this)
                                                                                                                                 {
                                                                                                                                    addr353:
                                                                                                                                    if((§§pop() & 128) != 0)
                                                                                                                                    {
                                                                                                                                       if(_loc8_)
                                                                                                                                       {
                                                                                                                                          addr357:
                                                                                                                                          _loc2_.rotationX = _loc4_.rotationX * _loc6_ + _loc3_.rotationX * param1;
                                                                                                                                          addr368:
                                                                                                                                          §§push(_loc5_);
                                                                                                                                          if(!_loc7_)
                                                                                                                                          {
                                                                                                                                             addr371:
                                                                                                                                             §§push(256);
                                                                                                                                             if(_loc8_)
                                                                                                                                             {
                                                                                                                                                addr374:
                                                                                                                                                §§push(§§pop() & §§pop());
                                                                                                                                                §§push(0);
                                                                                                                                                if(!(_loc7_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   addr383:
                                                                                                                                                   if(§§pop() != §§pop())
                                                                                                                                                   {
                                                                                                                                                      addr384:
                                                                                                                                                      _loc2_.rotationY = _loc4_.rotationY * _loc6_ + _loc3_.rotationY * param1;
                                                                                                                                                      addr395:
                                                                                                                                                      §§push(_loc5_);
                                                                                                                                                      if(_loc8_)
                                                                                                                                                      {
                                                                                                                                                         §§push(512);
                                                                                                                                                         if(_loc8_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() & §§pop());
                                                                                                                                                            if(_loc8_ || this)
                                                                                                                                                            {
                                                                                                                                                               §§push(0);
                                                                                                                                                               if(_loc8_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop() != §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc8_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        _loc2_.rotationZ = _loc4_.rotationZ * _loc6_ + _loc3_.rotationZ * param1;
                                                                                                                                                                        if(_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           addr438:
                                                                                                                                                                           §§push(_loc5_ & 7168);
                                                                                                                                                                           §§push(0);
                                                                                                                                                                           if(!_loc7_)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop() != §§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 addr448:
                                                                                                                                                                                 §§push(_loc5_ & 1024);
                                                                                                                                                                                 §§push(0);
                                                                                                                                                                                 if(_loc8_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop() != §§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc7_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr464:
                                                                                                                                                                                          _loc2_.alpha = _loc4_.alpha * _loc6_ + _loc3_.alpha * param1;
                                                                                                                                                                                          if(_loc8_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr477:
                                                                                                                                                                                             §§push(_loc5_);
                                                                                                                                                                                             if(_loc8_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() & 2048);
                                                                                                                                                                                                if(!(_loc7_ && _loc2_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(0);
                                                                                                                                                                                                   if(_loc8_ || _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr512:
                                                                                                                                                                                                      if(§§pop() != §§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr513:
                                                                                                                                                                                                         _loc2_.width = _loc4_.width * _loc6_ + _loc3_.width * param1;
                                                                                                                                                                                                         addr524:
                                                                                                                                                                                                         §§push(_loc5_);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr524);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr528);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr527:
                                                                                                                                                                                                addr528:
                                                                                                                                                                                                if(§§pop() != §§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc2_.height = _loc4_.height * _loc6_ + _loc3_.height * param1;
                                                                                                                                                                                                   §§goto(addr540);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr540:
                                                                                                                                                                                                return;
                                                                                                                                                                                                §§push(0);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr527);
                                                                                                                                                                                             §§push(§§pop() & 4096);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr477);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr528);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr528);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr477);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr540);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr438);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr528);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr448);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr477);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr448);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr395);
                                                                                                                                                }
                                                                                                                                                §§goto(addr528);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr448);
                                                                                                                                       }
                                                                                                                                       §§goto(addr464);
                                                                                                                                    }
                                                                                                                                    §§goto(addr368);
                                                                                                                                 }
                                                                                                                                 §§goto(addr448);
                                                                                                                              }
                                                                                                                              §§goto(addr524);
                                                                                                                           }
                                                                                                                           §§goto(addr343);
                                                                                                                        }
                                                                                                                        §§goto(addr527);
                                                                                                                     }
                                                                                                                     §§goto(addr374);
                                                                                                                  }
                                                                                                                  §§goto(addr357);
                                                                                                               }
                                                                                                               §§goto(addr438);
                                                                                                            }
                                                                                                            §§goto(addr384);
                                                                                                         }
                                                                                                         §§goto(addr357);
                                                                                                      }
                                                                                                      §§goto(addr304);
                                                                                                   }
                                                                                                   §§goto(addr329);
                                                                                                }
                                                                                                §§goto(addr374);
                                                                                             }
                                                                                             §§goto(addr312);
                                                                                          }
                                                                                          §§goto(addr477);
                                                                                       }
                                                                                       §§goto(addr513);
                                                                                    }
                                                                                    §§goto(addr243);
                                                                                 }
                                                                                 §§goto(addr383);
                                                                              }
                                                                              §§goto(addr353);
                                                                           }
                                                                           §§goto(addr320);
                                                                        }
                                                                        §§goto(addr371);
                                                                     }
                                                                     §§goto(addr304);
                                                                  }
                                                                  §§goto(addr353);
                                                               }
                                                               §§goto(addr320);
                                                            }
                                                            §§goto(addr304);
                                                         }
                                                         §§goto(addr270);
                                                      }
                                                      §§goto(addr304);
                                                   }
                                                   §§goto(addr251);
                                                }
                                                §§goto(addr384);
                                             }
                                             §§goto(addr142);
                                          }
                                          §§goto(addr219);
                                       }
                                       §§goto(addr312);
                                    }
                                    §§goto(addr115);
                                 }
                                 §§goto(addr512);
                              }
                              §§goto(addr166);
                           }
                           §§goto(addr119);
                        }
                        §§goto(addr115);
                     }
                     §§goto(addr142);
                  }
                  §§goto(addr88);
               }
               §§goto(addr383);
            }
            §§goto(addr122);
         }
         §§goto(addr438);
      }
      
      override public function set target(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§?!p§ = param1 as DisplayObject;
         }
      }
      
      override protected function resolveValues() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:DisplayObject = this.§?!p§;
         var _loc2_:DisplayObjectParameter = this.§;u§;
         var _loc3_:DisplayObjectParameter = this.§%f§;
         §§push(this._flags);
         if(!(_loc5_ && this))
         {
            §§push(uint(§§pop()));
         }
         var _loc4_:*;
         §§push(_loc4_ = §§pop());
         if(!(_loc5_ && _loc3_))
         {
            if((§§pop() & 1) != 0)
            {
               if(isNaN(_loc3_.x))
               {
                  _loc3_.x = _loc1_.x;
                  if(!(_loc5_ && _loc3_))
                  {
                     addr107:
                     if(isNaN(_loc2_.x))
                     {
                        _loc2_.x = _loc1_.x;
                        if(_loc6_)
                        {
                           addr162:
                           §§push(_loc4_);
                           if(_loc6_)
                           {
                              addr165:
                              §§push(2);
                              if(_loc6_ || this)
                              {
                                 addr174:
                                 if((§§pop() & §§pop()) != 0)
                                 {
                                    if(!(_loc5_ && this))
                                    {
                                       if(isNaN(_loc3_.y))
                                       {
                                          _loc3_.y = _loc1_.y;
                                          addr219:
                                          if(isNaN(_loc2_.y))
                                          {
                                             if(!(_loc5_ && _loc2_))
                                             {
                                                _loc2_.y = _loc1_.y;
                                                addr258:
                                                §§push(_loc4_ & 4);
                                                §§push(0);
                                                if(!(_loc5_ && _loc2_))
                                                {
                                                   if(§§pop() != §§pop())
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         if(isNaN(_loc3_.z))
                                                         {
                                                            if(_loc6_ || _loc2_)
                                                            {
                                                               _loc3_.z = _loc1_.z;
                                                               addr316:
                                                               if(isNaN(_loc2_.z))
                                                               {
                                                                  _loc2_.z = _loc1_.z;
                                                                  if(_loc6_)
                                                                  {
                                                                     addr352:
                                                                     §§push(_loc4_ & 8);
                                                                     if(!(_loc5_ && this))
                                                                     {
                                                                        if(§§pop() != 0)
                                                                        {
                                                                           if(_loc6_ || this)
                                                                           {
                                                                              if(isNaN(_loc3_.scaleX))
                                                                              {
                                                                                 _loc3_.scaleX = _loc1_.scaleX;
                                                                                 addr405:
                                                                                 if(isNaN(_loc2_.scaleX))
                                                                                 {
                                                                                    _loc2_.scaleX = _loc1_.scaleX;
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       addr444:
                                                                                       §§push(_loc4_);
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          §§push(16);
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             §§push(§§pop() & §§pop());
                                                                                             §§push(0);
                                                                                             if(!(_loc5_ && this))
                                                                                             {
                                                                                                if(§§pop() != §§pop())
                                                                                                {
                                                                                                   if(isNaN(_loc3_.scaleY))
                                                                                                   {
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         _loc3_.scaleY = _loc1_.scaleY;
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            addr498:
                                                                                                            if(isNaN(_loc2_.scaleY))
                                                                                                            {
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  _loc2_.scaleY = _loc1_.scaleY;
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     addr538:
                                                                                                                     §§push(_loc4_);
                                                                                                                     if(_loc6_ || _loc2_)
                                                                                                                     {
                                                                                                                        §§push(32);
                                                                                                                        if(!(_loc5_ && _loc3_))
                                                                                                                        {
                                                                                                                           §§push(§§pop() & §§pop());
                                                                                                                           if(!(_loc5_ && _loc3_))
                                                                                                                           {
                                                                                                                              if(§§pop() != 0)
                                                                                                                              {
                                                                                                                                 if(_loc6_ || this)
                                                                                                                                 {
                                                                                                                                    if(isNaN(_loc3_.scaleZ))
                                                                                                                                    {
                                                                                                                                       if(!_loc5_)
                                                                                                                                       {
                                                                                                                                          _loc3_.scaleZ = _loc1_.scaleZ;
                                                                                                                                          if(!(_loc5_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             addr616:
                                                                                                                                             if(isNaN(_loc2_.scaleZ))
                                                                                                                                             {
                                                                                                                                                _loc2_.scaleZ = _loc1_.scaleZ;
                                                                                                                                                if(_loc6_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   addr674:
                                                                                                                                                   §§push(_loc4_);
                                                                                                                                                   if(_loc6_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      §§push(64);
                                                                                                                                                      if(_loc6_ || _loc1_)
                                                                                                                                                      {
                                                                                                                                                         addr690:
                                                                                                                                                         if((§§pop() & §§pop()) != 0)
                                                                                                                                                         {
                                                                                                                                                            if(_loc6_)
                                                                                                                                                            {
                                                                                                                                                               addr695:
                                                                                                                                                               if(isNaN(_loc3_.rotation))
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc5_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     _loc3_.rotation = _loc1_.rotation;
                                                                                                                                                                     addr755:
                                                                                                                                                                     if(isNaN(_loc2_.rotation))
                                                                                                                                                                     {
                                                                                                                                                                        _loc2_.rotation = _loc1_.rotation;
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc2_.relativeFlags);
                                                                                                                                                                        if(!_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           addr770:
                                                                                                                                                                           §§push(§§pop() & 64);
                                                                                                                                                                           if(_loc6_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(0);
                                                                                                                                                                              if(_loc6_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop() != §§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc6_)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc2_.rotation += _loc1_.rotation;
                                                                                                                                                                                       addr791:
                                                                                                                                                                                       §§push(_loc4_ & 128);
                                                                                                                                                                                       if(_loc6_ || _loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr802:
                                                                                                                                                                                          if(§§pop() != 0)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(isNaN(_loc3_.rotationX))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc5_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr815:
                                                                                                                                                                                                   _loc3_.rotationX = _loc1_.rotationX;
                                                                                                                                                                                                   addr840:
                                                                                                                                                                                                   if(isNaN(_loc2_.rotationX))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc2_.rotationX = _loc1_.rotationX;
                                                                                                                                                                                                      addr881:
                                                                                                                                                                                                      §§push(_loc4_);
                                                                                                                                                                                                      if(_loc6_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr885:
                                                                                                                                                                                                         §§push(§§pop() & 256);
                                                                                                                                                                                                         if(!_loc5_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr888:
                                                                                                                                                                                                            §§push(0);
                                                                                                                                                                                                            if(!_loc5_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(§§pop() != §§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc5_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr894:
                                                                                                                                                                                                                     if(isNaN(_loc3_.rotationY))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc3_.rotationY = _loc1_.rotationY;
                                                                                                                                                                                                                        addr931:
                                                                                                                                                                                                                        if(isNaN(_loc2_.rotationY))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc2_.rotationY = _loc1_.rotationY;
                                                                                                                                                                                                                           addr965:
                                                                                                                                                                                                                           §§push(_loc4_);
                                                                                                                                                                                                                           §§push(512);
                                                                                                                                                                                                                           if(_loc6_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr969:
                                                                                                                                                                                                                              §§push(§§pop() & §§pop());
                                                                                                                                                                                                                              if(!_loc5_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(0);
                                                                                                                                                                                                                                 if(!(_loc5_ && _loc1_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(§§pop() != §§pop())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr981:
                                                                                                                                                                                                                                       if(isNaN(_loc3_.rotationZ))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc3_.rotationZ = _loc1_.rotationZ;
                                                                                                                                                                                                                                          addr1032:
                                                                                                                                                                                                                                          if(isNaN(_loc2_.rotationZ))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             _loc2_.rotationZ = _loc1_.rotationZ;
                                                                                                                                                                                                                                             addr1055:
                                                                                                                                                                                                                                             §§push(_loc4_);
                                                                                                                                                                                                                                             if(_loc6_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(1024);
                                                                                                                                                                                                                                                if(!_loc5_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() & §§pop());
                                                                                                                                                                                                                                                   if(!(_loc5_ && _loc1_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1069:
                                                                                                                                                                                                                                                      §§push(0);
                                                                                                                                                                                                                                                      if(_loc6_ || _loc2_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1077:
                                                                                                                                                                                                                                                         if(§§pop() != §§pop())
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(isNaN(_loc3_.alpha))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1083:
                                                                                                                                                                                                                                                               _loc3_.alpha = _loc1_.alpha;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1093:
                                                                                                                                                                                                                                                               if((_loc3_.relativeFlags & 1024) != 0)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc6_ || _loc1_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1101:
                                                                                                                                                                                                                                                                     _loc3_.alpha += _loc1_.alpha;
                                                                                                                                                                                                                                                                     addr1108:
                                                                                                                                                                                                                                                                     if(isNaN(_loc2_.alpha))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc5_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           _loc2_.alpha = _loc1_.alpha;
                                                                                                                                                                                                                                                                           addr1144:
                                                                                                                                                                                                                                                                           §§push(_loc4_);
                                                                                                                                                                                                                                                                           if(!_loc5_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1147:
                                                                                                                                                                                                                                                                              §§push(§§pop() & 2048);
                                                                                                                                                                                                                                                                              if(!_loc5_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1152:
                                                                                                                                                                                                                                                                                 if(§§pop() != 0)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc6_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1155:
                                                                                                                                                                                                                                                                                       if(isNaN(_loc3_.width))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr1160:
                                                                                                                                                                                                                                                                                          _loc3_.width = _loc1_.width;
                                                                                                                                                                                                                                                                                          if(_loc6_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr1186:
                                                                                                                                                                                                                                                                                             if(isNaN(_loc2_.width))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!_loc5_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr1193:
                                                                                                                                                                                                                                                                                                   _loc2_.width = _loc1_.width;
                                                                                                                                                                                                                                                                                                   if(_loc6_ || _loc1_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr1229:
                                                                                                                                                                                                                                                                                                      §§push(_loc4_);
                                                                                                                                                                                                                                                                                                      §§push(4096);
                                                                                                                                                                                                                                                                                                      if(!_loc5_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr1233:
                                                                                                                                                                                                                                                                                                         §§push(§§pop() & §§pop());
                                                                                                                                                                                                                                                                                                         if(!(_loc5_ && _loc2_))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr1241:
                                                                                                                                                                                                                                                                                                            if(§§pop() != 0)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr1243:
                                                                                                                                                                                                                                                                                                               if(isNaN(_loc3_.height))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  _loc3_.height = _loc1_.height;
                                                                                                                                                                                                                                                                                                                  addr1297:
                                                                                                                                                                                                                                                                                                                  if(isNaN(_loc2_.height))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr1302:
                                                                                                                                                                                                                                                                                                                     _loc2_.height = _loc1_.height;
                                                                                                                                                                                                                                                                                                                     if(!_loc6_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr1315:
                                                                                                                                                                                                                                                                                                                        _loc2_.height += _loc1_.height;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr1308:
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr1314:
                                                                                                                                                                                                                                                                                                                     if((_loc2_.relativeFlags & 4096) != 0)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§goto(addr1315);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr1255:
                                                                                                                                                                                                                                                                                                                  §§push(_loc3_.relativeFlags);
                                                                                                                                                                                                                                                                                                                  §§push(4096);
                                                                                                                                                                                                                                                                                                                  if(!(_loc5_ && _loc1_))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr1264:
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() & §§pop());
                                                                                                                                                                                                                                                                                                                     §§push(0);
                                                                                                                                                                                                                                                                                                                     if(!(_loc5_ && _loc2_))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr1272:
                                                                                                                                                                                                                                                                                                                        if(§§pop() != §§pop())
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr1273:
                                                                                                                                                                                                                                                                                                                           _loc3_.height += _loc1_.height;
                                                                                                                                                                                                                                                                                                                           if(_loc6_ || _loc3_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1322);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1297);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1314);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1314);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1322);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1264);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1302);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1243);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc2_.relativeFlags);
                                                                                                                                                                                                                                                                                                §§push(2048);
                                                                                                                                                                                                                                                                                                if(_loc6_ || _loc1_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr1215:
                                                                                                                                                                                                                                                                                                   §§push(§§pop() & §§pop());
                                                                                                                                                                                                                                                                                                   if(!_loc5_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr1218:
                                                                                                                                                                                                                                                                                                      if(§§pop() != 0)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         _loc2_.width += _loc1_.width;
                                                                                                                                                                                                                                                                                                         if(!_loc5_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§goto(addr1229);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr1322:
                                                                                                                                                                                                                                                                                                         return;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1229);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1241);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1314);
                                                                                                                                                                                                                                                                                             addr1166:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1273);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc3_.relativeFlags);
                                                                                                                                                                                                                                                                                          if(_loc6_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop() & 2048);
                                                                                                                                                                                                                                                                                             if(!_loc5_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr1175:
                                                                                                                                                                                                                                                                                                §§push(0);
                                                                                                                                                                                                                                                                                                if(!_loc5_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(§§pop() != §§pop())
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      _loc3_.width += _loc1_.width;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1186);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1241);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1218);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1255);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1229);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1175);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1229);
                                                                                                                                                                                                                                                                           addr1119:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1302);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1122:
                                                                                                                                                                                                                                                                        §§push(_loc2_.relativeFlags);
                                                                                                                                                                                                                                                                        §§push(1024);
                                                                                                                                                                                                                                                                        if(_loc6_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr1125:
                                                                                                                                                                                                                                                                           §§push(§§pop() & §§pop());
                                                                                                                                                                                                                                                                           if(!_loc5_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(0);
                                                                                                                                                                                                                                                                              if(!(_loc5_ && this))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1136:
                                                                                                                                                                                                                                                                                 if(§§pop() != §§pop())
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    _loc2_.alpha += _loc1_.alpha;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1144);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1241);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1264);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1264);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1229);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1108);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1144);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1152);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1125);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1147);
                                                                                                                                                                                                                                             addr1041:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc2_.relativeFlags);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1055);
                                                                                                                                                                                                                                          addr990:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc3_.relativeFlags);
                                                                                                                                                                                                                                          if(!(_loc5_ && _loc1_))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(512);
                                                                                                                                                                                                                                             if(!(_loc5_ && _loc1_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1009:
                                                                                                                                                                                                                                                if((§§pop() & §§pop()) != 0)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc5_ && _loc1_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1018:
                                                                                                                                                                                                                                                      _loc3_.rotationZ += _loc1_.rotationZ;
                                                                                                                                                                                                                                                      if(_loc6_ || _loc2_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1155);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1166);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1032);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1215);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if((§§pop() & 512) != 0)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc2_.rotationZ += _loc1_.rotationZ;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1055);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1241);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1009);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1233);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc2_.relativeFlags);
                                                                                                                                                                                                                           if(_loc6_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr947:
                                                                                                                                                                                                                              §§push(§§pop() & 256);
                                                                                                                                                                                                                              §§push(0);
                                                                                                                                                                                                                              if(!_loc5_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr950:
                                                                                                                                                                                                                                 if(§§pop() != §§pop())
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr951:
                                                                                                                                                                                                                                    _loc2_.rotationY += _loc1_.rotationY;
                                                                                                                                                                                                                                    if(_loc6_ || this)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr965);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1229);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr965);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1077);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1314);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc3_.relativeFlags);
                                                                                                                                                                                                                        if(!(_loc5_ && _loc2_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr915:
                                                                                                                                                                                                                           §§push(§§pop() & 256);
                                                                                                                                                                                                                           §§push(0);
                                                                                                                                                                                                                           if(_loc6_ || _loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr923:
                                                                                                                                                                                                                              if(§§pop() != §§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc3_.rotationY += _loc1_.rotationY;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr931);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr950);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1229);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1273);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr965);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1152);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr947);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr965);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc2_.relativeFlags);
                                                                                                                                                                                                      §§push(128);
                                                                                                                                                                                                      if(!_loc5_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr856:
                                                                                                                                                                                                         §§push(§§pop() & §§pop());
                                                                                                                                                                                                         §§push(0);
                                                                                                                                                                                                         if(!_loc5_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr859:
                                                                                                                                                                                                            if(§§pop() != §§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc6_ || _loc2_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc2_.rotationX += _loc1_.rotationX;
                                                                                                                                                                                                                  if(!(_loc5_ && _loc2_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr881);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr951);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1160);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr881);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1093);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr885);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1101);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                addr824:
                                                                                                                                                                                                if((_loc3_.relativeFlags & 128) != 0)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc5_ && _loc1_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr833:
                                                                                                                                                                                                      _loc3_.rotationX += _loc1_.rotationX;
                                                                                                                                                                                                      §§goto(addr840);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr931);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr840);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr881);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr824);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1155);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr791);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1093);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1069);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1314);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1314);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr833);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc3_.relativeFlags);
                                                                                                                                                                  if(!(_loc5_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(64);
                                                                                                                                                                     if(_loc6_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() & §§pop());
                                                                                                                                                                        §§push(0);
                                                                                                                                                                        if(_loc6_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           addr738:
                                                                                                                                                                           if(§§pop() != §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc5_)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc3_.rotation += _loc1_.rotation;
                                                                                                                                                                                 if(_loc6_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1186);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr791);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr755);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1272);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr969);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1314);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr965);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr791);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr770);
                                                                                                                                                   addr632:
                                                                                                                                                }
                                                                                                                                                §§goto(addr1273);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§push(_loc2_.relativeFlags);
                                                                                                                                                if(!_loc5_)
                                                                                                                                                {
                                                                                                                                                   addr637:
                                                                                                                                                   §§push(32);
                                                                                                                                                   if(_loc6_ || _loc1_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() & §§pop());
                                                                                                                                                      §§push(0);
                                                                                                                                                      if(!_loc5_)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop() != §§pop())
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc5_ && this))
                                                                                                                                                            {
                                                                                                                                                               _loc2_.scaleZ += _loc1_.scaleZ;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr674);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr923);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1125);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr791);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1186);
                                                                                                                                       }
                                                                                                                                       §§goto(addr695);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§push(_loc3_.relativeFlags);
                                                                                                                                       §§push(32);
                                                                                                                                       if(_loc6_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() & §§pop());
                                                                                                                                          if(!_loc5_)
                                                                                                                                          {
                                                                                                                                             addr599:
                                                                                                                                             if(§§pop() != 0)
                                                                                                                                             {
                                                                                                                                                if(_loc6_)
                                                                                                                                                {
                                                                                                                                                   addr602:
                                                                                                                                                   _loc3_.scaleZ += _loc1_.scaleZ;
                                                                                                                                                   if(!(_loc5_ && _loc1_))
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr616);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr755);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1297);
                                                                                                                                             }
                                                                                                                                             §§goto(addr616);
                                                                                                                                          }
                                                                                                                                          §§goto(addr915);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr947);
                                                                                                                                 }
                                                                                                                                 §§goto(addr833);
                                                                                                                              }
                                                                                                                              §§goto(addr674);
                                                                                                                           }
                                                                                                                           §§goto(addr1264);
                                                                                                                        }
                                                                                                                        §§goto(addr770);
                                                                                                                     }
                                                                                                                     §§goto(addr1314);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr815);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(_loc2_.relativeFlags);
                                                                                                               if(!(_loc5_ && _loc3_))
                                                                                                               {
                                                                                                                  addr521:
                                                                                                                  §§push(§§pop() & 16);
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     §§push(0);
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        addr528:
                                                                                                                        if(§§pop() != §§pop())
                                                                                                                        {
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              addr531:
                                                                                                                              _loc2_.scaleY += _loc1_.scaleY;
                                                                                                                              §§goto(addr538);
                                                                                                                           }
                                                                                                                           §§goto(addr632);
                                                                                                                        }
                                                                                                                        §§goto(addr538);
                                                                                                                     }
                                                                                                                     §§goto(addr859);
                                                                                                                  }
                                                                                                                  §§goto(addr915);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr1093);
                                                                                                         }
                                                                                                         §§goto(addr1041);
                                                                                                      }
                                                                                                      §§goto(addr1160);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(_loc3_.relativeFlags);
                                                                                                      if(!(_loc5_ && this))
                                                                                                      {
                                                                                                         §§push(§§pop() & 16);
                                                                                                         §§push(0);
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            if(§§pop() != §§pop())
                                                                                                            {
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  addr491:
                                                                                                                  _loc3_.scaleY += _loc1_.scaleY;
                                                                                                                  §§goto(addr498);
                                                                                                               }
                                                                                                               §§goto(addr1297);
                                                                                                            }
                                                                                                            §§goto(addr498);
                                                                                                         }
                                                                                                         §§goto(addr528);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr637);
                                                                                                }
                                                                                                §§goto(addr538);
                                                                                             }
                                                                                             §§goto(addr923);
                                                                                          }
                                                                                          §§goto(addr1125);
                                                                                       }
                                                                                       §§goto(addr1255);
                                                                                    }
                                                                                    §§goto(addr531);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr420:
                                                                                    §§push(_loc2_.relativeFlags & 8);
                                                                                    if(_loc6_ || _loc3_)
                                                                                    {
                                                                                       if(§§pop() != 0)
                                                                                       {
                                                                                          if(_loc6_ || _loc2_)
                                                                                          {
                                                                                             _loc2_.scaleX += _loc1_.scaleX;
                                                                                             §§goto(addr444);
                                                                                          }
                                                                                          §§goto(addr491);
                                                                                       }
                                                                                       §§goto(addr444);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1009);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(_loc3_.relativeFlags);
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    §§push(8);
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       if((§§pop() & §§pop()) != 0)
                                                                                       {
                                                                                          if(_loc6_ || this)
                                                                                          {
                                                                                             _loc3_.scaleX += _loc1_.scaleX;
                                                                                             §§goto(addr405);
                                                                                          }
                                                                                          §§goto(addr791);
                                                                                       }
                                                                                       §§goto(addr405);
                                                                                    }
                                                                                    §§goto(addr420);
                                                                                 }
                                                                              }
                                                                              §§goto(addr521);
                                                                           }
                                                                           §§goto(addr1018);
                                                                        }
                                                                        §§goto(addr444);
                                                                     }
                                                                     §§goto(addr856);
                                                                  }
                                                                  §§goto(addr1193);
                                                               }
                                                               else
                                                               {
                                                                  §§push(_loc2_.relativeFlags & 4);
                                                                  §§push(0);
                                                                  if(!(_loc5_ && _loc2_))
                                                                  {
                                                                     if(§§pop() != §§pop())
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           _loc2_.z += _loc1_.z;
                                                                           if(_loc6_)
                                                                           {
                                                                              §§goto(addr352);
                                                                           }
                                                                           §§goto(addr1119);
                                                                        }
                                                                        §§goto(addr894);
                                                                     }
                                                                     §§goto(addr352);
                                                                  }
                                                               }
                                                               §§goto(addr802);
                                                            }
                                                            §§goto(addr1083);
                                                         }
                                                         else
                                                         {
                                                            §§push(_loc3_.relativeFlags);
                                                            if(!(_loc5_ && _loc1_))
                                                            {
                                                               if((§§pop() & 4) != 0)
                                                               {
                                                                  if(!(_loc5_ && _loc2_))
                                                                  {
                                                                     _loc3_.z += _loc1_.z;
                                                                     §§goto(addr316);
                                                                  }
                                                                  §§goto(addr1101);
                                                               }
                                                               §§goto(addr316);
                                                            }
                                                         }
                                                         §§goto(addr1255);
                                                      }
                                                      §§goto(addr990);
                                                   }
                                                   §§goto(addr352);
                                                }
                                                §§goto(addr599);
                                             }
                                             §§goto(addr1186);
                                          }
                                          else
                                          {
                                             §§push(_loc2_.relativeFlags & 2);
                                             if(!_loc5_)
                                             {
                                                addr242:
                                                §§push(0);
                                                if(_loc6_ || this)
                                                {
                                                   if(§§pop() != §§pop())
                                                   {
                                                      _loc2_.y += _loc1_.y;
                                                   }
                                                   §§goto(addr258);
                                                }
                                                §§goto(addr1136);
                                             }
                                          }
                                          §§goto(addr888);
                                       }
                                       else
                                       {
                                          §§push(_loc3_.relativeFlags);
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             §§push(§§pop() & 2);
                                             if(_loc6_)
                                             {
                                                §§push(0);
                                                if(!_loc5_)
                                                {
                                                   if(§§pop() != §§pop())
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         _loc3_.y += _loc1_.y;
                                                         §§goto(addr219);
                                                      }
                                                      §§goto(addr1308);
                                                   }
                                                   §§goto(addr219);
                                                }
                                                §§goto(addr923);
                                             }
                                             §§goto(addr242);
                                          }
                                       }
                                       §§goto(addr947);
                                    }
                                    §§goto(addr965);
                                 }
                                 §§goto(addr258);
                              }
                              §§goto(addr521);
                           }
                           §§goto(addr420);
                        }
                        §§goto(addr352);
                     }
                     else
                     {
                        §§push(_loc2_.relativeFlags);
                        if(_loc6_)
                        {
                           §§push(1);
                           if(!(_loc5_ && _loc3_))
                           {
                              §§push(§§pop() & §§pop());
                              if(!(_loc5_ && _loc2_))
                              {
                                 §§push(0);
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       _loc2_.x += _loc1_.x;
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          §§goto(addr162);
                                       }
                                       §§goto(addr602);
                                    }
                                    §§goto(addr162);
                                 }
                                 §§goto(addr1093);
                              }
                              §§goto(addr174);
                           }
                           §§goto(addr1125);
                        }
                     }
                     §§goto(addr1122);
                  }
                  §§goto(addr833);
               }
               else
               {
                  §§push(_loc3_.relativeFlags);
                  if(_loc6_ || _loc2_)
                  {
                     §§push(1);
                     if(!(_loc5_ && this))
                     {
                        §§push(§§pop() & §§pop());
                        §§push(0);
                        if(!_loc5_)
                        {
                           if(§§pop() != §§pop())
                           {
                              if(!_loc5_)
                              {
                                 _loc3_.x += _loc1_.x;
                                 if(!(_loc5_ && this))
                                 {
                                    §§goto(addr107);
                                 }
                                 §§goto(addr981);
                              }
                              §§goto(addr1101);
                           }
                           §§goto(addr107);
                        }
                        §§goto(addr738);
                     }
                     §§goto(addr690);
                  }
               }
               §§goto(addr420);
            }
            §§goto(addr162);
         }
         §§goto(addr165);
      }
      
      override public function getObject(param1:String) : Object
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            §§push("_blurFilter");
            if(!_loc2_)
            {
               if(§§pop() == §§pop())
               {
                  if(_loc3_ || param1)
                  {
                     return this.§6I§(BlurFilter);
                  }
                  §§goto(addr56);
               }
               else
               {
                  §§push(param1);
                  §§push("_glowFilter");
                  if(!(_loc2_ && _loc3_))
                  {
                     if(§§pop() == §§pop())
                     {
                        if(_loc3_ || _loc3_)
                        {
                           return this.§6I§(GlowFilter);
                        }
                        §§goto(addr124);
                     }
                     else
                     {
                        addr56:
                        §§push(param1);
                        if(_loc3_)
                        {
                           if(§§pop() == "_dropShadowFilter")
                           {
                              if(!_loc2_)
                              {
                                 return this.§6I§(DropShadowFilter);
                              }
                              addr144:
                              §§push(param1);
                              if(_loc3_)
                              {
                                 §§goto(addr203);
                              }
                              addr203:
                              §§push("_gradientBevelFilter");
                              if(!_loc2_)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    return this.§6I§(GradientBevelFilter);
                                 }
                                 addr191:
                                 §§push(param1);
                                 if(!_loc2_)
                                 {
                                    addr166:
                                    if(§§pop() == "_convolutionFilter")
                                    {
                                       if(_loc3_ || this)
                                       {
                                          return this.§6I§(ConvolutionFilter);
                                       }
                                    }
                                    §§push(param1);
                                 }
                                 if(§§pop() == "_displacementMapFilter")
                                 {
                                    if(!_loc2_)
                                    {
                                       return this.§6I§(DisplacementMapFilter);
                                    }
                                 }
                                 §§push(param1);
                              }
                              if(§§pop() == §§pop())
                              {
                                 if(_loc3_ || param1)
                                 {
                                    §§goto(addr211);
                                 }
                              }
                              return null;
                              §§push("_shaderFilter");
                           }
                           else
                           {
                              §§push(param1);
                              if(!_loc2_)
                              {
                                 §§goto(addr77);
                              }
                              §§goto(addr124);
                           }
                           §§goto(addr166);
                        }
                        §§goto(addr77);
                     }
                     §§goto(addr191);
                  }
               }
               §§goto(addr203);
            }
            addr77:
            if(§§pop() == "_colorMatrixFilter")
            {
               if(_loc3_ || _loc3_)
               {
                  return this.§6I§(ColorMatrixFilter);
               }
            }
            else
            {
               §§push(param1);
               if(_loc3_ || this)
               {
                  §§push("_bevelFilter");
                  if(!(_loc2_ && param1))
                  {
                     if(§§pop() == §§pop())
                     {
                        if(!_loc2_)
                        {
                           §§goto(addr119);
                        }
                     }
                     else
                     {
                        addr124:
                        §§push(param1);
                        §§push("_gradientGlowFilter");
                        if(_loc3_ || _loc2_)
                        {
                           addr132:
                           if(§§pop() == §§pop())
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 return this.§6I§(GradientGlowFilter);
                              }
                           }
                           §§goto(addr144);
                        }
                        §§goto(addr166);
                     }
                     addr211:
                     return this.§6I§(ShaderFilter);
                  }
                  §§goto(addr132);
               }
               §§goto(addr191);
            }
            addr119:
            return this.§6I§(BevelFilter);
         }
         §§goto(addr124);
      }
      
      override protected function copyFrom(param1:§8Y§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.copyFrom(param1);
         }
         var _loc2_:DisplayObjectUpdater = param1 as DisplayObjectUpdater;
         if(_loc4_ || _loc2_)
         {
            this.§?!p§ = _loc2_.§?!p§;
            if(!_loc3_)
            {
               this.§%f§.copyFrom(_loc2_.§%f§);
               if(!_loc3_)
               {
                  this.§;u§.copyFrom(_loc2_.§;u§);
                  if(_loc4_ || _loc3_)
                  {
                     addr79:
                     this._flags = _loc2_._flags;
                  }
               }
               §§goto(addr79);
            }
            return;
         }
         §§goto(addr79);
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
