package §"$§
{
   import §'_§.Texture;
   import §1!&§.§!!9§;
   import §@2§.§3§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class BitmapDataRenderSupport extends RenderSupport
   {
       
      
      private var §"B§:BitmapData;
      
      private var §3!A§:int = 0;
      
      private var §[!G§:int = 0;
      
      private var §>b§:Number = 1.0;
      
      private var §=2§:Number = 1.0;
      
      private var §9r§:BitmapData;
      
      private var §]Q§:Vector.<Number>;
      
      private var §?R§:Matrix;
      
      private var §&W§:ColorTransform;
      
      public function BitmapDataRenderSupport()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§]Q§ = new Vector.<Number>(16);
            while(true)
            {
               this.§?R§ = new Matrix();
               while(_loc2_)
               {
                  this.§&W§ = new ColorTransform();
                  while(!_loc1_)
                  {
                     super();
                     loop3:
                     while(!(_loc1_ && _loc2_))
                     {
                        while(true)
                        {
                           this.§9r§ = new BitmapData(1,1,false);
                           if(_loc2_)
                           {
                              break;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§"B§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.dispose();
         }
         while(this.§9r§)
         {
            if(!_loc2_)
            {
               this.§9r§.dispose();
            }
            do
            {
               this.§9r§ = null;
            }
            while(!_loc1_);
            
            if(_loc1_ || this)
            {
               break;
            }
         }
      }
      
      override public function batchQuad(param1:§!!9§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = uint(0);
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(!_loc8_)
         {
            if(this.§"B§)
            {
               loop0:
               while(true)
               {
                  §7!W§.copyRawDataTo(this.§]Q§,0);
                  while(true)
                  {
                     this.§?R§.setTo(this.§]Q§[0],this.§]Q§[1],this.§]Q§[4],this.§]Q§[5],this.§]Q§[12],this.§]Q§[13]);
                     while(_loc9_)
                     {
                        this.§?R§.scale(this.§>b§,this.§=2§);
                        loop3:
                        while(!(_loc8_ && param1))
                        {
                           if(!_loc9_)
                           {
                              continue loop0;
                           }
                           loop4:
                           while(true)
                           {
                              §§push(param1.color);
                              if(!(_loc8_ && param2))
                              {
                                 §§push(uint(§§pop()));
                              }
                              _loc5_ = §§pop();
                              do
                              {
                                 if(!_loc8_)
                                 {
                                    §§push(param2);
                                    if(_loc9_ || param2)
                                    {
                                       §§push(§§pop() * param1.alpha);
                                       if(!_loc9_)
                                       {
                                          continue;
                                       }
                                    }
                                    §§push(Number(§§pop()));
                                    continue;
                                 }
                                 continue loop3;
                              }
                              while(param2 = §§pop(), !(_loc9_ || param2));
                              
                              addr52:
                              while(false)
                              {
                                 continue loop4;
                              }
                              _loc6_ = null;
                              if(_loc9_)
                              {
                                 §§push(Boolean(param3));
                                 if(_loc9_)
                                 {
                                    §§push(§§pop());
                                    if(_loc9_ || this)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(§§pop())
                                    {
                                       if(!(_loc8_ && param2))
                                       {
                                          §§pop();
                                          if(!(_loc8_ && param3))
                                          {
                                             §§push(_loc5_ == 16777215);
                                             if(_loc9_ || param1)
                                             {
                                                addr176:
                                                §§push(!§§pop());
                                                if(_loc9_ || this)
                                                {
                                                   addr195:
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc8_ && this))
                                                      {
                                                         addr203:
                                                         _loc6_ = this.§&W§;
                                                         if(!(_loc8_ && param3))
                                                         {
                                                            _loc6_.redMultiplier = §3§.§0!k§(_loc5_) / 255;
                                                            while(true)
                                                            {
                                                               _loc6_.greenMultiplier = §3§.§0!T§(_loc5_) / 255;
                                                            }
                                                            addr260:
                                                         }
                                                         loop8:
                                                         while(true)
                                                         {
                                                            addr225:
                                                            while(true)
                                                            {
                                                               _loc6_.blueMultiplier = §3§.§2&§(_loc5_) / 255;
                                                               continue loop8;
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr264);
                                                   }
                                                   §§goto(addr261);
                                                }
                                             }
                                             §§goto(addr195);
                                          }
                                          §§goto(addr203);
                                       }
                                       §§goto(addr176);
                                    }
                                 }
                                 §§goto(addr195);
                              }
                              §§goto(addr264);
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr376);
         }
         §§goto(addr52);
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            §§push(Boolean(this.§"B§));
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§"B§.width == this.§3!A§);
                     while(true)
                     {
                        §§push(!§§pop());
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop4:
                           while(true)
                           {
                              §§push(§§pop());
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          addr301:
                                          while(true)
                                          {
                                             §§push(this.§"B§.height == this.§[!G§);
                                             if(!_loc5_)
                                             {
                                                if(_loc5_ && param1)
                                                {
                                                   break;
                                                }
                                                §§push(!§§pop());
                                             }
                                             addr260:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       loop11:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc5_ && this))
                                             {
                                                this.§"B§.dispose();
                                             }
                                             while(true)
                                             {
                                                this.§"B§ = null;
                                                while(!_loc5_)
                                                {
                                                   loop15:
                                                   while(true)
                                                   {
                                                      §§push(this.§"B§ == null);
                                                      while(!(_loc5_ && this))
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        loop21:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§3!A§);
                                                                           loop22:
                                                                           while(true)
                                                                           {
                                                                              §§push(0);
                                                                              addr151:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() > §§pop());
                                                                                 if(_loc4_ || param1)
                                                                                 {
                                                                                    continue loop11;
                                                                                 }
                                                                                 addr193:
                                                                                 while(_loc4_)
                                                                                 {
                                                                                    §§pop();
                                                                                    while(_loc4_ || param3)
                                                                                    {
                                                                                       continue loop22;
                                                                                       if(_loc4_ || this)
                                                                                       {
                                                                                          if(!(_loc5_ && param2))
                                                                                          {
                                                                                             addr24:
                                                                                             return;
                                                                                          }
                                                                                          continue loop21;
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop15;
                                                                                       §§goto(addr196);
                                                                                    }
                                                                                    addr196:
                                                                                 }
                                                                                 continue loop20;
                                                                              }
                                                                              continue loop11;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr174);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      continue loop4;
                                                   }
                                                   while(_loc4_ || param2)
                                                   {
                                                      if(_loc4_ || param2)
                                                      {
                                                         §§goto(addr28);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr301);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          else
                                          {
                                             this.§"B§.fillRect(this.§"B§.rect,4278190080 | param2);
                                          }
                                          §§goto(addr235);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr204);
            }
         }
         §§goto(addr62);
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(this.§"B§)
            {
               if(_loc3_ || _loc2_)
               {
                  addr45:
                  this.§"B§.unlock();
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param3)
         {
            this.§3!A§ = param1;
            while(true)
            {
               this.§[!G§ = param2;
               loop2:
               while(_loc5_ || param2)
               {
                  this.§=2§ = param4;
                  if(_loc5_)
                  {
                     addr54:
                     if(!(_loc5_ || param2))
                     {
                        while(true)
                        {
                           this.§>b§ = param3;
                           continue loop2;
                           §§goto(addr54);
                        }
                        addr78:
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr78);
      }
   }
}
