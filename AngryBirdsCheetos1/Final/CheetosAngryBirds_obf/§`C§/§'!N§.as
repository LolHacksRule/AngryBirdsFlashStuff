package §`C§
{
   import §;! §.*;
   import §]!B§.Texture;
   import §]@§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §'!N§
   {
      
      private static var §#+§:Array;
      
      private static var §@B§:Program3D;
      
      private static var §+!>§:Vector.<Number>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §+!>§ = new Vector.<Number>(16,true);
         }
      }
      
      private var §2p§:Matrix3D;
      
      private var §!!#§:Matrix3D;
      
      private var §5'§:Matrix3D;
      
      private var §@!^§:Vector.<Matrix3D>;
      
      private var §#7§:int;
      
      private var §-!X§:Vector.<§'!!§>;
      
      private var §<f§:int;
      
      private var §!?§:Context3D;
      
      private var §;!&§:int = -1;
      
      public function §'!N§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
            loop0:
            while(true)
            {
               this.§2p§ = new Matrix3D();
               while(true)
               {
                  this.§!!#§ = new Matrix3D();
                  addr137:
                  while(_loc2_ || this)
                  {
                     this.§5'§ = new Matrix3D();
                     loop3:
                     while(true)
                     {
                        this.§@!^§ = new Vector.<Matrix3D>(0);
                        addr125:
                        while(true)
                        {
                           this.§#7§ = 0;
                           loop5:
                           while(true)
                           {
                              this.§<f§ = 0;
                              loop6:
                              while(!_loc1_)
                              {
                                 this.§-!X§ = new Vector.<§'!!§>();
                                 loop7:
                                 while(true)
                                 {
                                    if(§#+§ == null)
                                    {
                                       while(!_loc1_)
                                       {
                                          §#+§ = [];
                                          while(_loc2_)
                                          {
                                             while(_loc2_ || _loc1_)
                                             {
                                                if(!_loc1_)
                                                {
                                                   continue loop0;
                                                }
                                                continue loop7;
                                             }
                                          }
                                          continue loop6;
                                       }
                                       continue loop5;
                                       addr88:
                                    }
                                    while(true)
                                    {
                                       this.§?Y§();
                                       §§goto(addr57);
                                    }
                                 }
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr131);
      }
      
      public static function §#q§(param1:Matrix3D, param2:DisplayObject) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            param2.§]d§(param1);
         }
      }
      
      public static function §,c§(param1:Context3D, param2:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         if(!(_loc6_ && §'!N§))
         {
            if(param2)
            {
               addr29:
               §§push(Context3DBlendFactor.ONE);
               if(!_loc6_)
               {
                  addr55:
                  §§push(§§pop());
               }
            }
            else
            {
               §§push(Context3DBlendFactor.SOURCE_ALPHA);
               if(_loc5_ || param2)
               {
                  §§goto(addr55);
               }
            }
            var _loc4_:* = §§pop();
            if(!(_loc6_ && param2))
            {
               param1.setBlendFactors(_loc4_,_loc3_);
            }
            return;
         }
         §§goto(addr29);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            param1.clear(§[!'§.§,!6§(param2) / 255,§[!'§.§`^§(param2) / 255,§[!'§.§5R§(param2) / 255,param3);
         }
      }
      
      protected function get §7!V§() : Matrix3D
      {
         return this.§!!#§;
      }
      
      protected function get include() : Matrix3D
      {
         return this.§2p§;
      }
      
      public function §;g§(param1:Context3D, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§!?§ = param1;
            do
            {
               this.§;!&§ = param2;
            }
            while(_loc4_);
            
         }
      }
      
      public function get §+!&§() : Context3D
      {
         return this.§!?§;
      }
      
      public function get §6!V§() : int
      {
         return this.§;!&§;
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§'!!§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§-!X§)
         {
            if(!_loc4_)
            {
               _loc1_.dispose();
            }
         }
         if(!_loc4_)
         {
            §§push(§9!'§.§7!Z§);
            if(_loc5_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr82);
            }
            §§pop().removeEventListener(Event.CONTEXT3D_CREATE,this.§"$§);
         }
         addr82:
         if(!(_loc4_ && _loc2_))
         {
            §§push(§9!'§.§7!Z§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            param1.clear(§[!'§.§,!6§(param2) / 255,§[!'§.§`^§(param2) / 255,§[!'§.§5R§(param2) / 255,param3);
         }
      }
      
      private function §"$§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§-!X§ = new <§'!!§>[new §'!!§()];
         }
      }
      
      public function §!D§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param1))
         {
            §+!>§[0] = 2 / param1;
            if(_loc7_)
            {
               §+!>§[1] = §+!>§[2] = §+!>§[3] = §+!>§[4] = 0;
               if(!_loc6_)
               {
                  §+!>§[5] = -2 / param2;
                  if(!(_loc6_ && param3))
                  {
                     §+!>§[6] = §+!>§[7] = §+!>§[8] = §+!>§[9] = 0;
                     if(!_loc6_)
                     {
                        §+!>§[10] = -2 / (param4 - param3);
                        loop0:
                        while(true)
                        {
                           §+!>§[11] = 0;
                           addr173:
                           loop6:
                           while(true)
                           {
                              §+!>§[12] = -1;
                              addr167:
                              while(true)
                              {
                                 §+!>§[13] = 1;
                                 addr159:
                                 while(true)
                                 {
                                    if(_loc6_)
                                    {
                                       continue loop6;
                                    }
                                    while(true)
                                    {
                                       §+!>§[14] = -(param4 + param3) / (param4 - param3);
                                       addr153:
                                       while(true)
                                       {
                                          §+!>§[15] = 1;
                                          addr138:
                                          while(!_loc7_)
                                          {
                                             continue loop0;
                                          }
                                       }
                                    }
                                 }
                                 continue loop6;
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        this.§2p§.copyRawDataFrom(§+!>§);
                        if(!(_loc6_ && param2))
                        {
                           if(!_loc6_)
                           {
                              if(_loc7_)
                              {
                                 if(_loc7_)
                                 {
                                    break;
                                 }
                                 §§goto(addr167);
                              }
                              §§goto(addr159);
                           }
                           §§goto(addr153);
                        }
                        §§goto(addr138);
                     }
                     return;
                  }
               }
               §§goto(addr161);
            }
            §§goto(addr173);
         }
         §§goto(addr161);
      }
      
      public function §?Y§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§!!#§.identity();
         }
      }
      
      public function §%x§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            this.§!!#§.prependTranslation(param1,param2,param3);
         }
      }
      
      public function §^!D§(param1:Number, param2:Vector3D = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            this.§!!#§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
         }
      }
      
      public function §%1§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            this.§!!#§.prependScale(param1,param2,param3);
         }
      }
      
      public function §]d§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            param1.§]d§(this.§!!#§);
         }
      }
      
      public function §3!2§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            if(this.§@!^§.length < this.§#7§ + 1)
            {
               if(!_loc4_)
               {
                  this.§@!^§.push(new Matrix3D());
                  if(_loc4_ && _loc2_)
                  {
                  }
                  §§goto(addr83);
               }
            }
            var _loc1_:*;
            var _loc2_:* = (_loc1_ = this).§#7§ + 1;
            _loc1_.§#7§ = _loc2_;
            this.§@!^§[(_loc1_ = this).§#7§].copyFrom(this.§!!#§);
         }
         addr83:
      }
      
      public function §+!D§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
            this.§!!#§.copyFrom(this.§@!^§[--this.§#7§]);
         }
      }
      
      public function §1g§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§#7§ = 0;
            do
            {
               this.§?Y§();
            }
            while(_loc2_);
            
         }
      }
      
      public function get §]!I§() : Matrix3D
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§5'§.identity();
            do
            {
               this.§5'§.append(this.§!!#§);
               do
               {
                  this.§5'§.append(this.§2p§);
               }
               while(!_loc2_);
               
            }
            while(_loc1_);
            
         }
         return this.§5'§;
      }
      
      public function batchQuad(param1:§9!<§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param1)
         {
            §§push(this.§+L§);
            loop0:
            while(true)
            {
               if(!§§pop().§@w§(param1,param3,param4))
               {
                  continue;
               }
               if(_loc6_)
               {
                  this.§+!2§();
               }
               while(true)
               {
                  continue loop0;
                  addr44:
                  §§pop().§'K§(param1,param2,param3,param4,this.§!!#§);
                  if(_loc6_ || param1)
                  {
                     return;
                     addr58:
                  }
               }
            }
         }
         §§goto(addr58);
      }
      
      public function §+!2§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§+L§);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop().§'6§ > 0)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     addr43:
                     §§push(this.§+L§);
                     if(!(_loc3_ && _loc2_))
                     {
                        addr52:
                        §§pop().render(this.§+!&§,this.§2p§);
                        §§goto(addr134);
                     }
                     §§pop().reset();
                     if(!(_loc3_ && _loc1_))
                     {
                        var _loc1_:*;
                        §§push((_loc1_ = this).§<f§);
                        if(!(_loc3_ && _loc1_))
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc2_:* = §§pop();
                        if(_loc4_ || _loc3_)
                        {
                           _loc1_.§<f§ = _loc2_;
                        }
                        if(!(_loc3_ && this))
                        {
                           if(this.§-!X§.length <= this.§<f§)
                           {
                              if(_loc3_)
                              {
                              }
                           }
                           §§goto(addr134);
                        }
                        this.§-!X§.push(new §'!!§());
                     }
                  }
               }
               addr134:
               if(_loc4_)
               {
                  §§push(this.§+L§);
               }
               return;
            }
            §§goto(addr52);
         }
         §§goto(addr43);
      }
      
      public function §2y§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§1g§();
            do
            {
               this.§<f§ = 0;
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            param1.present();
         }
      }
      
      private function get §+L§() : §'!!§
      {
         return this.§-!X§[this.§<f§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            if(param3 != §#+§[param2])
            {
               if(!_loc4_)
               {
                  addr64:
                  §#+§[param2] = param3;
               }
               do
               {
                  param1.setTextureAt(param2,param3);
               }
               while(!_loc5_);
               
            }
            return;
         }
         §§goto(addr64);
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(param2 != §@B§)
            {
               if(!_loc4_)
               {
                  addr55:
                  §@B§ = param2;
               }
               do
               {
                  param1.setProgram(param2);
               }
               while(!_loc3_);
               
            }
            return;
         }
         §§goto(addr55);
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
