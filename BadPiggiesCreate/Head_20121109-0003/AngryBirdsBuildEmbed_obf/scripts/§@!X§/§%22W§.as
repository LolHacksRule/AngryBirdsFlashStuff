package §@!X§
{
   import §-!`§.*;
   import §0!-§.Texture;
   import §6x§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §"W§
   {
      
      private static var §"!f§:Array;
      
      private static var §[!-§:Program3D;
      
      private static var §??§:Vector.<Number>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §??§ = new Vector.<Number>(16,true);
         }
      }
      
      private var §use§:Matrix3D;
      
      private var §=!$§:Matrix3D;
      
      private var §0!2§:Matrix3D;
      
      private var §+P§:Vector.<Matrix3D>;
      
      private var §;!a§:int;
      
      private var §!s§:Vector.<§#L§>;
      
      private var §1!u§:int;
      
      private var §>!L§:Context3D;
      
      private var §+p§:int = -1;
      
      public function §"W§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
            if(_loc1_ || this)
            {
               this.§use§ = new Matrix3D();
               if(_loc1_)
               {
                  addr38:
                  this.§=!$§ = new Matrix3D();
                  if(!_loc2_)
                  {
                     this.§0!2§ = new Matrix3D();
                     if(!_loc2_)
                     {
                        addr60:
                        this.§+P§ = new Vector.<Matrix3D>(0);
                        if(!_loc2_)
                        {
                           §§goto(addr70);
                        }
                        §§goto(addr104);
                     }
                     §§goto(addr113);
                  }
               }
               §§goto(addr60);
            }
            addr70:
            this.§;!a§ = 0;
            this.§1!u§ = 0;
            if(_loc1_ || _loc1_)
            {
               this.§!s§ = new Vector.<§#L§>();
               if(!_loc2_)
               {
                  if(§"!f§ == null)
                  {
                     addr104:
                     §"!f§ = [];
                  }
                  this.§%C§();
               }
               this.§@>§(400,300);
               addr113:
               §7j§.§else§.addEventListener(Event.CONTEXT3D_CREATE,this.§=!S§);
            }
            return;
         }
         §§goto(addr38);
      }
      
      public static function §'!&§(param1:Matrix3D, param2:DisplayObject) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         §§push(param2.x);
         if(_loc11_ || §"W§)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(param2.y);
         if(_loc11_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(param2.rotation);
         if(_loc11_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(param2.scaleX);
         if(!(_loc10_ && §"W§))
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(param2.scaleY);
         if(!_loc10_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(param2.pivotX);
         if(!(_loc10_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc8_:* = §§pop();
         §§push(param2.pivotY);
         if(!(_loc10_ && §"W§))
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         if(_loc11_ || §"W§)
         {
            §§push(_loc5_);
            if(!_loc10_)
            {
               §§push(0);
               if(_loc11_)
               {
                  §§push(§§pop() == §§pop());
                  §§push(§§pop() == §§pop());
                  if(_loc11_ || §"W§)
                  {
                     if(§§pop())
                     {
                        if(_loc11_ || §"W§)
                        {
                           §§pop();
                           if(_loc11_)
                           {
                              §§push(_loc6_);
                              if(_loc11_)
                              {
                                 §§push(1);
                                 if(_loc11_ || _loc3_)
                                 {
                                    addr124:
                                    §§push(§§pop() == §§pop());
                                    §§push(§§pop() == §§pop());
                                    if(_loc11_)
                                    {
                                       if(§§pop())
                                       {
                                          §§pop();
                                          §§push(_loc7_);
                                          §§push(1);
                                          if(!(_loc10_ && _loc3_))
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(!(_loc10_ && param2))
                                             {
                                                addr146:
                                                if(§§pop())
                                                {
                                                   param1.prependTranslation(_loc3_ + _loc8_,_loc4_ + _loc9_,0);
                                                   if(!(_loc11_ || param1))
                                                   {
                                                      addr220:
                                                      param1.prependTranslation(_loc3_,_loc4_,0);
                                                      if(_loc11_ || param2)
                                                      {
                                                         addr232:
                                                         §§push(_loc5_);
                                                         if(_loc11_ || §"W§)
                                                         {
                                                            §§push(0);
                                                            if(!_loc10_)
                                                            {
                                                               if(§§pop() != §§pop())
                                                               {
                                                                  if(_loc11_ || _loc3_)
                                                                  {
                                                                     addr251:
                                                                     param1.prependRotation(_loc5_ / Math.PI * 180,Vector3D.Z_AXIS);
                                                                     §§goto(addr261);
                                                                  }
                                                                  §§goto(addr296);
                                                               }
                                                               addr261:
                                                               §§push(_loc6_);
                                                               §§push(1);
                                                               if(_loc11_ || §"W§)
                                                               {
                                                                  addr270:
                                                                  §§push(§§pop() != §§pop());
                                                                  §§push(§§pop() != §§pop());
                                                                  if(!_loc10_)
                                                                  {
                                                                     addr275:
                                                                     if(!§§pop())
                                                                     {
                                                                        addr276:
                                                                        §§pop();
                                                                        §§push(_loc7_);
                                                                        if(_loc11_)
                                                                        {
                                                                           §§goto(addr335);
                                                                        }
                                                                        addr297:
                                                                        §§push(0);
                                                                        if(!(_loc10_ && param2))
                                                                        {
                                                                           §§push(§§pop() == §§pop());
                                                                           if(!(_loc10_ && param1))
                                                                           {
                                                                              §§push(!§§pop());
                                                                              if(!(_loc10_ && param1))
                                                                              {
                                                                                 addr332:
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       addr335:
                                                                                       §§goto(addr281);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr354);
                                                                              }
                                                                           }
                                                                           §§goto(addr353);
                                                                        }
                                                                        §§goto(addr345);
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        addr291:
                                                                        param1.prependScale(_loc6_,_loc7_,1);
                                                                        addr296:
                                                                        §§goto(addr297);
                                                                        §§push(_loc8_);
                                                                     }
                                                                     §§goto(addr296);
                                                                  }
                                                                  §§goto(addr332);
                                                               }
                                                               addr281:
                                                               §§push(§§pop() == 1);
                                                               if(_loc11_ || param1)
                                                               {
                                                                  §§push(!§§pop());
                                                               }
                                                               §§pop();
                                                               if(_loc11_ || param2)
                                                               {
                                                                  addr354:
                                                                  addr345:
                                                                  §§push(_loc9_ == 0);
                                                                  if(_loc11_ || _loc3_)
                                                                  {
                                                                     addr353:
                                                                     §§push(!§§pop());
                                                                  }
                                                                  if(!§§pop())
                                                                  {
                                                                  }
                                                                  §§goto(addr360);
                                                               }
                                                               param1.prependTranslation(_loc8_,_loc9_,0);
                                                               addr360:
                                                               return;
                                                            }
                                                            §§goto(addr354);
                                                         }
                                                         §§goto(addr297);
                                                      }
                                                      §§goto(addr291);
                                                   }
                                                   §§goto(addr354);
                                                }
                                                else
                                                {
                                                   §§push(_loc3_);
                                                   §§push(0);
                                                   if(!_loc10_)
                                                   {
                                                      addr180:
                                                      §§push(§§pop() != §§pop());
                                                      §§push(§§pop() != §§pop());
                                                      if(_loc11_ || §"W§)
                                                      {
                                                         addr188:
                                                         if(!§§pop())
                                                         {
                                                            §§pop();
                                                            if(!(_loc10_ && param1))
                                                            {
                                                               §§push(_loc4_);
                                                               if(!_loc10_)
                                                               {
                                                                  §§push(0);
                                                                  if(_loc11_ || param1)
                                                                  {
                                                                     addr208:
                                                                     §§push(§§pop() == §§pop());
                                                                     if(!_loc10_)
                                                                     {
                                                                        §§push(!§§pop());
                                                                        if(!(_loc10_ && §"W§))
                                                                        {
                                                                           addr219:
                                                                           if(§§pop())
                                                                           {
                                                                              §§goto(addr220);
                                                                           }
                                                                           §§goto(addr232);
                                                                        }
                                                                        §§goto(addr335);
                                                                     }
                                                                     §§goto(addr276);
                                                                  }
                                                                  §§goto(addr354);
                                                               }
                                                               §§goto(addr276);
                                                            }
                                                            §§goto(addr251);
                                                         }
                                                         §§goto(addr219);
                                                      }
                                                      §§goto(addr275);
                                                   }
                                                   §§goto(addr208);
                                                }
                                             }
                                             §§goto(addr180);
                                          }
                                          §§goto(addr270);
                                       }
                                       §§goto(addr146);
                                    }
                                    §§goto(addr275);
                                 }
                                 §§goto(addr335);
                              }
                              §§goto(addr251);
                           }
                           §§goto(addr232);
                        }
                        §§goto(addr335);
                     }
                     §§goto(addr124);
                  }
                  §§goto(addr188);
               }
               §§goto(addr354);
            }
         }
         §§goto(addr251);
      }
      
      public static function §"!b§(param1:Context3D, param2:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         if(_loc6_ || _loc3_)
         {
            if(param2)
            {
               addr50:
               §§push(Context3DBlendFactor.ONE);
               if(!_loc5_)
               {
                  addr66:
                  §§push(§§pop());
               }
            }
            else
            {
               §§push(Context3DBlendFactor.SOURCE_ALPHA);
               if(_loc6_ || param1)
               {
                  §§goto(addr66);
               }
            }
            var _loc4_:* = §§pop();
            if(_loc6_)
            {
               param1.setBlendFactors(_loc4_,_loc3_);
            }
            return;
         }
         §§goto(addr50);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || §"W§)
         {
            param1.clear(§!!Y§.§&!;§(param2) / 255,§!!Y§.§?!^§(param2) / 255,§!!Y§.§3]§(param2) / 255,param3);
         }
      }
      
      protected function get §]N§() : Matrix3D
      {
         return this.§=!$§;
      }
      
      protected function get §@^§() : Matrix3D
      {
         return this.§use§;
      }
      
      public function §#!8§(param1:Context3D, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            this.§>!L§ = param1;
            if(_loc3_ || param1)
            {
               this.§+p§ = param2;
            }
         }
      }
      
      public function get context() : Context3D
      {
         return this.§>!L§;
      }
      
      public function get §>!a§() : int
      {
         return this.§+p§;
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§#L§ = null;
         var _loc3_:* = this.§!s§;
         for each(_loc1_ in _loc3_)
         {
            if(!_loc5_)
            {
               _loc1_.dispose();
            }
         }
         if(!(_loc5_ && _loc3_))
         {
            §§push(§7j§.§else§);
            if(_loc4_ || _loc1_)
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     addr81:
                     §7j§.§else§.removeEventListener(Event.CONTEXT3D_CREATE,this.§=!S§);
                  }
               }
               return;
            }
         }
         §§goto(addr81);
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            param1.clear(§!!Y§.§&!;§(param2) / 255,§!!Y§.§?!^§(param2) / 255,§!!Y§.§3]§(param2) / 255,param3);
         }
      }
      
      private function §=!S§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§!s§ = new <§#L§>[new §#L§()];
         }
      }
      
      public function §@>§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            §??§[0] = 2 / param1;
            §??§[1] = §??§[2] = §??§[3] = §??§[4] = 0;
            if(!(_loc6_ && param2))
            {
               §??§[5] = -2 / param2;
               if(_loc7_ || param1)
               {
                  addr80:
                  §??§[6] = §??§[7] = §??§[8] = §??§[9] = 0;
                  if(!_loc6_)
                  {
                     §??§[10] = -2 / (param4 - param3);
                     §??§[11] = 0;
                     §??§[12] = -1;
                     if(_loc7_)
                     {
                        §??§[13] = 1;
                        addr125:
                        if(_loc7_ || this)
                        {
                           §??§[14] = -(param4 + param3) / (param4 - param3);
                           addr157:
                           §??§[15] = 1;
                           if(!_loc7_)
                           {
                           }
                           §§goto(addr167);
                        }
                     }
                     this.§use§.copyRawDataFrom(§??§);
                     addr167:
                     return;
                  }
                  §§goto(addr125);
               }
            }
            §§goto(addr157);
         }
         §§goto(addr80);
      }
      
      public function §%C§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§=!$§.identity();
         }
      }
      
      public function §,q§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            this.§=!$§.prependTranslation(param1,param2,param3);
         }
      }
      
      public function §6G§(param1:Number, param2:Vector3D = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            this.§=!$§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
         }
      }
      
      public function §4y§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§=!$§.prependScale(param1,param2,param3);
         }
      }
      
      public function §<N§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §'!&§(this.§=!$§,param1);
         }
      }
      
      public function § !^§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(this.§+P§.length < this.§;!a§ + 1)
            {
               if(_loc3_)
               {
                  this.§+P§.push(new Matrix3D());
                  if(_loc3_ || _loc3_)
                  {
                     addr60:
                     this.§+P§[this.§;!a§++].copyFrom(this.§=!$§);
                  }
                  return;
               }
            }
         }
         §§goto(addr60);
      }
      
      public function §-%§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§=!$§.copyFrom(this.§+P§[--this.§;!a§]);
         }
      }
      
      public function §+!n§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§;!a§ = 0;
            if(_loc1_ || _loc1_)
            {
               addr43:
               this.§%C§();
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function get §7!0§() : Matrix3D
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§0!2§.identity();
            if(!(_loc1_ && _loc1_))
            {
               this.§0!2§.append(this.§=!$§);
               if(_loc2_ || _loc1_)
               {
                  addr51:
                  this.§0!2§.append(this.§use§);
               }
            }
            return this.§0!2§;
         }
         §§goto(addr51);
      }
      
      public function batchQuad(param1:§8!p§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §§push(this.§'#§);
            if(!(_loc5_ && this))
            {
               if(§§pop().§2D§(param1,param3,param4))
               {
                  if(!(_loc5_ && param1))
                  {
                     this.§<Q§();
                     if(_loc6_)
                     {
                        addr66:
                        this.§'#§.§[!9§(param1,param2,param3,param4,this.§=!$§);
                        addr64:
                     }
                  }
                  return;
               }
               §§goto(addr64);
            }
         }
         §§goto(addr66);
      }
      
      public function §<Q§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§'#§);
            if(!(_loc3_ && _loc1_))
            {
               if(§§pop().§1!Z§ > 0)
               {
                  §§push(this.§'#§);
                  if(_loc4_)
                  {
                     §§pop().render(this.context,this.§use§);
                     if(_loc4_ || _loc3_)
                     {
                        addr59:
                        this.§'#§.reset();
                        addr60:
                        var _loc1_:*;
                        §§push((_loc1_ = this).§1!u§);
                        if(_loc4_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc2_:* = §§pop();
                        if(_loc4_ || _loc1_)
                        {
                           _loc1_.§1!u§ = _loc2_;
                        }
                        if(this.§!s§.length <= this.§1!u§)
                        {
                           this.§!s§.push(new §#L§());
                        }
                     }
                  }
                  §§goto(addr59);
               }
               return;
            }
            §§goto(addr59);
         }
         §§goto(addr60);
      }
      
      public function §5!k§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§+!n§();
            if(_loc2_ || this)
            {
               addr43:
               this.§1!u§ = 0;
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            param1.present();
         }
      }
      
      private function get §'#§() : §#L§
      {
         return this.§!s§[this.§1!u§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            if(param3 != §"!f§[param2])
            {
               if(_loc4_ || param1)
               {
                  §"!f§[param2] = param3;
                  if(_loc4_ || param1)
                  {
                     addr66:
                     param1.setTextureAt(param2,param3);
                  }
               }
            }
            return;
         }
         §§goto(addr66);
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(param2 != §[!-§)
            {
               if(!(_loc3_ && this))
               {
                  §[!-§ = param2;
                  if(_loc4_)
                  {
                     param1.setProgram(param2);
                  }
               }
            }
         }
      }
      
      public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
      }
      
      public function get canvas() : BitmapData
      {
         return null;
      }
   }
}
