package §'6§
{
   import §0!R§.Texture;
   import §1!$§.*;
   import §1V§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §'"3§
   {
      
      private static var §8!%§:Array;
      
      private static var §8r§:Program3D;
      
      private static var §&!,§:Vector.<Number>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §&!,§ = new Vector.<Number>(16,true);
         }
      }
      
      private var §^B§:Matrix3D;
      
      private var §^@§:Matrix3D;
      
      private var §1i§:Matrix3D;
      
      private var §%A§:Vector.<Matrix3D>;
      
      private var §5"6§:int;
      
      private var §0K§:Vector.<§[!f§>;
      
      private var §8d§:int;
      
      private var §,!X§:Context3D;
      
      private var §!!#§:int = -1;
      
      public function §'"3§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            loop0:
            while(true)
            {
               this.§^B§ = new Matrix3D();
               loop1:
               while(true)
               {
                  this.§^@§ = new Matrix3D();
                  loop2:
                  while(true)
                  {
                     this.§1i§ = new Matrix3D();
                     loop3:
                     while(true)
                     {
                        this.§%A§ = new Vector.<Matrix3D>(0);
                        continue loop1;
                        addr47:
                        if(_loc2_ && _loc2_)
                        {
                           continue;
                        }
                        §"]§.§!X§.addEventListener(Event.CONTEXT3D_CREATE,this.§-""§);
                        addr54:
                        if(!_loc2_)
                        {
                           addr33:
                           if(!_loc1_)
                           {
                              loop7:
                              while(true)
                              {
                                 if(§8!%§ == null)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          if(_loc2_)
                                          {
                                             break;
                                          }
                                          §8!%§ = [];
                                          while(_loc1_)
                                          {
                                             loop11:
                                             while(!(_loc2_ && _loc2_))
                                             {
                                                this.§="B§(400,300);
                                                while(true)
                                                {
                                                   if(!_loc1_)
                                                   {
                                                      continue loop11;
                                                   }
                                                   if(!_loc1_)
                                                   {
                                                      continue loop8;
                                                   }
                                                   §§goto(addr47);
                                                   §§goto(addr54);
                                                }
                                                continue loop3;
                                             }
                                          }
                                          continue loop1;
                                       }
                                       addr102:
                                       while(true)
                                       {
                                          this.§0K§ = new Vector.<§[!f§>();
                                          continue loop7;
                                       }
                                    }
                                    continue loop0;
                                 }
                                 while(true)
                                 {
                                    this.§<!A§();
                                    §§goto(addr58);
                                 }
                              }
                           }
                           if(!_loc2_)
                           {
                              return;
                              addr37:
                           }
                           continue loop2;
                        }
                        §§goto(addr43);
                     }
                  }
               }
            }
         }
         §§goto(addr37);
      }
      
      public static function §?"0§(param1:Matrix3D, param2:DisplayObject) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            param2.§@_§(param1);
         }
      }
      
      public static function §4!0§(param1:Context3D, param2:Boolean) : void
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
               if(_loc6_)
               {
                  addr66:
                  §§push(§§pop());
               }
            }
            else
            {
               §§push(Context3DBlendFactor.SOURCE_ALPHA);
               if(_loc6_ || param2)
               {
                  §§goto(addr66);
               }
            }
            var _loc4_:* = §§pop();
            if(_loc6_ || param1)
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
         if(_loc5_ || param1)
         {
            param1.clear(§-G§.§7_§(param2) / 255,§-G§.§9"<§(param2) / 255,§-G§.§8t§(param2) / 255,param3);
         }
      }
      
      protected function get §3!T§() : Matrix3D
      {
         return this.§^@§;
      }
      
      protected function get §&!;§() : Matrix3D
      {
         return this.§^B§;
      }
      
      public function §7W§(param1:Context3D, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§,!X§ = param1;
            do
            {
               this.§!!#§ = param2;
            }
            while(_loc3_ && param1);
            
         }
      }
      
      public function get §,§() : Context3D
      {
         return this.§,!X§;
      }
      
      public function get §2'§() : int
      {
         return this.§!!#§;
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§[!f§ = null;
         var _loc3_:* = this.§0K§;
         for each(_loc1_ in _loc3_)
         {
            if(!(_loc5_ && _loc1_))
            {
               _loc1_.dispose();
            }
         }
         if(!(_loc5_ && _loc1_))
         {
            §§push(§"]§.§!X§);
            if(!(_loc5_ && this))
            {
               if(§§pop())
               {
                  if(_loc4_ || _loc3_)
                  {
                     addr91:
                     §"]§.§!X§.removeEventListener(Event.CONTEXT3D_CREATE,this.§-""§);
                  }
               }
               return;
            }
         }
         §§goto(addr91);
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            param1.clear(§-G§.§7_§(param2) / 255,§-G§.§9"<§(param2) / 255,§-G§.§8t§(param2) / 255,param3);
         }
      }
      
      private function §-""§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§0K§ = new <§[!f§>[new §[!f§()];
         }
      }
      
      public function §="B§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            §&!,§[0] = 2 / param1;
            if(!(_loc6_ && param3))
            {
               §&!,§[1] = §&!,§[2] = §&!,§[3] = §&!,§[4] = 0;
               if(!(_loc6_ && this))
               {
                  §&!,§[5] = -2 / param2;
                  if(!_loc6_)
                  {
                     §&!,§[6] = §&!,§[7] = §&!,§[8] = §&!,§[9] = 0;
                     if(!_loc6_)
                     {
                        §&!,§[10] = -2 / (param4 - param3);
                        addr109:
                     }
                  }
                  while(true)
                  {
                     §&!,§[11] = 0;
                  }
                  addr202:
               }
               loop1:
               while(true)
               {
                  §&!,§[12] = -1;
                  while(true)
                  {
                     §&!,§[13] = 1;
                     while(!(_loc6_ && param1))
                     {
                        if(!_loc6_)
                        {
                           §&!,§[14] = -(param4 + param3) / (param4 - param3);
                           loop4:
                           while(_loc7_)
                           {
                              while(true)
                              {
                                 §&!,§[15] = 1;
                                 while(!_loc6_)
                                 {
                                    continue loop1;
                                    this.§^B§.copyRawDataFrom(§&!,§);
                                    if(_loc7_ || this)
                                    {
                                       return;
                                    }
                                 }
                                 continue loop4;
                              }
                           }
                           continue;
                        }
                        §§goto(addr202);
                     }
                  }
               }
            }
            §§goto(addr109);
         }
         §§goto(addr156);
      }
      
      public function §<!A§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§^@§.identity();
         }
      }
      
      public function §^";§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§^@§.prependTranslation(param1,param2,param3);
         }
      }
      
      public function §@" §(param1:Number, param2:Vector3D = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§^@§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
         }
      }
      
      public function §&#§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§^@§.prependScale(param1,param2,param3);
         }
      }
      
      public function §@_§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            param1.§@_§(this.§^@§);
         }
      }
      
      public function §?h§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(this.§%A§.length < this.§5"6§ + 1)
            {
               if(!(_loc3_ && this))
               {
                  addr54:
                  this.§%A§.push(new Matrix3D());
                  if(_loc4_)
                  {
                     addr61:
                     this.§%A§[this.§5"6§++].copyFrom(this.§^@§);
                  }
               }
               return;
            }
            §§goto(addr61);
         }
         §§goto(addr54);
      }
      
      public function §7""§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§^@§.copyFrom(this.§%A§[--this.§5"6§]);
         }
      }
      
      public function §#!T§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§5"6§ = 0;
         }
         do
         {
            this.§<!A§();
         }
         while(!_loc2_);
         
      }
      
      public function get §&b§() : Matrix3D
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§1i§.identity();
         }
         while(true)
         {
            this.§1i§.append(this.§^@§);
            while(!_loc1_)
            {
               this.§1i§.append(this.§^B§);
               if(!_loc1_)
               {
                  return this.§1i§;
               }
            }
         }
      }
      
      public function batchQuad(param1:§!"?§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            §§push(this.§31§);
            while(true)
            {
               if(!§§pop().§5!§(param1,param3,param4))
               {
                  continue;
               }
            }
         }
         §§goto(addr82);
      }
      
      public function §-!=§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§31§);
            if(!_loc3_)
            {
               if(§§pop().§;!&§ > 0)
               {
                  if(!_loc3_)
                  {
                     §§push(this.§31§);
                     if(!_loc3_)
                     {
                        addr32:
                        §§pop().render(this.§,§,this.§^B§);
                        §§goto(addr109);
                     }
                     §§pop().reset();
                     if(!_loc3_)
                     {
                        var _loc1_:*;
                        §§push((_loc1_ = this).§8d§);
                        if(_loc4_ || _loc2_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc2_:* = §§pop();
                        if(!(_loc3_ && _loc1_))
                        {
                           _loc1_.§8d§ = _loc2_;
                        }
                        if(_loc3_ && _loc2_)
                        {
                        }
                     }
                     §§goto(addr109);
                  }
                  if(this.§0K§.length <= this.§8d§)
                  {
                     if(!_loc3_)
                     {
                        §§goto(addr109);
                     }
                  }
               }
               addr109:
               if(_loc4_ || this)
               {
                  §§push(this.§31§);
               }
               this.§0K§.push(new §[!f§());
               return;
            }
         }
         §§goto(addr32);
      }
      
      public function §]!<§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§#!T§();
            do
            {
               this.§8d§ = 0;
            }
            while(_loc2_ && _loc1_);
            
         }
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
      
      private function get §31§() : §[!f§
      {
         return this.§0K§[this.§8d§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(param3 != §8!%§[param2])
            {
               do
               {
                  §8!%§[param2] = param3;
                  do
                  {
                     param1.setTextureAt(param2,param3);
                  }
                  while(_loc5_);
                  
               }
               while(!_loc4_);
               
               addr42:
            }
            return;
         }
         §§goto(addr42);
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(param2 != §8r§)
            {
               if(_loc3_)
               {
                  addr50:
                  §8r§ = param2;
               }
               do
               {
                  param1.setProgram(param2);
               }
               while(_loc4_ && param1);
               
            }
            return;
         }
         §§goto(addr50);
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
