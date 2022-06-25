package §0P§
{
   import §6!7§.*;
   import §7i§.Texture;
   import §8g§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class RenderSupport
   {
      
      private static var §5_§:Array;
      
      private static var §#!Z§:Program3D;
      
      private static var §?!f§:Vector.<Number>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §?!f§ = new Vector.<Number>(16,true);
         }
      }
      
      private var §<Q§:Matrix3D;
      
      private var §8q§:Matrix3D;
      
      private var §%?§:Matrix3D;
      
      private var §<4§:Vector.<Matrix3D>;
      
      private var §[!M§:int;
      
      private var §2!g§:Vector.<QuadBatch>;
      
      private var §'N§:int;
      
      private var §3!8§:Context3D;
      
      private var §[!@§:int = -1;
      
      public function RenderSupport()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            loop0:
            while(true)
            {
               this.§<Q§ = new Matrix3D();
               loop1:
               while(true)
               {
                  this.§8q§ = new Matrix3D();
                  loop2:
                  while(true)
                  {
                     this.§%?§ = new Matrix3D();
                     loop3:
                     while(!_loc2_)
                     {
                        this.§<4§ = new Vector.<Matrix3D>(0);
                        loop4:
                        while(true)
                        {
                           this.§[!M§ = 0;
                           loop5:
                           while(true)
                           {
                              this.§'N§ = 0;
                              while(!_loc2_)
                              {
                                 this.§2!g§ = new Vector.<QuadBatch>();
                                 continue loop5;
                                 addr71:
                                 if(_loc1_)
                                 {
                                    if(!_loc2_)
                                    {
                                       this.§-!]§(400,300);
                                       loop12:
                                       while(_loc1_)
                                       {
                                          while(true)
                                          {
                                             Starling.§!!F§.addEventListener(Event.CONTEXT3D_CREATE,this.§[D§);
                                             if(_loc1_)
                                             {
                                                addr36:
                                                if(_loc1_ || _loc1_)
                                                {
                                                   break;
                                                }
                                                addr96:
                                                loop11:
                                                while(true)
                                                {
                                                   if(!(_loc2_ && this))
                                                   {
                                                      addr64:
                                                      if(_loc2_ && _loc2_)
                                                      {
                                                         while(true)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               §5_§ = [];
                                                               break loop11;
                                                            }
                                                            break;
                                                            §§goto(addr64);
                                                         }
                                                         continue loop4;
                                                         addr91:
                                                      }
                                                      §§goto(addr71);
                                                   }
                                                   break;
                                                   §§goto(addr36);
                                                }
                                                loop9:
                                                for(; _loc1_ || this; §§goto(addr57))
                                                {
                                                   while(true)
                                                   {
                                                      this.§;U§();
                                                      continue loop9;
                                                   }
                                                }
                                                addr57:
                                                continue loop5;
                                             }
                                             continue loop12;
                                          }
                                          return;
                                       }
                                       continue loop2;
                                    }
                                    continue loop3;
                                 }
                              }
                              continue loop1;
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr52);
      }
      
      public static function §`-§(param1:Matrix3D, param2:DisplayObject) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            param2.§'d§(param1);
         }
      }
      
      public static function §"6§(param1:Context3D, param2:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         if(_loc6_)
         {
            if(param2)
            {
               addr46:
               §§push(Context3DBlendFactor.ONE);
               if(!_loc6_)
               {
               }
               addr64:
               §§push(§§pop());
            }
            else
            {
               §§push(Context3DBlendFactor.SOURCE_ALPHA);
               if(_loc6_ || param1)
               {
                  §§goto(addr64);
               }
            }
            var _loc4_:* = §§pop();
            if(_loc6_)
            {
               param1.setBlendFactors(_loc4_,_loc3_);
            }
            return;
         }
         §§goto(addr46);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            param1.clear(§2!E§.§6,§(param2) / 255,§2!E§.§3i§(param2) / 255,§2!E§.§7!@§(param2) / 255,param3);
         }
      }
      
      protected function get §6!E§() : Matrix3D
      {
         return this.§8q§;
      }
      
      protected function get §]S§() : Matrix3D
      {
         return this.§<Q§;
      }
      
      public function §8!S§(param1:Context3D, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            this.§3!8§ = param1;
         }
         do
         {
            this.§[!@§ = param2;
         }
         while(!_loc4_);
         
      }
      
      public function get §#F§() : Context3D
      {
         return this.§3!8§;
      }
      
      public function get §^!6§() : int
      {
         return this.§[!@§;
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:QuadBatch = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§2!g§)
         {
            if(!_loc4_)
            {
               _loc1_.dispose();
            }
         }
         if(_loc5_ || _loc2_)
         {
            §§push(Starling.§!!F§);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(_loc5_)
                  {
                     addr81:
                     Starling.§!!F§.removeEventListener(Event.CONTEXT3D_CREATE,this.§[D§);
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
         if(_loc4_ || param2)
         {
            param1.clear(§2!E§.§6,§(param2) / 255,§2!E§.§3i§(param2) / 255,§2!E§.§7!@§(param2) / 255,param3);
         }
      }
      
      private function §[D§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§2!g§ = new <QuadBatch>[new QuadBatch()];
         }
      }
      
      public function §-!]§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            §?!f§[0] = 2 / param1;
            if(!(_loc7_ && param3))
            {
               §?!f§[1] = §?!f§[2] = §?!f§[3] = §?!f§[4] = 0;
               if(_loc6_ || param1)
               {
                  §?!f§[5] = -2 / param2;
                  if(_loc6_)
                  {
                     §?!f§[6] = §?!f§[7] = §?!f§[8] = §?!f§[9] = 0;
                     if(!(_loc7_ && this))
                     {
                        §?!f§[10] = -2 / (param4 - param3);
                        while(true)
                        {
                           §?!f§[11] = 0;
                        }
                        addr229:
                        addr123:
                     }
                     while(true)
                     {
                        §?!f§[12] = -1;
                        loop1:
                        for(; !(_loc7_ && param1); while(true)
                        {
                           if(!(_loc7_ && param2))
                           {
                              while(true)
                              {
                                 §?!f§[15] = 1;
                                 while(true)
                                 {
                                    if(_loc6_ || param3)
                                    {
                                       continue;
                                    }
                                    §§goto(addr229);
                                 }
                              }
                              return;
                              addr146:
                              addr181:
                           }
                           break;
                           if(_loc7_ && param3)
                           {
                              continue;
                           }
                           if(_loc6_)
                           {
                              §§goto(addr146);
                           }
                           else
                           {
                              §§goto(addr188);
                           }
                        })
                        {
                           §?!f§[13] = 1;
                           while(true)
                           {
                              §?!f§[14] = -(param4 + param3) / (param4 - param3);
                              continue loop1;
                           }
                        }
                     }
                  }
                  §§goto(addr123);
               }
               §§goto(addr146);
            }
            §§goto(addr188);
         }
         §§goto(addr181);
      }
      
      public function §;U§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§8q§.identity();
         }
      }
      
      public function §]!-§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            this.§8q§.prependTranslation(param1,param2,param3);
         }
      }
      
      public function §#!8§(param1:Number, param2:Vector3D = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§8q§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
         }
      }
      
      public function §2g§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§8q§.prependScale(param1,param2,param3);
         }
      }
      
      public function §'d§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            param1.§'d§(this.§8q§);
         }
      }
      
      public function §;l§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(this.§<4§.length < this.§[!M§ + 1)
            {
               if(!(_loc4_ && _loc1_))
               {
                  this.§<4§.push(new Matrix3D());
                  if(!_loc3_)
                  {
                  }
                  §§goto(addr80);
               }
            }
            this.§<4§[this.§[!M§++].copyFrom(this.§8q§);
         }
         addr80:
      }
      
      public function §7!G§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc1_))
         {
            this.§8q§.copyFrom(this.§<4§[--this.§[!M§]);
         }
      }
      
      public function §!N§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§[!M§ = 0;
            do
            {
               this.§;U§();
            }
            while(!_loc2_);
            
         }
      }
      
      public function get §>!C§() : Matrix3D
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§%?§.identity();
         }
         while(true)
         {
            this.§%?§.append(this.§8q§);
            while(!_loc1_)
            {
               this.§%?§.append(this.§<Q§);
               if(_loc2_)
               {
                  return this.§%?§;
               }
            }
         }
      }
      
      public function batchQuad(param1:§3x§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            §§push(this.§%!$§);
            while(true)
            {
               if(§§pop().§&&§(param1,param3,param4))
               {
                  if(!_loc5_)
                  {
                     this.§2^§();
                     addr77:
                     while(true)
                     {
                     }
                     addr77:
                  }
                  §§goto(addr77);
               }
               while(true)
               {
                  §§push(this.§%!$§);
                  if(_loc5_)
                  {
                     break;
                  }
                  §§pop().§<!#§(param1,param2,param3,param4,this.§8q§);
                  if(!(_loc5_ && param2))
                  {
                     return;
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      public function §2^§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            §§push(this.§%!$§);
            if(_loc4_ || _loc1_)
            {
               if(§§pop().§90§ > 0)
               {
                  if(!(_loc3_ && this))
                  {
                     §§push(this.§%!$§);
                     if(_loc4_ || this)
                     {
                        addr62:
                        §§pop().render(this.§#F§,this.§<Q§);
                        §§goto(addr127);
                     }
                     §§pop().reset();
                     if(!_loc3_)
                     {
                        var _loc1_:*;
                        §§push((_loc1_ = this).§'N§);
                        if(!_loc3_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc2_:* = §§pop();
                        if(_loc4_)
                        {
                           _loc1_.§'N§ = _loc2_;
                        }
                        if(_loc4_)
                        {
                           §§goto(addr108);
                        }
                        this.§2!g§.push(new QuadBatch());
                     }
                     addr108:
                     if(this.§2!g§.length <= this.§'N§)
                     {
                        if(_loc4_ || _loc1_)
                        {
                        }
                     }
                     §§goto(addr127);
                  }
               }
               addr127:
               if(_loc4_ || _loc3_)
               {
                  §§push(this.§%!$§);
               }
               return;
            }
            §§goto(addr62);
         }
         §§goto(addr108);
      }
      
      public function §'!#§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§!N§();
            do
            {
               this.§'N§ = 0;
            }
            while(!_loc1_);
            
         }
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            param1.present();
         }
      }
      
      private function get §%!$§() : QuadBatch
      {
         return this.§2!g§[this.§'N§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            if(param3 != §5_§[param2])
            {
               if(!_loc5_)
               {
                  §5_§[param2] = param3;
                  do
                  {
                     param1.setTextureAt(param2,param3);
                  }
                  while(_loc5_);
                  
                  addr60:
               }
               §§goto(addr60);
            }
            return;
         }
         §§goto(addr60);
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(param2 != §#!Z§)
            {
               if(!_loc3_)
               {
                  §#!Z§ = param2;
               }
               do
               {
                  param1.setProgram(param2);
               }
               while(_loc3_);
               
               addr41:
            }
            return;
         }
         §§goto(addr41);
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
