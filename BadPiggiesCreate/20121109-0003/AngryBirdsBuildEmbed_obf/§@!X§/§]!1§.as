package §@!X§
{
   import §-!`§.§8!p§;
   import §0!-§.Texture;
   import §6x§.§!!Y§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §]!1§ extends §"W§
   {
       
      
      private var §4a§:BitmapData;
      
      private var §<!e§:int = 0;
      
      private var §<g§:int = 0;
      
      private var §^!'§:Number = 1.0;
      
      private var §8!?§:Number = 1.0;
      
      private var §&!?§:BitmapData;
      
      private var §^!h§:Vector.<Number>;
      
      private var §75§:Matrix;
      
      private var §<-§:ColorTransform;
      
      public function §]!1§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§^!h§ = new Vector.<Number>(16);
            if(_loc2_ || _loc1_)
            {
               this.§75§ = new Matrix();
               if(_loc2_)
               {
                  addr64:
                  this.§<-§ = new ColorTransform();
                  if(_loc2_)
                  {
                     §§goto(addr70);
                  }
                  §§goto(addr74);
               }
            }
            addr70:
            super();
            if(_loc2_)
            {
               addr74:
               this.§&!?§ = new BitmapData(1,1,false);
            }
            return;
         }
         §§goto(addr64);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§4a§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.dispose();
            if(_loc1_ || _loc1_)
            {
               if(this.§&!?§)
               {
                  if(_loc1_ || _loc2_)
                  {
                     this.§&!?§.dispose();
                     if(_loc2_ && _loc1_)
                     {
                     }
                     §§goto(addr70);
                  }
               }
               §§goto(addr70);
            }
            this.§&!?§ = null;
         }
         addr70:
      }
      
      override public function batchQuad(param1:§8!p§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:* = uint(0);
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(!_loc9_)
         {
            if(this.§4a§)
            {
               §]N§.copyRawDataTo(this.§^!h§,0);
               this.§75§.setTo(this.§^!h§[0],this.§^!h§[1],this.§^!h§[4],this.§^!h§[5],this.§^!h§[12],this.§^!h§[13]);
               this.§75§.scale(this.§^!'§,this.§8!?§);
               addr69:
               §§push(param1.color);
               if(!(_loc9_ && param2))
               {
                  §§push(uint(§§pop()));
               }
               _loc5_ = §§pop();
               if(_loc8_ || param3)
               {
                  §§push(param2);
                  if(_loc8_)
                  {
                     §§push(§§pop() * param1.alpha);
                     if(!_loc9_)
                     {
                        addr95:
                        §§push(Number(§§pop()));
                     }
                     param2 = §§pop();
                     addr97:
                     _loc6_ = null;
                     if(!_loc9_)
                     {
                        §§push(Boolean(param3));
                        if(!_loc9_)
                        {
                           if(§§pop())
                           {
                              if(!(_loc9_ && this))
                              {
                                 §§pop();
                                 if(_loc8_ || this)
                                 {
                                    §§push(_loc5_ == 16777215);
                                    if(!_loc8_)
                                    {
                                    }
                                    addr129:
                                    if(§§pop())
                                    {
                                       if(!(_loc9_ && this))
                                       {
                                          addr147:
                                          (_loc6_ = this.§<-§).redMultiplier = §!!Y§.§&!;§(_loc5_) / 255;
                                          if(!(_loc9_ && this))
                                          {
                                             _loc6_.greenMultiplier = §!!Y§.§?!^§(_loc5_) / 255;
                                             if(!(_loc9_ && this))
                                             {
                                                _loc6_.blueMultiplier = §!!Y§.§3]§(_loc5_) / 255;
                                                if(_loc9_)
                                                {
                                                }
                                                addr191:
                                                if(param2 != 1)
                                                {
                                                   addr194:
                                                   (_loc6_ = this.§<-§).alphaMultiplier = param2;
                                                }
                                                if((_loc7_ = param1.clippedBitmapData) == null)
                                                {
                                                   if(!(_loc9_ && param3))
                                                   {
                                                      this.§&!?§.setPixel(0,0,param1.color);
                                                      if(_loc9_)
                                                      {
                                                      }
                                                      §§goto(addr303);
                                                   }
                                                   _loc7_ = this.§&!?§;
                                                   if(_loc8_ || param1)
                                                   {
                                                      this.§75§.a *= param1.initialWidth;
                                                      if(_loc8_)
                                                      {
                                                         §§goto(addr246);
                                                      }
                                                      §§goto(addr257);
                                                   }
                                                   addr246:
                                                   this.§75§.b *= param1.initialWidth;
                                                   if(!_loc9_)
                                                   {
                                                      this.§75§.c *= param1.initialHeight;
                                                      addr257:
                                                      if(_loc9_ && param2)
                                                      {
                                                      }
                                                      §§goto(addr292);
                                                   }
                                                   this.§75§.d *= param1.initialHeight;
                                                   addr292:
                                                   this.§4a§.draw(_loc7_,this.§75§,_loc6_,null,null,param1.highQuality);
                                                   §§goto(addr303);
                                                }
                                                §§goto(addr257);
                                             }
                                             _loc6_.alphaMultiplier = 1;
                                          }
                                          §§goto(addr191);
                                       }
                                       §§goto(addr194);
                                    }
                                    §§goto(addr191);
                                 }
                                 §§goto(addr147);
                              }
                              §§push(!§§pop());
                           }
                        }
                        §§goto(addr129);
                     }
                     §§goto(addr147);
                  }
                  §§goto(addr95);
               }
               §§goto(addr97);
            }
            addr303:
            return;
         }
         §§goto(addr69);
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(this.§4a§)
            {
               if(_loc4_ || param2)
               {
                  §§push(this.§4a§.width != this.§<!e§);
                  §§push(this.§4a§.width != this.§<!e§);
                  if(_loc4_)
                  {
                     if(!§§pop())
                     {
                        if(_loc4_ || param2)
                        {
                           §§pop();
                           addr54:
                           if(this.§4a§.height != this.§<g§)
                           {
                              if(!(_loc5_ && param1))
                              {
                                 this.§4a§.dispose();
                                 if(_loc4_ || this)
                                 {
                                    this.§4a§ = null;
                                    addr95:
                                    §§push(this.§4a§ == null);
                                    §§push(this.§4a§ == null);
                                    if(_loc4_ || param1)
                                    {
                                       addr107:
                                       if(§§pop())
                                       {
                                          if(!_loc5_)
                                          {
                                             §§pop();
                                             addr111:
                                             §§push(this.§<!e§);
                                             if(_loc4_)
                                             {
                                                §§push(0);
                                                if(_loc4_)
                                                {
                                                   addr119:
                                                   §§push(§§pop() > §§pop());
                                                   if(§§pop() > §§pop())
                                                   {
                                                      if(!(_loc5_ && param2))
                                                      {
                                                         §§pop();
                                                         §§goto(addr170);
                                                      }
                                                   }
                                                   §§goto(addr145);
                                                }
                                                addr145:
                                                if(§§pop())
                                                {
                                                   if(_loc4_)
                                                   {
                                                      this.§4a§ = new BitmapData(this.§<!e§,this.§<g§,true,4278190080 | param2);
                                                   }
                                                }
                                                if(this.§4a§)
                                                {
                                                   if(!(_loc5_ && param2))
                                                   {
                                                      §§goto(addr170);
                                                   }
                                                }
                                                addr170:
                                                if(_loc4_)
                                                {
                                                   addr133:
                                                   §§push(this.§<g§);
                                                   §§push(0);
                                                }
                                                this.§4a§.lock();
                                                return;
                                                §§push(§§pop() > §§pop());
                                             }
                                             §§goto(addr133);
                                          }
                                          §§goto(addr145);
                                       }
                                    }
                                    §§goto(addr119);
                                 }
                                 §§goto(addr111);
                              }
                              §§goto(addr170);
                           }
                           else
                           {
                              this.§4a§.fillRect(this.§4a§.rect,4278190080 | param2);
                              §§goto(addr95);
                           }
                        }
                        §§goto(addr145);
                     }
                     §§goto(addr54);
                  }
                  §§goto(addr107);
               }
               §§goto(addr54);
            }
            §§goto(addr95);
         }
         §§goto(addr54);
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(this.§4a§)
            {
               if(!(_loc3_ && param1))
               {
                  this.§4a§.unlock();
               }
            }
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§<!e§ = param1;
            if(!(_loc6_ && param1))
            {
               this.§<g§ = param2;
               if(_loc5_)
               {
                  addr43:
                  this.§^!'§ = param3;
                  if(!(_loc6_ && param2))
                  {
                     this.§8!?§ = param4;
                  }
               }
            }
            return;
         }
         §§goto(addr43);
      }
   }
}
