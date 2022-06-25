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
         if(!_loc2_)
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
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
                  while(true)
                  {
                     this.§%?§ = new Matrix3D();
                     while(true)
                     {
                        this.§<4§ = new Vector.<Matrix3D>(0);
                        continue loop1;
                        addr49:
                        if(_loc2_ || _loc2_)
                        {
                           return;
                        }
                     }
                     addr146:
                     loop5:
                     for(; !(_loc1_ && _loc2_); if(!(_loc2_ || this))
                     {
                        continue;
                     },§§goto(addr84))
                     {
                        this.§'N§ = 0;
                        loop6:
                        while(true)
                        {
                           this.§2!g§ = new Vector.<QuadBatch>();
                           while(true)
                           {
                              if(§5_§ != null)
                              {
                                 while(true)
                                 {
                                    this.§;U§();
                                    loop10:
                                    while(true)
                                    {
                                       this.§-!]§(400,300);
                                       while(!(_loc1_ && this))
                                       {
                                          if(_loc2_ || this)
                                          {
                                             continue loop5;
                                          }
                                          Starling.§!!F§.addEventListener(Event.CONTEXT3D_CREATE,this.§[D§);
                                          if(_loc2_ || this)
                                          {
                                             if(_loc2_ || this)
                                             {
                                                break loop10;
                                             }
                                             continue loop10;
                                          }
                                       }
                                       continue loop6;
                                    }
                                    §§goto(addr49);
                                    addr126:
                                 }
                                 continue loop6;
                              }
                              while(!_loc1_)
                              {
                                 if(_loc1_)
                                 {
                                    continue loop0;
                                 }
                                 while(true)
                                 {
                                    §5_§ = [];
                                    continue loop6;
                                 }
                                 §§goto(addr70);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr109);
      }
      
      public static function §`-§(param1:Matrix3D, param2:DisplayObject) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            param2.§'d§(param1);
         }
      }
      
      public static function §"6§(param1:Context3D, param2:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         if(!_loc5_)
         {
            if(param2)
            {
               addr36:
               §§push(Context3DBlendFactor.ONE);
               if(!(_loc5_ && _loc3_))
               {
                  addr64:
                  §§push(§§pop());
               }
            }
            else
            {
               §§push(Context3DBlendFactor.SOURCE_ALPHA);
               if(!_loc5_)
               {
                  §§goto(addr64);
               }
            }
            var _loc4_:* = §§pop();
            if(_loc6_ || param1)
            {
               param1.setBlendFactors(_loc4_,_loc3_);
            }
            return;
         }
         §§goto(addr36);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
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
         if(!(_loc3_ && this))
         {
            this.§3!8§ = param1;
            do
            {
               this.§[!@§ = param2;
            }
            while(!(_loc4_ || param1));
            
         }
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
         var _loc3_:* = this.§2!g§;
         for each(_loc1_ in _loc3_)
         {
            if(!_loc4_)
            {
               _loc1_.dispose();
            }
         }
         if(_loc5_ || _loc3_)
         {
            §§push(Starling.§!!F§);
            if(!(_loc4_ && _loc1_))
            {
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     addr86:
                     Starling.§!!F§.removeEventListener(Event.CONTEXT3D_CREATE,this.§[D§);
                  }
               }
               return;
            }
         }
         §§goto(addr86);
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            param1.clear(§2!E§.§6,§(param2) / 255,§2!E§.§3i§(param2) / 255,§2!E§.§7!@§(param2) / 255,param3);
         }
      }
      
      private function §[D§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§2!g§ = new <QuadBatch>[new QuadBatch()];
         }
      }
      
      public function §-!]§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            §?!f§[0] = 2 / param1;
            if(_loc7_)
            {
               §?!f§[1] = §?!f§[2] = §?!f§[3] = §?!f§[4] = 0;
               if(_loc7_ || param3)
               {
                  §?!f§[5] = -2 / param2;
                  if(_loc7_ || param1)
                  {
                     §?!f§[6] = §?!f§[7] = §?!f§[8] = §?!f§[9] = 0;
                     if(_loc7_ || param3)
                     {
                        §?!f§[10] = -2 / (param4 - param3);
                        loop5:
                        while(true)
                        {
                           §?!f§[11] = 0;
                           addr203:
                           addr210:
                           addr194:
                           while(_loc6_ && param1)
                           {
                              continue loop5;
                           }
                           §?!f§[12] = -1;
                           addr196:
                           while(_loc6_)
                           {
                              §§goto(addr203);
                              §§goto(addr210);
                           }
                           while(true)
                           {
                              §?!f§[13] = 1;
                           }
                        }
                        addr124:
                     }
                     loop0:
                     while(true)
                     {
                        §?!f§[14] = -(param4 + param3) / (param4 - param3);
                        while(_loc7_)
                        {
                           §?!f§[15] = 1;
                           while(_loc7_)
                           {
                              this.§<Q§.copyRawDataFrom(§?!f§);
                              if(!_loc7_)
                              {
                                 continue;
                              }
                              if(_loc7_ || param1)
                              {
                                 break loop0;
                              }
                              §§goto(addr194);
                           }
                        }
                     }
                     return;
                  }
               }
               §§goto(addr196);
            }
            §§goto(addr124);
         }
         §§goto(addr196);
      }
      
      public function §;U§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§8q§.identity();
         }
      }
      
      public function §]!-§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§8q§.prependTranslation(param1,param2,param3);
         }
      }
      
      public function §#!8§(param1:Number, param2:Vector3D = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            this.§8q§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
         }
      }
      
      public function §2g§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(this.§<4§.length < this.§[!M§ + 1)
            {
               if(!_loc3_)
               {
                  §§goto(addr49);
               }
            }
            §§goto(addr57);
         }
         addr49:
         this.§<4§.push(new Matrix3D());
         if(_loc4_)
         {
            addr57:
            this.§<4§[this.§[!M§++].copyFrom(this.§8q§);
         }
      }
      
      public function §7!G§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§8q§.copyFrom(this.§<4§[--this.§[!M§]);
         }
      }
      
      public function §!N§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§[!M§ = 0;
         }
         do
         {
            this.§;U§();
         }
         while(_loc1_);
         
      }
      
      public function get §>!C§() : Matrix3D
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§%?§.identity();
         }
         while(true)
         {
            this.§%?§.append(this.§8q§);
            while(_loc2_)
            {
               this.§%?§.append(this.§<Q§);
               if(_loc2_ || this)
               {
                  return this.§%?§;
               }
            }
         }
      }
      
      public function batchQuad(param1:§3x§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §§push(this.§%!$§);
            while(true)
            {
               if(§§pop().§&&§(param1,param3,param4))
               {
                  if(!_loc6_)
                  {
                     this.§2^§();
                     addr71:
                     while(true)
                     {
                     }
                     addr71:
                  }
                  §§goto(addr71);
               }
               while(true)
               {
                  §§push(this.§%!$§);
                  if(!_loc5_)
                  {
                     break;
                  }
                  §§pop().§<!#§(param1,param2,param3,param4,this.§8q§);
                  if(!_loc6_)
                  {
                     return;
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      public function §2^§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc1_))
         {
            §§push(this.§%!$§);
            if(!_loc4_)
            {
               if(§§pop().§90§ > 0)
               {
                  if(!_loc4_)
                  {
                     §§push(this.§%!$§);
                     if(!(_loc4_ && _loc3_))
                     {
                        §§pop().render(this.§#F§,this.§<Q§);
                        if(!(_loc4_ && _loc1_))
                        {
                           addr66:
                           this.§%!$§.reset();
                           if(_loc3_)
                           {
                              var _loc1_:*;
                              §§push((_loc1_ = this).§'N§);
                              if(_loc3_ || _loc1_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc2_:* = §§pop();
                              if(_loc3_ || _loc2_)
                              {
                                 _loc1_.§'N§ = _loc2_;
                              }
                              if(!_loc3_)
                              {
                              }
                           }
                           §§goto(addr126);
                        }
                        if(this.§2!g§.length <= this.§'N§)
                        {
                           if(_loc4_ && _loc2_)
                           {
                           }
                        }
                        §§goto(addr126);
                     }
                     §§goto(addr66);
                  }
                  this.§2!g§.push(new QuadBatch());
               }
               §§goto(addr126);
            }
            §§goto(addr66);
         }
         addr126:
      }
      
      public function §'!#§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§!N§();
         }
         do
         {
            this.§'N§ = 0;
         }
         while(_loc1_);
         
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
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
         if(!_loc5_)
         {
            if(param3 != §5_§[param2])
            {
               do
               {
                  §5_§[param2] = param3;
                  do
                  {
                     param1.setTextureAt(param2,param3);
                  }
                  while(_loc5_ && param1);
                  
               }
               while(!_loc4_);
               
               addr48:
            }
            return;
         }
         §§goto(addr48);
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            if(param2 != §#!Z§)
            {
               do
               {
                  §#!Z§ = param2;
                  do
                  {
                     param1.setProgram(param2);
                  }
                  while(_loc3_);
                  
               }
               while(_loc3_ && _loc3_);
               
               addr63:
            }
            return;
         }
         §§goto(addr63);
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
