package §7!>§
{
   import §#!,§.*;
   import §'7§.*;
   import §6!J§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class RenderSupport
   {
      
      private static var §2^§:Array;
      
      private static var §<Q§:Program3D;
      
      private static var §'!0§:Vector.<Number>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || RenderSupport)
         {
            §'!0§ = new Vector.<Number>(16,true);
         }
      }
      
      private var §5!T§:Matrix3D;
      
      private var §#G§:Matrix3D;
      
      private var §&§:Matrix3D;
      
      private var §4[§:Vector.<Matrix3D>;
      
      private var §@>§:int;
      
      private var §0I§:Vector.<QuadBatch>;
      
      private var §=q§:int;
      
      private var § ;§:Context3D;
      
      private var §6"§:int = -1;
      
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
               this.§5!T§ = new Matrix3D();
               while(true)
               {
                  this.§#G§ = new Matrix3D();
                  loop2:
                  while(_loc2_)
                  {
                     continue loop0;
                     loop7:
                     while(true)
                     {
                        if(_loc2_ || _loc1_)
                        {
                           if(§2^§ != null)
                           {
                              break;
                           }
                           if(!_loc2_)
                           {
                              do
                              {
                                 break loop7;
                              }
                              while(!_loc2_);
                              
                              return;
                           }
                           addr87:
                           continue;
                        }
                        continue loop2;
                     }
                     while(true)
                     {
                        this.§@![§();
                        §§goto(addr60);
                     }
                  }
               }
            }
         }
         §§goto(addr114);
      }
      
      public static function §throw§(param1:Matrix3D, param2:DisplayObject) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            param2.§#!9§(param1);
         }
      }
      
      public static function §1"§(param1:Context3D, param2:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         if(!_loc6_)
         {
            if(param2)
            {
               addr35:
               §§push(Context3DBlendFactor.ONE);
               if(!_loc5_)
               {
               }
               addr48:
               §§push(§§pop());
            }
            else
            {
               §§push(Context3DBlendFactor.SOURCE_ALPHA);
               if(!_loc6_)
               {
                  §§goto(addr48);
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
            param1.clear(§!,§.§0,§(param2) / 255,§!,§.§-[§(param2) / 255,§!,§.§4A§(param2) / 255,param3);
         }
      }
      
      protected function get §@-§() : Matrix3D
      {
         return this.§#G§;
      }
      
      protected function get §0+§() : Matrix3D
      {
         return this.§5!T§;
      }
      
      public function §-!R§(param1:Context3D, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            this.§ ;§ = param1;
         }
         do
         {
            this.§6"§ = param2;
         }
         while(!_loc3_);
         
      }
      
      public function get §0v§() : Context3D
      {
         return this.§ ;§;
      }
      
      public function get §=V§() : int
      {
         return this.§6"§;
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:QuadBatch = null;
         for each(_loc1_ in this.§0I§)
         {
            if(_loc5_)
            {
               _loc1_.dispose();
            }
         }
         if(_loc5_ || _loc1_)
         {
            §§push(Starling.§7!+§);
            if(_loc5_)
            {
               if(§§pop())
               {
                  if(_loc5_)
                  {
                     addr81:
                     Starling.§7!+§.removeEventListener(Event.CONTEXT3D_CREATE,this.§8!<§);
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
         if(_loc4_ || this)
         {
            param1.clear(§!,§.§0,§(param2) / 255,§!,§.§-[§(param2) / 255,§!,§.§4A§(param2) / 255,param3);
         }
      }
      
      private function §8!<§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§0I§ = new <QuadBatch>[new QuadBatch()];
         }
      }
      
      public function native(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param2))
         {
            §'!0§[0] = 2 / param1;
            if(_loc6_ || param1)
            {
               §'!0§[1] = §'!0§[2] = §'!0§[3] = §'!0§[4] = 0;
               if(_loc6_ || param2)
               {
                  §'!0§[5] = -2 / param2;
                  if(!(_loc7_ && this))
                  {
                     §'!0§[6] = §'!0§[7] = §'!0§[8] = §'!0§[9] = 0;
                     if(!_loc7_)
                     {
                        §'!0§[10] = -2 / (param4 - param3);
                        addr234:
                        while(true)
                        {
                           §'!0§[11] = 0;
                        }
                        addr234:
                        addr128:
                     }
                     loop2:
                     while(true)
                     {
                        §'!0§[13] = 1;
                        while(true)
                        {
                           §'!0§[14] = -(param4 + param3) / (param4 - param3);
                           loop4:
                           while(true)
                           {
                              §'!0§[15] = 1;
                              while(!(_loc7_ && this))
                              {
                                 this.§5!T§.copyRawDataFrom(§'!0§);
                                 if(!(_loc7_ && param3))
                                 {
                                    continue loop4;
                                 }
                              }
                           }
                           if(_loc7_ && param3)
                           {
                              continue;
                           }
                           if(_loc6_)
                           {
                              return;
                           }
                           addr215:
                           while(_loc6_)
                           {
                              continue loop2;
                           }
                           §§goto(addr234);
                        }
                     }
                     addr217:
                  }
                  while(true)
                  {
                     §'!0§[12] = -1;
                     §§goto(addr215);
                  }
               }
               §§goto(addr128);
            }
            §§goto(addr217);
         }
         §§goto(addr234);
      }
      
      public function §@![§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§#G§.identity();
         }
      }
      
      public function §9L§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§#G§.prependTranslation(param1,param2,param3);
         }
      }
      
      public function §,!V§(param1:Number, param2:Vector3D = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§#G§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
         }
      }
      
      public function §^M§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            this.§#G§.prependScale(param1,param2,param3);
         }
      }
      
      public function §#!9§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            param1.§#!9§(this.§#G§);
         }
      }
      
      public function §5a§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(this.§4[§.length < this.§@>§ + 1)
            {
               if(!_loc3_)
               {
                  this.§4[§.push(new Matrix3D());
                  if(_loc3_)
                  {
                  }
               }
               §§goto(addr76);
            }
            this.§4[§[this.§@>§++].copyFrom(this.§#G§);
         }
         addr76:
      }
      
      public function §26§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc1_))
         {
            this.§#G§.copyFrom(this.§4[§[--this.§@>§]);
         }
      }
      
      public function §"j§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§@>§ = 0;
         }
         do
         {
            this.§@![§();
         }
         while(!_loc1_);
         
      }
      
      public function get §<!=§() : Matrix3D
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§&§.identity();
         }
         while(true)
         {
            this.§&§.append(this.§#G§);
            while(!_loc2_)
            {
               this.§&§.append(this.§5!T§);
               if(!_loc2_)
               {
                  return this.§&§;
               }
            }
         }
      }
      
      public function batchQuad(param1:§6!Y§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
         {
            §§push(this.§>r§);
            while(true)
            {
               if(§§pop().§>!>§(param1,param3,param4))
               {
                  while(true)
                  {
                     this.§"!§();
                     addr77:
                     while(true)
                     {
                     }
                  }
                  addr74:
               }
               while(true)
               {
                  §§push(this.§>r§);
                  if(!_loc6_)
                  {
                     break;
                  }
                  §§pop().§8Q§(param1,param2,param3,param4,this.§#G§);
                  if(_loc6_)
                  {
                     if(_loc6_)
                     {
                        return;
                     }
                     §§goto(addr74);
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      public function §"!§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§>r§);
            if(!_loc3_)
            {
               if(§§pop().§'-§ > 0)
               {
                  if(_loc4_ || _loc3_)
                  {
                     §§push(this.§>r§);
                     if(!(_loc3_ && this))
                     {
                        §§pop().render(this.§0v§,this.§5!T§);
                        addr42:
                        if(_loc4_)
                        {
                           addr62:
                           this.§>r§.reset();
                           if(_loc4_)
                           {
                              §§goto(addr66);
                           }
                           §§goto(addr103);
                        }
                        addr66:
                        var _loc1_:*;
                        §§push((_loc1_ = this).§=q§);
                        if(_loc4_ || _loc3_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc2_:* = §§pop();
                        if(!_loc3_)
                        {
                           _loc1_.§=q§ = _loc2_;
                        }
                        if(_loc4_ || this)
                        {
                           addr103:
                           if(this.§0I§.length <= this.§=q§)
                           {
                              if(_loc3_)
                              {
                              }
                           }
                           §§goto(addr117);
                        }
                        this.§0I§.push(new QuadBatch());
                        §§goto(addr117);
                     }
                     §§goto(addr62);
                  }
               }
               addr117:
               return;
            }
            §§goto(addr42);
         }
         §§goto(addr62);
      }
      
      public function §%G§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§"j§();
            do
            {
               this.§=q§ = 0;
            }
            while(_loc2_);
            
         }
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            param1.present();
         }
      }
      
      private function get §>r§() : QuadBatch
      {
         return this.§0I§[this.§=q§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            if(param3 != §2^§[param2])
            {
               do
               {
                  §2^§[param2] = param3;
                  do
                  {
                     param1.setTextureAt(param2,param3);
                  }
                  while(!(_loc5_ || param3));
                  
               }
               while(!(_loc5_ || param2));
               
               addr76:
            }
            return;
         }
         §§goto(addr76);
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(param2 != §<Q§)
            {
               if(_loc4_ || this)
               {
                  addr53:
                  §<Q§ = param2;
               }
               do
               {
                  param1.setProgram(param2);
               }
               while(!_loc4_);
               
            }
            return;
         }
         §§goto(addr53);
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
