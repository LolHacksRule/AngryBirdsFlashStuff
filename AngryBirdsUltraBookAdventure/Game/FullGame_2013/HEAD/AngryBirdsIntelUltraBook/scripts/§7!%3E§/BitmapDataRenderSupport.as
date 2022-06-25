package §7!>§
{
   import §#!,§.§6!Y§;
   import §'7§.§!,§;
   import §6!J§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class BitmapDataRenderSupport extends RenderSupport
   {
       
      
      private var §!!d§:BitmapData;
      
      private var §#!;§:int = 0;
      
      private var §?#§:int = 0;
      
      private var §=X§:Number = 1.0;
      
      private var §<!J§:Number = 1.0;
      
      private var §0!f§:BitmapData;
      
      private var §3!C§:Vector.<Number>;
      
      private var §&4§:Matrix;
      
      private var § S§:ColorTransform;
      
      public function BitmapDataRenderSupport()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§3!C§ = new Vector.<Number>(16);
            while(true)
            {
               this.§&4§ = new Matrix();
            }
            addr95:
         }
         do
         {
            this.§ S§ = new ColorTransform();
            loop2:
            do
            {
               super();
               while(!_loc2_)
               {
                  this.§0!f§ = new BitmapData(1,1,false);
                  if(_loc1_ || this)
                  {
                     continue loop2;
                  }
               }
               §§goto(addr95);
            }
            while(!(_loc1_ || _loc2_));
            
         }
         while(!_loc1_);
         
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§!!d§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.dispose();
            while(this.§0!f§)
            {
               do
               {
                  this.§0!f§.dispose();
                  do
                  {
                     this.§0!f§ = null;
                  }
                  while(_loc1_);
                  
               }
               while(_loc1_);
               
               if(_loc2_ || _loc1_)
               {
                  addr59:
                  break;
               }
            }
            return;
         }
         §§goto(addr59);
      }
      
      override public function batchQuad(param1:§6!Y§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = uint(0);
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(!(_loc8_ && param2))
         {
            if(this.§!!d§)
            {
               if(!_loc8_)
               {
                  §@-§.copyRawDataTo(this.§3!C§,0);
               }
               while(true)
               {
                  this.§&4§.setTo(this.§3!C§[0],this.§3!C§[1],this.§3!C§[4],this.§3!C§[5],this.§3!C§[12],this.§3!C§[13]);
                  while(_loc9_)
                  {
                     this.§&4§.scale(this.§=X§,this.§<!J§);
                     loop2:
                     while(true)
                     {
                        addr68:
                        while(true)
                        {
                           §§push(param1.color);
                           if(_loc9_ || param3)
                           {
                              §§push(uint(§§pop()));
                           }
                           _loc5_ = §§pop();
                           do
                           {
                              §§push(param2);
                              if(_loc9_)
                              {
                                 §§push(§§pop() * param1.alpha);
                                 if(!_loc9_)
                                 {
                                    continue;
                                 }
                              }
                           }
                           while(param2 = §§pop(), !(_loc9_ || param2));
                           
                           continue loop2;
                        }
                     }
                     if(_loc8_ && param2)
                     {
                        continue;
                     }
                     while(false)
                     {
                        §§goto(addr68);
                     }
                     _loc6_ = null;
                     if(_loc9_)
                     {
                        §§push(Boolean(param3));
                        if(!(_loc8_ && this))
                        {
                           §§push(§§pop());
                           if(!(_loc8_ && param2))
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(§§pop())
                           {
                              if(_loc9_)
                              {
                                 §§pop();
                                 addr249:
                                 if(!_loc8_)
                                 {
                                    §§push(_loc5_ == 16777215);
                                    if(!_loc8_)
                                    {
                                       addr181:
                                       §§push(!§§pop());
                                       if(_loc9_)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                    }
                                 }
                                 _loc6_ = this.§ S§;
                                 if(!_loc8_)
                                 {
                                    _loc6_.alphaMultiplier = param2;
                                 }
                                 _loc7_ = param1.clippedBitmapData;
                                 if(!_loc8_)
                                 {
                                    if(_loc7_ == null)
                                    {
                                       if(_loc9_)
                                       {
                                          this.§0!f§.setPixel(0,0,param1.color);
                                          if(_loc9_)
                                          {
                                             addr279:
                                             _loc7_ = this.§0!f§;
                                             if(_loc9_ || this)
                                             {
                                                this.§&4§.a *= param1.§6!=§;
                                                while(true)
                                                {
                                                   this.§&4§.b *= param1.§6!=§;
                                                   loop12:
                                                   for(; _loc9_ || this; loop14:
                                                   while(!(_loc8_ && this))
                                                   {
                                                      while(true)
                                                      {
                                                         this.§&4§.d *= param1.§?s§;
                                                         if(_loc8_)
                                                         {
                                                            continue loop14;
                                                         }
                                                         if(true)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr305);
                                                      }
                                                      this.§!!d§.draw(_loc7_,this.§&4§,_loc6_,null,null,param1.highQuality);
                                                      return;
                                                   })
                                                   {
                                                      while(true)
                                                      {
                                                         this.§&4§.c *= param1.§?s§;
                                                         continue loop12;
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr322);
                                          }
                                       }
                                       §§goto(addr373);
                                    }
                                    §§goto(addr361);
                                 }
                                 §§goto(addr279);
                              }
                           }
                           if(§§pop())
                           {
                              if(_loc9_)
                              {
                                 _loc6_ = this.§ S§;
                                 if(_loc9_)
                                 {
                                    _loc6_.redMultiplier = §!,§.§0,§(_loc5_) / 255;
                                    while(true)
                                    {
                                       _loc6_.greenMultiplier = §!,§.§-[§(_loc5_) / 255;
                                       loop7:
                                       for(; _loc9_; while(!(_loc8_ && param1))
                                       {
                                       })
                                       {
                                          while(true)
                                          {
                                             _loc6_.blueMultiplier = §!,§.§4A§(_loc5_) / 255;
                                             continue loop7;
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    _loc6_.alphaMultiplier = 1;
                                    if(_loc9_ || this)
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                       §§goto(addr208);
                                    }
                                    §§goto(addr217);
                                 }
                              }
                              §§goto(addr249);
                           }
                           if(param2 != 1)
                           {
                           }
                           §§goto(addr249);
                        }
                        §§goto(addr181);
                     }
                     §§goto(addr249);
                  }
               }
            }
            §§goto(addr361);
         }
         §§goto(addr66);
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(Boolean(this.§!!d§));
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§!!d§.width == this.§#!;§);
                     loop2:
                     while(true)
                     {
                        §§push(!§§pop());
                        loop3:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop4:
                           while(true)
                           {
                              §§push(§§pop());
                              loop5:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 loop6:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          addr306:
                                          while(true)
                                          {
                                             §§push(this.§!!d§.height == this.§?#§);
                                             addr264:
                                             while(true)
                                             {
                                                §§push(!§§pop());
                                                addr265:
                                                while(!(_loc5_ && this))
                                                {
                                                   §§push(Boolean(§§pop()));
                                                }
                                                continue loop3;
                                             }
                                          }
                                       }
                                       addr305:
                                    }
                                    while(true)
                                    {
                                       loop12:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             this.§!!d§.fillRect(this.§!!d§.rect,4278190080 | param2);
                                             loop13:
                                             while(true)
                                             {
                                                if(_loc4_)
                                                {
                                                   if(_loc4_ || param3)
                                                   {
                                                      loop17:
                                                      while(true)
                                                      {
                                                         §§push(this.§!!d§ == null);
                                                         loop18:
                                                         while(!(_loc5_ && param3))
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            if(!(_loc5_ && param1))
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!(_loc5_ && param1))
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                                  loop19:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        addr223:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           addr224:
                                                                           while(_loc4_)
                                                                           {
                                                                              §§push(this.§#!;§);
                                                                              while(true)
                                                                              {
                                                                                 §§push(0);
                                                                                 addr133:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() > §§pop());
                                                                                    addr134:
                                                                                    while(!(_loc5_ && param2))
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          continue loop12;
                                                                                       }
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          continue loop2;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr305);
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop13;
                                                                        }
                                                                        addr223:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc4_ || param3)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(Boolean(§§pop()));
                                                                        }
                                                                        if(!_loc4_)
                                                                        {
                                                                           continue loop19;
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        loop23:
                                                                        while(true)
                                                                        {
                                                                           loop24:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       this.§!!d§ = new BitmapData(this.§#!;§,this.§?#§,true,4278190080 | param2);
                                                                                       loop25:
                                                                                       for(; !(_loc5_ && param1); if(_loc5_ && param3)
                                                                                       {
                                                                                          continue;
                                                                                       },§§goto(addr19))
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Boolean(this.§!!d§));
                                                                                             if(!(_loc5_ && param3))
                                                                                             {
                                                                                                if(_loc5_ && param3)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      return;
                                                                                                   }
                                                                                                   addr19:
                                                                                                   if(_loc4_ || param2)
                                                                                                   {
                                                                                                      if(!(_loc4_ || param3))
                                                                                                      {
                                                                                                         break loop24;
                                                                                                      }
                                                                                                      this.§!!d§.lock();
                                                                                                   }
                                                                                                   continue loop25;
                                                                                                }
                                                                                                continue loop18;
                                                                                             }
                                                                                             continue loop24;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                continue loop12;
                                                                                             }
                                                                                             if(_loc4_ || param1)
                                                                                             {
                                                                                                if(!(_loc5_ && param1))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§goto(addr223);
                                                                                             }
                                                                                             §§goto(addr134);
                                                                                          }
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             continue loop23;
                                                                                          }
                                                                                          §§goto(addr265);
                                                                                       }
                                                                                       §§goto(addr224);
                                                                                       addr121:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(_loc4_ || param3)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§?#§);
                                                                                             if(_loc4_ || param1)
                                                                                             {
                                                                                                §§push(0);
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   §§goto(addr84);
                                                                                                   §§push(§§pop() > §§pop());
                                                                                                }
                                                                                                §§goto(addr133);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       loop16:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§!!d§ = null;
                                                                                          addr254:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                continue loop17;
                                                                                             }
                                                                                             addr285:
                                                                                             while(true)
                                                                                             {
                                                                                                this.§!!d§.dispose();
                                                                                                continue loop16;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr181:
                                                                                    }
                                                                                    §§goto(addr132);
                                                                                 }
                                                                                 §§goto(addr121);
                                                                              }
                                                                              §§goto(addr23);
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                               }
                                                               §§goto(addr264);
                                                            }
                                                            §§goto(addr223);
                                                         }
                                                         continue loop4;
                                                      }
                                                      addr189:
                                                   }
                                                   break;
                                                }
                                                §§goto(addr254);
                                             }
                                             §§goto(addr306);
                                          }
                                          §§goto(addr285);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr189);
            }
         }
         §§goto(addr188);
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§!!d§)
            {
               if(!(_loc2_ && this))
               {
                  this.§!!d§.unlock();
               }
            }
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param1))
         {
            this.§#!;§ = param1;
            while(true)
            {
               this.§?#§ = param2;
               while(!_loc5_)
               {
                  this.§=X§ = param3;
                  while(_loc6_ || param1)
                  {
                     this.§<!J§ = param4;
                     if(_loc6_ || param1)
                     {
                        return;
                        addr60:
                     }
                  }
               }
            }
         }
         §§goto(addr60);
      }
   }
}
