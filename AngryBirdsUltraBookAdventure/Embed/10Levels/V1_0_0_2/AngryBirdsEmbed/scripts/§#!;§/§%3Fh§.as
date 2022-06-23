package §#!;§
{
   import §5!@§.Texture;
   import §9W§.*;
   import §@e§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §?h§
   {
      
      private static var §-$§:Array;
      
      private static var §#L§:Program3D;
      
      private static var §`d§:Vector.<Number>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §`d§ = new Vector.<Number>(16,true);
         }
      }
      
      private var §>!C§:Matrix3D;
      
      private var §50§:Matrix3D;
      
      private var §&<§:Matrix3D;
      
      private var §3a§:Vector.<Matrix3D>;
      
      private var §-!1§:int;
      
      private var §,Z§:Vector.<§,U§>;
      
      private var §,!9§:int;
      
      private var §2!6§:Context3D;
      
      private var §]!6§:int = -1;
      
      public function §?h§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         super();
         this.§>!C§ = new Matrix3D();
         this.§50§ = new Matrix3D();
         this.§&<§ = new Matrix3D();
         if(_loc1_)
         {
            this.§3a§ = new Vector.<Matrix3D>(0);
            this.§-!1§ = 0;
            if(_loc1_ || this)
            {
               this.§,!9§ = 0;
               if(_loc1_ || _loc2_)
               {
                  addr70:
                  this.§,Z§ = new Vector.<§,U§>();
               }
               if(§-$§ == null)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §-$§ = [];
                  }
                  §§goto(addr112);
               }
               this.§>;§();
               this.§'B§(400,300);
               if(_loc1_ || this)
               {
               }
               §§goto(addr112);
            }
            §§goto(addr70);
         }
         addr112:
         §;T§.§,H§.addEventListener(Event.CONTEXT3D_CREATE,this.§'!0§);
      }
      
      public static function §58§(param1:Matrix3D, param2:DisplayObject) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || §?h§)
         {
            param2.§&f§(param1);
         }
      }
      
      public static function §=1§(param1:Context3D, param2:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         if(_loc5_)
         {
            if(param2)
            {
               addr34:
               §§push(Context3DBlendFactor.ONE);
               if(!_loc6_)
               {
                  addr45:
                  §§push(§§pop());
               }
            }
            else
            {
               §§push(Context3DBlendFactor.SOURCE_ALPHA);
               if(!_loc6_)
               {
                  §§goto(addr45);
               }
            }
            var _loc4_:* = §§pop();
            if(_loc5_ || §?h§)
            {
               param1.setBlendFactors(_loc4_,_loc3_);
            }
            return;
         }
         §§goto(addr34);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            param1.clear(§=!2§.§`_§(param2) / 255,§=!2§.§"!5§(param2) / 255,§=!2§.§+L§(param2) / 255,param3);
         }
      }
      
      protected function get §9v§() : Matrix3D
      {
         return this.§50§;
      }
      
      protected function get §1"§() : Matrix3D
      {
         return this.§>!C§;
      }
      
      public function §51§(param1:Context3D, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§2!6§ = param1;
            if(_loc3_)
            {
               this.§]!6§ = param2;
            }
         }
      }
      
      public function get context() : Context3D
      {
         return this.§2!6§;
      }
      
      public function get §4+§() : int
      {
         return this.§]!6§;
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§,U§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§,Z§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc5_ || _loc3_)
            {
               _loc1_.dispose();
            }
         }
         if(!(_loc4_ && _loc3_))
         {
            §§push(§;T§.§,H§);
            if(!(_loc4_ && _loc2_))
            {
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     addr87:
                     §;T§.§,H§.removeEventListener(Event.CONTEXT3D_CREATE,this.§'!0§);
                  }
               }
               return;
            }
         }
         §§goto(addr87);
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            param1.clear(§=!2§.§`_§(param2) / 255,§=!2§.§"!5§(param2) / 255,§=!2§.§+L§(param2) / 255,param3);
         }
      }
      
      private function §'!0§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§,Z§ = new <§,U§>[new §,U§()];
         }
      }
      
      public function §'B§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param1)
         {
            §`d§[0] = 2 / param1;
            if(_loc6_)
            {
               §`d§[1] = §`d§[2] = §`d§[3] = §`d§[4] = 0;
               if(!(_loc7_ && param3))
               {
                  §`d§[5] = -2 / param2;
                  if(!_loc7_)
                  {
                     §`d§[6] = §`d§[7] = §`d§[8] = §`d§[9] = 0;
                     addr106:
                     §`d§[10] = -2 / (param4 - param3);
                     §`d§[11] = 0;
                     §`d§[12] = -1;
                     if(!_loc7_)
                     {
                        §`d§[13] = 1;
                        §`d§[14] = -(param4 + param3) / (param4 - param3);
                        §`d§[15] = 1;
                        if(!(_loc7_ && param3))
                        {
                           addr160:
                           this.§>!C§.copyRawDataFrom(§`d§);
                        }
                        return;
                     }
                  }
                  §§goto(addr160);
               }
            }
         }
         §§goto(addr106);
      }
      
      public function §>;§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§50§.identity();
         }
      }
      
      public function §"!H§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            this.§50§.prependTranslation(param1,param2,param3);
         }
      }
      
      public function §3!B§(param1:Number, param2:Vector3D = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            this.§50§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
         }
      }
      
      public function §!!@§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            this.§50§.prependScale(param1,param2,param3);
         }
      }
      
      public function §&f§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            param1.§&f§(this.§50§);
         }
      }
      
      public function §<R§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(this.§3a§.length < this.§-!1§ + 1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this.§3a§.push(new Matrix3D());
                  if(_loc3_ || _loc1_)
                  {
                     addr65:
                     this.§3a§[this.§-!1§++].copyFrom(this.§50§);
                  }
               }
               return;
            }
         }
         §§goto(addr65);
      }
      
      public function §;l§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            this.§50§.copyFrom(this.§3a§[--this.§-!1§]);
         }
      }
      
      public function §%5§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§-!1§ = 0;
            if(_loc1_ || this)
            {
               this.§>;§();
            }
         }
      }
      
      public function get §;+§() : Matrix3D
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§&<§.identity();
            if(!(_loc1_ && this))
            {
               §§goto(addr39);
            }
            §§goto(addr46);
         }
         addr39:
         this.§&<§.append(this.§50§);
         if(_loc2_)
         {
            addr46:
            this.§&<§.append(this.§>!C§);
         }
         return this.§&<§;
      }
      
      public function batchQuad(param1:§3g§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            §§push(this.§5s§);
            if(!_loc6_)
            {
               if(§§pop().§9h§(param1,param3,param4))
               {
                  if(_loc5_ || param1)
                  {
                     this.§?Y§();
                     if(!_loc6_)
                     {
                        addr65:
                        this.§5s§.§+B§(param1,param2,param3,param4,this.§50§);
                        addr63:
                     }
                  }
                  return;
               }
               §§goto(addr63);
            }
         }
         §§goto(addr65);
      }
      
      public function §?Y§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§5s§);
         if(!_loc3_)
         {
            if(§§pop().§+!-§ > 0)
            {
               if(_loc4_)
               {
                  §§push(this.§5s§);
                  if(_loc4_)
                  {
                     addr30:
                     §§pop().render(this.context,this.§>!C§);
                     if(_loc4_ || _loc2_)
                     {
                        addr54:
                        this.§5s§.reset();
                        addr52:
                        if(_loc4_)
                        {
                           var _loc1_:*;
                           §§push((_loc1_ = this).§,!9§);
                           if(_loc4_)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc2_:* = §§pop();
                           if(_loc4_ || this)
                           {
                              _loc1_.§,!9§ = _loc2_;
                           }
                        }
                        if(this.§,Z§.length <= this.§,!9§)
                        {
                           if(_loc4_ || _loc1_)
                           {
                           }
                        }
                        §§goto(addr105);
                     }
                     this.§,Z§.push(new §,U§());
                     §§goto(addr105);
                  }
                  §§goto(addr54);
               }
               §§goto(addr52);
            }
            addr105:
            return;
         }
         §§goto(addr30);
      }
      
      public function §#7§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§%5§();
            if(!_loc1_)
            {
               addr23:
               this.§,!9§ = 0;
            }
            return;
         }
         §§goto(addr23);
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            param1.present();
         }
      }
      
      private function get §5s§() : §,U§
      {
         return this.§,Z§[this.§,!9§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(param3 != §-$§[param2])
            {
               if(!(_loc4_ && this))
               {
                  §-$§[param2] = param3;
                  if(!_loc4_)
                  {
                     addr47:
                     param1.setTextureAt(param2,param3);
                  }
               }
               §§goto(addr47);
            }
            return;
         }
         §§goto(addr47);
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(param2 != §#L§)
            {
               if(!(_loc4_ && _loc3_))
               {
                  §#L§ = param2;
                  if(!_loc4_)
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
