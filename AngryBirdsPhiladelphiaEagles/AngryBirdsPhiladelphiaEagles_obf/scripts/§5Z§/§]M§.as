package §5Z§
{
   import § N§.§6!O§;
   import §+§.§?g§;
   import §8z§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §]M§ extends §4]§
   {
       
      
      private var §#!G§:BitmapData;
      
      private var §1!-§:int = 0;
      
      private var §^6§:int = 0;
      
      private var §3%§:Number = 1.0;
      
      private var §2!E§:Number = 1.0;
      
      private var §&D§:BitmapData;
      
      private var §+x§:Vector.<Number>;
      
      private var §1!M§:Matrix;
      
      private var §@d§:ColorTransform;
      
      public function §]M§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§+x§ = new Vector.<Number>(16);
            loop0:
            while(true)
            {
               this.§1!M§ = new Matrix();
               loop1:
               do
               {
                  this.§@d§ = new ColorTransform();
                  while(true)
                  {
                     super();
                     while(!_loc2_)
                     {
                        if(!_loc2_)
                        {
                           this.§&D§ = new BitmapData(1,1,false);
                           if(_loc1_ || this)
                           {
                              continue loop1;
                           }
                           continue;
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
               while(_loc2_ && this);
               
            }
         }
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§#!G§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.dispose();
            while(this.§&D§)
            {
               if(_loc2_ && _loc1_)
               {
                  do
                  {
                     this.§&D§ = null;
                  }
                  while(_loc2_ && _loc2_);
                  
               }
               else
               {
                  addr81:
               }
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
            }
            return;
         }
         this.§&D§.dispose();
         §§goto(addr81);
      }
      
      override public function batchQuad(param1:§6!O§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:* = uint(0);
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§#!G§)
         {
            if(!(_loc9_ && param2))
            {
               §4p§.copyRawDataTo(this.§+x§,0);
            }
            while(true)
            {
               this.§1!M§.setTo(this.§+x§[0],this.§+x§[1],this.§+x§[4],this.§+x§[5],this.§+x§[12],this.§+x§[13]);
               while(_loc8_)
               {
                  this.§1!M§.scale(this.§3%§,this.§2!E§);
                  if(!_loc8_)
                  {
                     continue;
                  }
                  do
                  {
                     §§push(param1.color);
                     if(!_loc9_)
                     {
                        §§push(uint(§§pop()));
                     }
                     _loc5_ = §§pop();
                     §§push(param2);
                     if(_loc8_)
                     {
                        §§push(§§pop() * param1.alpha);
                        if(!_loc8_)
                        {
                           continue;
                        }
                     }
                  }
                  while(param2 = §§pop(), false);
                  
                  _loc6_ = null;
                  if(_loc8_ || this)
                  {
                     §§push(Boolean(param3));
                     if(_loc8_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc9_ && param1))
                           {
                              §§pop();
                              if(!_loc9_)
                              {
                                 addr131:
                                 §§push(_loc5_ == 16777215);
                                 if(!_loc9_)
                                 {
                                    addr137:
                                    if(!§§pop())
                                    {
                                       if(_loc8_ || this)
                                       {
                                          (_loc6_ = this.§@d§).redMultiplier = §?g§.§"!2§(_loc5_) / 255;
                                          if(_loc8_)
                                          {
                                             _loc6_.greenMultiplier = §?g§.§2t§(_loc5_) / 255;
                                             while(true)
                                             {
                                                loop8:
                                                while(true)
                                                {
                                                   _loc6_.blueMultiplier = §?g§.§7p§(_loc5_) / 255;
                                                   do
                                                   {
                                                      _loc6_.alphaMultiplier = 1;
                                                   }
                                                   while(!_loc8_);
                                                   
                                                   if(_loc9_)
                                                   {
                                                      break;
                                                   }
                                                   while(false)
                                                   {
                                                      continue loop8;
                                                   }
                                                   if(param2 != 1)
                                                   {
                                                      addr199:
                                                      (_loc6_ = this.§@d§).alphaMultiplier = param2;
                                                   }
                                                   if((_loc7_ = param1.clippedBitmapData) == null)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         this.§&D§.setPixel(0,0,param1.color);
                                                         if(_loc8_)
                                                         {
                                                            _loc7_ = this.§&D§;
                                                            if(_loc8_)
                                                            {
                                                               this.§1!M§.a *= param1.§?+§;
                                                               while(true)
                                                               {
                                                                  this.§1!M§.b *= param1.§?+§;
                                                               }
                                                               addr295:
                                                            }
                                                            loop4:
                                                            while(true)
                                                            {
                                                               addr252:
                                                               addr296:
                                                               while(true)
                                                               {
                                                                  this.§1!M§.c *= param1.§>!3§;
                                                                  while(!_loc9_)
                                                                  {
                                                                     this.§1!M§.d *= param1.§>!3§;
                                                                     if(_loc8_)
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                  }
                                                                  §§goto(addr295);
                                                               }
                                                               this.§#!G§.draw(_loc7_,this.§1!M§,_loc6_,null,null,param1.highQuality);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr307);
                                                   }
                                                   §§goto(addr296);
                                                }
                                             }
                                          }
                                          §§goto(addr177);
                                       }
                                       §§goto(addr199);
                                    }
                                    §§goto(addr196);
                                 }
                                 §§goto(addr137);
                              }
                              §§goto(addr199);
                           }
                        }
                     }
                     §§goto(addr137);
                  }
                  §§goto(addr131);
               }
            }
         }
         addr307:
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(this.§#!G§)
            {
               §§push(this.§#!G§.width == this.§1!-§);
               loop0:
               while(true)
               {
                  §§push(!§§pop());
                  loop1:
                  while(true)
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr223:
                              while(true)
                              {
                                 §§push(this.§#!G§.height != this.§^6§);
                              }
                           }
                           addr222:
                        }
                        while(true)
                        {
                           if(!§§pop())
                           {
                              this.§#!G§.fillRect(this.§#!G§.rect,4278190080 | param2);
                              loop6:
                              while(true)
                              {
                                 addr127:
                                 loop10:
                                 while(true)
                                 {
                                    §§push(this.§#!G§ == null);
                                    if(_loc5_ || param1)
                                    {
                                       §§push(§§pop());
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             while(_loc5_ || param1)
                                             {
                                                continue loop0;
                                             }
                                             continue loop1;
                                             addr141:
                                          }
                                          loop15:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(_loc4_ && param3)
                                             {
                                                break;
                                             }
                                             if(_loc5_ || param3)
                                             {
                                                if(§§pop())
                                                {
                                                   loop16:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      §§push(this.§^6§);
                                                      if(_loc5_ || param3)
                                                      {
                                                         §§push(0);
                                                         if(_loc5_ || param3)
                                                         {
                                                            §§push(§§pop() > §§pop());
                                                            if(_loc5_ || param2)
                                                            {
                                                               §§goto(addr76);
                                                            }
                                                            §§goto(addr141);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr94:
                                                         while(true)
                                                         {
                                                            continue loop16;
                                                         }
                                                         addr94:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop() > §§pop());
                                                         if(!_loc4_)
                                                         {
                                                            continue loop15;
                                                         }
                                                         continue loop16;
                                                      }
                                                      §§goto(addr94);
                                                   }
                                                   while(true)
                                                   {
                                                      this.§#!G§.dispose();
                                                      while(true)
                                                      {
                                                         this.§#!G§ = null;
                                                         while(!_loc4_)
                                                         {
                                                            continue loop10;
                                                            §§pop();
                                                            if(!(_loc5_ || this))
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc5_)
                                                            {
                                                               §§goto(addr94);
                                                               §§push(this.§1!-§);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr223);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr206:
                                                }
                                                addr76:
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      this.§#!G§ = new BitmapData(this.§1!-§,this.§^6§,true,4278190080 | param2);
                                                      addr90:
                                                      while(true)
                                                      {
                                                         addr35:
                                                         if(!(_loc4_ && this))
                                                         {
                                                            continue loop6;
                                                         }
                                                      }
                                                   }
                                                   addr78:
                                                }
                                             }
                                             continue loop2;
                                             while(this.§#!G§)
                                             {
                                                if(!_loc4_)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      break loop16;
                                                   }
                                                   this.§#!G§.lock();
                                                }
                                                §§goto(addr35);
                                                §§goto(addr90);
                                             }
                                             return;
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr222);
                                    }
                                 }
                              }
                           }
                           §§goto(addr206);
                        }
                     }
                  }
               }
            }
            §§goto(addr127);
         }
         §§goto(addr78);
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(this.§#!G§)
            {
               if(_loc2_ || param1)
               {
                  this.§#!G§.unlock();
               }
            }
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§1!-§ = param1;
            loop0:
            while(true)
            {
               this.§^6§ = param2;
               while(true)
               {
                  this.§3%§ = param3;
                  loop2:
                  while(_loc5_ || param3)
                  {
                     while(true)
                     {
                        this.§2!E§ = param4;
                        if(!_loc6_)
                        {
                           if(!_loc6_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr53);
      }
   }
}
