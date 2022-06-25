package §<&§
{
   import §'!9§.*;
   import §^!+§.Texture;
   import §`s§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §`K§
   {
      
      private static var §19§:Array;
      
      private static var §#n§:Program3D;
      
      private static var §88§:Vector.<Number>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §88§ = new Vector.<Number>(16,true);
         }
      }
      
      private var §9z§:Matrix3D;
      
      private var §8!M§:Matrix3D;
      
      private var §7K§:Matrix3D;
      
      private var §"F§:Vector.<Matrix3D>;
      
      private var §'H§:int;
      
      private var §^!r§:Vector.<§!j§>;
      
      private var §!!!§:int;
      
      private var §9"§:Context3D;
      
      private var §<Q§:int = -1;
      
      public function §`K§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
            while(true)
            {
               this.§9z§ = new Matrix3D();
               while(_loc1_ || _loc1_)
               {
                  this.§8!M§ = new Matrix3D();
                  loop2:
                  while(true)
                  {
                     this.§7K§ = new Matrix3D();
                     addr145:
                     while(true)
                     {
                        this.§"F§ = new Vector.<Matrix3D>(0);
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr145);
      }
      
      public static function §&N§(param1:Matrix3D, param2:DisplayObject) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            param2.§0! §(param1);
         }
      }
      
      public static function §&!m§(param1:Context3D, param2:Boolean) : void
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
               if(_loc5_)
               {
               }
               addr61:
               §§push(§§pop());
            }
            else
            {
               §§push(Context3DBlendFactor.SOURCE_ALPHA);
               if(!_loc5_)
               {
                  §§goto(addr61);
               }
            }
            var _loc4_:* = §§pop();
            if(_loc6_ || §`K§)
            {
               param1.setBlendFactors(_loc4_,_loc3_);
            }
            return;
         }
         §§goto(addr50);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            param1.clear(§ z§.§6!q§(param2) / 255,§ z§.§"5§(param2) / 255,§ z§.§9!,§(param2) / 255,param3);
         }
      }
      
      protected function get §[V§() : Matrix3D
      {
         return this.§8!M§;
      }
      
      protected function get §-j§() : Matrix3D
      {
         return this.§9z§;
      }
      
      public function §6#§(param1:Context3D, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§9"§ = param1;
         }
         do
         {
            this.§<Q§ = param2;
         }
         while(_loc3_ && _loc3_);
         
      }
      
      public function get §8"§() : Context3D
      {
         return this.§9"§;
      }
      
      public function get §5!F§() : int
      {
         return this.§<Q§;
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§!j§ = null;
         var _loc3_:* = this.§^!r§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc4_ || _loc3_)
            {
               _loc1_.dispose();
            }
         }
         if(!_loc5_)
         {
            §§push(§^b§.§9E§);
            if(!(_loc5_ && _loc3_))
            {
               if(!§§pop())
               {
               }
               §§goto(addr86);
            }
            §§pop().removeEventListener(Event.CONTEXT3D_CREATE,this.§!!X§);
         }
         addr86:
         if(_loc4_)
         {
            §§push(§^b§.§9E§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            param1.clear(§ z§.§6!q§(param2) / 255,§ z§.§"5§(param2) / 255,§ z§.§9!,§(param2) / 255,param3);
         }
      }
      
      private function §!!X§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§^!r§ = new <§!j§>[new §!j§()];
         }
      }
      
      public function § !T§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param3)
         {
            §88§[0] = 2 / param1;
            if(_loc6_ || param3)
            {
               §88§[1] = §88§[2] = §88§[3] = §88§[4] = 0;
               if(_loc6_)
               {
                  §88§[5] = -2 / param2;
                  if(!(_loc7_ && this))
                  {
                     var _loc5_:*;
                     §88§[9] = _loc5_ = 0;
                     §88§[6] = §88§[7] = §88§[8] = _loc5_;
                     if(_loc6_)
                     {
                        §88§[10] = -2 / (param4 - param3);
                        addr113:
                     }
                     while(true)
                     {
                        §88§[11] = 0;
                        loop1:
                        for(; !(_loc7_ && param3); while(_loc6_ || this)
                        {
                           §88§[14] = -(param4 + param3) / (param4 - param3);
                           §§goto(addr160);
                           §§goto(addr133);
                        })
                        {
                           §88§[12] = -1;
                           while(true)
                           {
                              §88§[13] = 1;
                              continue loop1;
                              addr140:
                              if(_loc6_ || param1)
                              {
                                 while(true)
                                 {
                                    this.§9z§.copyRawDataFrom(§88§);
                                    if(!_loc7_)
                                    {
                                       break;
                                    }
                                    loop5:
                                    while(true)
                                    {
                                       if(_loc6_)
                                       {
                                          addr133:
                                          if(!(_loc6_ || param2))
                                          {
                                             break;
                                          }
                                          §§goto(addr140);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §88§[15] = 1;
                                             continue loop5;
                                          }
                                          addr160:
                                       }
                                    }
                                    continue loop1;
                                 }
                                 return;
                                 addr147:
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr189);
               }
               §§goto(addr147);
            }
         }
         §§goto(addr113);
      }
      
      public function §4z§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§8!M§.identity();
         }
      }
      
      public function §-W§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§8!M§.prependTranslation(param1,param2,param3);
         }
      }
      
      public function § !V§(param1:Number, param2:Vector3D = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§8!M§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
         }
      }
      
      public function §[!!§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            this.§8!M§.prependScale(param1,param2,param3);
         }
      }
      
      public function §0! §(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            param1.§0! §(this.§8!M§);
         }
      }
      
      public function §<!C§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            if(this.§"F§.length < this.§'H§ + 1)
            {
               if(_loc3_)
               {
                  this.§"F§.push(new Matrix3D());
                  if(_loc4_ && _loc2_)
                  {
                  }
               }
               §§goto(addr83);
            }
            this.§"F§[this.§'H§++].copyFrom(this.§8!M§);
         }
         addr83:
      }
      
      public function §%!Q§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc1_)
         {
            this.§8!M§.copyFrom(this.§"F§[--this.§'H§]);
         }
      }
      
      public function §=!5§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§'H§ = 0;
            do
            {
               this.§4z§();
            }
            while(!_loc1_);
            
         }
      }
      
      public function get §7!Y§() : Matrix3D
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§7K§.identity();
            while(true)
            {
               this.§7K§.append(this.§8!M§);
               while(_loc1_)
               {
                  this.§7K§.append(this.§9z§);
                  if(_loc1_)
                  {
                     return this.§7K§;
                     addr43:
                  }
               }
            }
         }
         §§goto(addr43);
      }
      
      public function batchQuad(param1:§%!g§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            §§push(this.§2!3§);
            while(true)
            {
               if(!§§pop().§#2§(param1,param3,param4))
               {
                  continue;
               }
               while(true)
               {
                  this.§!r§();
               }
            }
         }
         while(true)
         {
            §§goto(addr34);
         }
      }
      
      public function §!r§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§2!3§);
            if(_loc3_ || _loc1_)
            {
               if(§§pop().§4!y§ > 0)
               {
                  if(!_loc4_)
                  {
                     §§push(this.§2!3§);
                     if(_loc3_ || this)
                     {
                        §§pop().render(this.§8"§,this.§9z§);
                        if(!(_loc4_ && _loc3_))
                        {
                           §§goto(addr65);
                        }
                        §§goto(addr68);
                     }
                     addr65:
                     this.§2!3§.reset();
                     addr63:
                     if(_loc3_)
                     {
                        addr68:
                        var _loc1_:*;
                        §§push((_loc1_ = this).§!!!§);
                        if(!(_loc4_ && this))
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc2_:* = §§pop();
                        if(!(_loc4_ && _loc1_))
                        {
                           _loc1_.§!!!§ = _loc2_;
                        }
                        if(!_loc4_)
                        {
                           if(this.§^!r§.length <= this.§!!!§)
                           {
                              if(_loc3_ || _loc3_)
                              {
                              }
                           }
                           §§goto(addr123);
                        }
                     }
                     this.§^!r§.push(new §!j§());
                     §§goto(addr123);
                  }
               }
               addr123:
               return;
            }
            §§goto(addr65);
         }
         §§goto(addr63);
      }
      
      public function §[!P§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§=!5§();
         }
         do
         {
            this.§!!!§ = 0;
         }
         while(_loc1_ && _loc1_);
         
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            param1.present();
         }
      }
      
      private function get §2!3§() : §!j§
      {
         return this.§^!r§[this.§!!!§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            if(param3 != §19§[param2])
            {
               do
               {
                  §19§[param2] = param3;
                  do
                  {
                     param1.setTextureAt(param2,param3);
                  }
                  while(!(_loc4_ || param3));
                  
               }
               while(_loc5_);
               
               addr53:
            }
            return;
         }
         §§goto(addr53);
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            if(param2 != §#n§)
            {
               if(_loc3_)
               {
                  addr50:
                  §#n§ = param2;
               }
               do
               {
                  param1.setProgram(param2);
               }
               while(!_loc3_);
               
            }
            return;
         }
         §§goto(addr50);
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
