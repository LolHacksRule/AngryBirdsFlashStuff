package §"a§
{
   import §!=§.*;
   import §'!6§.*;
   import §<5§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §>w§
   {
      
      private static var §throw§:Array;
      
      private static var § e§:Program3D;
      
      private static var § "M§:Vector.<Number>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            § "M§ = new Vector.<Number>(16,true);
         }
      }
      
      private var §'!,§:Matrix3D;
      
      private var §,n§:Matrix3D;
      
      private var §7F§:Matrix3D;
      
      private var §<A§:Vector.<Matrix3D>;
      
      private var §4_§:int;
      
      private var §^!,§:Vector.<§0!B§>;
      
      private var §8"'§:int;
      
      private var §1K§:Context3D;
      
      private var §-!J§:int = -1;
      
      public function §>w§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
            loop0:
            while(true)
            {
               this.§'!,§ = new Matrix3D();
               loop1:
               while(true)
               {
                  this.§,n§ = new Matrix3D();
                  loop2:
                  while(true)
                  {
                     this.§7F§ = new Matrix3D();
                     while(true)
                     {
                        this.§<A§ = new Vector.<Matrix3D>(0);
                        while(_loc2_ || _loc1_)
                        {
                           continue loop0;
                           loop11:
                           while(_loc2_ || _loc1_)
                           {
                              this.§2M§(400,300);
                              while(_loc2_)
                              {
                                 §!"J§.§1&§.addEventListener(Event.CONTEXT3D_CREATE,this.§?3§);
                                 if(!_loc2_)
                                 {
                                    continue;
                                 }
                                 if(!_loc2_)
                                 {
                                    continue loop11;
                                 }
                                 if(!_loc1_)
                                 {
                                    addr43:
                                    if(_loc1_ && _loc1_)
                                    {
                                       while(true)
                                       {
                                          if(§throw§ == null)
                                          {
                                             if(!_loc1_)
                                             {
                                                §throw§ = [];
                                                addr89:
                                                while(true)
                                                {
                                                }
                                                addr89:
                                             }
                                             §§goto(addr89);
                                          }
                                          while(true)
                                          {
                                             this.§ !E§();
                                             continue loop11;
                                             §§goto(addr89);
                                          }
                                          §§goto(addr43);
                                       }
                                       addr97:
                                    }
                                    return;
                                 }
                                 §§goto(addr89);
                              }
                              while(!_loc1_)
                              {
                                 this.§^!,§ = new Vector.<§0!B§>();
                                 §§goto(addr97);
                              }
                              while(!_loc1_)
                              {
                                 if(_loc1_)
                                 {
                                    continue loop1;
                                 }
                                 while(true)
                                 {
                                    this.§8"'§ = 0;
                                    §§goto(addr102);
                                 }
                              }
                              addr102:
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr113);
      }
      
      public static function §%!e§(param1:Matrix3D, param2:DisplayObject) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            param2.§#,§(param1);
         }
      }
      
      public static function §+!p§(param1:Context3D, param2:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         if(!(_loc5_ && param2))
         {
            if(param2)
            {
               addr40:
               §§push(Context3DBlendFactor.ONE);
               if(!(_loc5_ && param2))
               {
                  addr71:
                  §§push(§§pop());
               }
            }
            else
            {
               §§push(Context3DBlendFactor.SOURCE_ALPHA);
               if(!(_loc5_ && param2))
               {
                  §§goto(addr71);
               }
            }
            var _loc4_:* = §§pop();
            if(_loc6_ || §>w§)
            {
               param1.setBlendFactors(_loc4_,_loc3_);
            }
            return;
         }
         §§goto(addr40);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && §>w§))
         {
            param1.clear(§6$§.§3!6§(param2) / 255,§6$§.§5"B§(param2) / 255,§6$§.§="=§(param2) / 255,param3);
         }
      }
      
      protected function get §<"S§() : Matrix3D
      {
         return this.§,n§;
      }
      
      protected function get §2!e§() : Matrix3D
      {
         return this.§'!,§;
      }
      
      public function §&!-§(param1:Context3D, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§1K§ = param1;
            do
            {
               this.§-!J§ = param2;
            }
            while(_loc4_);
            
         }
      }
      
      public function get §;"-§() : Context3D
      {
         return this.§1K§;
      }
      
      public function get §extends§() : int
      {
         return this.§-!J§;
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§0!B§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§^!,§)
         {
            if(!(_loc5_ && _loc1_))
            {
               _loc1_.dispose();
            }
         }
         if(!_loc5_)
         {
            §§push(§!"J§.§1&§);
            if(!(_loc5_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     addr81:
                     §!"J§.§1&§.removeEventListener(Event.CONTEXT3D_CREATE,this.§?3§);
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
         if(_loc4_)
         {
            param1.clear(§6$§.§3!6§(param2) / 255,§6$§.§5"B§(param2) / 255,§6$§.§="=§(param2) / 255,param3);
         }
      }
      
      private function §?3§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§^!,§ = new <§0!B§>[new §0!B§()];
         }
      }
      
      public function §2M§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            § "M§[0] = 2 / param1;
            if(_loc6_)
            {
               § "M§[1] = § "M§[2] = § "M§[3] = § "M§[4] = 0;
               if(!_loc6_)
               {
               }
               loop6:
               while(true)
               {
                  § "M§[12] = -1;
                  addr181:
                  loop1:
                  while(true)
                  {
                     § "M§[13] = 1;
                     loop2:
                     while(true)
                     {
                        if(_loc6_ || this)
                        {
                           while(true)
                           {
                              § "M§[14] = -(param4 + param3) / (param4 - param3);
                              while(true)
                              {
                                 § "M§[15] = 1;
                                 for(; !(_loc7_ && this); this.§'!,§.copyRawDataFrom(§ "M§),if(_loc6_)
                                 {
                                    continue loop2;
                                 })
                                 {
                                    if(_loc6_)
                                    {
                                       continue;
                                    }
                                    addr196:
                                    while(true)
                                    {
                                       § "M§[11] = 0;
                                       continue loop6;
                                    }
                                 }
                              }
                           }
                           return;
                           addr124:
                           addr175:
                        }
                        continue loop6;
                        if(_loc7_ && this)
                        {
                           continue;
                        }
                        if(!_loc6_)
                        {
                           continue loop1;
                        }
                        §§goto(addr124);
                     }
                     continue loop6;
                  }
               }
               addr187:
            }
            § "M§[5] = -2 / param2;
            if(_loc6_ || param1)
            {
               § "M§[6] = § "M§[7] = § "M§[8] = § "M§[9] = 0;
               if(_loc6_)
               {
                  § "M§[10] = -2 / (param4 - param3);
                  §§goto(addr196);
               }
               §§goto(addr181);
            }
            §§goto(addr175);
         }
         §§goto(addr187);
      }
      
      public function § !E§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§,n§.identity();
         }
      }
      
      public function § !U§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§,n§.prependTranslation(param1,param2,param3);
         }
      }
      
      public function §8u§(param1:Number, param2:Vector3D = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§,n§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
         }
      }
      
      public function §]"D§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§,n§.prependScale(param1,param2,param3);
         }
      }
      
      public function §#,§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            param1.§#,§(this.§,n§);
         }
      }
      
      public function §1"N§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(this.§<A§.length < this.§4_§ + 1)
            {
               if(_loc4_)
               {
                  this.§<A§.push(new Matrix3D());
                  if(!(_loc3_ && _loc2_))
                  {
                     addr61:
                     this.§<A§[this.§4_§++].copyFrom(this.§,n§);
                  }
               }
               return;
            }
         }
         §§goto(addr61);
      }
      
      public function §^!<§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            this.§,n§.copyFrom(this.§<A§[--this.§4_§]);
         }
      }
      
      public function §%Y§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§4_§ = 0;
         }
         do
         {
            this.§ !E§();
         }
         while(_loc1_);
         
      }
      
      public function get §=n§() : Matrix3D
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§7F§.identity();
         }
         do
         {
            this.§7F§.append(this.§,n§);
            do
            {
               this.§7F§.append(this.§'!,§);
            }
            while(_loc1_ && _loc1_);
            
         }
         while(!(_loc2_ || _loc1_));
         
         return this.§7F§;
      }
      
      public function batchQuad(param1:§5T§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §§push(this.§0"F§);
            while(true)
            {
               if(!§§pop().§+!U§(param1,param3,param4,param2))
               {
                  continue;
               }
               if(_loc6_ || this)
               {
                  this.§1"U§();
               }
            }
         }
         while(true)
         {
            §§goto(addr24);
         }
      }
      
      public function §1"U§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
            §§push(this.§0"F§);
            if(_loc4_ || _loc2_)
            {
               if(§§pop().§>"G§ > 0)
               {
                  if(_loc4_ || this)
                  {
                     §§push(this.§0"F§);
                     if(_loc4_)
                     {
                        §§pop().render(this.§;"-§,this.§'!,§);
                        §§goto(addr129);
                     }
                     §§pop().reset();
                     if(!(_loc3_ && _loc1_))
                     {
                        var _loc1_:*;
                        §§push((_loc1_ = this).§8"'§);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc2_:* = §§pop();
                        if(!(_loc3_ && this))
                        {
                           _loc1_.§8"'§ = _loc2_;
                        }
                        if(_loc3_)
                        {
                        }
                        §§goto(addr129);
                     }
                     if(this.§^!,§.length <= this.§8"'§)
                     {
                        if(!(_loc3_ && _loc1_))
                        {
                           §§goto(addr129);
                        }
                     }
                  }
               }
            }
            §§goto(addr129);
         }
         addr129:
         if(!_loc3_)
         {
            §§push(this.§0"F§);
         }
         this.§^!,§.push(new §0!B§());
      }
      
      public function §@<§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§%Y§();
            do
            {
               this.§8"'§ = 0;
            }
            while(_loc1_ && this);
            
         }
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            param1.present();
         }
      }
      
      private function get §0"F§() : §0!B§
      {
         return this.§^!,§[this.§8"'§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(param3 != §throw§[param2])
            {
               loop0:
               while(true)
               {
                  §throw§[param2] = param3;
                  addr57:
                  while(true)
                  {
                     param1.setTextureAt(param2,param3);
                     if(_loc4_)
                     {
                        if(_loc4_ || param3)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr29);
               }
            }
            addr29:
            return;
         }
         §§goto(addr57);
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(param2 != § e§)
            {
               if(_loc4_ || param2)
               {
                  addr51:
                  § e§ = param2;
               }
               do
               {
                  param1.setProgram(param2);
               }
               while(_loc3_);
               
            }
            return;
         }
         §§goto(addr51);
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
