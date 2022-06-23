package §catch§
{
   import §,G§.*;
   import §,_§.*;
   import §7!=§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §'d§
   {
      
      private static var §6q§:Array;
      
      private static var §@!&§:Program3D;
      
      private static var §@!H§:Vector.<Number>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §@!H§ = new Vector.<Number>(16,true);
         }
      }
      
      private var §[O§:Matrix3D;
      
      private var §'!@§:Matrix3D;
      
      private var §-!0§:Matrix3D;
      
      private var §@n§:Vector.<Matrix3D>;
      
      private var §-0§:int;
      
      private var §#!!§:Vector.<§2O§>;
      
      private var §3U§:int;
      
      private var §0T§:Context3D;
      
      private var §#]§:int = -1;
      
      public function §'d§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         super();
         this.§[O§ = new Matrix3D();
         this.§'!@§ = new Matrix3D();
         this.§-!0§ = new Matrix3D();
         if(_loc1_)
         {
            this.§@n§ = new Vector.<Matrix3D>(0);
            this.§-0§ = 0;
            if(_loc1_ || this)
            {
               this.§3U§ = 0;
               if(_loc1_ || _loc2_)
               {
                  addr70:
                  this.§#!!§ = new Vector.<§2O§>();
               }
               if(§6q§ == null)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §6q§ = [];
                  }
                  §§goto(addr112);
               }
               this.§"!1§();
               this.§`Z§(400,300);
               if(_loc1_ || this)
               {
               }
               §§goto(addr112);
            }
            §§goto(addr70);
         }
         addr112:
         §4@§.§0W§.addEventListener(Event.CONTEXT3D_CREATE,this.§]B§);
      }
      
      public static function §4W§(param1:Matrix3D, param2:DisplayObject) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || §'d§)
         {
            param2.§]@§(param1);
         }
      }
      
      public static function §1f§(param1:Context3D, param2:Boolean) : void
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
            if(_loc5_ || §'d§)
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
            param1.clear(§"p§.§9V§(param2) / 255,§"p§.§5J§(param2) / 255,§"p§.§@R§(param2) / 255,param3);
         }
      }
      
      protected function get §`I§() : Matrix3D
      {
         return this.§'!@§;
      }
      
      protected function get §8_§() : Matrix3D
      {
         return this.§[O§;
      }
      
      public function §?]§(param1:Context3D, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§0T§ = param1;
            if(_loc3_)
            {
               this.§#]§ = param2;
            }
         }
      }
      
      public function get context() : Context3D
      {
         return this.§0T§;
      }
      
      public function get §!!C§() : int
      {
         return this.§#]§;
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§2O§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§#!!§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc5_ || _loc3_)
            {
               _loc1_.dispose();
            }
         }
         if(!(_loc4_ && _loc3_))
         {
            §§push(§4@§.§0W§);
            if(!(_loc4_ && _loc2_))
            {
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     addr87:
                     §4@§.§0W§.removeEventListener(Event.CONTEXT3D_CREATE,this.§]B§);
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
            param1.clear(§"p§.§9V§(param2) / 255,§"p§.§5J§(param2) / 255,§"p§.§@R§(param2) / 255,param3);
         }
      }
      
      private function §]B§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§#!!§ = new <§2O§>[new §2O§()];
         }
      }
      
      public function §`Z§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param1)
         {
            §@!H§[0] = 2 / param1;
            if(_loc6_)
            {
               §@!H§[1] = §@!H§[2] = §@!H§[3] = §@!H§[4] = 0;
               if(!(_loc7_ && param3))
               {
                  §@!H§[5] = -2 / param2;
                  if(!_loc7_)
                  {
                     §@!H§[6] = §@!H§[7] = §@!H§[8] = §@!H§[9] = 0;
                     addr106:
                     §@!H§[10] = -2 / (param4 - param3);
                     §@!H§[11] = 0;
                     §@!H§[12] = -1;
                     if(!_loc7_)
                     {
                        §@!H§[13] = 1;
                        §@!H§[14] = -(param4 + param3) / (param4 - param3);
                        §@!H§[15] = 1;
                        if(!(_loc7_ && param3))
                        {
                           addr160:
                           this.§[O§.copyRawDataFrom(§@!H§);
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
      
      public function §"!1§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§'!@§.identity();
         }
      }
      
      public function §,h§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            this.§'!@§.prependTranslation(param1,param2,param3);
         }
      }
      
      public function §2!4§(param1:Number, param2:Vector3D = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            this.§'!@§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
         }
      }
      
      public function §-C§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            this.§'!@§.prependScale(param1,param2,param3);
         }
      }
      
      public function §]@§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            param1.§]@§(this.§'!@§);
         }
      }
      
      public function §=q§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(this.§@n§.length < this.§-0§ + 1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this.§@n§.push(new Matrix3D());
                  if(_loc3_ || _loc1_)
                  {
                     addr65:
                     this.§@n§[this.§-0§++].copyFrom(this.§'!@§);
                  }
               }
               return;
            }
         }
         §§goto(addr65);
      }
      
      public function §"S§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            this.§'!@§.copyFrom(this.§@n§[--this.§-0§]);
         }
      }
      
      public function §4!4§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§-0§ = 0;
            if(_loc1_ || this)
            {
               this.§"!1§();
            }
         }
      }
      
      public function get §get §() : Matrix3D
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§-!0§.identity();
            if(!(_loc1_ && this))
            {
               §§goto(addr39);
            }
            §§goto(addr46);
         }
         addr39:
         this.§-!0§.append(this.§'!@§);
         if(_loc2_)
         {
            addr46:
            this.§-!0§.append(this.§[O§);
         }
         return this.§-!0§;
      }
      
      public function batchQuad(param1:§-!!§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            §§push(this.§&U§);
            if(!_loc6_)
            {
               if(§§pop().§'!B§(param1,param3,param4))
               {
                  if(_loc5_ || param1)
                  {
                     this.§--§();
                     if(!_loc6_)
                     {
                        addr65:
                        this.§&U§.§9`§(param1,param2,param3,param4,this.§'!@§);
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
      
      public function §--§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§&U§);
         if(!_loc3_)
         {
            if(§§pop().§]2§ > 0)
            {
               if(_loc4_)
               {
                  §§push(this.§&U§);
                  if(_loc4_)
                  {
                     addr30:
                     §§pop().render(this.context,this.§[O§);
                     if(_loc4_ || _loc2_)
                     {
                        addr54:
                        this.§&U§.reset();
                        addr52:
                        if(_loc4_)
                        {
                           var _loc1_:*;
                           §§push((_loc1_ = this).§3U§);
                           if(_loc4_)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc2_:* = §§pop();
                           if(_loc4_ || this)
                           {
                              _loc1_.§3U§ = _loc2_;
                           }
                        }
                        if(this.§#!!§.length <= this.§3U§)
                        {
                           if(_loc4_ || _loc1_)
                           {
                           }
                        }
                        §§goto(addr105);
                     }
                     this.§#!!§.push(new §2O§());
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
      
      public function §1!-§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§4!4§();
            if(!_loc1_)
            {
               addr23:
               this.§3U§ = 0;
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
      
      private function get §&U§() : §2O§
      {
         return this.§#!!§[this.§3U§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(param3 != §6q§[param2])
            {
               if(!(_loc4_ && this))
               {
                  §6q§[param2] = param3;
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
            if(param2 != §@!&§)
            {
               if(!(_loc4_ && _loc3_))
               {
                  §@!&§ = param2;
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
