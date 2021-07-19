package §6;§
{
   import §4v§.*;
   import §]!a§.Texture;
   import §^a§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §2^§
   {
      
      private static var §&!I§:Array;
      
      private static var §"<§:Program3D;
      
      private static var §`,§:Vector.<Number>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §`,§ = new Vector.<Number>(16,true);
         }
      }
      
      private var §1!X§:Matrix3D;
      
      private var §=B§:Matrix3D;
      
      private var §4_§:Matrix3D;
      
      private var §2!+§:Vector.<Matrix3D>;
      
      private var § !e§:int;
      
      private var §1!_§:Vector.<§1!B§>;
      
      private var §6o§:int;
      
      private var §71§:Context3D;
      
      private var §5!@§:int = -1;
      
      public function §2^§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            loop0:
            while(true)
            {
               this.§1!X§ = new Matrix3D();
               while(true)
               {
                  this.§=B§ = new Matrix3D();
                  addr121:
                  while(_loc1_)
                  {
                     this.§4_§ = new Matrix3D();
                     while(true)
                     {
                        this.§2!+§ = new Vector.<Matrix3D>(0);
                        addr107:
                        while(!_loc2_)
                        {
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§ !e§ = 0;
            loop6:
            while(_loc1_)
            {
               this.§6o§ = 0;
               while(true)
               {
                  this.§1!_§ = new Vector.<§1!B§>();
                  while(true)
                  {
                     if(§&!I§ == null)
                     {
                        if(_loc1_)
                        {
                           if(!_loc1_)
                           {
                              break;
                           }
                           §&!I§ = [];
                        }
                        while(true)
                        {
                        }
                        addr77:
                     }
                     while(true)
                     {
                        this.§8G§();
                        loop11:
                        while(!_loc2_)
                        {
                           this.§+l§(400,300);
                           while(true)
                           {
                              if(_loc1_)
                              {
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              continue loop11;
                           }
                           §§goto(addr121);
                        }
                        continue loop6;
                        §§goto(addr77);
                     }
                  }
               }
            }
            §§goto(addr107);
         }
      }
      
      public static function §=3§(param1:Matrix3D, param2:DisplayObject) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            param2.§`P§(param1);
         }
      }
      
      public static function §6!=§(param1:Context3D, param2:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         if(!(_loc5_ && §2^§))
         {
            if(param2)
            {
               addr40:
               §§push(Context3DBlendFactor.ONE);
               if(_loc5_)
               {
               }
               addr61:
               §§push(§§pop());
            }
            else
            {
               §§push(Context3DBlendFactor.SOURCE_ALPHA);
               if(_loc6_)
               {
                  §§goto(addr61);
               }
            }
            var _loc4_:* = §§pop();
            if(_loc6_)
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
         if(_loc4_ || param3)
         {
            param1.clear(§@A§.§2!O§(param2) / 255,§@A§.§>!Q§(param2) / 255,§@A§.§9Z§(param2) / 255,param3);
         }
      }
      
      protected function get §<!§() : Matrix3D
      {
         return this.§=B§;
      }
      
      protected function get §,`§() : Matrix3D
      {
         return this.§1!X§;
      }
      
      public function §0,§(param1:Context3D, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§71§ = param1;
         }
         do
         {
            this.§5!@§ = param2;
         }
         while(_loc4_ && param2);
         
      }
      
      public function get §'!&§() : Context3D
      {
         return this.§71§;
      }
      
      public function get §?N§() : int
      {
         return this.§5!@§;
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§1!B§ = null;
         var _loc3_:* = this.§1!_§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc4_ || this)
            {
               _loc1_.dispose();
            }
         }
         if(_loc4_ || _loc3_)
         {
            §§push(§%[§.§`1§);
            if(!(_loc5_ && _loc1_))
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     addr86:
                     §%[§.§`1§.removeEventListener(Event.CONTEXT3D_CREATE,this.§&!S§);
                  }
               }
               return;
            }
         }
         §§goto(addr86);
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            param1.clear(§@A§.§2!O§(param2) / 255,§@A§.§>!Q§(param2) / 255,§@A§.§9Z§(param2) / 255,param3);
         }
      }
      
      private function §&!S§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§1!_§ = new <§1!B§>[new §1!B§()];
         }
      }
      
      public function §+l§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            §`,§[0] = 2 / param1;
            if(_loc7_ || param3)
            {
               §`,§[1] = §`,§[2] = §`,§[3] = §`,§[4] = 0;
               if(!(_loc6_ && param2))
               {
                  §`,§[5] = -2 / param2;
                  if(_loc7_)
                  {
                     §`,§[6] = §`,§[7] = §`,§[8] = §`,§[9] = 0;
                     if(!_loc6_)
                     {
                        §`,§[10] = -2 / (param4 - param3);
                        addr109:
                        loop5:
                        while(true)
                        {
                           §`,§[11] = 0;
                           loop6:
                           while(true)
                           {
                              §`,§[12] = -1;
                              addr163:
                              while(true)
                              {
                                 if(!_loc6_)
                                 {
                                    addr165:
                                    if(_loc7_ || param2)
                                    {
                                       break;
                                    }
                                    continue loop5;
                                 }
                                 continue loop6;
                              }
                           }
                        }
                        addr109:
                     }
                     loop2:
                     while(true)
                     {
                        §`,§[15] = 1;
                        while(true)
                        {
                           if(_loc7_ || this)
                           {
                              if(!_loc7_)
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop2;
                        }
                        addr157:
                        while(true)
                        {
                           §`,§[14] = -(param4 + param3) / (param4 - param3);
                           continue loop2;
                        }
                     }
                     return;
                     addr151:
                  }
                  while(true)
                  {
                     §`,§[13] = 1;
                     §§goto(addr157);
                     §§goto(addr165);
                  }
               }
               §§goto(addr109);
            }
            §§goto(addr151);
         }
         §§goto(addr109);
      }
      
      public function §8G§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§=B§.identity();
         }
      }
      
      public function §2?§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§=B§.prependTranslation(param1,param2,param3);
         }
      }
      
      public function §#,§(param1:Number, param2:Vector3D = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            this.§=B§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
         }
      }
      
      public function §1![§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§=B§.prependScale(param1,param2,param3);
         }
      }
      
      public function §`P§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            param1.§`P§(this.§=B§);
         }
      }
      
      public function §=X§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(this.§2!+§.length < this.§ !e§ + 1)
            {
               if(_loc3_)
               {
                  this.§2!+§.push(new Matrix3D());
                  if(_loc3_)
                  {
                     addr45:
                     var _loc1_:*;
                     var _loc2_:* = (_loc1_ = this).§ !e§ + 1;
                     _loc1_.§ !e§ = _loc2_;
                     this.§2!+§[(_loc1_ = this).§ !e§].copyFrom(this.§=B§);
                  }
               }
               return;
            }
         }
         §§goto(addr45);
      }
      
      public function §0!6§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§=B§.copyFrom(this.§2!+§[--this.§ !e§]);
         }
      }
      
      public function §47§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§ !e§ = 0;
            do
            {
               this.§8G§();
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      public function get §?#§() : Matrix3D
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§4_§.identity();
         }
         while(true)
         {
            this.§4_§.append(this.§=B§);
            while(_loc1_)
            {
               this.§4_§.append(this.§1!X§);
               if(!(_loc2_ && this))
               {
                  return this.§4_§;
               }
            }
         }
      }
      
      public function batchQuad(param1:§ !'§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(this.§,f§);
            while(true)
            {
               if(!§§pop().§=0§(param1,param3,param4,param2))
               {
                  continue;
               }
            }
         }
         §§goto(addr68);
      }
      
      public function §9,§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§,f§);
            if(!_loc4_)
            {
               if(§§pop().§7!!§ > 0)
               {
                  if(!(_loc4_ && _loc1_))
                  {
                     §§push(this.§,f§);
                     if(_loc3_ || _loc1_)
                     {
                        addr41:
                        §§pop().render(this.§'!&§,this.§1!X§);
                        §§goto(addr113);
                     }
                     §§pop().reset();
                     if(_loc3_ || this)
                     {
                        var _loc1_:*;
                        §§push((_loc1_ = this).§6o§);
                        if(!(_loc4_ && this))
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc2_:* = §§pop();
                        if(!_loc4_)
                        {
                           _loc1_.§6o§ = _loc2_;
                        }
                        if(!_loc4_)
                        {
                           if(this.§1!_§.length <= this.§6o§)
                           {
                              if(_loc3_)
                              {
                                 addr108:
                                 this.§1!_§.push(new §1!B§());
                              }
                           }
                        }
                        §§goto(addr108);
                     }
                  }
               }
               addr113:
               if(_loc3_)
               {
                  §§push(this.§,f§);
               }
               return;
            }
            §§goto(addr41);
         }
         §§goto(addr108);
      }
      
      public function §4!!§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§47§();
            do
            {
               this.§6o§ = 0;
            }
            while(!_loc1_);
            
         }
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            param1.present();
         }
      }
      
      private function get §,f§() : §1!B§
      {
         return this.§1!_§[this.§6o§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            if(param3 != §&!I§[param2])
            {
               loop0:
               while(true)
               {
                  §&!I§[param2] = param3;
                  addr72:
                  while(true)
                  {
                     param1.setTextureAt(param2,param3);
                     if(!(_loc5_ && param2))
                     {
                        if(_loc4_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr24);
               }
            }
            addr24:
            return;
         }
         §§goto(addr72);
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            if(param2 != §"<§)
            {
               do
               {
                  §"<§ = param2;
                  do
                  {
                     param1.setProgram(param2);
                  }
                  while(_loc3_ && param1);
                  
               }
               while(!(_loc4_ || param2));
               
               addr71:
            }
            return;
         }
         §§goto(addr71);
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
