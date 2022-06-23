package §&p§
{
   import §8f§.*;
   import §?^§.*;
   import each.Texture;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §`G§
   {
      
      private static var §8!D§:Array;
      
      private static var §"!4§:Program3D;
      
      private static var §'S§:Vector.<Number>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §'S§ = new Vector.<Number>(16,true);
         }
      }
      
      private var §^G§:Matrix3D;
      
      private var §-!%§:Matrix3D;
      
      private var §]p§:Matrix3D;
      
      private var §5c§:Vector.<Matrix3D>;
      
      private var §?!E§:int;
      
      private var §4X§:Vector.<§%?§>;
      
      private var §<v§:int;
      
      private var §+!'§:Context3D;
      
      private var §+Y§:int = -1;
      
      public function §`G§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         super();
         this.§^G§ = new Matrix3D();
         this.§-!%§ = new Matrix3D();
         this.§]p§ = new Matrix3D();
         if(_loc1_)
         {
            this.§5c§ = new Vector.<Matrix3D>(0);
            this.§?!E§ = 0;
            if(_loc1_ || this)
            {
               this.§<v§ = 0;
               if(_loc1_ || _loc2_)
               {
                  addr70:
                  this.§4X§ = new Vector.<§%?§>();
               }
               if(§8!D§ == null)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §8!D§ = [];
                  }
                  §§goto(addr112);
               }
               this.§;V§();
               this.§=%§(400,300);
               if(_loc1_ || this)
               {
               }
               §§goto(addr112);
            }
            §§goto(addr70);
         }
         addr112:
         §'_§.§17§.addEventListener(Event.CONTEXT3D_CREATE,this.§-%§);
      }
      
      public static function §@"§(param1:Matrix3D, param2:DisplayObject) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || §`G§)
         {
            param2.§5!F§(param1);
         }
      }
      
      public static function §1!8§(param1:Context3D, param2:Boolean) : void
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
            if(_loc5_ || §`G§)
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
            param1.clear(§<A§.§2t§(param2) / 255,§<A§.§;c§(param2) / 255,§<A§.§^q§(param2) / 255,param3);
         }
      }
      
      protected function get §%G§() : Matrix3D
      {
         return this.§-!%§;
      }
      
      protected function get §01§() : Matrix3D
      {
         return this.§^G§;
      }
      
      public function §!n§(param1:Context3D, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§+!'§ = param1;
            if(_loc3_)
            {
               this.§+Y§ = param2;
            }
         }
      }
      
      public function get context() : Context3D
      {
         return this.§+!'§;
      }
      
      public function get §4O§() : int
      {
         return this.§+Y§;
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§%?§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§4X§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc5_ || _loc3_)
            {
               _loc1_.dispose();
            }
         }
         if(!(_loc4_ && _loc3_))
         {
            §§push(§'_§.§17§);
            if(!(_loc4_ && _loc2_))
            {
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     addr87:
                     §'_§.§17§.removeEventListener(Event.CONTEXT3D_CREATE,this.§-%§);
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
            param1.clear(§<A§.§2t§(param2) / 255,§<A§.§;c§(param2) / 255,§<A§.§^q§(param2) / 255,param3);
         }
      }
      
      private function §-%§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§4X§ = new <§%?§>[new §%?§()];
         }
      }
      
      public function §=%§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param1)
         {
            §'S§[0] = 2 / param1;
            if(_loc6_)
            {
               §'S§[1] = §'S§[2] = §'S§[3] = §'S§[4] = 0;
               if(!(_loc7_ && param3))
               {
                  §'S§[5] = -2 / param2;
                  if(!_loc7_)
                  {
                     §'S§[6] = §'S§[7] = §'S§[8] = §'S§[9] = 0;
                     addr106:
                     §'S§[10] = -2 / (param4 - param3);
                     §'S§[11] = 0;
                     §'S§[12] = -1;
                     if(!_loc7_)
                     {
                        §'S§[13] = 1;
                        §'S§[14] = -(param4 + param3) / (param4 - param3);
                        §'S§[15] = 1;
                        if(!(_loc7_ && param3))
                        {
                           addr160:
                           this.§^G§.copyRawDataFrom(§'S§);
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
      
      public function §;V§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§-!%§.identity();
         }
      }
      
      public function §>§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            this.§-!%§.prependTranslation(param1,param2,param3);
         }
      }
      
      public function §-F§(param1:Number, param2:Vector3D = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            this.§-!%§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
         }
      }
      
      public function §@D§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            this.§-!%§.prependScale(param1,param2,param3);
         }
      }
      
      public function §5!F§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            param1.§5!F§(this.§-!%§);
         }
      }
      
      public function §<<§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(this.§5c§.length < this.§?!E§ + 1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this.§5c§.push(new Matrix3D());
                  if(_loc3_ || _loc1_)
                  {
                     addr65:
                     this.§5c§[this.§?!E§++].copyFrom(this.§-!%§);
                  }
               }
               return;
            }
         }
         §§goto(addr65);
      }
      
      public function §8S§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            this.§-!%§.copyFrom(this.§5c§[--this.§?!E§]);
         }
      }
      
      public function §#B§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§?!E§ = 0;
            if(_loc1_ || this)
            {
               this.§;V§();
            }
         }
      }
      
      public function get §1!<§() : Matrix3D
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§]p§.identity();
            if(!(_loc1_ && this))
            {
               §§goto(addr39);
            }
            §§goto(addr46);
         }
         addr39:
         this.§]p§.append(this.§-!%§);
         if(_loc2_)
         {
            addr46:
            this.§]p§.append(this.§^G§);
         }
         return this.§]p§;
      }
      
      public function batchQuad(param1:§?C§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            §§push(this.§&1§);
            if(!_loc6_)
            {
               if(§§pop().§ H§(param1,param3,param4))
               {
                  if(_loc5_ || param1)
                  {
                     this.§#E§();
                     if(!_loc6_)
                     {
                        addr65:
                        this.§&1§.§"!!§(param1,param2,param3,param4,this.§-!%§);
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
      
      public function §#E§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§&1§);
         if(!_loc3_)
         {
            if(§§pop().§1w§ > 0)
            {
               if(_loc4_)
               {
                  §§push(this.§&1§);
                  if(_loc4_)
                  {
                     addr30:
                     §§pop().render(this.context,this.§^G§);
                     if(_loc4_ || _loc2_)
                     {
                        addr54:
                        this.§&1§.reset();
                        addr52:
                        if(_loc4_)
                        {
                           var _loc1_:*;
                           §§push((_loc1_ = this).§<v§);
                           if(_loc4_)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc2_:* = §§pop();
                           if(_loc4_ || this)
                           {
                              _loc1_.§<v§ = _loc2_;
                           }
                        }
                        if(this.§4X§.length <= this.§<v§)
                        {
                           if(_loc4_ || _loc1_)
                           {
                           }
                        }
                        §§goto(addr105);
                     }
                     this.§4X§.push(new §%?§());
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
      
      public function §!t§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§#B§();
            if(!_loc1_)
            {
               addr23:
               this.§<v§ = 0;
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
      
      private function get §&1§() : §%?§
      {
         return this.§4X§[this.§<v§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(param3 != §8!D§[param2])
            {
               if(!(_loc4_ && this))
               {
                  §8!D§[param2] = param3;
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
            if(param2 != §"!4§)
            {
               if(!(_loc4_ && _loc3_))
               {
                  §"!4§ = param2;
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
