package §2m§
{
   import §7H§.include;
   import §?]§.Texture;
   import §`g§.§ O§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §@!H§ extends §@>§
   {
       
      
      private var §`O§:BitmapData;
      
      private var §'!M§:int = 0;
      
      private var §4$§:int = 0;
      
      private var §-=§:Number = 1.0;
      
      private var §9!t§:Number = 1.0;
      
      private var §1!G§:BitmapData;
      
      private var §=#§:Vector.<Number>;
      
      private var §'!z§:Matrix;
      
      private var §?f§:ColorTransform;
      
      public function §@!H§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§=#§ = new Vector.<Number>(16);
            loop0:
            while(true)
            {
               this.§'!z§ = new Matrix();
               do
               {
                  this.§?f§ = new ColorTransform();
                  do
                  {
                     super();
                     continue loop0;
                  }
                  while(_loc1_ && _loc2_);
                  
               }
               while(!(_loc2_ || this));
               
            }
         }
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§`O§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.dispose();
            loop0:
            while(this.§1!G§)
            {
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     this.§1!G§.dispose();
                     do
                     {
                        this.§1!G§ = null;
                     }
                     while(!(_loc1_ || this));
                     
                     if(_loc1_)
                     {
                        break loop0;
                     }
                     continue loop1;
                  }
               }
            }
            return;
         }
         §§goto(addr53);
      }
      
      override public function batchQuad(param1:§ O§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = uint(0);
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(_loc9_ || this)
         {
            if(this.§`O§)
            {
               loop0:
               while(true)
               {
                  §06§.copyRawDataTo(this.§=#§,0);
                  loop1:
                  while(true)
                  {
                     this.§'!z§.setTo(this.§=#§[0],this.§=#§[1],this.§=#§[4],this.§=#§[5],this.§=#§[12],this.§=#§[13]);
                     while(true)
                     {
                        this.§'!z§.scale(this.§-=§,this.§9!t§);
                        loop3:
                        while(_loc9_)
                        {
                           if(!_loc8_)
                           {
                              while(true)
                              {
                                 §§push(param1.color);
                                 if(_loc9_ || this)
                                 {
                                    §§push(uint(§§pop()));
                                 }
                                 _loc5_ = §§pop();
                                 continue loop3;
                                 addr62:
                                 if(_loc8_)
                                 {
                                    break;
                                 }
                                 if(false)
                                 {
                                    continue;
                                 }
                                 _loc6_ = null;
                                 if(_loc9_)
                                 {
                                    §§push(Boolean(param3));
                                    if(!(_loc8_ && this))
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc8_)
                                          {
                                             §§pop();
                                             if(!(_loc8_ && param3))
                                             {
                                                addr173:
                                                §§push(_loc5_ == 16777215);
                                                if(_loc9_)
                                                {
                                                   addr179:
                                                   if(!§§pop())
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         addr182:
                                                         (_loc6_ = this.§?f§).redMultiplier = include.§`#§(_loc5_) / 255;
                                                         if(_loc9_ || param2)
                                                         {
                                                            _loc6_.greenMultiplier = include.§^9§(_loc5_) / 255;
                                                         }
                                                         addr211:
                                                         _loc6_.blueMultiplier = include.§]7§(_loc5_) / 255;
                                                         _loc6_.alphaMultiplier = 1;
                                                         addr227:
                                                         if(_loc9_)
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               if(false)
                                                               {
                                                                  §§goto(addr211);
                                                               }
                                                               addr228:
                                                               if(param2 != 1)
                                                               {
                                                                  addr231:
                                                                  (_loc6_ = this.§?f§).alphaMultiplier = param2;
                                                               }
                                                               if((_loc7_ = param1.clippedBitmapData) == null)
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     this.§1!G§.setPixel(0,0,param1.color);
                                                                     if(!(_loc8_ && this))
                                                                     {
                                                                        addr261:
                                                                        _loc7_ = this.§1!G§;
                                                                        if(!(_loc8_ && param3))
                                                                        {
                                                                           this.§'!z§.a *= param1.§@!8§;
                                                                        }
                                                                        this.§'!z§.b *= param1.§@!8§;
                                                                        addr299:
                                                                        this.§'!z§.c *= param1.§0!v§;
                                                                        addr342:
                                                                        if(_loc9_)
                                                                        {
                                                                           this.§'!z§.d *= param1.§0!v§;
                                                                           if(_loc9_ || param2)
                                                                           {
                                                                              if(_loc9_ || param2)
                                                                              {
                                                                                 if(false)
                                                                                 {
                                                                                    §§goto(addr299);
                                                                                 }
                                                                                 addr343:
                                                                                 this.§`O§.draw(_loc7_,this.§'!z§,_loc6_,null,null,param1.highQuality);
                                                                                 §§goto(addr354);
                                                                              }
                                                                              §§goto(addr342);
                                                                           }
                                                                           §§goto(addr299);
                                                                        }
                                                                        addr332:
                                                                        §§goto(addr332);
                                                                     }
                                                                     addr354:
                                                                     return;
                                                                  }
                                                                  §§goto(addr261);
                                                               }
                                                               §§goto(addr343);
                                                            }
                                                            §§goto(addr227);
                                                         }
                                                         addr219:
                                                         §§goto(addr219);
                                                      }
                                                      §§goto(addr231);
                                                   }
                                                   §§goto(addr228);
                                                }
                                                §§goto(addr179);
                                             }
                                             §§goto(addr182);
                                          }
                                       }
                                    }
                                    §§goto(addr179);
                                 }
                                 while(_loc9_ || this)
                                 {
                                    §§push(param2);
                                    if(!(_loc8_ && this))
                                    {
                                       §§push(§§pop() * param1.alpha);
                                       if(!(_loc8_ && param1))
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    param2 = §§pop();
                                    if(!(_loc9_ || param1))
                                    {
                                       continue;
                                    }
                                    §§goto(addr62);
                                 }
                                 §§goto(addr173);
                              }
                              continue loop1;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
               addr131:
            }
            §§goto(addr343);
         }
         §§goto(addr131);
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(this.§`O§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§`O§.width == this.§'!M§);
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
                              loop4:
                              while(true)
                              {
                                 §§pop();
                                 loop5:
                                 while(true)
                                 {
                                    §§push(this.§`O§.height == this.§4$§);
                                    while(_loc5_ || param1)
                                    {
                                       if(!(_loc5_ || param2))
                                       {
                                          continue loop2;
                                       }
                                       §§push(!§§pop());
                                       loop14:
                                       while(_loc5_ || param3)
                                       {
                                          §§push(§§pop());
                                          loop15:
                                          while(!(_loc4_ && this))
                                          {
                                             if(§§pop())
                                             {
                                                loop16:
                                                for(; !(_loc4_ && param1); while(true)
                                                {
                                                   if(_loc4_ && this)
                                                   {
                                                      continue loop16;
                                                   }
                                                   if(_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   if(_loc4_ && param1)
                                                   {
                                                      continue loop1;
                                                   }
                                                   §§pop();
                                                   §§goto(addr148);
                                                   §§goto(addr56);
                                                },continue loop14)
                                                {
                                                   §§pop();
                                                   loop17:
                                                   while(true)
                                                   {
                                                      §§push(this.§'!M§);
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         addr125:
                                                         addr159:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() > §§pop());
                                                         }
                                                         §§push(this.§4$§);
                                                         if(_loc4_)
                                                         {
                                                            continue;
                                                         }
                                                         §§push(0);
                                                         if(_loc5_ || this)
                                                         {
                                                            addr56:
                                                            §§push(§§pop() > §§pop());
                                                            if(!(_loc5_ || this))
                                                            {
                                                               continue loop16;
                                                            }
                                                            addr64:
                                                            if(_loc4_ && param3)
                                                            {
                                                               addr127:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!_loc5_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     continue loop16;
                                                                  }
                                                                  §§goto(addr64);
                                                               }
                                                               continue loop15;
                                                               addr127:
                                                            }
                                                            loop24:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  loop25:
                                                                  while(true)
                                                                  {
                                                                     if(_loc5_ || param2)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           if(_loc4_ && this)
                                                                           {
                                                                              break loop24;
                                                                           }
                                                                           this.§`O§ = new BitmapData(this.§'!M§,this.§4$§,true,4278190080 | param2);
                                                                           loop26:
                                                                           while(_loc5_)
                                                                           {
                                                                              if(!(_loc4_ && param3))
                                                                              {
                                                                                 while(this.§`O§)
                                                                                 {
                                                                                    if(!(_loc4_ && param3))
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          continue loop26;
                                                                                       }
                                                                                       this.§`O§.lock();
                                                                                    }
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr42:
                                                                                       break;
                                                                                    }
                                                                                    continue loop25;
                                                                                 }
                                                                                 return;
                                                                                 addr24:
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr242:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 this.§`O§.dispose();
                                                                                 break loop24;
                                                                              }
                                                                           }
                                                                           continue loop17;
                                                                        }
                                                                        addr202:
                                                                        while(true)
                                                                        {
                                                                        }
                                                                        addr202:
                                                                     }
                                                                     else
                                                                     {
                                                                        while(!_loc4_)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           continue loop5;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                        }
                                                                        addr207:
                                                                        addr148:
                                                                     }
                                                                     addr160:
                                                                     while(true)
                                                                     {
                                                                        continue loop14;
                                                                        §§goto(addr202);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr24);
                                                            }
                                                            while(true)
                                                            {
                                                               this.§`O§ = null;
                                                               §§goto(addr207);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr125);
                                                         }
                                                         §§goto(addr127);
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      §§goto(addr242);
                                                   }
                                                   else
                                                   {
                                                      this.§`O§.fillRect(this.§`O§.rect,4278190080 | param2);
                                                      §§goto(addr202);
                                                   }
                                                   §§goto(addr181);
                                                }
                                                addr181:
                                                addr241:
                                             }
                                             while(true)
                                             {
                                                §§goto(addr127);
                                                §§goto(addr125);
                                             }
                                          }
                                          continue loop3;
                                       }
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                           while(true)
                           {
                              §§goto(addr241);
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr160);
         }
         §§goto(addr42);
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§`O§)
            {
               if(!(_loc3_ && param1))
               {
                  addr28:
                  this.§`O§.unlock();
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
         if(_loc6_)
         {
            this.§'!M§ = param1;
            while(true)
            {
               this.§4$§ = param2;
               while(!(_loc5_ && param2))
               {
                  this.§-=§ = param3;
                  while(_loc6_)
                  {
                     this.§9!t§ = param4;
                     if(!_loc5_)
                     {
                        return;
                        addr50:
                     }
                  }
               }
            }
         }
         §§goto(addr50);
      }
   }
}
