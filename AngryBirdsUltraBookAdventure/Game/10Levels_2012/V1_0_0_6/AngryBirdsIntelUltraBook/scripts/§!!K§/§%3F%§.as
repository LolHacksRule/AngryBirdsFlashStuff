package §!!K§
{
   import §4>§.Texture;
   import §7!B§.*;
   import §9!k§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §?%§
   {
      
      private static var §5!#§:Array;
      
      private static var §3!"§:Program3D;
      
      private static var §6!g§:Vector.<Number>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §6!g§ = new Vector.<Number>(16,true);
         }
      }
      
      private var §<!q§:Matrix3D;
      
      private var §7%§:Matrix3D;
      
      private var §?i§:Matrix3D;
      
      private var §7d§:Vector.<Matrix3D>;
      
      private var §&i§:int;
      
      private var §!!6§:Vector.<§`L§>;
      
      private var §'!M§:int;
      
      private var §?!y§:Context3D;
      
      private var §]&§:int = -1;
      
      public function §?%§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            while(true)
            {
               this.§<!q§ = new Matrix3D();
            }
            addr183:
         }
         loop1:
         while(true)
         {
            this.§7%§ = new Matrix3D();
            loop2:
            while(true)
            {
               this.§?i§ = new Matrix3D();
               loop3:
               while(true)
               {
                  this.§7d§ = new Vector.<Matrix3D>(0);
                  while(true)
                  {
                     this.§&i§ = 0;
                     loop5:
                     for(; _loc2_ || _loc2_; if(!(_loc2_ || _loc1_))
                     {
                        continue;
                     },if(§5!#§ == null)
                     {
                        continue loop3;
                     },addr66:,while(true)
                     {
                        this.§6;§();
                        loop11:
                        do
                        {
                           this.§ !2§(400,300);
                           for(; !(_loc1_ && _loc2_); §else§.§^!A§.addEventListener(Event.CONTEXT3D_CREATE,this.§3!r§),if(_loc2_ || _loc1_)
                           {
                              continue loop11;
                           })
                           {
                              if(!(_loc2_ || _loc1_))
                              {
                                 continue loop3;
                              }
                              if(!_loc1_)
                              {
                                 if(_loc2_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr183);
                              }
                              else
                              {
                                 §§goto(addr111);
                              }
                           }
                           continue loop1;
                        }
                        while(!_loc2_);
                        
                        return;
                     })
                     {
                        this.§'!M§ = 0;
                        loop6:
                        while(true)
                        {
                           this.§!!6§ = new Vector.<§`L§>();
                           addr111:
                           while(true)
                           {
                              if(!(_loc1_ && _loc2_))
                              {
                                 continue loop5;
                              }
                              continue loop6;
                           }
                           continue loop5;
                        }
                     }
                  }
                  while(!(_loc1_ && _loc2_))
                  {
                     if(_loc2_)
                     {
                        §5!#§ = [];
                        continue loop1;
                     }
                     continue loop2;
                     §§goto(addr54);
                  }
               }
            }
         }
      }
      
      public static function §"!0§(param1:Matrix3D, param2:DisplayObject) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            param2.§5U§(param1);
         }
      }
      
      public static function §4!s§(param1:Context3D, param2:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         if(_loc5_ || param1)
         {
            if(param2)
            {
               addr39:
               §§push(Context3DBlendFactor.ONE);
               if(_loc6_)
               {
               }
               addr50:
               §§push(§§pop());
            }
            else
            {
               §§push(Context3DBlendFactor.SOURCE_ALPHA);
               if(_loc5_)
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
         §§goto(addr39);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            param1.clear(§46§.§'!'§(param2) / 255,§46§.§1!U§(param2) / 255,§46§.§[]§(param2) / 255,param3);
         }
      }
      
      protected function get §%u§() : Matrix3D
      {
         return this.§7%§;
      }
      
      protected function get §[!a§() : Matrix3D
      {
         return this.§<!q§;
      }
      
      public function §<6§(param1:Context3D, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            this.§?!y§ = param1;
            do
            {
               this.§]&§ = param2;
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      public function get §5Y§() : Context3D
      {
         return this.§?!y§;
      }
      
      public function get §;!p§() : int
      {
         return this.§]&§;
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§`L§ = null;
         var _loc3_:* = this.§!!6§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc4_)
            {
               _loc1_.dispose();
            }
         }
         if(!_loc5_)
         {
            §§push(§else§.§^!A§);
            if(!_loc5_)
            {
               if(§§pop())
               {
                  if(_loc4_ || _loc3_)
                  {
                     addr76:
                     §else§.§^!A§.removeEventListener(Event.CONTEXT3D_CREATE,this.§3!r§);
                  }
               }
               return;
            }
         }
         §§goto(addr76);
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            param1.clear(§46§.§'!'§(param2) / 255,§46§.§1!U§(param2) / 255,§46§.§[]§(param2) / 255,param3);
         }
      }
      
      private function §3!r§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§!!6§ = new <§`L§>[new §`L§()];
         }
      }
      
      public function § !2§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && this))
         {
            §6!g§[0] = 2 / param1;
            if(_loc7_)
            {
               §6!g§[1] = §6!g§[2] = §6!g§[3] = §6!g§[4] = 0;
               if(!_loc6_)
               {
                  §6!g§[5] = -2 / param2;
                  if(!(_loc6_ && param1))
                  {
                     §6!g§[6] = §6!g§[7] = §6!g§[8] = §6!g§[9] = 0;
                     if(_loc7_ || this)
                     {
                        §6!g§[10] = -2 / (param4 - param3);
                        addr114:
                     }
                     while(true)
                     {
                        §6!g§[11] = 0;
                        loop1:
                        while(!(_loc6_ && param3))
                        {
                           §6!g§[12] = -1;
                           loop2:
                           while(true)
                           {
                              §6!g§[13] = 1;
                              addr177:
                              while(_loc7_)
                              {
                                 while(true)
                                 {
                                    §6!g§[14] = -(param4 + param3) / (param4 - param3);
                                    continue loop2;
                                 }
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
                  §§goto(addr114);
               }
               §§goto(addr161);
            }
            §§goto(addr179);
         }
         §§goto(addr161);
      }
      
      public function §6;§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§7%§.identity();
         }
      }
      
      public function §@c§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            this.§7%§.prependTranslation(param1,param2,param3);
         }
      }
      
      public function § m§(param1:Number, param2:Vector3D = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            this.§7%§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
         }
      }
      
      public function §3!Y§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§7%§.prependScale(param1,param2,param3);
         }
      }
      
      public function §5U§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            param1.§5U§(this.§7%§);
         }
      }
      
      public function §6m§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(this.§7d§.length < this.§&i§ + 1)
            {
               if(!(_loc3_ && this))
               {
                  this.§7d§.push(new Matrix3D());
                  if(_loc3_)
                  {
                  }
               }
               §§goto(addr79);
            }
            this.§7d§[this.§&i§++].copyFrom(this.§7%§);
         }
         addr79:
      }
      
      public function §6U§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§7%§.copyFrom(this.§7d§[--this.§&i§]);
         }
      }
      
      public function §%!N§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§&i§ = 0;
         }
         do
         {
            this.§6;§();
         }
         while(!(_loc1_ || this));
         
      }
      
      public function get §7!n§() : Matrix3D
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§?i§.identity();
         }
         while(true)
         {
            this.§?i§.append(this.§7%§);
            while(_loc1_)
            {
               this.§?i§.append(this.§<!q§);
               if(_loc1_)
               {
                  return this.§?i§;
               }
            }
         }
      }
      
      public function batchQuad(param1:§;R§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param1))
         {
            §§push(this.§^!e§);
            while(true)
            {
               if(!§§pop().§;!Z§(param1,param3,param4))
               {
                  continue;
               }
               if(_loc6_ || param1)
               {
                  this.§8l§();
               }
            }
         }
         while(true)
         {
            §§goto(addr39);
         }
      }
      
      public function §8l§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §§push(this.§^!e§);
            if(!(_loc4_ && this))
            {
               if(§§pop().§%,§ > 0)
               {
                  if(_loc3_ || _loc2_)
                  {
                     §§push(this.§^!e§);
                     if(!(_loc4_ && _loc2_))
                     {
                        §§pop().render(this.§5Y§,this.§<!q§);
                        §§goto(addr78);
                     }
                     §§pop().reset();
                     if(_loc3_)
                     {
                        addr78:
                        addr51:
                        if(!(_loc4_ && this))
                        {
                           §§push(this.§^!e§);
                        }
                        var _loc1_:*;
                        §§push((_loc1_ = this).§'!M§);
                        if(_loc3_ || _loc3_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc2_:* = §§pop();
                        if(!(_loc4_ && _loc2_))
                        {
                           _loc1_.§'!M§ = _loc2_;
                        }
                        if(!(_loc4_ && _loc1_))
                        {
                           addr120:
                           if(this.§!!6§.length <= this.§'!M§)
                           {
                              if(_loc3_ || _loc3_)
                              {
                              }
                           }
                           §§goto(addr138);
                        }
                        this.§!!6§.push(new §`L§());
                        §§goto(addr138);
                     }
                  }
                  §§goto(addr120);
               }
               addr138:
               return;
            }
            §§goto(addr51);
         }
         §§goto(addr78);
      }
      
      public function §>G§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§%!N§();
            do
            {
               this.§'!M§ = 0;
            }
            while(_loc1_ && _loc2_);
            
         }
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
      
      private function get §^!e§() : §`L§
      {
         return this.§!!6§[this.§'!M§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            if(param3 != §5!#§[param2])
            {
               if(_loc4_)
               {
                  §5!#§[param2] = param3;
                  do
                  {
                     param1.setTextureAt(param2,param3);
                  }
                  while(!_loc4_);
                  
                  addr57:
               }
               §§goto(addr57);
            }
            return;
         }
         §§goto(addr57);
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            if(param2 != §3!"§)
            {
               if(!_loc3_)
               {
                  §3!"§ = param2;
                  do
                  {
                     param1.setProgram(param2);
                  }
                  while(_loc3_ && _loc3_);
                  
                  addr59:
               }
               §§goto(addr59);
            }
            return;
         }
         §§goto(addr59);
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
