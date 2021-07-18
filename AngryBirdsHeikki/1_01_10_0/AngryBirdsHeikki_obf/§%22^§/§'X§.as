package §"^§
{
   import §2Y§.*;
   import §=9§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §'X§
   {
      
      private static var §`<§:Array;
      
      private static var §0+§:Program3D;
      
      private static var §3!H§:Vector.<Number>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §'X§))
         {
            §3!H§ = new Vector.<Number>(16,true);
         }
      }
      
      private var §8!O§:Matrix3D;
      
      private var § Y§:Matrix3D;
      
      private var §9!P§:Matrix3D;
      
      private var §9!c§:Vector.<Matrix3D>;
      
      private var §!"§:int;
      
      private var §[!I§:Vector.<§2v§>;
      
      private var §;_§:int;
      
      private var §<!U§:Context3D;
      
      private var §1!G§:int = -1;
      
      public function §'X§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
            while(true)
            {
               this.§8!O§ = new Matrix3D();
               loop1:
               for(; !_loc2_; while(!(_loc2_ && _loc2_))
               {
                  this.§;_§ = 0;
                  loop6:
                  while(!_loc2_)
                  {
                     this.§[!I§ = new Vector.<§2v§>();
                     loop7:
                     while(true)
                     {
                        if(§`<§ == null)
                        {
                           while(true)
                           {
                              §`<§ = [];
                              addr86:
                              do
                              {
                                 if(_loc2_)
                                 {
                                    continue loop7;
                                 }
                              }
                              while(_loc1_);
                              
                              §§goto(addr146);
                           }
                           addr83:
                        }
                        while(true)
                        {
                           this.§4X§();
                           loop11:
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    this.§1!9§(400,300);
                                    while(_loc1_)
                                    {
                                       §+!'§.§2d§.addEventListener(Event.CONTEXT3D_CREATE,this.§3!c§);
                                       if(!(_loc2_ && this))
                                       {
                                          continue loop11;
                                       }
                                    }
                                    §§goto(addr86);
                                 }
                                 break;
                              }
                              continue loop6;
                           }
                           §§goto(addr127);
                        }
                     }
                  }
               })
               {
                  this.§ Y§ = new Matrix3D();
                  while(true)
                  {
                     this.§9!P§ = new Matrix3D();
                     while(true)
                     {
                        this.§9!c§ = new Vector.<Matrix3D>(0);
                        addr127:
                        while(!(_loc2_ && _loc2_))
                        {
                           this.§!"§ = 0;
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public static function §`U§(param1:Matrix3D, param2:DisplayObject) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            param2.§6!W§(param1);
         }
      }
      
      public static function §"W§(param1:Context3D, param2:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         if(!(_loc5_ && _loc3_))
         {
            if(param2)
            {
               addr40:
               §§push(Context3DBlendFactor.ONE);
               if(!_loc6_)
               {
               }
               addr66:
               §§push(§§pop());
            }
            else
            {
               §§push(Context3DBlendFactor.SOURCE_ALPHA);
               if(_loc6_ || §'X§)
               {
                  §§goto(addr66);
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
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            param1.clear(§>!<§.§;!6§(param2) / 255,§>!<§.§4u§(param2) / 255,§>!<§.§`5§(param2) / 255,param3);
         }
      }
      
      protected function get §1U§() : Matrix3D
      {
         return this.§ Y§;
      }
      
      protected function get §4! §() : Matrix3D
      {
         return this.§8!O§;
      }
      
      public function §4B§(param1:Context3D, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            this.§<!U§ = param1;
         }
         do
         {
            this.§1!G§ = param2;
         }
         while(_loc3_ && this);
         
      }
      
      public function get §&!8§() : Context3D
      {
         return this.§<!U§;
      }
      
      public function get §^!G§() : int
      {
         return this.§1!G§;
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§2v§ = null;
         for each(_loc1_ in this.§[!I§)
         {
            if(_loc5_)
            {
               _loc1_.dispose();
            }
         }
         if(!(_loc4_ && _loc1_))
         {
            §§push(§+!'§.§2d§);
            if(_loc5_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr82);
            }
            §§pop().removeEventListener(Event.CONTEXT3D_CREATE,this.§3!c§);
         }
         addr82:
         if(_loc5_)
         {
            §§push(§+!'§.§2d§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            param1.clear(§>!<§.§;!6§(param2) / 255,§>!<§.§4u§(param2) / 255,§>!<§.§`5§(param2) / 255,param3);
         }
      }
      
      private function §3!c§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§[!I§ = new <§2v§>[new §2v§()];
         }
      }
      
      public function §1!9§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param1)
         {
            §3!H§[0] = 2 / param1;
            if(_loc7_ || param3)
            {
               §3!H§[1] = §3!H§[2] = §3!H§[3] = §3!H§[4] = 0;
               if(_loc7_ || param2)
               {
                  §3!H§[5] = -2 / param2;
                  if(!(_loc6_ && param2))
                  {
                     §3!H§[6] = §3!H§[7] = §3!H§[8] = §3!H§[9] = 0;
                     if(!(_loc6_ && this))
                     {
                        §3!H§[10] = -2 / (param4 - param3);
                        while(true)
                        {
                           §3!H§[11] = 0;
                           addr203:
                           while(true)
                           {
                              §3!H§[12] = -1;
                           }
                        }
                        addr222:
                        addr124:
                     }
                     loop0:
                     while(true)
                     {
                        §3!H§[13] = 1;
                        loop1:
                        while(true)
                        {
                           if(!(_loc7_ || param1))
                           {
                              continue loop0;
                           }
                           §3!H§[14] = -(param4 + param3) / (param4 - param3);
                           loop2:
                           while(!(_loc6_ && param2))
                           {
                              §3!H§[15] = 1;
                              loop3:
                              for(; !_loc6_; while(true)
                              {
                                 this.§8!O§.copyRawDataFrom(§3!H§);
                                 if(!(_loc6_ && param3))
                                 {
                                    continue loop2;
                                 }
                                 continue loop3;
                              },return)
                              {
                                 if(_loc7_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr222);
                              }
                              continue loop1;
                              if(!(_loc7_ || this))
                              {
                                 continue;
                              }
                              §§goto(addr148);
                           }
                           §§goto(addr203);
                        }
                     }
                  }
                  §§goto(addr158);
               }
            }
            §§goto(addr148);
         }
         §§goto(addr124);
      }
      
      public function §4X§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§ Y§.identity();
         }
      }
      
      public function §9s§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            this.§ Y§.prependTranslation(param1,param2,param3);
         }
      }
      
      public function §7!L§(param1:Number, param2:Vector3D = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§ Y§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
         }
      }
      
      public function §5!R§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§ Y§.prependScale(param1,param2,param3);
         }
      }
      
      public function §6!W§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            param1.§6!W§(this.§ Y§);
         }
      }
      
      public function §7!]§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc1_))
         {
            if(this.§9!c§.length < this.§!"§ + 1)
            {
               if(!(_loc3_ && this))
               {
                  this.§9!c§.push(new Matrix3D());
                  if(_loc4_ || _loc1_)
                  {
                  }
               }
               §§goto(addr89);
            }
            var _loc1_:*;
            var _loc2_:* = (_loc1_ = this).§!"§ + 1;
            _loc1_.§!"§ = _loc2_;
            this.§9!c§[(_loc1_ = this).§!"§].copyFrom(this.§ Y§);
         }
         addr89:
      }
      
      public function §1P§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§ Y§.copyFrom(this.§9!c§[--this.§!"§]);
         }
      }
      
      public function §'!c§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§!"§ = 0;
         }
         do
         {
            this.§4X§();
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      public function get §0K§() : Matrix3D
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§9!P§.identity();
            while(true)
            {
               this.§9!P§.append(this.§ Y§);
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     this.§9!P§.append(this.§8!O§);
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return this.§9!P§;
               }
            }
         }
         §§goto(addr63);
      }
      
      public function batchQuad(param1:§7?§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(this.§[C§);
            while(true)
            {
               if(§§pop().§?!=§(param1,param3,param4))
               {
                  while(true)
                  {
                     this.§;!S§();
                     addr74:
                     while(true)
                     {
                     }
                  }
                  addr72:
               }
               while(true)
               {
                  §§push(this.§[C§);
                  if(!_loc5_)
                  {
                     break;
                  }
                  §§pop().§>[§(param1,param2,param3,param4,this.§ Y§);
                  if(_loc5_)
                  {
                     if(_loc5_ || param2)
                     {
                        return;
                        addr54:
                     }
                     §§goto(addr72);
                  }
                  §§goto(addr74);
               }
            }
         }
         §§goto(addr54);
      }
      
      public function §;!S§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§[C§);
            if(!_loc3_)
            {
               if(§§pop().§8!&§ > 0)
               {
                  if(!_loc3_)
                  {
                     §§push(this.§[C§);
                     if(_loc4_)
                     {
                        §§pop().render(this.§&!8§,this.§8!O§);
                        if(_loc4_ || _loc3_)
                        {
                           addr56:
                           this.§[C§.reset();
                           if(_loc3_)
                           {
                           }
                           §§goto(addr109);
                        }
                        var _loc1_:*;
                        §§push((_loc1_ = this).§;_§);
                        if(_loc4_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc2_:* = §§pop();
                        if(_loc4_)
                        {
                           _loc1_.§;_§ = _loc2_;
                        }
                        if(_loc4_ || _loc1_)
                        {
                           if(this.§[!I§.length <= this.§;_§)
                           {
                              if(!(_loc3_ && _loc1_))
                              {
                                 this.§[!I§.push(new §2v§());
                              }
                           }
                        }
                        §§goto(addr109);
                     }
                  }
                  §§goto(addr109);
               }
               addr109:
               return;
            }
         }
         §§goto(addr56);
      }
      
      public function §extends§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§'!c§();
            do
            {
               this.§;_§ = 0;
            }
            while(_loc2_ && _loc2_);
            
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
      
      private function get §[C§() : §2v§
      {
         return this.§[!I§[this.§;_§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            if(param3 != §`<§[param2])
            {
               if(_loc5_ || param2)
               {
                  §`<§[param2] = param3;
                  do
                  {
                     param1.setTextureAt(param2,param3);
                  }
                  while(!(_loc5_ || param2));
                  
                  addr78:
               }
               §§goto(addr78);
            }
            return;
         }
         §§goto(addr78);
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(param2 != §0+§)
            {
               do
               {
                  §0+§ = param2;
                  do
                  {
                     param1.setProgram(param2);
                  }
                  while(!_loc4_);
                  
               }
               while(!_loc4_);
               
               addr52:
            }
            return;
         }
         §§goto(addr52);
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
