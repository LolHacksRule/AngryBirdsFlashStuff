package §%!j§
{
   import §+!-§.§4!O§;
   import §0!%§.Texture;
   import §`!=§.§9q§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class § j§ extends §&Y§
   {
       
      
      private var §&"!§:BitmapData;
      
      private var §+@§:int = 0;
      
      private var §&!t§:int = 0;
      
      private var §4Q§:Number = 1.0;
      
      private var §7E§:Number = 1.0;
      
      private var §;!J§:BitmapData;
      
      private var §9!@§:Vector.<Number>;
      
      private var §<!R§:Matrix;
      
      private var §6!l§:ColorTransform;
      
      public function § j§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§9!@§ = new Vector.<Number>(16);
            loop0:
            do
            {
               this.§<!R§ = new Matrix();
               loop1:
               while(true)
               {
                  this.§6!l§ = new ColorTransform();
                  do
                  {
                     super();
                     continue loop1;
                  }
                  while(!(_loc2_ || _loc1_));
                  
                  continue loop0;
               }
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§&"!§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.dispose();
            loop0:
            while(this.§;!J§)
            {
               while(true)
               {
                  this.§;!J§.dispose();
                  do
                  {
                     this.§;!J§ = null;
                  }
                  while(_loc2_ && _loc1_);
                  
                  if(!(_loc2_ && this))
                  {
                     if(!_loc2_)
                     {
                        break loop0;
                     }
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr68);
      }
      
      override public function batchQuad(param1:§4!O§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:* = uint(0);
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(_loc8_ || param1)
         {
            if(this.§&"!§)
            {
               loop0:
               while(true)
               {
                  §"!Y§.copyRawDataTo(this.§9!@§,0);
                  loop1:
                  while(true)
                  {
                     this.§<!R§.setTo(this.§9!@§[0],this.§9!@§[1],this.§9!@§[4],this.§9!@§[5],this.§9!@§[12],this.§9!@§[13]);
                     addr116:
                     while(true)
                     {
                        this.§<!R§.scale(this.§4Q§,this.§7E§);
                        loop3:
                        while(true)
                        {
                           if(_loc8_)
                           {
                              while(true)
                              {
                                 §§push(param1.color);
                                 if(_loc8_)
                                 {
                                    §§push(uint(§§pop()));
                                 }
                                 _loc5_ = §§pop();
                                 while(!_loc9_)
                                 {
                                    §§push(param2);
                                    if(!_loc9_)
                                    {
                                       §§push(§§pop() * param1.alpha);
                                       if(_loc8_ || param3)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    param2 = §§pop();
                                    if(_loc8_)
                                    {
                                       continue loop3;
                                    }
                                 }
                                 continue loop1;
                              }
                              continue;
                              addr67:
                           }
                           continue loop0;
                        }
                        if(!(_loc8_ || param3))
                        {
                           continue;
                        }
                        if(false)
                        {
                           §§goto(addr67);
                        }
                        _loc6_ = null;
                        if(_loc8_)
                        {
                           §§push(Boolean(param3));
                           if(!_loc9_)
                           {
                              if(§§pop())
                              {
                                 if(_loc8_)
                                 {
                                    §§pop();
                                    if(_loc8_)
                                    {
                                       addr142:
                                       §§push(_loc5_ == 16777215);
                                       if(_loc8_ || param2)
                                       {
                                          addr163:
                                          if(!§§pop())
                                          {
                                             if(_loc8_)
                                             {
                                                (_loc6_ = this.§6!l§).redMultiplier = §9q§.§@g§(_loc5_) / 255;
                                                if(_loc8_)
                                                {
                                                   _loc6_.greenMultiplier = §9q§.§!e§(_loc5_) / 255;
                                                }
                                                addr188:
                                                _loc6_.blueMultiplier = §9q§.§6!1§(_loc5_) / 255;
                                                if(_loc8_)
                                                {
                                                   _loc6_.alphaMultiplier = 1;
                                                   if(!_loc9_)
                                                   {
                                                      if(false)
                                                      {
                                                         §§goto(addr188);
                                                      }
                                                      addr207:
                                                      if(param2 != 1)
                                                      {
                                                         addr210:
                                                         (_loc6_ = this.§6!l§).alphaMultiplier = param2;
                                                      }
                                                      if((_loc7_ = param1.clippedBitmapData) == null)
                                                      {
                                                         if(!(_loc9_ && param3))
                                                         {
                                                            this.§;!J§.setPixel(0,0,param1.color);
                                                            if(!_loc9_)
                                                            {
                                                               addr240:
                                                               _loc7_ = this.§;!J§;
                                                               if(!_loc9_)
                                                               {
                                                                  this.§<!R§.a *= param1.§<!W§;
                                                                  this.§<!R§.b *= param1.§<!W§;
                                                                  addr289:
                                                                  if(_loc8_)
                                                                  {
                                                                     addr268:
                                                                     this.§<!R§.c *= param1.§-!+§;
                                                                     this.§<!R§.d *= param1.§-!+§;
                                                                     if(!(_loc9_ && param1))
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              §§goto(addr268);
                                                                           }
                                                                           this.§&"!§.draw(_loc7_,this.§<!R§,_loc6_,null,null,param1.highQuality);
                                                                           addr323:
                                                                           return;
                                                                           addr302:
                                                                        }
                                                                        §§goto(addr289);
                                                                     }
                                                                     addr278:
                                                                     §§goto(addr278);
                                                                  }
                                                                  addr301:
                                                                  §§goto(addr301);
                                                               }
                                                               §§goto(addr268);
                                                            }
                                                            §§goto(addr323);
                                                         }
                                                         §§goto(addr240);
                                                      }
                                                      §§goto(addr302);
                                                   }
                                                   §§goto(addr188);
                                                }
                                                addr206:
                                                §§goto(addr206);
                                             }
                                             §§goto(addr210);
                                          }
                                          §§goto(addr207);
                                       }
                                       §§goto(addr163);
                                    }
                                    §§goto(addr210);
                                 }
                              }
                           }
                           §§goto(addr163);
                        }
                        §§goto(addr142);
                     }
                  }
               }
            }
            §§goto(addr323);
         }
         §§goto(addr116);
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            if(this.§&"!§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§&"!§.width == this.§+@§);
                  loop1:
                  while(true)
                  {
                     §§push(!§§pop());
                     loop2:
                     while(true)
                     {
                        §§push(§§pop());
                        loop3:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop8:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    this.§&"!§.fillRect(this.§&"!§.rect,4278190080 | param2);
                                    loop9:
                                    while(true)
                                    {
                                       if(!_loc5_)
                                       {
                                          loop13:
                                          while(true)
                                          {
                                             §§push(this.§&"!§ == null);
                                             if(!_loc5_)
                                             {
                                                §§push(§§pop());
                                                for(; !(_loc5_ && param3); loop15:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc5_ && param2)
                                                   {
                                                      break;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      loop16:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         loop17:
                                                         while(true)
                                                         {
                                                            §§push(this.§&!t§);
                                                            if(_loc5_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(0);
                                                            if(_loc5_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() > §§pop());
                                                                  if(_loc5_ && param1)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(!_loc4_)
                                                                  {
                                                                     while(!(_loc5_ && this))
                                                                     {
                                                                        if(_loc4_ || param3)
                                                                        {
                                                                           §§pop();
                                                                           continue loop9;
                                                                        }
                                                                        continue loop2;
                                                                     }
                                                                     while(!_loc5_)
                                                                     {
                                                                        continue loop8;
                                                                        §§goto(addr154);
                                                                     }
                                                                     addr154:
                                                                  }
                                                                  else
                                                                  {
                                                                     addr154:
                                                                     addr242:
                                                                     addr212:
                                                                  }
                                                                  continue loop15;
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                  }
                                                                  break loop17;
                                                               }
                                                               continue loop16;
                                                               addr106:
                                                            }
                                                            §§push(§§pop() > §§pop());
                                                            if(_loc5_)
                                                            {
                                                               continue loop16;
                                                            }
                                                            if(!(_loc4_ || param1))
                                                            {
                                                               break loop16;
                                                            }
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  while(this.§&"!§)
                                                                  {
                                                                     if(!(_loc5_ && param2))
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           this.§&"!§.lock();
                                                                           §§goto(addr46);
                                                                        }
                                                                        §§goto(addr99);
                                                                     }
                                                                     §§goto(addr46);
                                                                  }
                                                                  addr24:
                                                               }
                                                               while(!_loc5_)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     if(!(_loc5_ && param3))
                                                                     {
                                                                        this.§&"!§ = new BitmapData(this.§+@§,this.§&!t§,true,4278190080 | param2);
                                                                        while(true)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              continue loop17;
                                                                           }
                                                                        }
                                                                        addr99:
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§&"!§.height == this.§&!t§);
                                                                           break loop16;
                                                                        }
                                                                        addr243:
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                     addr196:
                                                                  }
                                                                  if(_loc5_ && param1)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§goto(addr24);
                                                                  }
                                                                  addr216:
                                                                  while(true)
                                                                  {
                                                                     this.§&"!§.dispose();
                                                                     addr219:
                                                                     while(true)
                                                                     {
                                                                        this.§&"!§ = null;
                                                                        §§goto(addr196);
                                                                     }
                                                                  }
                                                               }
                                                               continue loop9;
                                                               return;
                                                            }
                                                            §§goto(addr243);
                                                         }
                                                         addr105:
                                                         while(true)
                                                         {
                                                            §§goto(addr106);
                                                         }
                                                      }
                                                      continue loop1;
                                                   }
                                                   §§goto(addr74);
                                                })
                                                {
                                                   if(!§§pop())
                                                   {
                                                      continue;
                                                   }
                                                }
                                                continue loop3;
                                             }
                                             §§goto(addr154);
                                          }
                                          addr138:
                                       }
                                       §§goto(addr219);
                                       while(_loc4_ || param3)
                                       {
                                          while(true)
                                          {
                                             §§goto(addr105);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr216);
                              }
                           }
                           §§goto(addr242);
                        }
                     }
                     while(!(_loc5_ && param1))
                     {
                        §§goto(addr212);
                        §§push(!§§pop());
                        §§goto(addr67);
                     }
                  }
               }
            }
            §§goto(addr138);
         }
         §§goto(addr176);
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§&"!§)
            {
               if(!_loc3_)
               {
                  addr33:
                  this.§&"!§.unlock();
               }
            }
            return;
         }
         §§goto(addr33);
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§+@§ = param1;
            while(true)
            {
               this.§&!t§ = param2;
               addr67:
               while(!_loc5_)
               {
               }
            }
         }
         while(true)
         {
            this.§4Q§ = param3;
            while(!_loc5_)
            {
               this.§7E§ = param4;
               if(!(_loc5_ && param3))
               {
                  return;
               }
            }
            §§goto(addr67);
         }
      }
   }
}
