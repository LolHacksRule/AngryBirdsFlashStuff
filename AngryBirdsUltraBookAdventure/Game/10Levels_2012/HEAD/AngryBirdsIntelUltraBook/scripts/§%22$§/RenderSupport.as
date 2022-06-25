package §"$§
{
   import §'_§.Texture;
   import §1!&§.*;
   import §@2§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class RenderSupport
   {
      
      private static var §7!0§:Array;
      
      private static var §>[§:Program3D;
      
      private static var §6!1§:Vector.<Number>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §6!1§ = new Vector.<Number>(16,true);
         }
      }
      
      private var §>-§:Matrix3D;
      
      private var §6u§:Matrix3D;
      
      private var §5!K§:Matrix3D;
      
      private var §&!^§:Vector.<Matrix3D>;
      
      private var §?g§:int;
      
      private var §%7§:Vector.<QuadBatch>;
      
      private var §?2§:int;
      
      private var §6D§:Context3D;
      
      private var § !%§:int = -1;
      
      public function RenderSupport()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            loop0:
            while(true)
            {
               this.§>-§ = new Matrix3D();
               while(true)
               {
                  this.§6u§ = new Matrix3D();
                  loop6:
                  for(; _loc1_ || _loc1_; while(true)
                  {
                     if(_loc2_ && this)
                     {
                        continue loop6;
                     }
                     if(!_loc1_)
                     {
                        break;
                     }
                     §7!0§ = [];
                     §§goto(addr113);
                     §§goto(addr59);
                  },while(true)
                  {
                     this.§5!K§ = new Matrix3D();
                     continue loop0;
                  })
                  {
                     this.§%7§ = new Vector.<QuadBatch>();
                     while(_loc1_ || this)
                     {
                        if(§7!0§ == null)
                        {
                           continue loop6;
                        }
                        loop10:
                        while(true)
                        {
                           this.§>"§();
                           addr78:
                           loop11:
                           while(!(_loc2_ && this))
                           {
                              this.§ !O§(400,300);
                              while(true)
                              {
                                 if(_loc2_ && _loc1_)
                                 {
                                    continue loop11;
                                 }
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 if(_loc2_ && _loc1_)
                                 {
                                    continue loop6;
                                 }
                                 addr66:
                                 if(!(_loc2_ && this))
                                 {
                                    continue;
                                 }
                                 addr147:
                                 while(true)
                                 {
                                    this.§?2§ = 0;
                                    continue loop6;
                                    §§goto(addr66);
                                 }
                              }
                              continue loop10;
                           }
                           continue loop0;
                        }
                     }
                     while(true)
                     {
                        this.§?g§ = 0;
                        §§goto(addr147);
                        §§goto(addr123);
                     }
                     addr123:
                  }
               }
            }
         }
         §§goto(addr187);
      }
      
      public static function §!G§(param1:Matrix3D, param2:DisplayObject) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && RenderSupport))
         {
            param2.§+C§(param1);
         }
      }
      
      public static function §[!]§(param1:Context3D, param2:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         if(_loc5_)
         {
            if(param2)
            {
               addr35:
               §§push(Context3DBlendFactor.ONE);
               if(_loc5_ || param1)
               {
                  addr68:
                  §§push(§§pop());
               }
            }
            else
            {
               §§push(Context3DBlendFactor.SOURCE_ALPHA);
               if(!(_loc6_ && param2))
               {
                  §§goto(addr68);
               }
            }
            var _loc4_:* = §§pop();
            if(!_loc6_)
            {
               param1.setBlendFactors(_loc4_,_loc3_);
            }
            return;
         }
         §§goto(addr35);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            param1.clear(§3§.§0!k§(param2) / 255,§3§.§0!T§(param2) / 255,§3§.§2&§(param2) / 255,param3);
         }
      }
      
      protected function get §7!W§() : Matrix3D
      {
         return this.§6u§;
      }
      
      protected function get §;<§() : Matrix3D
      {
         return this.§>-§;
      }
      
      public function §55§(param1:Context3D, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            this.§6D§ = param1;
            do
            {
               this.§ !%§ = param2;
            }
            while(!(_loc4_ || param1));
            
         }
      }
      
      public function get §6!&§() : Context3D
      {
         return this.§6D§;
      }
      
      public function get §@0§() : int
      {
         return this.§ !%§;
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:QuadBatch = null;
         for each(_loc1_ in this.§%7§)
         {
            if(_loc4_)
            {
               _loc1_.dispose();
            }
         }
         if(!_loc5_)
         {
            §§push(Starling.§'!A§);
            if(_loc4_)
            {
               if(§§pop())
               {
                  if(!_loc5_)
                  {
                     addr75:
                     Starling.§'!A§.removeEventListener(Event.CONTEXT3D_CREATE,this.§>!R§);
                  }
               }
               return;
            }
         }
         §§goto(addr75);
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            param1.clear(§3§.§0!k§(param2) / 255,§3§.§0!T§(param2) / 255,§3§.§2&§(param2) / 255,param3);
         }
      }
      
      private function §>!R§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§%7§ = new <QuadBatch>[new QuadBatch()];
         }
      }
      
      public function § !O§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param1)
         {
            §6!1§[0] = 2 / param1;
            if(!(_loc7_ && param3))
            {
               §6!1§[1] = §6!1§[2] = §6!1§[3] = §6!1§[4] = 0;
               if(_loc6_ || param2)
               {
                  §6!1§[5] = -2 / param2;
                  if(_loc6_ || this)
                  {
                     §6!1§[6] = §6!1§[7] = §6!1§[8] = §6!1§[9] = 0;
                     if(_loc7_)
                     {
                     }
                     while(true)
                     {
                        §6!1§[12] = -1;
                        loop2:
                        while(!(_loc7_ && this))
                        {
                           if(!_loc7_)
                           {
                              §6!1§[13] = 1;
                              loop3:
                              do
                              {
                                 §6!1§[14] = -(param4 + param3) / (param4 - param3);
                                 while(true)
                                 {
                                    §6!1§[15] = 1;
                                    while(!(_loc7_ && this))
                                    {
                                       this.§>-§.copyRawDataFrom(§6!1§);
                                       if(!_loc7_)
                                       {
                                          continue loop3;
                                       }
                                    }
                                 }
                              }
                              while(!(_loc6_ || this));
                              
                              if(_loc6_)
                              {
                                 return;
                              }
                              continue;
                           }
                           addr229:
                           while(true)
                           {
                              §6!1§[11] = 0;
                              break loop2;
                           }
                        }
                     }
                     addr219:
                  }
                  §§goto(addr229);
               }
               §6!1§[10] = -2 / (param4 - param3);
            }
            §§goto(addr229);
         }
         §§goto(addr219);
      }
      
      public function §>"§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§6u§.identity();
         }
      }
      
      public function §?!^§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§6u§.prependTranslation(param1,param2,param3);
         }
      }
      
      public function §'A§(param1:Number, param2:Vector3D = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§6u§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
         }
      }
      
      public function §6!`§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§6u§.prependScale(param1,param2,param3);
         }
      }
      
      public function §+C§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            param1.§+C§(this.§6u§);
         }
      }
      
      public function §7M§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            if(this.§&!^§.length < this.§?g§ + 1)
            {
               if(_loc4_)
               {
                  this.§&!^§.push(new Matrix3D());
                  §§goto(addr44);
               }
            }
            §§goto(addr67);
         }
         addr44:
         if(_loc4_ || _loc3_)
         {
            addr67:
            this.§&!^§[this.§?g§++].copyFrom(this.§6u§);
         }
      }
      
      public function § z§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§6u§.copyFrom(this.§&!^§[--this.§?g§]);
         }
      }
      
      public function §2!k§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§?g§ = 0;
         }
         do
         {
            this.§>"§();
         }
         while(_loc2_ && this);
         
      }
      
      public function get §+!&§() : Matrix3D
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§5!K§.identity();
            do
            {
               this.§5!K§.append(this.§6u§);
               do
               {
                  this.§5!K§.append(this.§>-§);
               }
               while(!_loc1_);
               
            }
            while(_loc2_);
            
         }
         return this.§5!K§;
      }
      
      public function batchQuad(param1:§!!9§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §§push(this.§,!!§);
            while(true)
            {
               if(!§§pop().§!#§(param1,param3,param4))
               {
                  continue;
               }
               if(_loc5_)
               {
                  this.§&M§();
               }
            }
         }
         while(true)
         {
            §§goto(addr23);
         }
      }
      
      public function §&M§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            §§push(this.§,!!§);
            if(_loc3_)
            {
               if(§§pop().§5!#§ > 0)
               {
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(this.§,!!§);
                     if(!_loc4_)
                     {
                        §§pop().render(this.§6!&§,this.§>-§);
                        if(_loc3_ || _loc1_)
                        {
                           §§goto(addr66);
                        }
                     }
                     addr66:
                     this.§,!!§.reset();
                     if(_loc3_ || _loc2_)
                     {
                        var _loc1_:*;
                        §§push((_loc1_ = this).§?2§);
                        if(_loc3_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc2_:* = §§pop();
                        if(!(_loc4_ && _loc1_))
                        {
                           _loc1_.§?2§ = _loc2_;
                        }
                        if(_loc4_ && this)
                        {
                        }
                     }
                     §§goto(addr120);
                  }
                  if(this.§%7§.length <= this.§?2§)
                  {
                     if(!_loc4_)
                     {
                        §§goto(addr120);
                     }
                  }
               }
               §§goto(addr120);
            }
            §§goto(addr66);
         }
         addr120:
         this.§%7§.push(new QuadBatch());
      }
      
      public function §^![§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§2!k§();
            do
            {
               this.§?2§ = 0;
            }
            while(_loc1_ && _loc1_);
            
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
      
      private function get §,!!§() : QuadBatch
      {
         return this.§%7§[this.§?2§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            if(param3 != §7!0§[param2])
            {
               if(!(_loc4_ && param3))
               {
                  §7!0§[param2] = param3;
                  do
                  {
                     param1.setTextureAt(param2,param3);
                  }
                  while(_loc4_);
                  
                  addr76:
               }
               §§goto(addr76);
            }
            return;
         }
         §§goto(addr76);
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(param2 != §>[§)
            {
               if(_loc3_ || _loc3_)
               {
                  §>[§ = param2;
               }
               do
               {
                  param1.setProgram(param2);
               }
               while(!(_loc3_ || param1));
               
               addr45:
            }
            return;
         }
         §§goto(addr45);
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
