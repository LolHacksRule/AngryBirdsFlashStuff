package §@4§
{
   import §!!9§.Texture;
   import §2N§.§;!u§;
   import §9E§.§1!w§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §^O§ extends §<!I§
   {
       
      
      private var §>!+§:BitmapData;
      
      private var §22§:int = 0;
      
      private var §3!x§:int = 0;
      
      private var §8T§:Number = 1.0;
      
      private var §7"§:Number = 1.0;
      
      private var § #§:BitmapData;
      
      private var §>]§:Vector.<Number>;
      
      private var §"§:Matrix;
      
      private var §`!L§:ColorTransform;
      
      public function §^O§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§>]§ = new Vector.<Number>(16);
         }
         while(true)
         {
            this.§"§ = new Matrix();
            loop1:
            while(true)
            {
               this.§`!L§ = new ColorTransform();
               while(true)
               {
                  super();
                  while(_loc2_ || _loc1_)
                  {
                     continue loop1;
                     this.§ #§ = new BitmapData(1,1,false);
                     if(!_loc1_)
                     {
                        return;
                     }
                  }
               }
            }
         }
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§>!+§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.dispose();
            loop0:
            while(this.§ #§)
            {
               while(!(_loc2_ && _loc1_))
               {
                  this.§ #§.dispose();
                  do
                  {
                     this.§ #§ = null;
                  }
                  while(!_loc1_);
                  
                  if(_loc1_)
                  {
                     addr56:
                     break loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr56);
      }
      
      override public function batchQuad(param1:§1!w§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = uint(0);
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(_loc9_)
         {
            if(this.§>!+§)
            {
               if(_loc9_)
               {
                  §`!0§.copyRawDataTo(this.§>]§,0);
               }
               loop0:
               while(true)
               {
                  this.§"§.setTo(this.§>]§[0],this.§>]§[1],this.§>]§[4],this.§>]§[5],this.§>]§[12],this.§>]§[13]);
                  addr115:
                  while(true)
                  {
                     this.§"§.scale(this.§8T§,this.§7"§);
                     loop2:
                     while(!(_loc8_ && param1))
                     {
                        loop3:
                        do
                        {
                           §§push(param1.color);
                           if(!(_loc8_ && param3))
                           {
                              §§push(uint(§§pop()));
                           }
                           _loc5_ = §§pop();
                           while(_loc9_)
                           {
                              §§push(param2);
                              continue loop0;
                              if(!(_loc8_ && param2))
                              {
                                 §§push(§§pop() * param1.alpha);
                                 if(_loc9_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              param2 = §§pop();
                              if(_loc9_)
                              {
                                 continue loop3;
                              }
                           }
                           continue loop2;
                        }
                        while(false);
                        
                        _loc6_ = null;
                        if(_loc9_ || this)
                        {
                           §§push(Boolean(param3));
                           if(_loc9_ || param2)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc8_ && param1))
                                 {
                                    addr155:
                                    §§pop();
                                    addr182:
                                    if(_loc9_ || param2)
                                    {
                                       §§push(_loc5_ == 16777215);
                                       if(_loc9_)
                                       {
                                          §§push(!§§pop());
                                       }
                                    }
                                    (_loc6_ = this.§`!L§).redMultiplier = §;!u§.§>W§(_loc5_) / 255;
                                    if(!_loc8_)
                                    {
                                       _loc6_.greenMultiplier = §;!u§.§^!Q§(_loc5_) / 255;
                                       loop10:
                                       while(true)
                                       {
                                          addr204:
                                          while(true)
                                          {
                                             _loc6_.blueMultiplier = §;!u§.§+!1§(_loc5_) / 255;
                                             continue loop10;
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       _loc6_.alphaMultiplier = 1;
                                       if(!_loc8_)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          §§goto(addr204);
                                       }
                                       §§goto(addr212);
                                    }
                                    addr228:
                                    if(param2 != 1)
                                    {
                                       addr231:
                                       (_loc6_ = this.§`!L§).alphaMultiplier = param2;
                                    }
                                    if((_loc7_ = param1.clippedBitmapData) == null)
                                    {
                                       if(!(_loc8_ && param3))
                                       {
                                          this.§ #§.setPixel(0,0,param1.color);
                                          if(_loc9_)
                                          {
                                             addr261:
                                             _loc7_ = this.§ #§;
                                             if(_loc9_)
                                             {
                                                this.§"§.a *= param1.§5O§;
                                                loop5:
                                                while(true)
                                                {
                                                   this.§"§.b *= param1.§5O§;
                                                   addr327:
                                                   while(true)
                                                   {
                                                      addr289:
                                                      while(true)
                                                      {
                                                         this.§"§.c *= param1.§@k§;
                                                         continue loop5;
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr287);
                                          }
                                          §§goto(addr349);
                                       }
                                       §§goto(addr261);
                                    }
                                    §§goto(addr338);
                                 }
                              }
                              if(§§pop())
                              {
                                 if(_loc9_)
                                 {
                                    §§goto(addr182);
                                 }
                                 §§goto(addr231);
                              }
                              §§goto(addr228);
                           }
                        }
                        §§goto(addr155);
                     }
                  }
               }
            }
            §§goto(addr338);
         }
         §§goto(addr115);
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(this.§>!+§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§>!+§.width == this.§22§);
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
                                    §§push(this.§>!+§.height == this.§3!x§);
                                    loop6:
                                    while(_loc5_ || param3)
                                    {
                                       §§push(!§§pop());
                                       loop7:
                                       while(!_loc4_)
                                       {
                                          addr138:
                                          if(_loc5_ || param1)
                                          {
                                             loop25:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(_loc5_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop20:
                                                      for(; !(_loc4_ && param1); §§push(§§pop() > §§pop()),if(_loc4_ && param1)
                                                      {
                                                         continue;
                                                      },if(!_loc4_)
                                                      {
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               loop22:
                                                               while(true)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     addr82:
                                                                     if(!(_loc5_ || this))
                                                                     {
                                                                        break;
                                                                        addr191:
                                                                     }
                                                                     this.§>!+§ = new BitmapData(this.§22§,this.§3!x§,true,4278190080 | param2);
                                                                     loop23:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc4_ && this))
                                                                        {
                                                                           addr108:
                                                                           if(_loc5_ || this)
                                                                           {
                                                                              while(this.§>!+§)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 continue loop23;
                                                                              }
                                                                              addr20:
                                                                              return;
                                                                              addr24:
                                                                           }
                                                                           break;
                                                                        }
                                                                        addr178:
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr129);
                                                                        }
                                                                     }
                                                                     loop9:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc4_ && param3))
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              addr159:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§>!+§ == null);
                                                                                 break loop20;
                                                                              }
                                                                           }
                                                                           addr198:
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 break loop9;
                                                                              }
                                                                              this.§>!+§.dispose();
                                                                              while(true)
                                                                              {
                                                                                 this.§>!+§ = null;
                                                                                 break loop22;
                                                                              }
                                                                           }
                                                                           addr240:
                                                                        }
                                                                        §§goto(addr108);
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                                  §§goto(addr158);
                                                                  §§goto(addr158);
                                                               }
                                                               while(!(_loc4_ && this))
                                                               {
                                                                  §§goto(addr159);
                                                                  §§goto(addr82);
                                                               }
                                                               §§goto(addr245);
                                                            }
                                                            §§goto(addr24);
                                                         }
                                                         addr78:
                                                      },while(true)
                                                      {
                                                         §§pop();
                                                         §§goto(addr178);
                                                      })
                                                      {
                                                         §§pop();
                                                         while(true)
                                                         {
                                                            §§push(this.§3!x§);
                                                            if(!(_loc5_ || param3))
                                                            {
                                                               break;
                                                            }
                                                            §§push(0);
                                                            if(_loc5_ || this)
                                                            {
                                                               continue loop20;
                                                            }
                                                            addr130:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() > §§pop());
                                                               if(!(_loc5_ || param1))
                                                               {
                                                                  continue loop20;
                                                               }
                                                               §§goto(addr138);
                                                            }
                                                            continue loop7;
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr130);
                                                            §§goto(addr158);
                                                         }
                                                         addr158:
                                                      }
                                                      while(_loc5_)
                                                      {
                                                         if(_loc5_ || this)
                                                         {
                                                            §§push(§§pop());
                                                            break loop25;
                                                         }
                                                         continue loop1;
                                                         §§goto(addr150);
                                                      }
                                                      addr150:
                                                      continue loop6;
                                                   }
                                                   §§goto(addr78);
                                                }
                                                break;
                                             }
                                             while(_loc5_)
                                             {
                                                if(§§pop())
                                                {
                                                   §§goto(addr177);
                                                }
                                                §§goto(addr145);
                                             }
                                             addr145:
                                             continue loop3;
                                          }
                                       }
                                       continue loop4;
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 this.§>!+§.fillRect(this.§>!+§.rect,4278190080 | param2);
                                 §§goto(addr191);
                              }
                              §§goto(addr240);
                           }
                        }
                     }
                  }
                  if(_loc4_ && param2)
                  {
                     continue;
                  }
                  this.§>!+§.lock();
                  §§goto(addr40);
               }
            }
            §§goto(addr159);
         }
         §§goto(addr198);
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(this.§>!+§)
            {
               if(_loc2_ || _loc2_)
               {
                  this.§>!+§.unlock();
               }
            }
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
         {
            this.§22§ = param1;
            while(true)
            {
               this.§3!x§ = param2;
            }
            addr82:
         }
         loop1:
         do
         {
            this.§8T§ = param3;
            while(_loc5_)
            {
               this.§7"§ = param4;
               if(!(_loc6_ && param3))
               {
                  continue loop1;
               }
            }
            §§goto(addr82);
         }
         while(!(_loc5_ || param3));
         
      }
   }
}
