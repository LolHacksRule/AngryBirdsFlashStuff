package §<&§
{
   import §'!9§.§%!g§;
   import §^!+§.Texture;
   import §`s§.§ z§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §[;§ extends §`K§
   {
       
      
      private var §8!0§:BitmapData;
      
      private var §3#§:int = 0;
      
      private var §?8§:int = 0;
      
      private var §5!U§:Number = 1.0;
      
      private var §-![§:Number = 1.0;
      
      private var §!!@§:BitmapData;
      
      private var §4!0§:Vector.<Number>;
      
      private var §-!C§:Matrix;
      
      private var §]u§:ColorTransform;
      
      public function §[;§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§4!0§ = new Vector.<Number>(16);
         }
         loop0:
         do
         {
            this.§-!C§ = new Matrix();
            while(true)
            {
               this.§]u§ = new ColorTransform();
               while(_loc1_)
               {
                  super();
                  do
                  {
                     this.§!!@§ = new BitmapData(1,1,false);
                  }
                  while(_loc2_ && this);
                  
                  if(!(_loc2_ && _loc1_))
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!(_loc1_ || this));
         
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§8!0§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.dispose();
            loop0:
            while(this.§!!@§)
            {
               loop1:
               do
               {
                  this.§!!@§.dispose();
                  while(_loc1_)
                  {
                     this.§!!@§ = null;
                     if(!(_loc2_ && _loc1_))
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
               while(_loc2_ && _loc2_);
               
               break;
            }
            return;
         }
         §§goto(addr66);
      }
      
      override public function batchQuad(param1:§%!g§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = uint(0);
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(_loc9_ || this)
         {
            if(this.§8!0§)
            {
               if(!_loc8_)
               {
                  §[V§.copyRawDataTo(this.§4!0§,0);
               }
               while(true)
               {
                  this.§-!C§.setTo(this.§4!0§[0],this.§4!0§[1],this.§4!0§[4],this.§4!0§[5],this.§4!0§[12],this.§4!0§[13]);
                  while(!_loc8_)
                  {
                     this.§-!C§.scale(this.§5!U§,this.§-![§);
                     loop2:
                     for(; _loc9_ || param3; while(true)
                     {
                        §§push(param1.color);
                        if(_loc9_)
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
                              if(!(_loc8_ && param3))
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           param2 = §§pop();
                        }
                        while(!_loc9_);
                        
                        if(_loc8_)
                        {
                           break;
                        }
                        if(false)
                        {
                           continue;
                        }
                        _loc6_ = null;
                        if(!(_loc8_ && param2))
                        {
                           §§push(Boolean(param3));
                           if(_loc9_ || param2)
                           {
                              if(§§pop())
                              {
                                 if(_loc9_)
                                 {
                                    addr145:
                                    §§pop();
                                    if(_loc9_)
                                    {
                                       §§push(_loc5_ == 16777215);
                                       if(_loc9_ || param2)
                                       {
                                          addr169:
                                          if(!§§pop())
                                          {
                                             if(_loc9_ || this)
                                             {
                                                addr177:
                                                (_loc6_ = this.§]u§).redMultiplier = § z§.§6!q§(_loc5_) / 255;
                                                if(!(_loc8_ && param1))
                                                {
                                                   _loc6_.greenMultiplier = § z§.§"5§(_loc5_) / 255;
                                                }
                                                while(true)
                                                {
                                                   while(true)
                                                   {
                                                      _loc6_.blueMultiplier = § z§.§9!,§(_loc5_) / 255;
                                                      do
                                                      {
                                                         _loc6_.alphaMultiplier = 1;
                                                      }
                                                      while(_loc8_);
                                                      
                                                      if(!_loc9_)
                                                      {
                                                         break;
                                                      }
                                                      if(false)
                                                      {
                                                         continue;
                                                      }
                                                      addr223:
                                                      if(param2 != 1)
                                                      {
                                                         addr226:
                                                         (_loc6_ = this.§]u§).alphaMultiplier = param2;
                                                      }
                                                      if((_loc7_ = param1.clippedBitmapData) == null)
                                                      {
                                                         if(_loc9_ || this)
                                                         {
                                                            this.§!!@§.setPixel(0,0,param1.color);
                                                            if(!_loc8_)
                                                            {
                                                               addr256:
                                                               _loc7_ = this.§!!@§;
                                                               if(!(_loc8_ && param3))
                                                               {
                                                                  this.§-!C§.a *= param1.§>V§;
                                                                  while(true)
                                                                  {
                                                                     this.§-!C§.b *= param1.§>V§;
                                                                     loop10:
                                                                     while(_loc9_)
                                                                     {
                                                                        do
                                                                        {
                                                                           this.§-!C§.c *= param1.§=!`§;
                                                                           do
                                                                           {
                                                                              this.§-!C§.d *= param1.§=!`§;
                                                                           }
                                                                           while(!(_loc9_ || param3));
                                                                           
                                                                           if(_loc9_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           continue loop10;
                                                                        }
                                                                        while(false);
                                                                        
                                                                        this.§8!0§.draw(_loc7_,this.§-!C§,_loc6_,null,null,param1.highQuality);
                                                                        return;
                                                                     }
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr289);
                                                               }
                                                            }
                                                            §§goto(addr344);
                                                         }
                                                         §§goto(addr256);
                                                      }
                                                      §§goto(addr333);
                                                   }
                                                }
                                             }
                                             §§goto(addr226);
                                          }
                                          §§goto(addr223);
                                       }
                                       §§goto(addr169);
                                    }
                                    §§goto(addr177);
                                 }
                              }
                              §§goto(addr169);
                           }
                           §§goto(addr145);
                        }
                        §§goto(addr226);
                     })
                     {
                        while(true)
                        {
                           continue loop2;
                        }
                     }
                  }
               }
            }
            §§goto(addr344);
         }
         §§goto(addr79);
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            if(this.§8!0§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§8!0§.width == this.§3#§);
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
                                 addr243:
                                 while(true)
                                 {
                                    §§push(this.§8!0§.height == this.§?8§);
                                    addr195:
                                    while(true)
                                    {
                                       §§push(!§§pop());
                                       addr196:
                                       while(true)
                                       {
                                          if(!_loc4_)
                                          {
                                             continue loop4;
                                          }
                                          if(!(_loc4_ || param1))
                                          {
                                             continue loop2;
                                          }
                                          if(!(_loc4_ || param2))
                                          {
                                             continue loop1;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 this.§8!0§.fillRect(this.§8!0§.rect,4278190080 | param2);
                                 loop6:
                                 while(true)
                                 {
                                    if(_loc4_ || param1)
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          §§push(this.§8!0§ == null);
                                          loop11:
                                          while(_loc4_ || param1)
                                          {
                                             if(!(_loc5_ && param1))
                                             {
                                                §§push(§§pop());
                                                loop12:
                                                while(!(_loc5_ && param1))
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         loop14:
                                                         while(!(_loc5_ && this))
                                                         {
                                                            §§push(this.§3#§);
                                                            loop15:
                                                            while(true)
                                                            {
                                                               §§push(0);
                                                               addr104:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() > §§pop());
                                                                  if(_loc4_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc5_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(!§§pop())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 loop19:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc4_ || param2)
                                                                                    {
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       addr73:
                                                                                       if(_loc4_ || param3)
                                                                                       {
                                                                                          this.§8!0§ = new BitmapData(this.§3#§,this.§?8§,true,4278190080 | param2);
                                                                                          loop20:
                                                                                          while(_loc4_ || param1)
                                                                                          {
                                                                                             while(this.§8!0§)
                                                                                             {
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      continue loop20;
                                                                                                   }
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      continue loop6;
                                                                                                   }
                                                                                                   this.§8!0§.lock();
                                                                                                }
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                continue loop19;
                                                                                             }
                                                                                             return;
                                                                                          }
                                                                                          continue loop14;
                                                                                       }
                                                                                       addr227:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             this.§8!0§ = null;
                                                                                             break loop19;
                                                                                          }
                                                                                          break;
                                                                                          §§goto(addr73);
                                                                                       }
                                                                                       continue loop0;
                                                                                    }
                                                                                    continue loop15;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop10;
                                                                                 }
                                                                                 addr64:
                                                                              }
                                                                              §§goto(addr28);
                                                                           }
                                                                           addr62:
                                                                        }
                                                                     }
                                                                     continue loop12;
                                                                     addr117:
                                                                  }
                                                                  addr122:
                                                                  while(!_loc5_)
                                                                  {
                                                                     §§pop();
                                                                     continue loop15;
                                                                  }
                                                                  continue loop11;
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr243);
                                                         if(!(_loc4_ || param2))
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr62);
                                                      }
                                                   }
                                                   §§goto(addr117);
                                                }
                                                continue loop3;
                                             }
                                             §§goto(addr195);
                                          }
                                          §§goto(addr196);
                                       }
                                       addr126:
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          this.§8!0§.dispose();
                                       }
                                       addr224:
                                    }
                                    §§goto(addr227);
                                 }
                              }
                              §§goto(addr224);
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr126);
         }
         §§goto(addr243);
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(this.§8!0§)
            {
               if(_loc2_ || _loc2_)
               {
                  addr43:
                  this.§8!0§.unlock();
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param3))
         {
            this.§3#§ = param1;
            while(true)
            {
               this.§?8§ = param2;
               loop1:
               while(!_loc6_)
               {
                  while(true)
                  {
                     this.§5!U§ = param3;
                     do
                     {
                        this.§-![§ = param4;
                     }
                     while(!(_loc5_ || param1));
                     
                     if(_loc5_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr73);
      }
   }
}
