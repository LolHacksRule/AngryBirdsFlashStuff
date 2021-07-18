package §&#H§
{
   import §!!U§.*;
   import §&v§.Texture;
   import §=]§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §%"H§
   {
      
      private static var §6#E§:Array;
      
      private static var §[!1§:Program3D;
      
      private static var §>!y§:Vector.<Number>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §%"H§))
         {
            §>!y§ = new Vector.<Number>(16,true);
         }
      }
      
      private var §5#6§:Matrix3D;
      
      private var §7"#§:Matrix3D;
      
      private var §6r§:Matrix3D;
      
      private var §?!Z§:Vector.<Matrix3D>;
      
      private var §-"<§:int;
      
      private var §9!&§:Vector.<§%"Y§>;
      
      private var §<"D§:int;
      
      private var §!§:Context3D;
      
      private var §`!X§:int = -1;
      
      public function §%"H§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            loop0:
            while(true)
            {
               this.§5#6§ = new Matrix3D();
               loop1:
               while(true)
               {
                  this.§7"#§ = new Matrix3D();
                  loop2:
                  while(true)
                  {
                     this.§6r§ = new Matrix3D();
                     loop3:
                     while(true)
                     {
                        this.§?!Z§ = new Vector.<Matrix3D>(0);
                        while(true)
                        {
                           this.§-"<§ = 0;
                           while(!_loc1_)
                           {
                              this.§<"D§ = 0;
                              while(!_loc1_)
                              {
                                 this.§9!&§ = new Vector.<§%"Y§>();
                                 continue loop0;
                                 while(_loc2_ || _loc1_)
                                 {
                                    §3#J§.§2!C§.addEventListener(Event.CONTEXT3D_CREATE,this.§%!b§);
                                    if(!_loc2_)
                                    {
                                       continue;
                                    }
                                    if(_loc2_)
                                    {
                                       if(_loc1_)
                                       {
                                          addr98:
                                          while(true)
                                          {
                                             addr52:
                                             while(true)
                                             {
                                                this.§;0§();
                                                addr55:
                                                while(true)
                                                {
                                                   if(!(_loc1_ && _loc1_))
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop2;
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop3;
                                             }
                                          }
                                          addr98:
                                       }
                                       return;
                                       addr38:
                                    }
                                    §§goto(addr55);
                                 }
                              }
                           }
                           continue loop1;
                           addr88:
                           if(_loc1_ && _loc1_)
                           {
                              continue;
                           }
                           §6#E§ = [];
                           §§goto(addr98);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr38);
      }
      
      public static function §;!?§(param1:Matrix3D, param2:DisplayObject) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            param2.§!]§(param1);
         }
      }
      
      public static function §`!_§(param1:Context3D, param2:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         if(!_loc6_)
         {
            if(param2)
            {
               addr24:
               §§push(Context3DBlendFactor.ONE);
               if(!(_loc6_ && param1))
               {
                  addr65:
                  §§push(§§pop());
               }
            }
            else
            {
               §§push(Context3DBlendFactor.SOURCE_ALPHA);
               if(_loc5_ || _loc3_)
               {
                  §§goto(addr65);
               }
            }
            var _loc4_:* = §§pop();
            if(!_loc6_)
            {
               param1.setBlendFactors(_loc4_,_loc3_);
            }
            return;
         }
         §§goto(addr24);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            param1.clear(§4"I§.§7!0§(param2) / 255,§4"I§.§=#Z§(param2) / 255,§4"I§.§@H§(param2) / 255,param3);
         }
      }
      
      protected function get §&e§() : Matrix3D
      {
         return this.§7"#§;
      }
      
      protected function get §9"y§() : Matrix3D
      {
         return this.§5#6§;
      }
      
      public function §>"0§(param1:Context3D, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            this.§!§ = param1;
            do
            {
               this.§`!X§ = param2;
            }
            while(_loc4_);
            
         }
      }
      
      public function get §<"t§() : Context3D
      {
         return this.§!§;
      }
      
      public function get §^#2§() : int
      {
         return this.§`!X§;
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§%"Y§ = null;
         for each(_loc1_ in this.§9!&§)
         {
            if(!_loc4_)
            {
               _loc1_.dispose();
            }
         }
         if(!(_loc4_ && _loc1_))
         {
            §§push(§3#J§.§2!C§);
            if(!(_loc4_ && _loc1_))
            {
               if(!§§pop())
               {
               }
               §§goto(addr92);
            }
            §§pop().removeEventListener(Event.CONTEXT3D_CREATE,this.§%!b§);
         }
         addr92:
         if(!(_loc4_ && this))
         {
            §§push(§3#J§.§2!C§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            param1.clear(§4"I§.§7!0§(param2) / 255,§4"I§.§=#Z§(param2) / 255,§4"I§.§@H§(param2) / 255,param3);
         }
      }
      
      private function §%!b§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§9!&§ = new <§%"Y§>[new §%"Y§()];
         }
      }
      
      public function §5#G§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            §>!y§[0] = 2 / param1;
            if(_loc7_)
            {
               §>!y§[1] = §>!y§[2] = §>!y§[3] = §>!y§[4] = 0;
               if(_loc7_)
               {
                  addr54:
                  §>!y§[5] = -2 / param2;
                  if(!_loc6_)
                  {
                     §>!y§[6] = §>!y§[7] = §>!y§[8] = §>!y§[9] = 0;
                     if(!(_loc6_ && param2))
                     {
                        §>!y§[10] = -2 / (param4 - param3);
                        loop6:
                        while(true)
                        {
                           §>!y§[11] = 0;
                           addr173:
                           loop5:
                           while(true)
                           {
                              §>!y§[12] = -1;
                              addr165:
                              while(true)
                              {
                                 if(!_loc7_)
                                 {
                                    continue loop5;
                                 }
                                 §>!y§[13] = 1;
                                 while(!(_loc7_ || this))
                                 {
                                    continue loop6;
                                 }
                                 loop8:
                                 while(true)
                                 {
                                    §>!y§[14] = -(param4 + param3) / (param4 - param3);
                                    addr144:
                                    while(true)
                                    {
                                       if(!_loc7_)
                                       {
                                          §§goto(addr152);
                                       }
                                       continue loop8;
                                    }
                                 }
                                 addr152:
                                 continue loop5;
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §>!y§[15] = 1;
                        addr129:
                        §§goto(addr131);
                     }
                  }
                  §§goto(addr159);
               }
               addr131:
               while(!_loc7_)
               {
                  §§goto(addr165);
               }
               while(true)
               {
                  this.§5#6§.copyRawDataFrom(§>!y§);
                  if(!_loc6_)
                  {
                     if(!(_loc6_ && param3))
                     {
                        break;
                     }
                     §§goto(addr144);
                  }
                  else
                  {
                     §§goto(addr129);
                  }
               }
               return;
            }
            §§goto(addr173);
         }
         §§goto(addr54);
      }
      
      public function §;0§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§7"#§.identity();
         }
      }
      
      public function §3"N§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§7"#§.prependTranslation(param1,param2,param3);
         }
      }
      
      public function §;"^§(param1:Number, param2:Vector3D = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§7"#§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
         }
      }
      
      public function §""M§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§7"#§.prependScale(param1,param2,param3);
         }
      }
      
      public function §!]§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            param1.§!]§(this.§7"#§);
         }
      }
      
      public function §?#a§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(this.§?!Z§.length < this.§-"<§ + 1)
            {
               if(_loc3_ || this)
               {
                  this.§?!Z§.push(new Matrix3D());
                  if(_loc3_)
                  {
                     addr50:
                     var _loc1_:*;
                     var _loc2_:* = (_loc1_ = this).§-"<§ + 1;
                     _loc1_.§-"<§ = _loc2_;
                     this.§?!Z§[(_loc1_ = this).§-"<§].copyFrom(this.§7"#§);
                  }
                  return;
               }
            }
         }
         §§goto(addr50);
      }
      
      public function §"!0§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            this.§7"#§.copyFrom(this.§?!Z§[--this.§-"<§]);
         }
      }
      
      public function §6v§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§-"<§ = 0;
         }
         do
         {
            this.§;0§();
         }
         while(!(_loc1_ || _loc2_));
         
      }
      
      public function get §&h§() : Matrix3D
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§6r§.identity();
            while(true)
            {
               this.§6r§.append(this.§7"#§);
               while(_loc2_ || _loc2_)
               {
                  this.§6r§.append(this.§5#6§);
                  if(_loc1_)
                  {
                     continue;
                  }
                  return this.§6r§;
                  addr49:
               }
            }
         }
         §§goto(addr49);
      }
      
      public function batchQuad(param1:§2"D§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            §§push(this.§9!6§);
            while(true)
            {
               if(!§§pop().§@c§(param1,param3,param4,param2))
               {
                  continue;
               }
            }
         }
         §§goto(addr78);
      }
      
      public function §+#X§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§9!6§);
            if(_loc4_ || _loc3_)
            {
               if(§§pop().§%">§ > 0)
               {
                  if(!(_loc3_ && _loc1_))
                  {
                     §§push(this.§9!6§);
                     if(_loc4_ || _loc2_)
                     {
                        §§pop().render(this.§<"t§,this.§5#6§);
                        addr47:
                        if(!_loc3_)
                        {
                           addr66:
                           this.§9!6§.reset();
                           if(!(_loc3_ && _loc2_))
                           {
                              var _loc1_:*;
                              §§push((_loc1_ = this).§<"D§);
                              if(!_loc3_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc2_:* = §§pop();
                              if(_loc4_)
                              {
                                 _loc1_.§<"D§ = _loc2_;
                              }
                              if(_loc3_)
                              {
                              }
                           }
                           §§goto(addr114);
                        }
                        if(this.§9!&§.length <= this.§<"D§)
                        {
                           if(_loc4_ || _loc1_)
                           {
                           }
                        }
                        §§goto(addr114);
                     }
                     §§goto(addr66);
                  }
               }
               §§goto(addr114);
            }
            §§goto(addr47);
         }
         addr114:
         this.§9!&§.push(new §%"Y§());
      }
      
      public function nextFrame() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§6v§();
         }
         do
         {
            this.§<"D§ = 0;
         }
         while(_loc2_);
         
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
      
      private function get §9!6§() : §%"Y§
      {
         return this.§9!&§[this.§<"D§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            if(param3 != §6#E§[param2])
            {
               if(_loc4_)
               {
                  §6#E§[param2] = param3;
                  do
                  {
                     param1.setTextureAt(param2,param3);
                  }
                  while(!(_loc4_ || param2));
                  
                  addr67:
               }
               §§goto(addr67);
            }
            return;
         }
         §§goto(addr67);
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(param2 != §[!1§)
            {
               do
               {
                  §[!1§ = param2;
                  do
                  {
                     param1.setProgram(param2);
                  }
                  while(_loc4_);
                  
               }
               while(!_loc3_);
               
               addr51:
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
