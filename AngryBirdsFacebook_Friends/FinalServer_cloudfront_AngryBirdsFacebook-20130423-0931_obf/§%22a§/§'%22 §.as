package §"a§
{
   import §!=§.§6$§;
   import §'!6§.§5T§;
   import §<5§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §'" § extends §>w§
   {
       
      
      private var §%3§:BitmapData;
      
      private var §[!Y§:int = 0;
      
      private var §>h§:int = 0;
      
      private var §["P§:Number = 1.0;
      
      private var §="0§:Number = 1.0;
      
      private var §>?§:BitmapData;
      
      private var §6!$§:Vector.<Number>;
      
      private var §;!r§:Matrix;
      
      private var §?!G§:ColorTransform;
      
      public function §'" §()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§6!$§ = new Vector.<Number>(16);
            loop0:
            while(true)
            {
               this.§;!r§ = new Matrix();
               while(true)
               {
                  this.§?!G§ = new ColorTransform();
                  loop2:
                  while(true)
                  {
                     super();
                     loop3:
                     while(_loc1_)
                     {
                        while(true)
                        {
                           this.§>?§ = new BitmapData(1,1,false);
                           if(!_loc2_)
                           {
                              continue loop2;
                           }
                           continue loop3;
                        }
                        return;
                     }
                     continue loop0;
                  }
                  if(!(_loc1_ || _loc1_))
                  {
                     continue;
                  }
                  §§goto(addr72);
               }
            }
         }
         §§goto(addr78);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§%3§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.dispose();
            loop0:
            for(; this.§>?§; while(_loc1_ || _loc2_)
            {
               this.§>?§ = null;
               if(_loc2_ && this)
               {
                  continue;
               }
               §§goto(addr54);
            })
            {
               do
               {
                  this.§>?§.dispose();
                  continue loop0;
               }
               while(_loc2_ && this);
               
            }
            §§goto(addr19);
         }
         addr19:
      }
      
      override public function batchQuad(param1:§5T§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = uint(0);
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(_loc9_ || param1)
         {
            if(this.§%3§)
            {
               if(!(_loc8_ && param1))
               {
                  §<"S§.copyRawDataTo(this.§6!$§,0);
               }
               loop0:
               while(true)
               {
                  this.§;!r§.setTo(this.§6!$§[0],this.§6!$§[1],this.§6!$§[4],this.§6!$§[5],this.§6!$§[12],this.§6!$§[13]);
                  while(true)
                  {
                     this.§;!r§.scale(this.§["P§,this.§="0§);
                     continue loop0;
                     loop4:
                     while(!(_loc8_ && param1))
                     {
                        §§push(param2);
                        if(_loc9_)
                        {
                           §§push(§§pop() * param1.alpha);
                           if(_loc9_ || param2)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        param2 = §§pop();
                        if(_loc8_ && this)
                        {
                           continue;
                        }
                        if(_loc8_ && param1)
                        {
                           continue loop0;
                        }
                        while(false)
                        {
                           while(true)
                           {
                              §§push(param1.color);
                              if(!_loc8_)
                              {
                                 §§push(uint(§§pop()));
                              }
                              _loc5_ = §§pop();
                              continue loop4;
                           }
                           continue loop0;
                        }
                        _loc6_ = null;
                        if(!(_loc8_ && param1))
                        {
                           §§push(Boolean(param3));
                           if(_loc9_ || this)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc8_ && param3))
                                 {
                                    addr180:
                                    §§pop();
                                    if(!_loc8_)
                                    {
                                       §§push(_loc5_ == 16777215);
                                       if(_loc9_)
                                       {
                                          addr189:
                                          addr188:
                                          if(!§§pop())
                                          {
                                             if(!(_loc8_ && param1))
                                             {
                                                addr197:
                                                (_loc6_ = this.§?!G§).redMultiplier = §6$§.§3!6§(_loc5_) / 255;
                                                if(!_loc8_)
                                                {
                                                   _loc6_.greenMultiplier = §6$§.§5"B§(_loc5_) / 255;
                                                }
                                                loop11:
                                                while(true)
                                                {
                                                   loop12:
                                                   while(true)
                                                   {
                                                      _loc6_.blueMultiplier = §6$§.§="=§(_loc5_) / 255;
                                                      while(!_loc8_)
                                                      {
                                                         _loc6_.alphaMultiplier = 1;
                                                         if(_loc9_)
                                                         {
                                                            if(true)
                                                            {
                                                               break loop12;
                                                            }
                                                            continue loop12;
                                                         }
                                                      }
                                                      continue loop11;
                                                   }
                                                }
                                             }
                                             addr241:
                                             (_loc6_ = this.§?!G§).alphaMultiplier = param2;
                                             if((_loc7_ = param1.clippedBitmapData) == null)
                                             {
                                                if(!_loc8_)
                                                {
                                                   this.§>?§.setPixel(0,0,param1.color);
                                                   if(_loc9_)
                                                   {
                                                      _loc7_ = this.§>?§;
                                                      if(_loc9_)
                                                      {
                                                         this.§;!r§.a *= param1.§3"W§;
                                                         loop6:
                                                         while(true)
                                                         {
                                                            this.§;!r§.b *= param1.§3"W§;
                                                            loop7:
                                                            while(true)
                                                            {
                                                               addr299:
                                                               while(true)
                                                               {
                                                                  this.§;!r§.c *= param1.§8!h§;
                                                                  continue loop7;
                                                               }
                                                               continue loop6;
                                                            }
                                                         }
                                                      }
                                                      while(false)
                                                      {
                                                         §§goto(addr299);
                                                      }
                                                      addr348:
                                                      this.§%3§.draw(_loc7_,this.§;!r§,_loc6_,null,null,param1.highQuality);
                                                   }
                                                }
                                                §§goto(addr359);
                                             }
                                             §§goto(addr348);
                                          }
                                          if(param2 != 1)
                                          {
                                          }
                                          §§goto(addr241);
                                       }
                                       §§goto(addr189);
                                    }
                                    §§goto(addr241);
                                 }
                                 §§goto(addr188);
                              }
                              §§goto(addr189);
                           }
                           §§goto(addr180);
                        }
                        §§goto(addr197);
                     }
                  }
               }
            }
            addr359:
            return;
         }
         §§goto(addr64);
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(this.§%3§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§%3§.width == this.§[!Y§);
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
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 addr234:
                                 while(true)
                                 {
                                    §§push(this.§%3§.height == this.§>h§);
                                    addr205:
                                    while(!(_loc4_ && this))
                                    {
                                       §§push(!§§pop());
                                    }
                                    continue loop1;
                                 }
                              }
                              addr233:
                           }
                           while(true)
                           {
                              loop8:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    this.§%3§.fillRect(this.§%3§.rect,4278190080 | param2);
                                    while(true)
                                    {
                                       addr139:
                                       loop13:
                                       while(true)
                                       {
                                          §§push(this.§%3§ == null);
                                          loop14:
                                          for(; !_loc4_; while(!(_loc4_ && param2))
                                          {
                                             §§goto(addr125);
                                          })
                                          {
                                             §§push(§§pop());
                                             while(!_loc4_)
                                             {
                                                if(§§pop())
                                                {
                                                   continue loop8;
                                                }
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc5_ || this))
                                                   {
                                                      break;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      loop22:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         loop23:
                                                         while(!_loc4_)
                                                         {
                                                            addr138:
                                                            §§push(this.§>h§);
                                                            if(_loc5_ || param1)
                                                            {
                                                               §§push(0);
                                                               if(_loc5_)
                                                               {
                                                                  §§push(§§pop() > §§pop());
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(_loc5_ || param2)
                                                                     {
                                                                        addr64:
                                                                        if(!(_loc4_ && param2))
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              loop24:
                                                                              while(§§pop())
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       continue loop23;
                                                                                    }
                                                                                    this.§%3§ = new BitmapData(this.§[!Y§,this.§>h§,true,4278190080 | param2);
                                                                                 }
                                                                                 loop27:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc5_ || param1)
                                                                                    {
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          while(_loc5_)
                                                                                          {
                                                                                             this.§%3§.dispose();
                                                                                          }
                                                                                          continue loop0;
                                                                                          addr215:
                                                                                       }
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr234);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       this.§%3§ = null;
                                                                                       addr187:
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop13;
                                                                                          addr162:
                                                                                          if(_loc4_ && this)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§push(this.§[!Y§);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(0);
                                                                                             addr117:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() > §§pop());
                                                                                                continue loop14;
                                                                                             }
                                                                                             §§goto(addr138);
                                                                                          }
                                                                                       }
                                                                                       continue loop27;
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    break loop24;
                                                                                    §§goto(addr100);
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(this.§%3§)
                                                                                 {
                                                                                    if(!(_loc4_ && param3))
                                                                                    {
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          this.§%3§.lock();
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr91);
                                                                                       }
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 break;
                                                                                 §§goto(addr112);
                                                                              }
                                                                              return;
                                                                              addr73:
                                                                           }
                                                                           continue loop2;
                                                                        }
                                                                        continue loop8;
                                                                     }
                                                                     continue loop14;
                                                                  }
                                                                  continue loop22;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr116);
                                                            }
                                                            §§goto(addr117);
                                                         }
                                                         addr160:
                                                         while(true)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               continue loop13;
                                                            }
                                                            §§goto(addr162);
                                                         }
                                                         §§goto(addr187);
                                                      }
                                                   }
                                                   §§goto(addr73);
                                                }
                                             }
                                             continue loop3;
                                          }
                                          §§goto(addr233);
                                       }
                                    }
                                 }
                                 §§goto(addr215);
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr139);
         }
         §§goto(addr112);
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§%3§)
            {
               if(_loc2_ || _loc3_)
               {
                  addr28:
                  this.§%3§.unlock();
               }
            }
            return;
         }
         §§goto(addr28);
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
         {
            this.§[!Y§ = param1;
            do
            {
               this.§>h§ = param2;
               do
               {
                  this.§["P§ = param3;
                  do
                  {
                     this.§="0§ = param4;
                  }
                  while(_loc5_);
                  
               }
               while(_loc5_ && param1);
               
            }
            while(_loc5_);
            
         }
      }
   }
}
