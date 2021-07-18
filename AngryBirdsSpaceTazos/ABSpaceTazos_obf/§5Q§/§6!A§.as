package §5Q§
{
   import §&!Z§.§@!a§;
   import §7!8§.§&!D§;
   import §`!#§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §6!A§ extends §%!t§
   {
       
      
      private var §2! §:BitmapData;
      
      private var §,"?§:int = 0;
      
      private var §>!G§:int = 0;
      
      private var §?!p§:Number = 1.0;
      
      private var §[!`§:Number = 1.0;
      
      private var §`4§:BitmapData;
      
      private var §1T§:Vector.<Number>;
      
      private var §`f§:Matrix;
      
      private var §0!f§:ColorTransform;
      
      public function §6!A§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§1T§ = new Vector.<Number>(16);
            while(true)
            {
               this.§`f§ = new Matrix();
               addr91:
               while(true)
               {
                  this.§0!f§ = new ColorTransform();
                  addr39:
                  if(_loc2_)
                  {
                     return;
                     addr51:
                  }
               }
               addr62:
               if(!(_loc2_ || _loc1_))
               {
                  continue;
               }
               this.§`4§ = new BitmapData(1,1,false);
               if(_loc2_)
               {
                  §§goto(addr39);
               }
               loop3:
               while(true)
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     §§goto(addr62);
                  }
                  else
                  {
                     while(true)
                     {
                        super();
                        continue loop3;
                     }
                     §§goto(addr51);
                     addr75:
                  }
               }
               addr69:
               §§goto(addr91);
            }
         }
         §§goto(addr75);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§2! §;
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.dispose();
         }
         loop0:
         while(this.§`4§)
         {
            do
            {
               this.§`4§.dispose();
               while(_loc2_ || this)
               {
                  this.§`4§ = null;
                  if(!(_loc2_ || this))
                  {
                     continue;
                  }
                  §§goto(addr45);
               }
               continue loop0;
            }
            while(_loc1_ && _loc1_);
            
            break;
         }
      }
      
      override public function batchQuad(param1:§&!D§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:* = uint(0);
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(_loc8_)
         {
            if(this.§2! §)
            {
               loop0:
               while(true)
               {
                  §!H§.copyRawDataTo(this.§1T§,0);
                  loop1:
                  while(true)
                  {
                     this.§`f§.setTo(this.§1T§[0],this.§1T§[1],this.§1T§[4],this.§1T§[5],this.§1T§[12],this.§1T§[13]);
                     loop2:
                     while(true)
                     {
                        this.§`f§.scale(this.§?!p§,this.§[!`§);
                        loop3:
                        while(!_loc9_)
                        {
                           loop4:
                           while(true)
                           {
                              §§push(param1.color);
                              if(!(_loc9_ && this))
                              {
                                 §§push(uint(§§pop()));
                              }
                              _loc5_ = §§pop();
                              do
                              {
                                 if(_loc8_)
                                 {
                                    continue loop2;
                                 }
                                 continue loop3;
                                 param2 = §§pop();
                              }
                              while(_loc9_);
                              
                              if(_loc9_ && param1)
                              {
                                 break;
                              }
                              while(false)
                              {
                                 continue loop4;
                              }
                              _loc6_ = null;
                              if(!_loc9_)
                              {
                                 §§push(Boolean(param3));
                                 if(_loc8_ || this)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc8_)
                                       {
                                          addr144:
                                          §§pop();
                                          if(_loc8_)
                                          {
                                             §§push(_loc5_ == 16777215);
                                             if(!(_loc9_ && param3))
                                             {
                                                addr158:
                                                addr157:
                                                if(!§§pop())
                                                {
                                                   if(_loc8_)
                                                   {
                                                      (_loc6_ = this.§0!f§).redMultiplier = §@!a§.§4N§(_loc5_) / 255;
                                                      addr161:
                                                      if(_loc8_)
                                                      {
                                                         _loc6_.greenMultiplier = §@!a§.§"g§(_loc5_) / 255;
                                                         loop7:
                                                         while(true)
                                                         {
                                                            addr200:
                                                            while(true)
                                                            {
                                                               _loc6_.blueMultiplier = §@!a§.§?"7§(_loc5_) / 255;
                                                               continue loop7;
                                                            }
                                                         }
                                                         addr216:
                                                      }
                                                      while(true)
                                                      {
                                                         _loc6_.alphaMultiplier = 1;
                                                         if(_loc9_)
                                                         {
                                                            continue;
                                                         }
                                                         if(!(_loc9_ && param1))
                                                         {
                                                            if(true)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr216);
                                                         }
                                                         §§goto(addr200);
                                                      }
                                                   }
                                                   addr220:
                                                   (_loc6_ = this.§0!f§).alphaMultiplier = param2;
                                                   if((_loc7_ = param1.clippedBitmapData) == null)
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         this.§`4§.setPixel(0,0,param1.color);
                                                         if(!(_loc9_ && this))
                                                         {
                                                            _loc7_ = this.§`4§;
                                                            if(!(_loc9_ && param1))
                                                            {
                                                               this.§`f§.a *= param1.§41§;
                                                            }
                                                            while(true)
                                                            {
                                                               this.§`f§.b *= param1.§41§;
                                                               loop11:
                                                               while(!(_loc9_ && param1))
                                                               {
                                                                  do
                                                                  {
                                                                     this.§`f§.c *= param1.§@"5§;
                                                                     while(_loc8_ || param3)
                                                                     {
                                                                        this.§`f§.d *= param1.§@"5§;
                                                                        if(_loc9_ && this)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§goto(addr279);
                                                                     }
                                                                     continue loop11;
                                                                  }
                                                                  while(false);
                                                                  
                                                                  this.§2! §.draw(_loc7_,this.§`f§,_loc6_,null,null,param1.highQuality);
                                                                  return;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr348);
                                                   }
                                                   §§goto(addr327);
                                                }
                                                if(param2 != 1)
                                                {
                                                }
                                                §§goto(addr220);
                                             }
                                             §§goto(addr158);
                                          }
                                          §§goto(addr161);
                                       }
                                       §§goto(addr157);
                                    }
                                    §§goto(addr158);
                                 }
                                 §§goto(addr144);
                              }
                              §§goto(addr220);
                           }
                           continue loop1;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            §§goto(addr348);
         }
         §§goto(addr53);
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            if(this.§2! §)
            {
               loop0:
               while(true)
               {
                  §§push(this.§2! §.width == this.§,"?§);
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
                                 addr249:
                                 while(true)
                                 {
                                    §§push(this.§2! §.height == this.§>!G§);
                                    addr219:
                                    while(true)
                                    {
                                       §§push(!§§pop());
                                    }
                                 }
                              }
                              addr248:
                           }
                           while(true)
                           {
                              loop6:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    this.§2! §.fillRect(this.§2! §.rect,4278190080 | param2);
                                    loop7:
                                    while(true)
                                    {
                                       addr158:
                                       loop11:
                                       while(true)
                                       {
                                          §§push(this.§2! § == null);
                                          loop12:
                                          while(_loc5_ || param3)
                                          {
                                             §§push(§§pop());
                                             loop13:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   loop19:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(!_loc5_)
                                                      {
                                                         continue loop13;
                                                      }
                                                      if(!(_loc5_ || param2))
                                                      {
                                                         break;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         loop20:
                                                         while(true)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               if(!(_loc5_ || param2))
                                                               {
                                                                  continue loop6;
                                                               }
                                                               §§pop();
                                                               loop21:
                                                               while(true)
                                                               {
                                                                  §§push(this.§>!G§);
                                                                  if(_loc4_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(0);
                                                                  if(!(_loc4_ && this))
                                                                  {
                                                                     continue loop20;
                                                                  }
                                                                  addr132:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() > §§pop());
                                                                     addr133:
                                                                     while(!_loc4_)
                                                                     {
                                                                        continue loop19;
                                                                     }
                                                                     continue loop12;
                                                                  }
                                                                  loop24:
                                                                  while(true)
                                                                  {
                                                                     if(_loc4_ && param3)
                                                                     {
                                                                        continue loop21;
                                                                     }
                                                                     if(_loc4_)
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     if(_loc5_)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           while(this.§2! §)
                                                                           {
                                                                              if(!(_loc4_ && this))
                                                                              {
                                                                                 if(_loc4_ && param3)
                                                                                 {
                                                                                    continue loop24;
                                                                                 }
                                                                                 this.§2! §.lock();
                                                                              }
                                                                              addr50:
                                                                              if(_loc5_ || param1)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 addr222:
                                                                                 while(true)
                                                                                 {
                                                                                    this.§2! §.dispose();
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    this.§2! § = new BitmapData(this.§,"?§,this.§>!G§,true,4278190080 | param2);
                                                                                    continue loop24;
                                                                                    §§goto(addr50);
                                                                                 }
                                                                                 addr92:
                                                                              }
                                                                           }
                                                                           addr25:
                                                                           return;
                                                                           addr29:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           this.§2! § = null;
                                                                        }
                                                                     }
                                                                     while(_loc5_)
                                                                     {
                                                                        continue loop11;
                                                                        §§goto(addr113);
                                                                     }
                                                                     addr113:
                                                                     §§goto(addr249);
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr132);
                                                                  §§goto(addr157);
                                                               }
                                                               addr157:
                                                            }
                                                            else
                                                            {
                                                               while(_loc5_)
                                                               {
                                                                  if(!(_loc4_ && param1))
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§pop();
                                                                        continue loop7;
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                                  §§goto(addr248);
                                                               }
                                                               §§goto(addr219);
                                                               addr172:
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr90);
                                                   }
                                                   continue loop3;
                                                }
                                                §§goto(addr172);
                                             }
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                                 §§goto(addr222);
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr158);
         }
         §§goto(addr249);
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(this.§2! §)
            {
               if(_loc3_ || _loc2_)
               {
                  this.§2! §.unlock();
               }
            }
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§,"?§ = param1;
            loop0:
            while(true)
            {
               this.§>!G§ = param2;
               loop1:
               do
               {
                  this.§?!p§ = param3;
                  while(!_loc5_)
                  {
                     this.§[!`§ = param4;
                     if(!_loc5_)
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
               while(!_loc6_);
               
            }
         }
      }
   }
}
