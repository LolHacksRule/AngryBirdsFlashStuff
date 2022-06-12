package §'6§
{
   import §0!R§.Texture;
   import §1!$§.§!"?§;
   import §1V§.§-G§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §#"C§ extends §'"3§
   {
       
      
      private var §5!X§:BitmapData;
      
      private var §'""§:int = 0;
      
      private var §`>§:int = 0;
      
      private var §"J§:Number = 1.0;
      
      private var §7"B§:Number = 1.0;
      
      private var § "2§:BitmapData;
      
      private var §4&§:Vector.<Number>;
      
      private var §`!B§:Matrix;
      
      private var §9Z§:ColorTransform;
      
      public function §#"C§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§4&§ = new Vector.<Number>(16);
            while(true)
            {
               this.§`!B§ = new Matrix();
               loop1:
               while(true)
               {
                  this.§9Z§ = new ColorTransform();
                  do
                  {
                     super();
                     continue loop1;
                  }
                  while(!_loc1_);
                  
               }
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               §§goto(addr83);
            }
         }
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§5!X§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.dispose();
         }
         loop0:
         while(this.§ "2§)
         {
            while(_loc2_ || _loc1_)
            {
               this.§ "2§.dispose();
               do
               {
                  this.§ "2§ = null;
               }
               while(_loc1_);
               
               if(!_loc1_)
               {
                  break loop0;
               }
            }
         }
      }
      
      override public function batchQuad(param1:§!"?§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = uint(0);
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(!(_loc8_ && param2))
         {
            if(this.§5!X§)
            {
               loop0:
               while(true)
               {
                  §3!T§.copyRawDataTo(this.§4&§,0);
                  loop1:
                  while(true)
                  {
                     this.§`!B§.setTo(this.§4&§[0],this.§4&§[1],this.§4&§[4],this.§4&§[5],this.§4&§[12],this.§4&§[13]);
                     addr117:
                     loop2:
                     while(true)
                     {
                        this.§`!B§.scale(this.§"J§,this.§7"B§);
                        loop3:
                        while(true)
                        {
                           if(_loc8_)
                           {
                              continue loop2;
                           }
                           do
                           {
                              §§push(param1.color);
                              if(_loc9_ || param2)
                              {
                                 §§push(uint(§§pop()));
                              }
                              _loc5_ = §§pop();
                              while(true)
                              {
                                 if(!_loc8_)
                                 {
                                    if(_loc8_ && param1)
                                    {
                                       break;
                                    }
                                    if(!_loc8_)
                                    {
                                       §§push(param2);
                                       if(!_loc8_)
                                       {
                                          §§push(§§pop() * param1.alpha);
                                          if(_loc8_)
                                          {
                                             continue;
                                          }
                                       }
                                       §§push(Number(§§pop()));
                                       continue;
                                    }
                                    continue loop0;
                                 }
                                 continue loop3;
                              }
                              continue loop1;
                           }
                           while(false);
                           
                           _loc6_ = null;
                           if(_loc9_)
                           {
                              §§push(Boolean(param3));
                              if(_loc9_ || param2)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc9_)
                                    {
                                       §§pop();
                                       §§goto(addr177);
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    if(!(_loc8_ && param3))
                                    {
                                       addr177:
                                       if(!(_loc8_ && this))
                                       {
                                          §§push(_loc5_ == 16777215);
                                          if(!_loc8_)
                                          {
                                             addr158:
                                             §§push(!§§pop());
                                          }
                                       }
                                       (_loc6_ = this.§9Z§).redMultiplier = §-G§.§7_§(_loc5_) / 255;
                                       if(_loc9_ || this)
                                       {
                                          _loc6_.greenMultiplier = §-G§.§9"<§(_loc5_) / 255;
                                          addr216:
                                          _loc6_.blueMultiplier = §-G§.§8t§(_loc5_) / 255;
                                          _loc6_.alphaMultiplier = 1;
                                          addr232:
                                          if(_loc9_ || param1)
                                          {
                                             if(_loc9_ || param1)
                                             {
                                                §§goto(addr214);
                                             }
                                             §§goto(addr232);
                                          }
                                          addr224:
                                          §§goto(addr224);
                                       }
                                       addr214:
                                       if(false)
                                       {
                                          §§goto(addr216);
                                       }
                                       §§goto(addr233);
                                    }
                                    §§goto(addr236);
                                 }
                                 addr233:
                                 if(param2 != 1)
                                 {
                                    addr236:
                                    (_loc6_ = this.§9Z§).alphaMultiplier = param2;
                                 }
                                 if((_loc7_ = param1.clippedBitmapData) == null)
                                 {
                                    if(_loc9_ || param3)
                                    {
                                       this.§ "2§.setPixel(0,0,param1.color);
                                       if(_loc8_)
                                       {
                                       }
                                       §§goto(addr354);
                                    }
                                    _loc7_ = this.§ "2§;
                                    if(_loc9_)
                                    {
                                       this.§`!B§.a *= param1.§catch§;
                                    }
                                    this.§`!B§.b *= param1.§catch§;
                                    addr299:
                                    this.§`!B§.c *= param1.§@"&§;
                                    addr332:
                                    if(!_loc8_)
                                    {
                                       this.§`!B§.d *= param1.§@"&§;
                                       if(_loc9_ || this)
                                       {
                                          if(!(_loc8_ && this))
                                          {
                                             if(false)
                                             {
                                                §§goto(addr299);
                                             }
                                             §§goto(addr343);
                                          }
                                          §§goto(addr332);
                                       }
                                       §§goto(addr299);
                                    }
                                    addr342:
                                    §§goto(addr342);
                                 }
                                 addr343:
                                 this.§5!X§.draw(_loc7_,this.§`!B§,_loc6_,null,null,param1.highQuality);
                                 §§goto(addr354);
                              }
                              §§goto(addr158);
                           }
                           §§goto(addr177);
                        }
                     }
                  }
               }
            }
            addr354:
            return;
         }
         §§goto(addr117);
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(this.§5!X§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§5!X§.width == this.§'""§);
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
                                    §§push(this.§5!X§.height == this.§`>§);
                                    loop6:
                                    while(!_loc4_)
                                    {
                                       if(_loc5_)
                                       {
                                          §§push(!§§pop());
                                          while(!(_loc4_ && this))
                                          {
                                             loop16:
                                             for(; !(_loc4_ && param1); while(true)
                                             {
                                                if(!(_loc5_ || param2))
                                                {
                                                   continue loop16;
                                                }
                                                §§pop();
                                                §§goto(addr153);
                                                §§goto(addr73);
                                             })
                                             {
                                                §§pop();
                                                while(_loc5_)
                                                {
                                                   §§push(this.§'""§);
                                                   loop18:
                                                   while(true)
                                                   {
                                                      §§push(0);
                                                      addr139:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() > §§pop());
                                                         addr140:
                                                         loop20:
                                                         while(true)
                                                         {
                                                            loop21:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc5_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     continue loop16;
                                                                  }
                                                                  addr92:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(_loc4_ && param2)
                                                                           {
                                                                              addr153:
                                                                              while(_loc5_ || param3)
                                                                              {
                                                                                 continue loop18;
                                                                              }
                                                                              continue loop0;
                                                                              addr153:
                                                                           }
                                                                           if(!_loc4_)
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 addr105:
                                                                                 if(_loc5_ || param3)
                                                                                 {
                                                                                    this.§5!X§ = new BitmapData(this.§'""§,this.§`>§,true,4278190080 | param2);
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr24);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       this.§5!X§.dispose();
                                                                                       §§goto(addr105);
                                                                                    }
                                                                                    addr242:
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 this.§5!X§ = null;
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              addr161:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§5!X§ == null);
                                                                                 addr166:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    break loop21;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr24:
                                                                     while(this.§5!X§)
                                                                     {
                                                                        if(_loc4_ && param1)
                                                                        {
                                                                           break;
                                                                        }
                                                                        addr54:
                                                                        continue loop26;
                                                                     }
                                                                     return;
                                                                  }
                                                               }
                                                               break;
                                                               addr81:
                                                               if(_loc4_ && param1)
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc5_)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                                  §§goto(addr92);
                                                               }
                                                               §§goto(addr166);
                                                            }
                                                            while(!(_loc4_ && param3))
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  continue loop16;
                                                               }
                                                               continue loop20;
                                                            }
                                                            continue loop3;
                                                         }
                                                      }
                                                   }
                                                   if(_loc4_ && this)
                                                   {
                                                      continue;
                                                   }
                                                   this.§5!X§.lock();
                                                   §§goto(addr54);
                                                }
                                                continue loop5;
                                             }
                                          }
                                          continue loop4;
                                       }
                                       continue loop1;
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 this.§5!X§.fillRect(this.§5!X§.rect,4278190080 | param2);
                                 continue loop0;
                              }
                              §§goto(addr242);
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr161);
         }
         §§goto(addr160);
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§5!X§)
            {
               if(!_loc3_)
               {
                  this.§5!X§.unlock();
               }
            }
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            this.§'""§ = param1;
            while(true)
            {
               this.§`>§ = param2;
               §§goto(addr73);
            }
         }
         addr73:
         while(true)
         {
            this.§"J§ = param3;
            do
            {
               this.§7"B§ = param4;
            }
            while(!_loc5_);
            
            if(!(_loc6_ && param2))
            {
               if(_loc5_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
   }
}
