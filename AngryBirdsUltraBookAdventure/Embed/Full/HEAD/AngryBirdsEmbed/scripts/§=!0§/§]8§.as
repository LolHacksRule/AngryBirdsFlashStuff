package §=!0§
{
   import §&o§.§<3§;
   import §'j§.§]Z§;
   import §0! §.Texture;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §]8§ extends §2N§
   {
       
      
      private var §"B§:BitmapData;
      
      private var §,l§:int = 0;
      
      private var §!>§:int = 0;
      
      private var §=H§:Number = 1.0;
      
      private var §@F§:Number = 1.0;
      
      private var §=3§:BitmapData;
      
      private var §0!F§:Vector.<Number>;
      
      private var §<0§:Matrix;
      
      private var §,-§:ColorTransform;
      
      public function §]8§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§0!F§ = new Vector.<Number>(16);
            if(!(_loc1_ && _loc2_))
            {
               this.§<0§ = new Matrix();
               if(!_loc1_)
               {
                  this.§,-§ = new ColorTransform();
                  if(!_loc2_)
                  {
                  }
                  §§goto(addr79);
               }
            }
            super();
            if(_loc1_ && _loc1_)
            {
            }
            §§goto(addr79);
         }
         addr79:
         this.§=3§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§"B§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.dispose();
            if(_loc2_ || _loc1_)
            {
               if(this.§=3§)
               {
                  if(!_loc1_)
                  {
                     this.§=3§.dispose();
                     if(!_loc2_)
                     {
                     }
                     §§goto(addr56);
                  }
               }
               §§goto(addr56);
            }
            this.§=3§ = null;
         }
         addr56:
      }
      
      override public function batchQuad(param1:§<3§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:* = uint(0);
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(_loc8_ || param2)
         {
            if(this.§"B§)
            {
               §+k§.copyRawDataTo(this.§0!F§,0);
               if(_loc8_ || param2)
               {
                  this.§<0§.setTo(this.§0!F§[0],this.§0!F§[1],this.§0!F§[4],this.§0!F§[5],this.§0!F§[12],this.§0!F§[13]);
                  addr74:
                  this.§<0§.scale(this.§=H§,this.§@F§);
                  §§push(param1.color);
                  if(!_loc9_)
                  {
                     §§push(uint(§§pop()));
                  }
                  _loc5_ = §§pop();
               }
               §§push(param2);
               if(!_loc9_)
               {
                  §§push(§§pop() * param1.alpha);
                  if(!_loc9_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               param2 = §§pop();
               _loc6_ = null;
               if(!(_loc9_ && param2))
               {
                  §§push(Boolean(param3));
                  if(!_loc9_)
                  {
                     if(§§pop())
                     {
                        if(!_loc9_)
                        {
                           §§pop();
                           if(!_loc9_)
                           {
                              addr118:
                              §§push(_loc5_ == 16777215);
                              if(!_loc9_)
                              {
                                 addr124:
                                 if(!§§pop())
                                 {
                                    if(_loc8_)
                                    {
                                       (_loc6_ = this.§,-§).redMultiplier = §]Z§.§3e§(_loc5_) / 255;
                                       addr127:
                                       if(_loc8_ || param1)
                                       {
                                          _loc6_.greenMultiplier = §]Z§.§7Z§(_loc5_) / 255;
                                          if(_loc9_ && this)
                                          {
                                          }
                                          addr186:
                                          if(param2 != 1)
                                          {
                                             addr189:
                                             (_loc6_ = this.§,-§).alphaMultiplier = param2;
                                          }
                                          if((_loc7_ = param1.clippedBitmapData) == null)
                                          {
                                             if(!(_loc9_ && this))
                                             {
                                                this.§=3§.setPixel(0,0,param1.color);
                                                if(_loc9_)
                                                {
                                                }
                                                §§goto(addr298);
                                             }
                                             _loc7_ = this.§=3§;
                                             if(_loc8_)
                                             {
                                                this.§<0§.a *= param1.initialWidth;
                                                if(!_loc9_)
                                                {
                                                   addr236:
                                                   this.§<0§.b *= param1.initialWidth;
                                                   if(_loc9_ && param1)
                                                   {
                                                   }
                                                   §§goto(addr287);
                                                }
                                                this.§<0§.c *= param1.initialHeight;
                                                if(_loc8_ || this)
                                                {
                                                   this.§<0§.d *= param1.initialHeight;
                                                   §§goto(addr287);
                                                }
                                                addr287:
                                                this.§"B§.draw(_loc7_,this.§<0§,_loc6_,null,null,param1.highQuality);
                                                §§goto(addr298);
                                             }
                                          }
                                          §§goto(addr236);
                                       }
                                       _loc6_.blueMultiplier = §]Z§.§?P§(_loc5_) / 255;
                                       if(_loc8_ || param3)
                                       {
                                          _loc6_.alphaMultiplier = 1;
                                       }
                                       §§goto(addr186);
                                    }
                                    §§goto(addr189);
                                 }
                                 §§goto(addr186);
                              }
                              §§goto(addr124);
                           }
                           §§goto(addr127);
                        }
                     }
                  }
                  §§goto(addr124);
               }
               §§goto(addr118);
            }
            addr298:
            return;
         }
         §§goto(addr74);
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(this.§"B§)
         {
            §§push(this.§"B§.width != this.§,l§);
            if(_loc4_)
            {
               §§push(§§pop());
               if(_loc4_ || param1)
               {
                  if(!§§pop())
                  {
                     §§pop();
                     if(!_loc5_)
                     {
                        addr47:
                        if(this.§"B§.height != this.§!>§)
                        {
                           if(!(_loc5_ && this))
                           {
                              this.§"B§.dispose();
                              this.§"B§ = null;
                              if(!_loc5_)
                              {
                                 addr83:
                                 §§push(this.§"B§ == null);
                                 if(!_loc5_)
                                 {
                                    addr89:
                                    §§push(§§pop());
                                    if(!(_loc5_ && param2))
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc5_)
                                          {
                                             §§pop();
                                             addr101:
                                             §§push(this.§,l§);
                                             if(_loc4_ || this)
                                             {
                                                §§push(0);
                                                if(!_loc5_)
                                                {
                                                   addr114:
                                                   addr115:
                                                   §§push(§§pop() > §§pop());
                                                   if(§§pop() > §§pop())
                                                   {
                                                      §§pop();
                                                      §§goto(addr158);
                                                   }
                                                   addr133:
                                                   if(§§pop())
                                                   {
                                                      this.§"B§ = new BitmapData(this.§,l§,this.§!>§,true,4278190080 | param2);
                                                      if(_loc4_ || param3)
                                                      {
                                                         addr153:
                                                         if(this.§"B§)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               §§goto(addr158);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr158);
                                                   }
                                                   §§goto(addr153);
                                                }
                                                §§goto(addr133);
                                                §§push(§§pop() > §§pop());
                                             }
                                             §§goto(addr121);
                                          }
                                       }
                                       §§goto(addr114);
                                    }
                                    §§goto(addr115);
                                 }
                                 §§goto(addr114);
                              }
                              addr158:
                              if(!_loc5_)
                              {
                                 addr121:
                                 §§push(this.§!>§);
                                 §§push(0);
                              }
                              this.§"B§.lock();
                              return;
                           }
                           §§goto(addr101);
                        }
                        else
                        {
                           this.§"B§.fillRect(this.§"B§.rect,4278190080 | param2);
                           §§goto(addr83);
                        }
                     }
                     §§goto(addr121);
                  }
                  §§goto(addr47);
               }
               §§goto(addr114);
            }
            §§goto(addr89);
         }
         §§goto(addr83);
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(this.§"B§)
            {
               if(!(_loc2_ && param1))
               {
                  addr44:
                  this.§"B§.unlock();
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§,l§ = param1;
            if(_loc5_ || this)
            {
               addr38:
               this.§!>§ = param2;
               if(!_loc6_)
               {
                  this.§=H§ = param3;
                  if(_loc5_)
                  {
                     addr48:
                     this.§@F§ = param4;
                  }
                  return;
               }
            }
            §§goto(addr48);
         }
         §§goto(addr38);
      }
   }
}
