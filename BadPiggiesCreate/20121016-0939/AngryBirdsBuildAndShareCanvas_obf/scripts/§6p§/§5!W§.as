package §6p§
{
   import §3W§.*;
   import §7R§.Texture;
   import §default§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §5!W§
   {
      
      private static var §@X§:Array;
      
      private static var §9!0§:Program3D;
      
      private static var §5!h§:Vector.<Number>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §5!h§ = new Vector.<Number>(16,true);
         }
      }
      
      private var §0"<§:Matrix3D;
      
      private var §=U§:Matrix3D;
      
      private var §1I§:Matrix3D;
      
      private var §?]§:Vector.<Matrix3D>;
      
      private var §%"5§:int;
      
      private var §3b§:Vector.<§50§>;
      
      private var §6!A§:int;
      
      private var §^V§:Context3D;
      
      private var §2!C§:int = -1;
      
      public function §5!W§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
            while(true)
            {
               this.§0"<§ = new Matrix3D();
               loop1:
               for(; _loc2_; while(_loc2_ || _loc2_)
               {
                  this.§3b§ = new Vector.<§50§>();
                  §§goto(addr116);
                  §§goto(addr101);
               })
               {
                  this.§=U§ = new Matrix3D();
                  while(true)
                  {
                     this.§1I§ = new Matrix3D();
                     addr151:
                     while(true)
                     {
                        this.§?]§ = new Vector.<Matrix3D>(0);
                        addr145:
                        while(true)
                        {
                           this.§%"5§ = 0;
                           addr135:
                           while(true)
                           {
                              this.§6!A§ = 0;
                              continue loop1;
                           }
                        }
                     }
                     addr76:
                     if(_loc1_ && this)
                     {
                        continue;
                     }
                     this.§=]§(400,300);
                     while(true)
                     {
                        if(_loc2_ || _loc1_)
                        {
                           if(!_loc1_)
                           {
                              if(!_loc2_)
                              {
                                 break;
                              }
                              continue;
                           }
                           addr101:
                           while(!(_loc1_ && _loc2_))
                           {
                              while(true)
                              {
                                 this.§[!;§();
                              }
                           }
                           continue loop1;
                           addr101:
                        }
                        loop11:
                        while(true)
                        {
                           if(_loc2_ || this)
                           {
                              if(!_loc2_)
                              {
                                 break;
                              }
                              §§goto(addr76);
                           }
                           else
                           {
                              while(true)
                              {
                                 §@X§ = [];
                                 §§goto(addr101);
                                 continue loop11;
                              }
                              addr98:
                           }
                        }
                        §§goto(addr135);
                     }
                     §§goto(addr151);
                  }
               }
            }
         }
         §§goto(addr46);
      }
      
      public static function §<f§(param1:Matrix3D, param2:DisplayObject) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            param2.§+U§(param1);
         }
      }
      
      public static function §3"?§(param1:Context3D, param2:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         if(!(_loc5_ && param1))
         {
            if(param2)
            {
               addr40:
               §§push(Context3DBlendFactor.ONE);
               if(_loc6_)
               {
                  addr61:
                  §§push(§§pop());
               }
            }
            else
            {
               §§push(Context3DBlendFactor.SOURCE_ALPHA);
               if(!_loc5_)
               {
                  §§goto(addr61);
               }
            }
            var _loc4_:* = §§pop();
            if(!_loc5_)
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
         if(_loc4_ || §5!W§)
         {
            param1.clear(§`!h§.§2!,§(param2) / 255,§`!h§.§`"<§(param2) / 255,§`!h§.§]&§(param2) / 255,param3);
         }
      }
      
      protected function get §`!F§() : Matrix3D
      {
         return this.§=U§;
      }
      
      protected function get §@"'§() : Matrix3D
      {
         return this.§0"<§;
      }
      
      public function §>;§(param1:Context3D, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§^V§ = param1;
         }
         do
         {
            this.§2!C§ = param2;
         }
         while(_loc4_);
         
      }
      
      public function get §`-§() : Context3D
      {
         return this.§^V§;
      }
      
      public function get §%!U§() : int
      {
         return this.§2!C§;
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§50§ = null;
         for each(_loc1_ in this.§3b§)
         {
            if(!(_loc4_ && _loc1_))
            {
               _loc1_.dispose();
            }
         }
         if(!_loc4_)
         {
            §§push(§?%§.§%b§);
            if(_loc5_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr82);
            }
            §§pop().removeEventListener(Event.CONTEXT3D_CREATE,this.§6h§);
         }
         addr82:
         if(!_loc4_)
         {
            §§push(§?%§.§%b§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            param1.clear(§`!h§.§2!,§(param2) / 255,§`!h§.§`"<§(param2) / 255,§`!h§.§]&§(param2) / 255,param3);
         }
      }
      
      private function §6h§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§3b§ = new <§50§>[new §50§()];
         }
      }
      
      public function §=]§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param2)
         {
            §5!h§[0] = 2 / param1;
            if(_loc6_)
            {
               §5!h§[1] = §5!h§[2] = §5!h§[3] = §5!h§[4] = 0;
               if(!(_loc7_ && param3))
               {
                  addr63:
                  §5!h§[5] = -2 / param2;
                  if(_loc6_ || param1)
                  {
                     addr76:
                     var _loc5_:*;
                     §5!h§[8] = _loc5_ = §5!h§[9] = 0;
                     §5!h§[6] = §5!h§[7] = _loc5_;
                     if(_loc6_ || this)
                     {
                        §5!h§[10] = -2 / (param4 - param3);
                        loop0:
                        while(true)
                        {
                           §5!h§[11] = 0;
                           loop1:
                           while(true)
                           {
                              §5!h§[12] = -1;
                              while(true)
                              {
                                 §5!h§[13] = 1;
                                 loop4:
                                 while(_loc6_ || param3)
                                 {
                                    if(_loc7_)
                                    {
                                       continue loop0;
                                    }
                                    while(true)
                                    {
                                       §5!h§[15] = 1;
                                       loop5:
                                       while(_loc6_)
                                       {
                                          this.§0"<§.copyRawDataFrom(§5!h§);
                                          if(_loc6_)
                                          {
                                             addr130:
                                             if(!(_loc6_ || param3))
                                             {
                                                while(true)
                                                {
                                                   §5!h§[14] = -(param4 + param3) / (param4 - param3);
                                                   break loop5;
                                                   §§goto(addr130);
                                                }
                                             }
                                             else
                                             {
                                                addr144:
                                                addr180:
                                             }
                                             continue loop1;
                                             return;
                                          }
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr180);
                  }
                  §§goto(addr174);
               }
               §§goto(addr76);
            }
            §§goto(addr144);
         }
         §§goto(addr63);
      }
      
      public function §[!;§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§=U§.identity();
         }
      }
      
      public function §&V§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§=U§.prependTranslation(param1,param2,param3);
         }
      }
      
      public function §2"?§(param1:Number, param2:Vector3D = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§=U§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
         }
      }
      
      public function §2"7§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§=U§.prependScale(param1,param2,param3);
         }
      }
      
      public function §+U§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            param1.§+U§(this.§=U§);
         }
      }
      
      public function §[L§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(this.§?]§.length < this.§%"5§ + 1)
            {
               if(_loc4_)
               {
                  this.§?]§.push(new Matrix3D());
                  §§goto(addr29);
               }
            }
            §§goto(addr51);
         }
         addr29:
         if(_loc4_ || _loc2_)
         {
            addr51:
            var _loc1_:*;
            var _loc2_:* = (_loc1_ = this).§%"5§ + 1;
            _loc1_.§%"5§ = _loc2_;
            this.§?]§[(_loc1_ = this).§%"5§].copyFrom(this.§=U§);
         }
      }
      
      public function §]9§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc1_)
         {
            this.§=U§.copyFrom(this.§?]§[--this.§%"5§]);
         }
      }
      
      public function §4!]§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§%"5§ = 0;
            do
            {
               this.§[!;§();
            }
            while(!_loc2_);
            
         }
      }
      
      public function get §[!3§() : Matrix3D
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§1I§.identity();
         }
         do
         {
            this.§1I§.append(this.§=U§);
            do
            {
               this.§1I§.append(this.§0"<§);
            }
            while(!_loc2_);
            
         }
         while(_loc1_);
         
         return this.§1I§;
      }
      
      public function batchQuad(param1:§^$§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §§push(this.§3!!§);
            while(true)
            {
               if(§§pop().§5'§(param1,param3,param4))
               {
                  addr73:
                  while(true)
                  {
                     this.§"F§();
                     addr75:
                     while(true)
                     {
                     }
                  }
                  addr73:
               }
               while(true)
               {
                  §§push(this.§3!!§);
                  if(_loc5_)
                  {
                     break;
                  }
                  §§pop().§!"0§(param1,param2,param3,param4,this.§=U§);
                  if(_loc6_)
                  {
                     if(_loc6_ || param2)
                     {
                        return;
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr75);
               }
            }
         }
         §§goto(addr73);
      }
      
      public function §"F§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§3!!§);
            if(_loc3_ || _loc2_)
            {
               if(§§pop().§%a§ > 0)
               {
                  if(_loc3_)
                  {
                     §§push(this.§3!!§);
                     if(_loc3_)
                     {
                        §§pop().render(this.§`-§,this.§0"<§);
                        if(_loc3_ || _loc1_)
                        {
                           §§goto(addr50);
                        }
                        §§goto(addr95);
                     }
                     addr50:
                     this.§3!!§.reset();
                     §§goto(addr48);
                  }
                  addr48:
                  if(!(_loc4_ && _loc1_))
                  {
                     var _loc1_:*;
                     §§push((_loc1_ = this).§6!A§);
                     if(_loc3_ || _loc3_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc2_:* = §§pop();
                     if(!(_loc4_ && _loc2_))
                     {
                        _loc1_.§6!A§ = _loc2_;
                     }
                     if(_loc3_)
                     {
                        addr95:
                        if(this.§3b§.length <= this.§6!A§)
                        {
                           if(_loc4_ && this)
                           {
                           }
                        }
                        §§goto(addr123);
                     }
                  }
                  this.§3b§.push(new §50§());
               }
               §§goto(addr123);
            }
            §§goto(addr50);
         }
         addr123:
      }
      
      public function §;!C§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§4!]§();
            do
            {
               this.§6!A§ = 0;
            }
            while(!_loc2_);
            
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
      
      private function get §3!!§() : §50§
      {
         return this.§3b§[this.§6!A§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            if(param3 != §@X§[param2])
            {
               do
               {
                  §@X§[param2] = param3;
                  do
                  {
                     param1.setTextureAt(param2,param3);
                  }
                  while(_loc4_ && param3);
                  
               }
               while(!(_loc5_ || param3));
               
               addr74:
            }
            return;
         }
         §§goto(addr74);
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            if(param2 != §9!0§)
            {
               if(_loc3_)
               {
                  addr60:
                  §9!0§ = param2;
               }
               do
               {
                  param1.setProgram(param2);
               }
               while(!_loc3_);
               
            }
            return;
         }
         §§goto(addr60);
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
