package §_-gY§
{
   import §_-LP§.DisplayObject;
   import §_-ia§.§_-xi§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DBlendFactor;
   import flash.display3D.Program3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Matrix3D;
   import flash.geom.Vector3D;
   
   public class §_-K6§
   {
      
      public static const §_-JS§:int = 1;
      
      private static var §_-vV§:Array;
      
      private static var §_-q2§:Program3D;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §_-JS§ = 1;
         }
      }
      
      private var §_-7B§:Matrix3D;
      
      private var §_-Qy§:Matrix3D;
      
      public function §_-K6§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         super();
         this.§_-7B§ = new Matrix3D();
         this.§_-Qy§ = new Matrix3D();
         if(!(_loc2_ && this))
         {
            if(§_-vV§ == null)
            {
               §_-vV§ = [];
               if(_loc1_ || _loc1_)
               {
                  addr50:
                  this.§_-Dj§();
                  if(_loc1_ || _loc2_)
                  {
                  }
                  §§goto(addr70);
               }
               this.§_-M1§(400,300);
               addr70:
               return;
            }
         }
         §§goto(addr50);
      }
      
      public static function §_-vF§(param1:Matrix3D, param2:DisplayObject) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         §§push(param2.x);
         if(_loc10_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(param2.y);
         if(!(_loc11_ && §_-K6§))
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(param2.rotation);
         if(_loc10_ || §_-K6§)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(param2.scaleX);
         if(_loc10_)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(param2.scaleY);
         if(!(_loc11_ && param2))
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(param2.pivotX);
         if(!(_loc11_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc8_:* = §§pop();
         §§push(param2.pivotY);
         if(_loc10_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc5_);
         §§push(0);
         if(!_loc11_)
         {
            §§push(§§pop() == §§pop());
            §§push(§§pop() == §§pop());
            if(!_loc11_)
            {
               if(§§pop())
               {
                  §§pop();
                  if(_loc10_ || _loc3_)
                  {
                     §§push(_loc6_);
                     if(_loc10_ || §_-K6§)
                     {
                        §§push(1);
                        if(!_loc11_)
                        {
                           §§push(§§pop() == §§pop());
                           if(_loc10_)
                           {
                              addr116:
                              §§push(§§pop());
                              if(!(_loc11_ && _loc3_))
                              {
                                 addr124:
                                 if(§§pop())
                                 {
                                    §§pop();
                                    if(_loc10_ || §_-K6§)
                                    {
                                       addr134:
                                       §§push(_loc7_);
                                       §§push(1);
                                       if(_loc10_)
                                       {
                                          addr138:
                                          if(§§pop() == §§pop())
                                          {
                                             if(_loc10_)
                                             {
                                                param1.prependTranslation(_loc3_ + _loc8_,_loc4_ + _loc9_,0);
                                             }
                                             else
                                             {
                                                addr284:
                                                param1.prependScale(_loc6_,_loc7_,1);
                                                §§push(_loc8_);
                                                §§push(0);
                                                if(!_loc11_)
                                                {
                                                   addr303:
                                                   §§push(§§pop() == §§pop());
                                                   if(!(_loc11_ && _loc3_))
                                                   {
                                                      addr301:
                                                      §§push(!§§pop());
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      §§pop();
                                                      addr307:
                                                      §§push(_loc9_ == 0);
                                                      if(_loc10_)
                                                      {
                                                         addr310:
                                                         §§push(!§§pop());
                                                      }
                                                   }
                                                   if(§§pop())
                                                   {
                                                      if(_loc10_ || _loc3_)
                                                      {
                                                         addr326:
                                                         param1.prependTranslation(_loc8_,_loc9_,0);
                                                      }
                                                   }
                                                   §§goto(addr331);
                                                }
                                                §§goto(addr307);
                                             }
                                             §§goto(addr331);
                                          }
                                          else
                                          {
                                             §§push(_loc3_);
                                             if(_loc10_ || §_-K6§)
                                             {
                                                §§push(0);
                                                if(!(_loc11_ && §_-K6§))
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc10_ || param2)
                                                   {
                                                      addr183:
                                                      §§push(!§§pop());
                                                      §§push(!§§pop());
                                                      if(_loc10_)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            §§pop();
                                                            §§push(_loc4_);
                                                            §§push(0);
                                                            if(_loc10_)
                                                            {
                                                               addr192:
                                                               §§push(§§pop() == §§pop());
                                                               if(!(_loc11_ && §_-K6§))
                                                               {
                                                                  addr201:
                                                                  if(!§§pop())
                                                                  {
                                                                     param1.prependTranslation(_loc3_,_loc4_,0);
                                                                  }
                                                                  §§push(_loc5_);
                                                                  §§push(0);
                                                                  if(_loc10_ || _loc3_)
                                                                  {
                                                                     addr216:
                                                                     if(§§pop() != §§pop())
                                                                     {
                                                                        param1.prependRotation(_loc5_ / Math.PI * 180,Vector3D.Z_AXIS);
                                                                        if(!_loc11_)
                                                                        {
                                                                           addr229:
                                                                           §§push(_loc6_);
                                                                           if(_loc10_)
                                                                           {
                                                                              §§push(1);
                                                                              if(!_loc11_)
                                                                              {
                                                                                 addr235:
                                                                                 §§push(§§pop() == §§pop());
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    §§push(!§§pop());
                                                                                    if(_loc10_ || §_-K6§)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          addr249:
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             §§pop();
                                                                                             if(_loc10_ || param1)
                                                                                             {
                                                                                                §§push(_loc7_);
                                                                                                if(_loc10_ || param2)
                                                                                                {
                                                                                                   addr267:
                                                                                                   §§push(§§pop() == 1);
                                                                                                   if(!(_loc11_ && §_-K6§))
                                                                                                   {
                                                                                                      addr276:
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         if(!(_loc11_ && param1))
                                                                                                         {
                                                                                                            §§goto(addr284);
                                                                                                         }
                                                                                                         §§goto(addr331);
                                                                                                      }
                                                                                                      §§goto(addr284);
                                                                                                   }
                                                                                                   §§goto(addr301);
                                                                                                }
                                                                                                §§goto(addr307);
                                                                                             }
                                                                                             §§goto(addr331);
                                                                                          }
                                                                                          §§goto(addr276);
                                                                                       }
                                                                                       §§goto(addr303);
                                                                                    }
                                                                                    §§goto(addr276);
                                                                                 }
                                                                                 §§goto(addr310);
                                                                              }
                                                                              §§goto(addr267);
                                                                           }
                                                                           §§goto(addr284);
                                                                        }
                                                                        addr331:
                                                                        return;
                                                                     }
                                                                     §§goto(addr229);
                                                                  }
                                                               }
                                                               §§goto(addr303);
                                                            }
                                                            §§goto(addr216);
                                                         }
                                                         §§goto(addr201);
                                                      }
                                                      §§goto(addr303);
                                                   }
                                                   §§goto(addr301);
                                                }
                                                §§goto(addr307);
                                             }
                                             §§goto(addr201);
                                          }
                                       }
                                       §§goto(addr235);
                                    }
                                    §§goto(addr326);
                                 }
                                 §§goto(addr138);
                              }
                              §§goto(addr249);
                           }
                           §§goto(addr183);
                        }
                        §§goto(addr267);
                     }
                     §§goto(addr134);
                  }
                  §§goto(addr307);
               }
               §§goto(addr116);
            }
            §§goto(addr124);
         }
         §§goto(addr192);
      }
      
      public function §_-M1§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:Vector.<Number> = new <Number>[2 / param1,0,0,0,0,-2 / param2,0,0,0,0,-2 / (param4 - param3),0,-1,1,-(param4 + param3) / (param4 - param3),1];
         if(!_loc6_)
         {
            this.§_-7B§.copyRawDataFrom(_loc5_);
         }
      }
      
      public function §_-Dj§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§_-Qy§.identity();
         }
      }
      
      public function §_-l-§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§_-Qy§.prependTranslation(param1,param2,param3);
         }
      }
      
      public function §_-1R§(param1:Number, param2:Vector3D = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            this.§_-Qy§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
         }
      }
      
      public function §_-LY§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§_-Qy§.prependScale(param1,param2,param3);
         }
      }
      
      public function §_-FA§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §_-vF§(this.§_-Qy§,param1);
         }
      }
      
      public function §_-TX§(param1:Matrix3D) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            param1.copyFrom(this.§_-Qy§);
         }
      }
      
      public function §_-2v§(param1:Matrix3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§_-Qy§.copyFrom(param1);
         }
      }
      
      public function §_-ar§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§_-Dj§();
            if(_loc2_ || _loc2_)
            {
               this.§_-Qy§.copyFrom(this.§_-7B§);
            }
         }
      }
      
      public function get §_-wW§() : Matrix3D
      {
         return this.§_-Qy§;
      }
      
      public function §_-Nw§(param1:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         if(!(_loc4_ && this))
         {
            if(param1)
            {
               addr34:
               §§push(Context3DBlendFactor.ONE);
               if(_loc5_)
               {
                  addr52:
                  §§push(§§pop());
               }
            }
            else
            {
               §§push(Context3DBlendFactor.SOURCE_ALPHA);
               if(!_loc4_)
               {
                  §§goto(addr52);
               }
            }
            var _loc3_:* = §§pop();
            if(!_loc4_)
            {
               §_-Vu§.§_-ez§.setBlendFactors(_loc3_,_loc2_);
            }
            return;
         }
         §§goto(addr34);
      }
      
      public function clear(param1:uint = 0, param2:Number = 0.0) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §_-Vu§.§_-ez§.clear(§_-xi§.§_-UI§(param1) / 255,§_-xi§.§_-KU§(param1) / 255,§_-xi§.§_-gf§(param1) / 255,param2);
         }
      }
      
      public function setTextureAt(param1:int, param2:TextureBase) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Context3D = null;
         if(!(_loc5_ && _loc3_))
         {
            if(param2 != §_-vV§[param1])
            {
               if(!_loc5_)
               {
                  §_-vV§[param1] = param2;
                  _loc3_ = §_-Vu§.§_-ez§;
                  addr41:
                  if(_loc4_)
                  {
                     _loc3_.setTextureAt(param1,param2);
                  }
               }
               §§goto(addr41);
            }
            return;
         }
         §§goto(addr41);
      }
      
      public function setProgram(param1:Program3D) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Context3D = null;
         if(!(_loc3_ && param1))
         {
            if(param1 != §_-q2§)
            {
               if(_loc4_)
               {
                  addr36:
                  §_-q2§ = param1;
               }
               _loc2_ = §_-Vu§.§_-ez§;
               if(!(_loc3_ && param1))
               {
                  _loc2_.setProgram(param1);
               }
            }
            return;
         }
         §§goto(addr36);
      }
   }
}
