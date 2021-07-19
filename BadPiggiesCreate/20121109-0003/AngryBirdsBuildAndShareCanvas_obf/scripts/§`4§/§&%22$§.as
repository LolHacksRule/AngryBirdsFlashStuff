package §`4§
{
   import §"E§.§&!h§;
   import §0§.§#![§;
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
   
   public class §&"$§ extends §#![§
   {
      
      public static const §66§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §66§ = ["x","y","z","scaleX","scaleY","scaleZ","rotation","rotationX","rotationY","rotationZ","alpha","width","height","_bevelFilter","_blurFilter","_colorMatrixFilter","_convolutionFilter","_displacementMapFilter","_dropShadowFilter","_glowFilter","_gradientBevelFilter","_gradientGlowFilter","_shaderFilter"];
         }
      }
      
      protected var _flags:uint = 0;
      
      protected var §8A§:DisplayObjectParameter;
      
      protected var §[l§:DisplayObject = null;
      
      protected var §`v§:DisplayObjectParameter;
      
      public function §&"$§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§`v§ = new DisplayObjectParameter();
         }
         while(true)
         {
            this.§8A§ = new DisplayObjectParameter();
            while(!_loc1_)
            {
               super();
               if(_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public static function §;-§(param1:§&!h§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            param1.§1"3§(§&"$§,DisplayObject,§66§);
         }
      }
      
      override public function setObject(param1:String, param2:Object) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(param1);
            loop0:
            while(§§pop() != "_blurFilter")
            {
               loop1:
               while(true)
               {
                  §§push(param1);
                  loop2:
                  while(!_loc4_)
                  {
                     if(§§pop() != "_glowFilter")
                     {
                        loop3:
                        while(true)
                        {
                           §§push(param1);
                           loop4:
                           while(true)
                           {
                              if(§§pop() != "_dropShadowFilter")
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§push(param1);
                                    loop6:
                                    while(§§pop() != "_colorMatrixFilter")
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          §§push(param1);
                                          loop8:
                                          while(§§pop() != "_bevelFilter")
                                          {
                                             loop9:
                                             while(true)
                                             {
                                                §§push(param1);
                                                loop10:
                                                while(true)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      continue loop8;
                                                   }
                                                   if(_loc4_ && param1)
                                                   {
                                                      break;
                                                   }
                                                   if(§§pop() != "_gradientGlowFilter")
                                                   {
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(param1);
                                                         loop12:
                                                         while(_loc3_)
                                                         {
                                                            if(§§pop() != "_gradientBevelFilter")
                                                            {
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  §§push(param1);
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     if(_loc3_ || _loc3_)
                                                                     {
                                                                        if(§§pop() == "_convolutionFilter")
                                                                        {
                                                                           if(_loc4_ && param2)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(!_loc4_)
                                                                           {
                                                                              this.§96§(param2 as BitmapFilter,ConvolutionFilter);
                                                                              break;
                                                                           }
                                                                           continue loop13;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(param1);
                                                                           loop16:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc4_ && param1))
                                                                              {
                                                                                 if(§§pop() != "_displacementMapFilter")
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param1);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          continue loop16;
                                                                                       }
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          continue loop12;
                                                                                       }
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          continue loop10;
                                                                                       }
                                                                                       if(§§pop() != "_shaderFilter")
                                                                                       {
                                                                                          return;
                                                                                       }
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          if(_loc4_ && param2)
                                                                                          {
                                                                                             if(!(_loc3_ || param2))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             continue loop5;
                                                                                          }
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             if(!(_loc3_ || this))
                                                                                             {
                                                                                                break loop16;
                                                                                             }
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                addr220:
                                                                                                this.§96§(param2 as BitmapFilter,GradientGlowFilter);
                                                                                                return;
                                                                                                addr226:
                                                                                             }
                                                                                             this.§96§(param2 as BitmapFilter,ShaderFilter);
                                                                                             addr62:
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      return;
                                                                                                   }
                                                                                                   addr335:
                                                                                                   return;
                                                                                                }
                                                                                                continue loop3;
                                                                                             }
                                                                                             return;
                                                                                             addr201:
                                                                                          }
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             if(_loc3_ || param1)
                                                                                             {
                                                                                                if(_loc3_ || param2)
                                                                                                {
                                                                                                   if(!(_loc4_ && this))
                                                                                                   {
                                                                                                      return;
                                                                                                   }
                                                                                                   break loop0;
                                                                                                }
                                                                                                break loop6;
                                                                                             }
                                                                                             break loop8;
                                                                                          }
                                                                                          addr195:
                                                                                          this.§96§(param2 as BitmapFilter,GradientBevelFilter);
                                                                                          §§goto(addr201);
                                                                                       }
                                                                                       §§goto(addr62);
                                                                                    }
                                                                                    return;
                                                                                    addr254:
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              continue loop14;
                                                                           }
                                                                           if(_loc3_ || _loc3_)
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 break loop14;
                                                                              }
                                                                              if(!_loc4_)
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    this.§96§(param2 as BitmapFilter,DisplacementMapFilter);
                                                                                    §§goto(addr111);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    continue loop11;
                                                                                 }
                                                                                 §§goto(addr226);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              if(_loc4_ && this)
                                                                              {
                                                                                 if(_loc4_ && this)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop9;
                                                                              }
                                                                              if(_loc4_)
                                                                              {
                                                                                 continue loop7;
                                                                              }
                                                                              if(_loc3_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              addr276:
                                                                              this.§96§(param2 as BitmapFilter,DropShadowFilter);
                                                                           }
                                                                           if(_loc3_ || param2)
                                                                           {
                                                                              return;
                                                                           }
                                                                           addr299:
                                                                           this.§96§(param2 as BitmapFilter,GlowFilter);
                                                                           break;
                                                                        }
                                                                        if(_loc3_ || this)
                                                                        {
                                                                           return;
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                                  return;
                                                               }
                                                            }
                                                            §§goto(addr195);
                                                         }
                                                         continue loop4;
                                                      }
                                                   }
                                                   §§goto(addr220);
                                                }
                                                continue loop2;
                                             }
                                          }
                                          if(!(_loc3_ || this))
                                          {
                                             return;
                                             addr268:
                                          }
                                          this.§96§(param2 as BitmapFilter,BevelFilter);
                                          §§goto(addr254);
                                       }
                                    }
                                    this.§96§(param2 as BitmapFilter,ColorMatrixFilter);
                                    §§goto(addr268);
                                 }
                              }
                              §§goto(addr276);
                           }
                        }
                     }
                     §§goto(addr299);
                  }
                  continue loop0;
               }
            }
            this.§96§(param2 as BitmapFilter,BlurFilter);
            §§goto(addr335);
         }
         §§goto(addr254);
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            §§push(param1);
            loop0:
            while(§§pop() != "x")
            {
               §§push(param1);
               loop1:
               while(§§pop() != "y")
               {
                  §§push(param1);
                  loop2:
                  while(!_loc5_)
                  {
                     if(§§pop() != "z")
                     {
                        §§push(param1);
                        loop3:
                        while(§§pop() != "scaleX")
                        {
                           §§push(param1);
                           loop4:
                           while(§§pop() != "scaleY")
                           {
                              §§push(param1);
                              loop5:
                              for(; §§pop() != "scaleZ"; if(_loc5_ && param3)
                              {
                                 continue;
                              },if(!_loc4_)
                              {
                                 continue loop3;
                              },if(§§pop() != "width")
                              {
                                 §§push(param1);
                                 if(!_loc4_)
                                 {
                                    §§goto(addr377);
                                 }
                                 §§goto(addr218);
                              },if(!_loc5_)
                              {
                                 if(!(_loc5_ && param1))
                                 {
                                    this._flags |= 2048;
                                    §§goto(addr410);
                                 }
                                 §§goto(addr905);
                              },§§goto(addr410))
                              {
                                 §§push(param1);
                                 loop6:
                                 for(; §§pop() != "rotation"; if(!(_loc4_ || param3))
                                 {
                                    continue;
                                 },if(§§pop() == "height")
                                 {
                                    loop12:
                                    while(true)
                                    {
                                       if(_loc5_)
                                       {
                                          break loop5;
                                       }
                                       this._flags |= 4096;
                                       loop13:
                                       while(_loc4_ || param3)
                                       {
                                          §§push(this.§8A§);
                                          while(_loc4_ || param1)
                                          {
                                             if(!(_loc5_ && param1))
                                             {
                                                if(_loc4_ || this)
                                                {
                                                   §§push(this.§8A§);
                                                   if(_loc4_)
                                                   {
                                                      if(!(_loc5_ && param1))
                                                      {
                                                         §§push(§§pop().relativeFlags);
                                                         if(_loc4_ || param3)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  if(_loc4_ || this)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        §§push(param3);
                                                                        if(!_loc5_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              addr134:
                                                                              if(!_loc5_)
                                                                              {
                                                                                 if(_loc4_ || param3)
                                                                                 {
                                                                                    §§push(4096);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       if(_loc4_ || param3)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             addr161:
                                                                                             §§push(§§pop() | §§pop());
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                if(_loc4_ || param1)
                                                                                                {
                                                                                                   if(!(_loc5_ && this))
                                                                                                   {
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         §§pop().relativeFlags = §§pop();
                                                                                                         continue loop12;
                                                                                                      }
                                                                                                      §§goto(addr1214);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr789);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr490);
                                                                                                }
                                                                                                §§goto(addr1006);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr371:
                                                                                                §§pop().relativeFlags = §§pop();
                                                                                                §§push(this.§8A§);
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      addr258:
                                                                                                      §§push(param2);
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            §§pop().width = §§pop();
                                                                                                            addr263:
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     §§goto(addr24);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr878);
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr550);
                                                                                                               }
                                                                                                               §§goto(addr24);
                                                                                                            }
                                                                                                            §§goto(addr498);
                                                                                                         }
                                                                                                         §§goto(addr1070);
                                                                                                      }
                                                                                                      §§goto(addr578);
                                                                                                   }
                                                                                                   §§goto(addr1021);
                                                                                                }
                                                                                                addr372:
                                                                                             }
                                                                                             §§goto(addr421);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr788);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr337:
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                if(!(_loc5_ && param2))
                                                                                                {
                                                                                                   if(_loc4_ || param3)
                                                                                                   {
                                                                                                      if(!(_loc5_ && this))
                                                                                                      {
                                                                                                         addr370:
                                                                                                         §§goto(addr371);
                                                                                                         §§push(§§pop() | §§pop());
                                                                                                      }
                                                                                                      §§goto(addr1251);
                                                                                                   }
                                                                                                   §§goto(addr1097);
                                                                                                }
                                                                                                §§goto(addr956);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr652);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr481);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr158:
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          §§goto(addr161);
                                                                                          §§push(§§pop());
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr365:
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                §§goto(addr370);
                                                                                                §§push(§§pop());
                                                                                             }
                                                                                             §§goto(addr1247);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr1030);
                                                                                 }
                                                                                 §§goto(addr1149);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr617);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(0);
                                                                           }
                                                                           §§goto(addr158);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr304:
                                                                           if(!(_loc5_ && param2))
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    if(!(_loc5_ && param2))
                                                                                    {
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             addr325:
                                                                                             if(_loc4_ || param1)
                                                                                             {
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      §§goto(addr337);
                                                                                                      §§push(2048);
                                                                                                   }
                                                                                                   §§goto(addr1089);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr625);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr468);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr365);
                                                                                             §§push(0);
                                                                                          }
                                                                                          §§goto(addr1030);
                                                                                       }
                                                                                       §§goto(addr1246);
                                                                                    }
                                                                                    §§goto(addr850);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr770);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr622);
                                                                              }
                                                                              §§goto(addr940);
                                                                           }
                                                                        }
                                                                        §§goto(addr467);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr753);
                                                                     }
                                                                  }
                                                                  §§goto(addr464);
                                                               }
                                                               else
                                                               {
                                                                  addr301:
                                                                  if(_loc4_)
                                                                  {
                                                                     §§goto(addr304);
                                                                     §§push(param3);
                                                                  }
                                                               }
                                                               §§goto(addr1206);
                                                            }
                                                            §§goto(addr325);
                                                         }
                                                         §§goto(addr134);
                                                      }
                                                      §§goto(addr463);
                                                   }
                                                   else
                                                   {
                                                      addr284:
                                                      if(_loc4_ || param2)
                                                      {
                                                         if(_loc4_ || this)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               §§goto(addr301);
                                                               §§push(§§pop().relativeFlags);
                                                            }
                                                            §§goto(addr1201);
                                                         }
                                                         §§goto(addr842);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr607);
                                                      }
                                                   }
                                                   §§goto(addr1021);
                                                }
                                                §§goto(addr1040);
                                             }
                                             §§goto(addr447);
                                             §§push(this.§8A§);
                                             if(!(_loc4_ || param2))
                                             {
                                                continue;
                                             }
                                             if(_loc4_)
                                             {
                                                if(!(_loc5_ && param3))
                                                {
                                                   §§push(param2);
                                                   if(_loc4_)
                                                   {
                                                      if(_loc4_ || this)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            addr59:
                                                            §§pop().height = §§pop();
                                                            if(_loc5_ && param3)
                                                            {
                                                               continue loop12;
                                                            }
                                                            if(_loc5_)
                                                            {
                                                               continue loop13;
                                                            }
                                                            if(_loc4_)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  §§goto(addr820);
                                                               }
                                                               §§goto(addr24);
                                                            }
                                                            else
                                                            {
                                                               addr410:
                                                               if(_loc4_ || this)
                                                               {
                                                                  §§push(this.§8A§);
                                                                  break;
                                                               }
                                                               §§goto(addr698);
                                                            }
                                                         }
                                                         §§goto(addr1279);
                                                      }
                                                      §§goto(addr424);
                                                   }
                                                   §§goto(addr258);
                                                }
                                                §§goto(addr734);
                                             }
                                             §§goto(addr371);
                                          }
                                          if(_loc4_)
                                          {
                                             if(!(_loc5_ && param2))
                                             {
                                                §§goto(addr284);
                                                §§push(this.§8A§);
                                             }
                                             §§goto(addr1067);
                                          }
                                          else
                                          {
                                             §§goto(addr603);
                                          }
                                       }
                                       §§goto(addr434);
                                    }
                                 },§§goto(addr24))
                                 {
                                    §§push(param1);
                                    loop7:
                                    for(; §§pop() != "rotationX"; if(!(_loc5_ && this))
                                    {
                                       continue loop2;
                                    })
                                    {
                                       §§push(param1);
                                       loop8:
                                       while(§§pop() != "rotationY")
                                       {
                                          §§push(param1);
                                          loop9:
                                          while(true)
                                          {
                                             if(!_loc4_)
                                             {
                                                continue loop4;
                                             }
                                             if(!_loc4_)
                                             {
                                                break;
                                             }
                                             if(§§pop() != "rotationZ")
                                             {
                                                §§push(param1);
                                                while(true)
                                                {
                                                   if(_loc4_ || param1)
                                                   {
                                                      continue loop7;
                                                   }
                                                   continue loop8;
                                                   addr218:
                                                   if(!(_loc5_ && this))
                                                   {
                                                      continue loop6;
                                                   }
                                                }
                                                loop54:
                                                while(true)
                                                {
                                                   if(!(_loc5_ && param3))
                                                   {
                                                      addr544:
                                                      this._flags |= 1024;
                                                      while(true)
                                                      {
                                                         if(!(_loc5_ && param2))
                                                         {
                                                            §§push(this.§8A§);
                                                            while(_loc4_ || param1)
                                                            {
                                                               if(_loc4_ || param3)
                                                               {
                                                                  §§push(this.§8A§);
                                                                  loop40:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().relativeFlags);
                                                                     addr464:
                                                                     while(true)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           §§push(param3);
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(1024);
                                                                                    if(!(_loc4_ || param2))
                                                                                    {
                                                                                       addr481:
                                                                                       while(_loc4_ || param2)
                                                                                       {
                                                                                          §§goto(addr489);
                                                                                          §§push(§§pop());
                                                                                       }
                                                                                       break loop40;
                                                                                       addr481:
                                                                                    }
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       addr489:
                                                                                       §§push(§§pop());
                                                                                       loop43:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() | §§pop());
                                                                                          addr490:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc5_ && param3)
                                                                                             {
                                                                                                break loop43;
                                                                                             }
                                                                                             §§pop().relativeFlags = §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc5_ && param2)
                                                                                                {
                                                                                                   continue loop54;
                                                                                                }
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      addr421:
                                                                                                      §§push(this.§8A§);
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         addr424:
                                                                                                         §§push(param2);
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            if(_loc4_ || this)
                                                                                                            {
                                                                                                               §§pop().alpha = §§pop();
                                                                                                               addr434:
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  if(!(_loc4_ || param1))
                                                                                                                  {
                                                                                                                     break loop0;
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr723);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr832);
                                                                                                            }
                                                                                                            §§goto(addr24);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr718);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr561);
                                                                                                      }
                                                                                                      §§goto(addr1253);
                                                                                                   }
                                                                                                   §§goto(addr1284);
                                                                                                   §§push(this.§8A§);
                                                                                                   addr1316:
                                                                                                }
                                                                                                §§goto(addr581);
                                                                                             }
                                                                                             §§goto(addr676);
                                                                                          }
                                                                                       }
                                                                                       addr489:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr669);
                                                                                    }
                                                                                    §§goto(addr670);
                                                                                    §§goto(addr489);
                                                                                 }
                                                                                 addr468:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(0);
                                                                              }
                                                                              §§goto(addr481);
                                                                           }
                                                                           addr467:
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr773);
                                                                        }
                                                                        §§goto(addr1030);
                                                                     }
                                                                  }
                                                                  §§goto(addr1036);
                                                                  addr463:
                                                               }
                                                               §§goto(addr1242);
                                                            }
                                                            §§goto(addr916);
                                                            addr447:
                                                         }
                                                         break;
                                                         §§goto(addr544);
                                                      }
                                                      §§goto(addr922);
                                                      addr550:
                                                   }
                                                   §§goto(addr676);
                                                }
                                                continue loop8;
                                             }
                                             this._flags |= 512;
                                             if(_loc5_ && param1)
                                             {
                                                break loop8;
                                             }
                                             §§push(this.§8A§);
                                             if(!_loc5_)
                                             {
                                                addr607:
                                                §§push(this.§8A§);
                                                if(_loc4_ || this)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      addr617:
                                                      §§push(§§pop().relativeFlags);
                                                      if(!_loc5_)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            addr622:
                                                            §§push(param3);
                                                            if(_loc4_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  addr625:
                                                                  if(!(_loc5_ && param2))
                                                                  {
                                                                     if(_loc4_ || param1)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           addr652:
                                                                           §§push(512);
                                                                           if(!(_loc5_ && param2))
                                                                           {
                                                                              if(!(_loc5_ && param2))
                                                                              {
                                                                                 addr670:
                                                                                 §§push(§§pop() | §§pop());
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       §§pop().relativeFlags = §§pop();
                                                                                       addr676:
                                                                                       if(!(_loc4_ || param3))
                                                                                       {
                                                                                          break loop6;
                                                                                       }
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             addr561:
                                                                                             §§push(this.§8A§);
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                if(_loc4_ || this)
                                                                                                {
                                                                                                   if(_loc4_ || param2)
                                                                                                   {
                                                                                                      addr578:
                                                                                                      §§push(param2);
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         §§pop().rotationZ = §§pop();
                                                                                                         addr581:
                                                                                                         if(_loc4_ || param2)
                                                                                                         {
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  if(_loc4_ || param2)
                                                                                                                  {
                                                                                                                     §§goto(addr24);
                                                                                                                  }
                                                                                                                  addr1279:
                                                                                                                  addr1280:
                                                                                                                  addr1188:
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     if(!(_loc5_ && this))
                                                                                                                     {
                                                                                                                        §§goto(addr24);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr1296:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§8A§);
                                                                                                                        }
                                                                                                                        addr1296:
                                                                                                                     }
                                                                                                                     §§goto(addr24);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr1253:
                                                                                                                     this.§8A§.relativeFlags |= !!param3 ? 2 : 0;
                                                                                                                     §§push(this.§8A§);
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        addr1237:
                                                                                                                        §§pop().y = param2;
                                                                                                                        addr24:
                                                                                                                        return;
                                                                                                                        addr1238:
                                                                                                                     }
                                                                                                                     §§goto(addr24);
                                                                                                                     addr1244:
                                                                                                                     addr1245:
                                                                                                                     addr1242:
                                                                                                                     addr1246:
                                                                                                                     addr1254:
                                                                                                                     addr1267:
                                                                                                                  }
                                                                                                                  loop17:
                                                                                                                  for(; _loc5_ && param1; §§goto(addr1296))
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§8A§);
                                                                                                                        addr1286:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().relativeFlags);
                                                                                                                           addr1287:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(param3);
                                                                                                                              addr1288:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(1);
                                                                                                                                       addr1290:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop());
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr1289:
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§push(0);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop());
                                                                                                                                    }
                                                                                                                                    addr1293:
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() | §§pop());
                                                                                                                                    addr1295:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop().relativeFlags = §§pop();
                                                                                                                                       continue loop17;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§pop().x = param2;
                                                                                                                  §§goto(addr24);
                                                                                                                  §§goto(addr24);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  loop28:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§8A§);
                                                                                                                     addr1124:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(param2);
                                                                                                                        addr1125:
                                                                                                                        loop30:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop().scaleX = §§pop();
                                                                                                                           addr1126:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc4_ || param1)
                                                                                                                              {
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    break loop30;
                                                                                                                                 }
                                                                                                                                 §§goto(addr24);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§8A§);
                                                                                                                                    addr1139:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(this.§8A§);
                                                                                                                                       addr1141:
                                                                                                                                       while(!(_loc5_ && param3))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().relativeFlags);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(param3);
                                                                                                                                             addr1150:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(8);
                                                                                                                                                      if(_loc4_ || param2)
                                                                                                                                                      {
                                                                                                                                                         if(_loc5_)
                                                                                                                                                         {
                                                                                                                                                            addr1207:
                                                                                                                                                            if(_loc4_)
                                                                                                                                                            {
                                                                                                                                                               addr1214:
                                                                                                                                                               §§pop().relativeFlags = §§pop() | §§pop();
                                                                                                                                                               addr1187:
                                                                                                                                                               this.§8A§.z = param2;
                                                                                                                                                               addr1215:
                                                                                                                                                               §§goto(addr1188);
                                                                                                                                                               addr1213:
                                                                                                                                                               addr1215:
                                                                                                                                                            }
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop());
                                                                                                                                                         loop24:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() | §§pop());
                                                                                                                                                            addr1166:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  break loop24;
                                                                                                                                                               }
                                                                                                                                                               §§pop().relativeFlags = §§pop();
                                                                                                                                                               continue loop28;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1253);
                                                                                                                                                         addr1165:
                                                                                                                                                         §§goto(addr1296);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         addr1164:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                         }
                                                                                                                                                         addr1164:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1165);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1290);
                                                                                                                                                   addr1151:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§push(0);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1164);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr1182:
                                                                                                                              }
                                                                                                                              §§goto(addr24);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr1238);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr1244);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr833:
                                                                                                            }
                                                                                                            §§goto(addr24);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr800:
                                                                                                            if(_loc5_ && param2)
                                                                                                            {
                                                                                                               break loop7;
                                                                                                            }
                                                                                                            addr715:
                                                                                                            §§push(this.§8A§);
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               addr718:
                                                                                                               §§push(param2);
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     §§pop().rotationY = §§pop();
                                                                                                                     addr723:
                                                                                                                     if(!(_loc4_ || this))
                                                                                                                     {
                                                                                                                        addr1224:
                                                                                                                        this._flags |= 4;
                                                                                                                        addr1201:
                                                                                                                        §§push(this.§8A§);
                                                                                                                        §§push(this.§8A§.relativeFlags);
                                                                                                                        if(param3)
                                                                                                                        {
                                                                                                                           addr1206:
                                                                                                                           §§goto(addr1207);
                                                                                                                           §§push(4);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr1212:
                                                                                                                           §§push(0);
                                                                                                                        }
                                                                                                                        §§goto(addr1213);
                                                                                                                        addr1230:
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr1006:
                                                                                                                     if(_loc4_ || param3)
                                                                                                                     {
                                                                                                                        §§pop().scaleZ = §§pop();
                                                                                                                        addr1014:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr1237);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr24);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  loop33:
                                                                                                                  while(_loc4_)
                                                                                                                  {
                                                                                                                     §§pop().rotation = §§pop();
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc5_ && param2))
                                                                                                                        {
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              addr1067:
                                                                                                                              §§push(this.§8A§);
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 addr1070:
                                                                                                                                 §§pop().scaleY = param2;
                                                                                                                                 addr1071:
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr1201);
                                                                                                                              }
                                                                                                                              addr1098:
                                                                                                                           }
                                                                                                                           §§goto(addr24);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(_loc4_ || param2)
                                                                                                                           {
                                                                                                                              §§push(this.§8A§);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    if(!_loc5_)
                                                                                                                                    {
                                                                                                                                       addr1079:
                                                                                                                                       §§push(this.§8A§);
                                                                                                                                       if(_loc4_ || param2)
                                                                                                                                       {
                                                                                                                                          addr1088:
                                                                                                                                          §§push(§§pop().relativeFlags);
                                                                                                                                          if(param3)
                                                                                                                                          {
                                                                                                                                             addr1089:
                                                                                                                                             if(!_loc5_)
                                                                                                                                             {
                                                                                                                                                addr1097:
                                                                                                                                                §§pop().relativeFlags = §§pop() | 16;
                                                                                                                                                addr1096:
                                                                                                                                                §§goto(addr1098);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr1151);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr1095:
                                                                                                                                             §§push(0);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1096);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1286);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr1075:
                                                                                                                                 }
                                                                                                                                 §§push(param2);
                                                                                                                                 continue loop33;
                                                                                                                              }
                                                                                                                              §§goto(addr1253);
                                                                                                                           }
                                                                                                                           §§goto(addr1215);
                                                                                                                           addr972:
                                                                                                                        }
                                                                                                                        §§goto(addr1215);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr1187);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr1124);
                                                                                                      }
                                                                                                      §§goto(addr1125);
                                                                                                   }
                                                                                                   addr937:
                                                                                                   §§push(this.§8A§);
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      addr940:
                                                                                                      §§push(§§pop().relativeFlags);
                                                                                                      §§push(param3);
                                                                                                      if(!(_loc5_ && param2))
                                                                                                      {
                                                                                                         if(_loc4_ || param3)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               addr956:
                                                                                                               §§push(64);
                                                                                                               if(!(_loc5_ && param1))
                                                                                                               {
                                                                                                                  addr971:
                                                                                                                  §§pop().relativeFlags = §§pop() | §§pop();
                                                                                                                  addr970:
                                                                                                                  §§goto(addr972);
                                                                                                               }
                                                                                                               §§goto(addr1293);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr967:
                                                                                                               §§push(0);
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  §§goto(addr970);
                                                                                                                  §§push(§§pop());
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr1164);
                                                                                                         }
                                                                                                         §§goto(addr1288);
                                                                                                      }
                                                                                                      §§goto(addr1088);
                                                                                                   }
                                                                                                   §§goto(addr1079);
                                                                                                }
                                                                                                addr837:
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   addr842:
                                                                                                   §§push(this.§8A§.relativeFlags);
                                                                                                   if(!(_loc5_ && param3))
                                                                                                   {
                                                                                                      addr850:
                                                                                                      §§push(param3);
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            addr853:
                                                                                                            if(_loc4_ || this)
                                                                                                            {
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  addr867:
                                                                                                                  §§push(§§pop() | 128);
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     if(!(_loc5_ && param2))
                                                                                                                     {
                                                                                                                        §§pop().relativeFlags = §§pop();
                                                                                                                        addr832:
                                                                                                                        this.§8A§.rotationX = param2;
                                                                                                                        addr831:
                                                                                                                        §§goto(addr833);
                                                                                                                        addr878:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr1166);
                                                                                                                     }
                                                                                                                     §§goto(addr24);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr971);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr1245);
                                                                                                            }
                                                                                                            §§goto(addr1247);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr866:
                                                                                                            §§push(0);
                                                                                                         }
                                                                                                         §§goto(addr867);
                                                                                                      }
                                                                                                      §§goto(addr1201);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr940);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr1139);
                                                                                             }
                                                                                             §§goto(addr715);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(this.§8A§);
                                                                                             addr1120:
                                                                                          }
                                                                                          §§goto(addr1075);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr1021:
                                                                                          §§push(this.§8A§);
                                                                                          §§push(this.§8A§.relativeFlags);
                                                                                          §§push(param3);
                                                                                          if(_loc4_ || param2)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                addr1030:
                                                                                                §§push(32);
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   addr1040:
                                                                                                   §§pop().relativeFlags = §§pop() | §§pop();
                                                                                                   §§goto(addr1006);
                                                                                                   §§push(this.§8A§);
                                                                                                   §§push(param2);
                                                                                                   addr1039:
                                                                                                   addr1041:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr1212);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr1036:
                                                                                                §§push(0);
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   §§goto(addr1039);
                                                                                                   §§push(§§pop());
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr1095);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr24);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr1150);
                                                                                          }
                                                                                          addr1063:
                                                                                       }
                                                                                       §§goto(addr1150);
                                                                                    }
                                                                                    §§goto(addr1295);
                                                                                 }
                                                                                 §§goto(addr1040);
                                                                              }
                                                                              §§goto(addr867);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr776:
                                                                              if(!(_loc5_ && param1))
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    addr789:
                                                                                    §§push(§§pop() | §§pop());
                                                                                    if(!(_loc5_ && param1))
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          §§pop().relativeFlags = §§pop();
                                                                                          §§goto(addr800);
                                                                                       }
                                                                                       §§goto(addr1097);
                                                                                    }
                                                                                    §§goto(addr867);
                                                                                 }
                                                                                 §§goto(addr967);
                                                                              }
                                                                           }
                                                                           §§goto(addr866);
                                                                        }
                                                                        §§goto(addr1201);
                                                                     }
                                                                     §§goto(addr1021);
                                                                  }
                                                                  §§goto(addr956);
                                                               }
                                                               else
                                                               {
                                                                  addr669:
                                                                  §§push(0);
                                                               }
                                                               §§goto(addr670);
                                                            }
                                                            §§goto(addr940);
                                                         }
                                                         §§goto(addr1289);
                                                      }
                                                      §§goto(addr1088);
                                                   }
                                                   §§goto(addr937);
                                                }
                                                else
                                                {
                                                   addr743:
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         addr753:
                                                         §§push(§§pop().relativeFlags);
                                                         if(!(_loc5_ && param2))
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               if(!(_loc5_ && this))
                                                               {
                                                                  addr770:
                                                                  §§push(param3);
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        addr773:
                                                                        if(_loc4_)
                                                                        {
                                                                           §§goto(addr776);
                                                                           §§push(256);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr1030);
                                                                        }
                                                                        §§goto(addr1212);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr788:
                                                                        §§push(0);
                                                                     }
                                                                     §§goto(addr789);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr1021);
                                                                  }
                                                               }
                                                               §§goto(addr1287);
                                                            }
                                                            §§goto(addr842);
                                                         }
                                                         §§goto(addr853);
                                                      }
                                                      §§goto(addr1141);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr1021);
                                                   }
                                                }
                                                §§goto(addr1021);
                                             }
                                             §§goto(addr831);
                                             addr377:
                                             while(true)
                                             {
                                                if(_loc4_ || this)
                                                {
                                                   continue loop5;
                                                }
                                                continue loop9;
                                             }
                                             §§goto(addr24);
                                          }
                                          continue loop0;
                                       }
                                       this._flags |= 256;
                                       if(_loc4_ || param2)
                                       {
                                          addr734:
                                          §§push(this.§8A§);
                                          if(_loc4_ || param2)
                                          {
                                             §§goto(addr743);
                                             §§push(this.§8A§);
                                          }
                                          §§goto(addr1187);
                                          addr827:
                                       }
                                       §§goto(addr1041);
                                    }
                                    if(_loc4_ || param3)
                                    {
                                       if(_loc4_ || param2)
                                       {
                                          this._flags |= 128;
                                          addr905:
                                          if(!(_loc5_ && this))
                                          {
                                             §§goto(addr837);
                                             §§push(this.§8A§);
                                          }
                                          else
                                          {
                                             addr992:
                                             if(_loc4_)
                                             {
                                                if(_loc4_ || param2)
                                                {
                                                   §§goto(addr937);
                                                   §§push(this.§8A§);
                                                }
                                                §§goto(addr1280);
                                             }
                                             else
                                             {
                                                §§goto(addr1230);
                                             }
                                          }
                                          §§goto(addr1201);
                                       }
                                       §§goto(addr1071);
                                    }
                                    else
                                    {
                                       §§goto(addr1014);
                                    }
                                 }
                                 this._flags |= 64;
                                 §§goto(addr992);
                              }
                              if(_loc5_)
                              {
                                 break;
                              }
                              if(!(_loc4_ || param3))
                              {
                                 break loop1;
                              }
                              this._flags |= 32;
                              §§goto(addr1063);
                           }
                           if(!_loc5_)
                           {
                              if(_loc4_ || param1)
                              {
                                 this._flags |= 16;
                                 §§goto(addr1120);
                              }
                              §§goto(addr1254);
                           }
                           §§goto(addr1126);
                        }
                        this._flags |= 8;
                        §§goto(addr1182);
                     }
                     §§goto(addr1224);
                     if(!(_loc4_ || param2))
                     {
                        continue;
                     }
                     if(§§pop() != "alpha")
                     {
                        §§goto(addr377);
                        §§push(param1);
                     }
                     §§goto(addr537);
                  }
               }
               this._flags |= 2;
               §§goto(addr1267);
            }
            this._flags |= 1;
            §§goto(addr1316);
         }
         §§goto(addr827);
      }
      
      protected function §96§(param1:BitmapFilter, param2:Class) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Array = this.§[l§.filters;
         var _loc4_:uint = _loc3_.length;
         var _loc5_:uint = 0;
         loop0:
         while(true)
         {
            §§push(_loc5_);
            if(!_loc6_)
            {
               if(§§pop() >= _loc4_)
               {
                  loop1:
                  while(true)
                  {
                     _loc3_.push(param1);
                     while(_loc7_ || param1)
                     {
                        this.§[l§.filters = _loc3_;
                        if(!(_loc6_ && param1))
                        {
                           continue loop1;
                        }
                     }
                     continue loop0;
                  }
               }
               else if(_loc3_[_loc5_] is param2)
               {
                  break;
               }
               §§goto(addr85);
            }
            §§goto(addr96);
         }
         while(true)
         {
            _loc3_[_loc5_] = param1;
            §§goto(addr143);
            §§goto(addr113);
         }
         §§goto(addr120);
      }
      
      override public function get target() : Object
      {
         return this.§[l§;
      }
      
      protected function §""8§(param1:Class) : BitmapFilter
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:BitmapFilter = null;
         var _loc3_:Array = this.§[l§.filters;
         var _loc4_:uint = _loc3_.length;
         var _loc5_:* = uint(0);
         while(_loc5_ < _loc4_)
         {
            if((_loc2_ = _loc3_[_loc5_] as BitmapFilter) is param1)
            {
               if(!_loc8_)
               {
                  return _loc2_;
               }
            }
            else
            {
               §§push(_loc5_);
               if(_loc7_)
               {
                  §§push(uint(§§pop() + 1));
               }
               _loc5_ = §§pop();
            }
         }
         _loc2_ = new param1();
         if(!_loc8_)
         {
            _loc3_.push(_loc2_);
         }
         do
         {
            this.§[l§.filters = _loc3_;
         }
         while(_loc8_);
         
         return _loc2_;
      }
      
      override protected function newInstance() : §#![§
      {
         return new §&"$§();
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            §§push(param1);
            loop0:
            while(§§pop() != "x")
            {
               §§push(param1);
               loop1:
               while(§§pop() != "y")
               {
                  addr1174:
                  addr1206:
                  addr1200:
                  §§push(param1);
                  loop2:
                  for(; §§pop() != "z"; loop4:
                  while(_loc4_ || this)
                  {
                     if(§§pop() == "scaleY")
                     {
                        addr1105:
                        this._flags |= 16;
                        §§push(this.§`v§);
                        loop28:
                        while(true)
                        {
                           §§push(this.§`v§);
                           addr1081:
                           while(true)
                           {
                              §§push(§§pop().relativeFlags);
                              addr1082:
                              while(true)
                              {
                                 §§push(param3);
                                 addr1083:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§push(16);
                                          addr1085:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                          }
                                       }
                                       addr1084:
                                    }
                                    else
                                    {
                                       addr1088:
                                       §§push(0);
                                       while(true)
                                       {
                                          §§push(§§pop());
                                       }
                                       addr1088:
                                    }
                                    while(true)
                                    {
                                       §§push(§§pop() | §§pop());
                                       addr1090:
                                       while(true)
                                       {
                                          §§pop().relativeFlags = §§pop();
                                          addr1091:
                                          while(true)
                                          {
                                             §§push(this.§`v§);
                                             addr1071:
                                             addr1074:
                                             addr1075:
                                             while(!_loc4_)
                                             {
                                                continue loop28;
                                             }
                                             addr1075:
                                             §§pop().scaleY = param2;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        addr1111:
                     }
                     else
                     {
                        §§push(param1);
                        while(!_loc5_)
                        {
                           if(§§pop() != "scaleZ")
                           {
                              §§push(param1);
                              while(true)
                              {
                                 if(!_loc5_)
                                 {
                                    continue loop1;
                                 }
                                 continue loop4;
                              }
                              continue loop1;
                              addr974:
                           }
                           this._flags |= 32;
                           if(_loc4_ || param3)
                           {
                              addr1017:
                              §§push(this.§`v§);
                              §§push(this.§`v§);
                              if(_loc4_ || param3)
                              {
                                 addr1027:
                                 §§push(§§pop().relativeFlags);
                                 if(_loc4_)
                                 {
                                    addr1037:
                                    §§pop().relativeFlags = §§pop() | (!!param3 ? 32 : 0);
                                    if(_loc4_ || this)
                                    {
                                       addr1005:
                                       §§push(this.§`v§);
                                       §§push(param2);
                                       if(_loc4_ || param2)
                                       {
                                          §§pop().scaleZ = §§pop();
                                          §§goto(addr24);
                                          addr1013:
                                       }
                                       §§goto(addr24);
                                    }
                                    else
                                    {
                                       §§goto(addr1156);
                                    }
                                    addr1030:
                                 }
                                 else
                                 {
                                    addr1192:
                                    §§pop().relativeFlags = §§pop() | 4;
                                    addr1179:
                                 }
                                 §§goto(addr1193);
                              }
                              §§goto(addr1137);
                           }
                           §§goto(addr1164);
                        }
                        §§goto(addr1154);
                        addr1050:
                     }
                     §§goto(addr24);
                  })
                  {
                     §§push(param1);
                     while(§§pop() != "scaleX")
                     {
                        §§push(param1);
                        continue loop2;
                     }
                     if(_loc4_)
                     {
                        this._flags |= 8;
                        addr1164:
                        §§push(this.§`v§);
                        if(!(_loc5_ && param2))
                        {
                           if(!(_loc5_ && param2))
                           {
                              addr1146:
                              §§pop().relativeFlags = this.§`v§.relativeFlags | (!!param3 ? 8 : 0);
                              if(_loc4_)
                              {
                                 addr1116:
                                 this.§`v§.scaleX = param2;
                                 addr24:
                                 return;
                                 addr1115:
                                 addr1117:
                              }
                              §§goto(addr24);
                              addr1137:
                              addr1138:
                              addr1139:
                           }
                           else
                           {
                              addr1225:
                              §§push(this.§`v§.relativeFlags);
                              if(!_loc5_)
                              {
                                 addr1236:
                                 §§pop().relativeFlags = §§pop() | (!!param3 ? 2 : 0);
                                 addr1210:
                                 §§push(this.§`v§);
                                 §§push(param2);
                                 if(_loc4_ || this)
                                 {
                                    §§pop().y = §§pop();
                                    addr1219:
                                    §§goto(addr24);
                                    addr1219:
                                 }
                                 else
                                 {
                                    addr1255:
                                    while(true)
                                    {
                                       §§pop().x = §§pop();
                                       addr1256:
                                       while(_loc5_ && param2)
                                       {
                                          break loop0;
                                       }
                                       §§goto(addr24);
                                    }
                                    addr1255:
                                 }
                                 §§goto(addr24);
                                 addr1229:
                                 addr1237:
                              }
                              §§goto(addr1230);
                           }
                           §§goto(addr1256);
                        }
                        §§goto(addr1210);
                        addr1164:
                     }
                     else
                     {
                        addr1169:
                        this.§`v§.z = param2;
                        addr1193:
                        addr1170:
                        addr1168:
                     }
                     §§goto(addr24);
                  }
                  this._flags |= 4;
                  §§push(this.§`v§);
                  §§push(this.§`v§.relativeFlags);
                  if(param3)
                  {
                     §§goto(addr1179);
                  }
                  else
                  {
                     addr1183:
                     §§push(0);
                     if(_loc4_ || param3)
                     {
                        §§goto(addr1179);
                        §§push(§§pop());
                     }
                     else
                     {
                        addr1275:
                        while(true)
                        {
                           §§push(§§pop());
                           addr1279:
                           while(true)
                           {
                              §§push(§§pop() | §§pop());
                              addr1280:
                              while(true)
                              {
                                 §§pop().relativeFlags = §§pop();
                                 addr1281:
                                 while(true)
                                 {
                                    §§push(this.§`v§);
                                    addr1254:
                                    while(true)
                                    {
                                       §§goto(addr1255);
                                    }
                                 }
                              }
                           }
                        }
                        addr1275:
                     }
                  }
                  §§goto(addr24);
                  if(_loc5_ && param3)
                  {
                     continue;
                  }
                  if(§§pop() != "rotation")
                  {
                     §§push(param1);
                     loop7:
                     while(true)
                     {
                        if(_loc4_)
                        {
                           if(§§pop() == "rotationX")
                           {
                              break;
                           }
                           §§push(param1);
                           loop8:
                           while(true)
                           {
                              if(!_loc5_)
                              {
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 if(§§pop() != "rotationY")
                                 {
                                    §§push(param1);
                                    loop9:
                                    while(true)
                                    {
                                       if(!_loc5_)
                                       {
                                          if(_loc4_)
                                          {
                                             if(§§pop() != "rotationZ")
                                             {
                                                §§push(param1);
                                                loop10:
                                                while(true)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      if(§§pop() != "alpha")
                                                      {
                                                         §§push(param1);
                                                         loop11:
                                                         while(§§pop() != "width")
                                                         {
                                                            §§push(param1);
                                                            if(!(_loc4_ || param2))
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc5_)
                                                            {
                                                               continue loop10;
                                                            }
                                                            if(§§pop() == "height")
                                                            {
                                                               loop41:
                                                               for(; _loc4_ || this; while(true)
                                                               {
                                                                  if(_loc4_ || param3)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 §§goto(addr214);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr991);
                                                                              }
                                                                           }
                                                                           §§goto(addr969);
                                                                        }
                                                                        §§goto(addr514);
                                                                     }
                                                                     break;
                                                                  }
                                                                  continue loop41;
                                                                  §§goto(addr43);
                                                               },§§goto(addr422))
                                                               {
                                                                  this._flags |= 4096;
                                                                  loop42:
                                                                  for(; _loc4_; if(_loc5_ && this)
                                                                  {
                                                                     continue;
                                                                  },if(_loc4_)
                                                                  {
                                                                     if(!(_loc5_ && param2))
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§goto(addr1116);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr1105);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr985:
                                                                        this._flags |= 64;
                                                                        addr991:
                                                                        if(_loc4_ || param1)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              §§goto(addr943);
                                                                              §§push(this.§`v§);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr1200);
                                                                           }
                                                                           §§goto(addr1275);
                                                                        }
                                                                        §§goto(addr1037);
                                                                     }
                                                                     §§goto(addr1116);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr406:
                                                                     if(_loc4_ || this)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           §§goto(addr303);
                                                                           §§push(this.§`v§);
                                                                        }
                                                                        §§goto(addr1117);
                                                                     }
                                                                     §§goto(addr573);
                                                                  })
                                                                  {
                                                                     if(_loc5_ && param2)
                                                                     {
                                                                        break loop11;
                                                                     }
                                                                     if(_loc4_ || param2)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           if(!(_loc5_ && param2))
                                                                           {
                                                                              §§push(this.§`v§);
                                                                              loop43:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             §§push(this.§`v§);
                                                                                             if(_loc4_ || param1)
                                                                                             {
                                                                                                if(_loc4_ || param2)
                                                                                                {
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            §§push(§§pop().relativeFlags);
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  if(_loc4_ || param1)
                                                                                                                  {
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        §§push(param3);
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           if(!(_loc5_ && param1))
                                                                                                                           {
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 if(_loc4_ || param3)
                                                                                                                                 {
                                                                                                                                    if(_loc4_)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          addr139:
                                                                                                                                          if(!_loc5_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc5_ && param2))
                                                                                                                                             {
                                                                                                                                                if(!_loc5_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc5_ && this))
                                                                                                                                                   {
                                                                                                                                                      §§push(4096);
                                                                                                                                                      if(!_loc5_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc5_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc5_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc4_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     addr181:
                                                                                                                                                                     §§push(§§pop() | §§pop());
                                                                                                                                                                     if(!(_loc5_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc5_ && param2))
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc4_)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop().relativeFlags = §§pop();
                                                                                                                                                                              continue loop41;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1146);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           addr492:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc4_ || param2)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc4_ || param3)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc4_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop().relativeFlags = §§pop();
                                                                                                                                                                                       while(_loc5_ && param2)
                                                                                                                                                                                       {
                                                                                                                                                                                          break loop10;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr514:
                                                                                                                                                                                       if(_loc5_)
                                                                                                                                                                                       {
                                                                                                                                                                                          break loop9;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(!_loc5_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc5_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc4_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr419:
                                                                                                                                                                                                §§push(this.§`v§);
                                                                                                                                                                                                if(!_loc5_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr422:
                                                                                                                                                                                                   §§pop().alpha = param2;
                                                                                                                                                                                                   if(!(_loc5_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc4_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc4_ || param1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr24);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr1013);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr723:
                                                                                                                                                                                                      §§goto(addr24);
                                                                                                                                                                                                      addr723:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr24);
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr1017);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr1111);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr24);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr1060);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          addr791:
                                                                                                                                                                                          this._flags |= 256;
                                                                                                                                                                                          addr797:
                                                                                                                                                                                          if(!(_loc5_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc4_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc5_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr730:
                                                                                                                                                                                                   §§push(this.§`v§);
                                                                                                                                                                                                   §§push(this.§`v§.relativeFlags);
                                                                                                                                                                                                   if(_loc4_ || param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr738:
                                                                                                                                                                                                      if(param3)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr739:
                                                                                                                                                                                                         if(!(_loc5_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc5_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr749:
                                                                                                                                                                                                               §§push(256);
                                                                                                                                                                                                               if(!(_loc5_ && this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc5_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc5_ && param2))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr770:
                                                                                                                                                                                                                        §§pop().relativeFlags = §§pop() | §§pop();
                                                                                                                                                                                                                        addr771:
                                                                                                                                                                                                                        if(_loc4_ || param3)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc4_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr710:
                                                                                                                                                                                                                              §§push(this.§`v§);
                                                                                                                                                                                                                              if(!_loc5_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr713:
                                                                                                                                                                                                                                 §§push(param2);
                                                                                                                                                                                                                                 if(_loc4_ || this)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc4_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§pop().rotationY = §§pop();
                                                                                                                                                                                                                                       §§goto(addr723);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr925:
                                                                                                                                                                                                                                       if(_loc4_ || this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc5_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§pop().rotation = §§pop();
                                                                                                                                                                                                                                             §§goto(addr24);
                                                                                                                                                                                                                                             addr935:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr1210);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr24);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr1116);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1116);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr830:
                                                                                                                                                                                                                                    if(_loc4_ || param3)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§pop().rotationX = §§pop();
                                                                                                                                                                                                                                       addr838:
                                                                                                                                                                                                                                       if(_loc4_ || param2)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc5_ && param3))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr1116);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr1219);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1116);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr1005);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1116);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr1174);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr935);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr894:
                                                                                                                                                                                                                           §§push(this.§`v§);
                                                                                                                                                                                                                           if(!(_loc5_ && param3))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr830);
                                                                                                                                                                                                                              §§push(param2);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr1115);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1116);
                                                                                                                                                                                                                           addr894:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1116);
                                                                                                                                                                                                                        addr769:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr1230);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1210);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr1032);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr875:
                                                                                                                                                                                                                  if(!_loc5_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc4_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc5_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr885:
                                                                                                                                                                                                                           §§push(§§pop() | §§pop());
                                                                                                                                                                                                                           if(!(_loc5_ && param3))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§pop().relativeFlags = §§pop();
                                                                                                                                                                                                                              §§goto(addr894);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr1236);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr1183);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1255);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr1035);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr964:
                                                                                                                                                                                                                     if(_loc4_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr968:
                                                                                                                                                                                                                        §§pop().relativeFlags = §§pop() | §§pop();
                                                                                                                                                                                                                        addr920:
                                                                                                                                                                                                                        §§push(this.§`v§);
                                                                                                                                                                                                                        if(_loc4_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc5_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr925);
                                                                                                                                                                                                                              §§push(param2);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this.§`v§);
                                                                                                                                                                                                                              addr1269:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop().relativeFlags);
                                                                                                                                                                                                                                 if(!_loc5_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(param3);
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1274:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr1275);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr1274:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(0);
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr1278:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1279);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr1273:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1274);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr1267:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr1071);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1116);
                                                                                                                                                                                                                        addr967:
                                                                                                                                                                                                                        addr969:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr1234);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1236);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1234);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1140);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr870:
                                                                                                                                                                                                            if(!_loc5_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc5_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr875);
                                                                                                                                                                                                                  §§push(128);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr1032);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1036);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr946:
                                                                                                                                                                                                               §§push(64);
                                                                                                                                                                                                               if(_loc4_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc4_ || this)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr967);
                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr1140);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1256);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1085);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr768:
                                                                                                                                                                                                         §§push(0);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr769);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr1027);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr1267);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr1301:
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr1206);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1174);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1075);
                                                                                                                                                                                       addr514:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1090);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1037);
                                                                                                                                                                              }
                                                                                                                                                                              addr661:
                                                                                                                                                                              if(_loc4_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop().relativeFlags = §§pop();
                                                                                                                                                                                 addr669:
                                                                                                                                                                                 if(_loc4_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc4_ || param2)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr548:
                                                                                                                                                                                       §§push(this.§`v§);
                                                                                                                                                                                       if(!(_loc5_ && param2))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc4_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc4_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr565:
                                                                                                                                                                                                §§push(param2);
                                                                                                                                                                                                if(!(_loc5_ && param2))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop().rotationZ = §§pop();
                                                                                                                                                                                                   addr573:
                                                                                                                                                                                                   if(_loc4_ || this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr1116);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr771);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr1074);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1116);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1254);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1168);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          addr856:
                                                                                                                                                                                          if(!(_loc5_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc4_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr868:
                                                                                                                                                                                                §§push(this.§`v§.relativeFlags);
                                                                                                                                                                                                if(param3)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr870);
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr884:
                                                                                                                                                                                                   §§push(0);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr885);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                addr943:
                                                                                                                                                                                                §§push(this.§`v§.relativeFlags);
                                                                                                                                                                                                §§push(param3);
                                                                                                                                                                                                if(!_loc5_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr946);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr964);
                                                                                                                                                                                                      §§push(0);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1236);
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr1030);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1032);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr920);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1091);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§`v§);
                                                                                                                                                                                    addr916:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr856);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr770);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr492:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1116);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        addr370:
                                                                                                                                                                        if(!_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc5_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc5_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc5_ && param3))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop().relativeFlags = §§pop();
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§`v§);
                                                                                                                                                                                       break loop43;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr723);
                                                                                                                                                                                    addr389:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1280);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1192);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr968);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr885);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1236);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1278);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr884);
                                                                                                                                                            }
                                                                                                                                                            addr645:
                                                                                                                                                            if(!(_loc5_ && param1))
                                                                                                                                                            {
                                                                                                                                                               if(_loc4_)
                                                                                                                                                               {
                                                                                                                                                                  addr660:
                                                                                                                                                                  §§goto(addr661);
                                                                                                                                                                  §§push(§§pop() | §§pop());
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr946);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr749);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            addr357:
                                                                                                                                                            if(!_loc5_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc5_ && param3))
                                                                                                                                                                  {
                                                                                                                                                                     addr369:
                                                                                                                                                                     §§goto(addr370);
                                                                                                                                                                     §§push(§§pop() | §§pop());
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1192);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  addr657:
                                                                                                                                                                  if(_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr660);
                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1088);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               while(_loc4_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr492);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr661);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr768);
                                                                                                                                                               addr483:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr770);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr768);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         addr171:
                                                                                                                                                         if(_loc4_ || this)
                                                                                                                                                         {
                                                                                                                                                            if(_loc4_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr181);
                                                                                                                                                               §§push(§§pop());
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1144);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            addr352:
                                                                                                                                                            if(!_loc5_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr369);
                                                                                                                                                               §§push(§§pop());
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr491);
                                                                                                                                                               }
                                                                                                                                                               addr480:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr894);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr491);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1174);
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc4_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc4_ || param1)
                                                                                                                                                      {
                                                                                                                                                         §§push(param3);
                                                                                                                                                         while(_loc4_)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               while(!_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr480);
                                                                                                                                                                  §§push(1024);
                                                                                                                                                               }
                                                                                                                                                               addr607:
                                                                                                                                                               if(_loc4_)
                                                                                                                                                               {
                                                                                                                                                                  addr610:
                                                                                                                                                                  §§push(param3);
                                                                                                                                                                  if(_loc4_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc4_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc4_ || param2)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              addr627:
                                                                                                                                                                              if(_loc4_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr645);
                                                                                                                                                                                 §§push(512);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1138);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr657);
                                                                                                                                                                              §§push(0);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1088);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1083);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr943);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr738);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr868);
                                                                                                                                                               addr477:
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr483);
                                                                                                                                                               §§push(0);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr768);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr868);
                                                                                                                                                         addr474:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1274);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr739);
                                                                                                                                                }
                                                                                                                                                addr464:
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr322:
                                                                                                                                                if(_loc4_ || param3)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc5_ && param1))
                                                                                                                                                   {
                                                                                                                                                      if(_loc4_)
                                                                                                                                                      {
                                                                                                                                                         addr339:
                                                                                                                                                         §§push(param3);
                                                                                                                                                         if(_loc4_ || this)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc5_)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  addr349:
                                                                                                                                                                  if(_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr352);
                                                                                                                                                                     §§push(2048);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1082);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr357);
                                                                                                                                                                  §§push(0);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr768);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1229);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1139);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1084);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr627);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr477);
                                                                                                                                          }
                                                                                                                                          §§goto(addr349);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§push(0);
                                                                                                                                       }
                                                                                                                                       §§goto(addr171);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1273);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1174);
                                                                                                                              }
                                                                                                                              §§goto(addr610);
                                                                                                                           }
                                                                                                                           §§goto(addr474);
                                                                                                                        }
                                                                                                                        §§goto(addr339);
                                                                                                                     }
                                                                                                                     §§goto(addr1230);
                                                                                                                  }
                                                                                                                  §§goto(addr943);
                                                                                                               }
                                                                                                               §§goto(addr730);
                                                                                                            }
                                                                                                            §§goto(addr139);
                                                                                                         }
                                                                                                         §§goto(addr1017);
                                                                                                      }
                                                                                                      §§goto(addr730);
                                                                                                   }
                                                                                                   addr586:
                                                                                                   if(_loc4_ || param3)
                                                                                                   {
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         if(!(_loc5_ && param2))
                                                                                                         {
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  §§goto(addr607);
                                                                                                                  §§push(§§pop().relativeFlags);
                                                                                                               }
                                                                                                               §§goto(addr1269);
                                                                                                            }
                                                                                                            §§goto(addr1225);
                                                                                                         }
                                                                                                         §§goto(addr1174);
                                                                                                      }
                                                                                                      §§goto(addr1081);
                                                                                                   }
                                                                                                   §§goto(addr943);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr464);
                                                                                                }
                                                                                                §§goto(addr739);
                                                                                                addr463:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr314:
                                                                                                if(!(_loc5_ && this))
                                                                                                {
                                                                                                   §§goto(addr322);
                                                                                                   §§push(§§pop().relativeFlags);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr868);
                                                                                          }
                                                                                          §§goto(addr1164);
                                                                                       }
                                                                                       §§goto(addr419);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr303:
                                                                                       if(!(_loc5_ && param1))
                                                                                       {
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             §§goto(addr314);
                                                                                             §§push(this.§`v§);
                                                                                          }
                                                                                          §§goto(addr730);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                if(!(_loc5_ && param2))
                                                                                                {
                                                                                                   if(_loc4_ || param2)
                                                                                                   {
                                                                                                      §§goto(addr463);
                                                                                                      §§push(this.§`v§);
                                                                                                   }
                                                                                                   §§goto(addr1005);
                                                                                                }
                                                                                                §§goto(addr710);
                                                                                             }
                                                                                             addr584:
                                                                                             §§goto(addr586);
                                                                                             §§push(this.§`v§);
                                                                                          }
                                                                                       }
                                                                                       addr443:
                                                                                    }
                                                                                    §§goto(addr548);
                                                                                 }
                                                                                 §§push(this.§`v§);
                                                                                 addr214:
                                                                                 break;
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§push(param2);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    if(_loc4_ || this)
                                                                                    {
                                                                                       addr43:
                                                                                       §§pop().height = §§pop();
                                                                                       if(!(_loc5_ && param1))
                                                                                       {
                                                                                          continue loop42;
                                                                                       }
                                                                                       continue loop41;
                                                                                    }
                                                                                    §§goto(addr713);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc4_ || param2)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             §§pop().width = §§pop();
                                                                                             break loop42;
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr422);
                                                                                    }
                                                                                    §§goto(addr565);
                                                                                    addr280:
                                                                                 }
                                                                                 §§goto(addr723);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc5_ && param3))
                                                                                 {
                                                                                    §§goto(addr280);
                                                                                    §§push(param2);
                                                                                 }
                                                                                 §§goto(addr894);
                                                                              }
                                                                              §§goto(addr422);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr1054);
                                                                           }
                                                                        }
                                                                        §§goto(addr669);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr443);
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(_loc4_ || param1)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr1281);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr389);
                                                                     }
                                                                  }
                                                                  §§goto(addr1116);
                                                               }
                                                               addr697:
                                                               if(_loc5_ && this)
                                                               {
                                                                  break loop7;
                                                               }
                                                               if(_loc4_)
                                                               {
                                                                  §§goto(addr584);
                                                                  §§push(this.§`v§);
                                                               }
                                                               else
                                                               {
                                                                  §§push(this.§`v§);
                                                                  addr1250:
                                                               }
                                                               §§goto(addr1225);
                                                            }
                                                            §§goto(addr1116);
                                                         }
                                                         if(!_loc5_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               this._flags |= 2048;
                                                               §§goto(addr406);
                                                            }
                                                            §§goto(addr1237);
                                                         }
                                                         §§goto(addr838);
                                                      }
                                                      break;
                                                   }
                                                   continue loop9;
                                                }
                                                while(true)
                                                {
                                                   this._flags |= 1024;
                                                   §§goto(addr544);
                                                   §§goto(addr514);
                                                }
                                                §§goto(addr548);
                                             }
                                             break;
                                          }
                                          continue loop7;
                                       }
                                       continue loop8;
                                    }
                                    if(!_loc5_)
                                    {
                                       this._flags |= 512;
                                       §§goto(addr697);
                                    }
                                    else
                                    {
                                       §§goto(addr797);
                                    }
                                 }
                                 §§goto(addr791);
                              }
                              else
                              {
                                 §§goto(addr974);
                              }
                           }
                           continue loop0;
                        }
                        §§goto(addr1050);
                     }
                     if(!(_loc4_ || param3))
                     {
                        break;
                     }
                     this._flags |= 128;
                     §§goto(addr916);
                  }
                  §§goto(addr985);
               }
               this._flags |= 2;
               §§goto(addr1250);
            }
            while(true)
            {
               this._flags |= 1;
               §§goto(addr1301);
            }
         }
         §§goto(addr1219);
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:DisplayObject = this.§[l§;
         var _loc3_:DisplayObjectParameter = this.§8A§;
         var _loc4_:DisplayObjectParameter = this.§`v§;
         §§push(this._flags);
         if(!_loc7_)
         {
            §§push(uint(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(1 - param1);
         if(!_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         if(_loc8_)
         {
            §§push(_loc5_);
            loop0:
            while(true)
            {
               §§push(1);
               loop1:
               while(true)
               {
                  §§push(§§pop() & §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(0);
                     loop3:
                     while(true)
                     {
                        if(§§pop() != §§pop())
                        {
                           while(true)
                           {
                              _loc2_.x = _loc4_.x * _loc6_ + _loc3_.x * param1;
                              addr722:
                              while(true)
                              {
                              }
                           }
                           addr701:
                        }
                        while(true)
                        {
                           §§push(_loc5_);
                           loop7:
                           while(true)
                           {
                              §§push(2);
                              loop8:
                              while(true)
                              {
                                 §§push(§§pop() & §§pop());
                                 loop9:
                                 while(true)
                                 {
                                    §§push(0);
                                    while(true)
                                    {
                                       if(§§pop() != §§pop())
                                       {
                                          while(true)
                                          {
                                             _loc2_.y = _loc4_.y * _loc6_ + _loc3_.y * param1;
                                             addr695:
                                             while(true)
                                             {
                                             }
                                          }
                                          addr684:
                                       }
                                       while(true)
                                       {
                                          §§push(_loc5_);
                                          loop14:
                                          while(true)
                                          {
                                             §§push(4);
                                             while(true)
                                             {
                                                §§push(§§pop() & §§pop());
                                                loop16:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   while(!(_loc7_ && param1))
                                                   {
                                                      if(§§pop() != §§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            _loc2_.z = _loc4_.z * _loc6_ + _loc3_.z * param1;
                                                            addr673:
                                                            while(true)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr695);
                                                               }
                                                            }
                                                            addr111:
                                                            §§goto(addr722);
                                                            if(_loc7_ && this)
                                                            {
                                                               continue;
                                                            }
                                                            _loc2_.height = _loc4_.height * _loc6_ + _loc3_.height * param1;
                                                            addr129:
                                                            if(_loc8_ || param1)
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  if(_loc7_ && this)
                                                                  {
                                                                     loop73:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           _loc2_.rotationZ = _loc4_.rotationZ * _loc6_ + _loc3_.rotationZ * param1;
                                                                           loop74:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc7_ && param1))
                                                                              {
                                                                                 if(_loc8_ || _loc2_)
                                                                                 {
                                                                                    if(!(_loc7_ && param1))
                                                                                    {
                                                                                       loop75:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc5_);
                                                                                          addr219:
                                                                                          loop76:
                                                                                          while(!(_loc7_ && _loc3_))
                                                                                          {
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                §§push(7168);
                                                                                                loop77:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() & §§pop());
                                                                                                   loop78:
                                                                                                   while(_loc8_)
                                                                                                   {
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            §§push(0);
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               if(!(_loc7_ && _loc3_))
                                                                                                               {
                                                                                                                  if(§§pop() != §§pop())
                                                                                                                  {
                                                                                                                     loop79:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           §§push(_loc5_);
                                                                                                                           loop80:
                                                                                                                           while(_loc8_ || this)
                                                                                                                           {
                                                                                                                              if(_loc8_)
                                                                                                                              {
                                                                                                                                 if(_loc7_)
                                                                                                                                 {
                                                                                                                                    continue loop14;
                                                                                                                                 }
                                                                                                                                 §§push(1024);
                                                                                                                                 loop81:
                                                                                                                                 for(; !(_loc7_ && this); if(_loc7_ && _loc3_)
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 },§§goto(addr75))
                                                                                                                                 {
                                                                                                                                    if(!_loc7_)
                                                                                                                                    {
                                                                                                                                       if(_loc8_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() & §§pop());
                                                                                                                                          loop82:
                                                                                                                                          while(_loc8_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             addr281:
                                                                                                                                             if(_loc8_ || this)
                                                                                                                                             {
                                                                                                                                                §§push(0);
                                                                                                                                                loop83:
                                                                                                                                                while(_loc8_)
                                                                                                                                                {
                                                                                                                                                   addr291:
                                                                                                                                                   if(_loc8_ || param1)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop() != §§pop())
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            _loc2_.alpha = _loc4_.alpha * _loc6_ + _loc3_.alpha * param1;
                                                                                                                                                            addr310:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr299:
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc5_);
                                                                                                                                                         addr148:
                                                                                                                                                         while(!_loc7_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc7_)
                                                                                                                                                            {
                                                                                                                                                               continue loop76;
                                                                                                                                                            }
                                                                                                                                                            if(_loc8_)
                                                                                                                                                            {
                                                                                                                                                               continue loop77;
                                                                                                                                                            }
                                                                                                                                                            addr313:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               break loop81;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         continue loop80;
                                                                                                                                                         §§goto(addr310);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   loop24:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop() != §§pop())
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc7_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc5_);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               break loop79;
                                                                                                                                                            }
                                                                                                                                                            addr624:
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            _loc2_.scaleX = _loc4_.scaleX * _loc6_ + _loc3_.scaleX * param1;
                                                                                                                                                            addr648:
                                                                                                                                                            loop94:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc5_);
                                                                                                                                                                  addr578:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(16);
                                                                                                                                                                     addr579:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() & §§pop());
                                                                                                                                                                        loop32:
                                                                                                                                                                        while(!(_loc7_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(0);
                                                                                                                                                                           loop33:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop() != §§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc2_.scaleY = _loc4_.scaleY * _loc6_ + _loc3_.scaleY * param1;
                                                                                                                                                                                    addr600:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 addr589:
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc5_);
                                                                                                                                                                                 loop37:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(32);
                                                                                                                                                                                    addr540:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() & §§pop());
                                                                                                                                                                                       addr541:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop33;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr451:
                                                                                                                                                                                    if(!(_loc7_ && _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(128);
                                                                                                                                                                                       while(_loc8_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() & §§pop());
                                                                                                                                                                                          while(_loc8_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc7_ && param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop2;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(0);
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(§§pop() != §§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(!_loc7_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc2_.rotationX = _loc4_.rotationX * _loc6_ + _loc3_.rotationX * param1;
                                                                                                                                                                                                      while(!(_loc7_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr600);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr589);
                                                                                                                                                                                                   addr473:
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc5_);
                                                                                                                                                                                                   break loop80;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr281);
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop32;
                                                                                                                                                                                          if(!(_loc8_ || _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             continue;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr323:
                                                                                                                                                                                          if(!(_loc7_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr330:
                                                                                                                                                                                             if(_loc8_ || _loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc8_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() & §§pop());
                                                                                                                                                                                                   break loop78;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop1;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr611:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() & §§pop());
                                                                                                                                                                                                break loop32;
                                                                                                                                                                                                §§goto(addr330);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             addr504:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() & §§pop());
                                                                                                                                                                                                loop46:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(0);
                                                                                                                                                                                                   loop47:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop() == §§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop75;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      loop48:
                                                                                                                                                                                                      while(!_loc7_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc5_);
                                                                                                                                                                                                         loop49:
                                                                                                                                                                                                         for(; _loc8_; while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc7_ && param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop49;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr451);
                                                                                                                                                                                                         },continue loop37)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(64);
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() & §§pop());
                                                                                                                                                                                                               addr514:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(0);
                                                                                                                                                                                                                  addr515:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(§§pop() != §§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc8_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc2_.rotation = _loc4_.rotation * _loc6_ + _loc3_.rotation * param1;
                                                                                                                                                                                                                              while(_loc8_ || _loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc5_);
                                                                                                                                                                                                                                    continue loop49;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr673);
                                                                                                                                                                                                                              addr529:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr701);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr722);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr516:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr442);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr75:
                                                                                                                                                                                                               if(!(_loc8_ || _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(§§pop() & §§pop());
                                                                                                                                                                                                               if(!_loc8_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(!_loc7_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(0);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop82;
                                                                                                                                                                                                                  addr170:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(_loc7_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop78;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!_loc8_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop46;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!_loc8_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop9;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(0);
                                                                                                                                                                                                               if(_loc8_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(§§pop() != §§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc8_ || param1)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc7_ && this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc7_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop79;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr111);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr310);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr129);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr45);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(_loc8_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc8_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc8_ || _loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc8_ || _loc3_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop47;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(§§pop() != §§pop())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc7_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc7_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 _loc2_.width = _loc4_.width * _loc6_ + _loc3_.width * param1;
                                                                                                                                                                                                                                 while(_loc8_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc7_ && _loc2_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc5_);
                                                                                                                                                                                                                                          if(_loc8_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop0;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop81;
                                                                                                                                                                                                                                       addr49:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop48;
                                                                                                                                                                                                                                    §§goto(addr129);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr529);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr299);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop74;
                                                                                                                                                                                                                           addr192:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr49);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr515);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(§§pop() != §§pop())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop73;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop75;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr363:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop83;
                                                                                                                                                                                                               addr173:
                                                                                                                                                                                                               §§goto(addr442);
                                                                                                                                                                                                               §§goto(addr173);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop7;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr494:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc5_);
                                                                                                                                                                                                            break loop76;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr323);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr504:
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop8;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        while(!_loc7_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop24;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop16;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  continue loop94;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr637:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr494);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                while(!_loc7_)
                                                                                                                                                {
                                                                                                                                                   if(§§pop() != §§pop())
                                                                                                                                                   {
                                                                                                                                                      if(_loc8_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         _loc2_.rotationY = _loc4_.rotationY * _loc6_ + _loc3_.rotationY * param1;
                                                                                                                                                         addr432:
                                                                                                                                                         while(!_loc7_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc8_ || this)
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr313);
                                                                                                                                                               }
                                                                                                                                                               addr311:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr648);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr486);
                                                                                                                                                         addr432:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr432);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr311);
                                                                                                                                                }
                                                                                                                                                §§goto(addr472);
                                                                                                                                                addr411:
                                                                                                                                                addr289:
                                                                                                                                             }
                                                                                                                                             §§goto(addr462);
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§goto(addr411);
                                                                                                                                             §§goto(addr274);
                                                                                                                                          }
                                                                                                                                          addr274:
                                                                                                                                          addr410:
                                                                                                                                       }
                                                                                                                                       break loop79;
                                                                                                                                    }
                                                                                                                                    §§goto(addr579);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc7_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr316);
                                                                                                                                    }
                                                                                                                                    addr402:
                                                                                                                                    while(_loc8_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr410);
                                                                                                                                       §§push(§§pop() & §§pop());
                                                                                                                                    }
                                                                                                                                    §§goto(addr540);
                                                                                                                                 }
                                                                                                                                 §§goto(addr504);
                                                                                                                              }
                                                                                                                              §§goto(addr444);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§goto(addr402);
                                                                                                                              §§goto(addr250);
                                                                                                                           }
                                                                                                                           addr250:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr684);
                                                                                                                        }
                                                                                                                        §§goto(addr695);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() & §§pop());
                                                                                                                        addr626:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§goto(addr627);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr45);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr542);
                                                                                                            }
                                                                                                            §§goto(addr289);
                                                                                                         }
                                                                                                         §§goto(addr541);
                                                                                                      }
                                                                                                      §§goto(addr514);
                                                                                                   }
                                                                                                   while(!(_loc7_ && this))
                                                                                                   {
                                                                                                      §§goto(addr363);
                                                                                                      §§push(0);
                                                                                                   }
                                                                                                   §§goto(addr626);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr624);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc8_ || _loc2_)
                                                                                             {
                                                                                                §§goto(addr504);
                                                                                                §§push(960);
                                                                                             }
                                                                                             break;
                                                                                             §§goto(addr219);
                                                                                          }
                                                                                          §§goto(addr578);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr637);
                                                                                 }
                                                                                 §§goto(addr516);
                                                                              }
                                                                              §§goto(addr473);
                                                                           }
                                                                        }
                                                                        §§goto(addr432);
                                                                     }
                                                                  }
                                                                  addr45:
                                                                  return;
                                                               }
                                                               §§goto(addr192);
                                                            }
                                                            §§goto(addr207);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(_loc5_);
                                                         continue loop7;
                                                      }
                                                   }
                                                   continue loop3;
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
            }
         }
         §§goto(addr648);
      }
      
      override public function set target(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§[l§ = param1 as DisplayObject;
         }
      }
      
      override protected function resolveValues() : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      override public function getObject(param1:String) : Object
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(param1);
            loop0:
            while(§§pop() != "_blurFilter")
            {
               loop1:
               while(true)
               {
                  §§push(param1);
                  loop2:
                  while(§§pop() != "_glowFilter")
                  {
                     loop3:
                     while(true)
                     {
                        §§push(param1);
                        loop4:
                        while(§§pop() != "_dropShadowFilter")
                        {
                           do
                           {
                              §§push(param1);
                              loop6:
                              while(§§pop() != "_colorMatrixFilter")
                              {
                                 loop7:
                                 while(true)
                                 {
                                    §§push(param1);
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          continue loop4;
                                       }
                                       if(_loc3_ && this)
                                       {
                                          break;
                                       }
                                       if(§§pop() == "_bevelFilter")
                                       {
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             if(_loc2_ || _loc3_)
                                             {
                                                return this.§""8§(BevelFilter);
                                             }
                                             break loop6;
                                          }
                                          addr227:
                                          while(true)
                                          {
                                          }
                                          addr227:
                                       }
                                       loop9:
                                       while(true)
                                       {
                                          §§push(param1);
                                          while(true)
                                          {
                                             if(§§pop() != "_gradientGlowFilter")
                                             {
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   loop12:
                                                   while(§§pop() != "_gradientBevelFilter")
                                                   {
                                                      loop13:
                                                      while(true)
                                                      {
                                                         §§push(param1);
                                                         while(_loc2_)
                                                         {
                                                            if(§§pop() == "_convolutionFilter")
                                                            {
                                                               if(!(_loc3_ && this))
                                                               {
                                                                  return this.§""8§(ConvolutionFilter);
                                                               }
                                                               while(true)
                                                               {
                                                               }
                                                               addr163:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(param1);
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  if(§§pop() == "_displacementMapFilter")
                                                                  {
                                                                     if(!(_loc3_ && param1))
                                                                     {
                                                                        break;
                                                                     }
                                                                     addr177:
                                                                     while(_loc2_ || param1)
                                                                     {
                                                                        continue loop17;
                                                                        if(!(_loc3_ && _loc2_))
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              if(_loc3_)
                                                                              {
                                                                                 break loop12;
                                                                              }
                                                                              if(_loc2_ || param1)
                                                                              {
                                                                                 if(_loc2_ || param1)
                                                                                 {
                                                                                    addr24:
                                                                                    return null;
                                                                                 }
                                                                                 break loop2;
                                                                              }
                                                                              continue loop3;
                                                                           }
                                                                           continue loop13;
                                                                        }
                                                                     }
                                                                     if(!(_loc3_ && _loc3_))
                                                                     {
                                                                        return this.§""8§(GradientGlowFilter);
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                               }
                                                               return this.§""8§(DisplacementMapFilter);
                                                               §§goto(addr163);
                                                            }
                                                            if(!(_loc3_ && param1))
                                                            {
                                                               if(!(_loc3_ && _loc2_))
                                                               {
                                                                  return this.§""8§(ShaderFilter);
                                                               }
                                                               continue loop7;
                                                            }
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               continue loop11;
                                                            }
                                                            continue loop9;
                                                         }
                                                         continue loop0;
                                                      }
                                                   }
                                                   return this.§""8§(GradientBevelFilter);
                                                }
                                             }
                                             §§goto(addr177);
                                          }
                                       }
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                           while(_loc3_ && this);
                           
                           if(!_loc3_)
                           {
                              if(_loc2_ || param1)
                              {
                                 return this.§""8§(ColorMatrixFilter);
                              }
                              break loop0;
                           }
                           break;
                        }
                        return this.§""8§(DropShadowFilter);
                     }
                  }
                  return this.§""8§(GlowFilter);
               }
            }
            return this.§""8§(BlurFilter);
         }
         §§goto(addr227);
      }
      
      override protected function copyFrom(param1:§#![§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            super.copyFrom(param1);
         }
         var _loc2_:§&"$§ = param1 as §&"$§;
         if(!_loc3_)
         {
            this.§[l§ = _loc2_.§[l§;
            loop0:
            while(true)
            {
               this.§`v§.copyFrom(_loc2_.§`v§);
               loop1:
               while(true)
               {
                  this.§8A§.copyFrom(_loc2_.§8A§);
                  loop2:
                  while(_loc4_)
                  {
                     while(true)
                     {
                        this._flags = _loc2_._flags;
                        if(_loc4_)
                        {
                           continue loop1;
                        }
                        continue loop2;
                     }
                     return;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr72);
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
