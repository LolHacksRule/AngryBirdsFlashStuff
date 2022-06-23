package §=!0§
{
   import §&o§.*;
   import §'j§.*;
   import §0! §.Texture;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §2N§
   {
      
      private static var §^0§:Array;
      
      private static var §7!0§:Program3D;
      
      private static var §=5§:Vector.<Number>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §=5§ = new Vector.<Number>(16,true);
         }
      }
      
      private var §[!;§:Matrix3D;
      
      private var §=!K§:Matrix3D;
      
      private var §>n§:Matrix3D;
      
      private var § !-§:Vector.<Matrix3D>;
      
      private var §[&§:int;
      
      private var §;!>§:Vector.<§>4§>;
      
      private var §[M§:int;
      
      private var §%N§:Context3D;
      
      private var §^#§:int = -1;
      
      public function §2N§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            if(!(_loc2_ && this))
            {
               this.§[!;§ = new Matrix3D();
               if(!_loc2_)
               {
                  this.§=!K§ = new Matrix3D();
                  if(_loc1_ || _loc1_)
                  {
                     this.§>n§ = new Matrix3D();
                     this.§ !-§ = new Vector.<Matrix3D>(0);
                     if(!_loc2_)
                     {
                        this.§[&§ = 0;
                        this.§[M§ = 0;
                     }
                     §§goto(addr103);
                  }
                  this.§;!>§ = new Vector.<§>4§>();
                  if(§^0§ == null)
                  {
                     if(_loc1_ || _loc2_)
                     {
                        §^0§ = [];
                        addr103:
                        this.§5u§();
                        if(!_loc2_)
                        {
                           addr107:
                           this.§"! §(400,300);
                        }
                        §§goto(addr111);
                     }
                     addr111:
                     §>I§.§`S§.addEventListener(Event.CONTEXT3D_CREATE,this.§@!C§);
                     return;
                  }
                  §§goto(addr103);
               }
               §§goto(addr107);
            }
         }
         §§goto(addr103);
      }
      
      public static function §5!2§(param1:Matrix3D, param2:DisplayObject) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            param2.§34§(param1);
         }
      }
      
      public static function §5!,§(param1:Context3D, param2:Boolean) : void
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
                  addr50:
                  §§push(§§pop());
               }
            }
            else
            {
               §§push(Context3DBlendFactor.SOURCE_ALPHA);
               if(_loc5_ || _loc3_)
               {
                  §§goto(addr50);
               }
            }
            var _loc4_:* = §§pop();
            if(_loc5_)
            {
               param1.setBlendFactors(_loc4_,_loc3_);
            }
            return;
         }
         §§goto(addr34);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || §2N§)
         {
            param1.clear(§]Z§.§3e§(param2) / 255,§]Z§.§7Z§(param2) / 255,§]Z§.§?P§(param2) / 255,param3);
         }
      }
      
      protected function get §+k§() : Matrix3D
      {
         return this.§=!K§;
      }
      
      protected function get §7b§() : Matrix3D
      {
         return this.§[!;§;
      }
      
      public function §7t§(param1:Context3D, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§%N§ = param1;
            if(_loc4_)
            {
               addr24:
               this.§^#§ = param2;
            }
            return;
         }
         §§goto(addr24);
      }
      
      public function get context() : Context3D
      {
         return this.§%N§;
      }
      
      public function get §if§() : int
      {
         return this.§^#§;
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§>4§ = null;
         for each(_loc1_ in this.§;!>§)
         {
            if(!_loc4_)
            {
               _loc1_.dispose();
            }
         }
         if(_loc5_ || this)
         {
            §§push(§>I§.§`S§);
            if(_loc5_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr87);
            }
            §§pop().removeEventListener(Event.CONTEXT3D_CREATE,this.§@!C§);
         }
         addr87:
         if(_loc5_ || _loc1_)
         {
            §§push(§>I§.§`S§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            param1.clear(§]Z§.§3e§(param2) / 255,§]Z§.§7Z§(param2) / 255,§]Z§.§?P§(param2) / 255,param3);
         }
      }
      
      private function §@!C§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§;!>§ = new <§>4§>[new §>4§()];
         }
      }
      
      public function §"! §(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param3))
         {
            §=5§[0] = 2 / param1;
            §=5§[1] = §=5§[2] = §=5§[3] = §=5§[4] = 0;
            if(!_loc6_)
            {
               addr57:
               §=5§[5] = -2 / param2;
               §=5§[6] = §=5§[7] = §=5§[8] = §=5§[9] = 0;
               if(_loc7_ || param2)
               {
                  §=5§[10] = -2 / (param4 - param3);
                  §=5§[11] = 0;
                  if(!(_loc6_ && param3))
                  {
                     §=5§[12] = -1;
                     if(_loc7_)
                     {
                        §=5§[13] = 1;
                        §=5§[14] = -(param4 + param3) / (param4 - param3);
                        if(!_loc6_)
                        {
                           addr157:
                           §=5§[15] = 1;
                           if(!(_loc6_ && this))
                           {
                              addr168:
                              this.§[!;§.copyRawDataFrom(§=5§);
                           }
                        }
                     }
                     §§goto(addr157);
                  }
                  return;
               }
               §§goto(addr157);
            }
            §§goto(addr168);
         }
         §§goto(addr57);
      }
      
      public function §5u§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§=!K§.identity();
         }
      }
      
      public function §@!E§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§=!K§.prependTranslation(param1,param2,param3);
         }
      }
      
      public function §%y§(param1:Number, param2:Vector3D = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            this.§=!K§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
         }
      }
      
      public function §,b§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§=!K§.prependScale(param1,param2,param3);
         }
      }
      
      public function §34§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            param1.§34§(this.§=!K§);
         }
      }
      
      public function §#[§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            if(this.§ !-§.length < this.§[&§ + 1)
            {
               if(_loc4_ || _loc2_)
               {
                  this.§ !-§.push(new Matrix3D());
                  if(_loc4_)
                  {
                     addr66:
                     this.§ !-§[this.§[&§++].copyFrom(this.§=!K§);
                  }
               }
               return;
            }
         }
         §§goto(addr66);
      }
      
      public function include() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§=!K§.copyFrom(this.§ !-§[--this.§[&§]);
         }
      }
      
      public function §'n§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§[&§ = 0;
            if(_loc1_)
            {
               this.§5u§();
            }
         }
      }
      
      public function get §false§() : Matrix3D
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§>n§.identity();
            if(_loc2_ || _loc2_)
            {
               §§goto(addr44);
            }
            §§goto(addr51);
         }
         addr44:
         this.§>n§.append(this.§=!K§);
         if(!_loc1_)
         {
            addr51:
            this.§>n§.append(this.§[!;§);
         }
         return this.§>n§;
      }
      
      public function batchQuad(param1:§<3§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param3)
         {
            §§push(this.§!M§);
            if(_loc6_)
            {
               if(§§pop().§"E§(param1,param3,param4,param2))
               {
                  if(!(_loc5_ && param1))
                  {
                     §§goto(addr61);
                  }
               }
               §§goto(addr65);
            }
            §§goto(addr67);
         }
         addr61:
         this.§6J§();
         if(!_loc5_)
         {
            addr67:
            this.§!M§.§'o§(param1,param2,param3,param4,this.§=!K§);
            addr65:
         }
      }
      
      public function §6J§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§!M§);
         if(_loc3_)
         {
            if(§§pop().§7f§ > 0)
            {
               if(_loc3_)
               {
                  §§push(this.§!M§);
                  if(!_loc4_)
                  {
                     §§goto(addr29);
                  }
               }
            }
            §§goto(addr53);
         }
         addr29:
         §§pop().render(this.context,this.§[!;§);
         if(!(_loc4_ && this))
         {
            addr53:
            this.§!M§.reset();
            if(_loc3_)
            {
               var _loc1_:*;
               §§push((_loc1_ = this).§[M§);
               if(!(_loc4_ && _loc1_))
               {
                  §§push(§§pop() + 1);
               }
               var _loc2_:* = §§pop();
               if(!(_loc4_ && _loc2_))
               {
                  _loc1_.§[M§ = _loc2_;
               }
            }
            §§goto(addr104);
         }
         if(this.§;!>§.length <= this.§[M§)
         {
            if(_loc4_ && this)
            {
            }
            §§goto(addr104);
         }
         addr104:
         this.§;!>§.push(new §>4§());
      }
      
      public function §7!§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§'n§();
            if(!(_loc1_ && this))
            {
               this.§[M§ = 0;
            }
         }
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
      
      private function get §!M§() : §>4§
      {
         return this.§;!>§[this.§[M§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            if(param3 != §^0§[param2])
            {
               if(!_loc5_)
               {
                  §^0§[param2] = param3;
                  if(!(_loc5_ && this))
                  {
                     addr51:
                     param1.setTextureAt(param2,param3);
                  }
               }
               §§goto(addr51);
            }
            return;
         }
         §§goto(addr51);
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            if(param2 != §7!0§)
            {
               if(_loc3_ || this)
               {
                  addr43:
                  §7!0§ = param2;
                  if(_loc3_ || this)
                  {
                     param1.setProgram(param2);
                  }
               }
            }
            return;
         }
         §§goto(addr43);
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
