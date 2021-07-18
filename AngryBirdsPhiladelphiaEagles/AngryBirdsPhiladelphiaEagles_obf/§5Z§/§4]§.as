package §5Z§
{
   import § N§.*;
   import §+§.*;
   import §8z§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §4]§
   {
      
      private static var §^G§:Array;
      
      private static var §6!J§:Program3D;
      
      private static var §^!2§:Vector.<Number>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §4]§))
         {
            §^!2§ = new Vector.<Number>(16,true);
         }
      }
      
      private var §!G§:Matrix3D;
      
      private var §+!0§:Matrix3D;
      
      private var §]h§:Matrix3D;
      
      private var §,i§:Vector.<Matrix3D>;
      
      private var §get §:int;
      
      private var §>+§:Vector.<§]5§>;
      
      private var §%!&§:int;
      
      private var §@e§:Context3D;
      
      private var §>k§:int = -1;
      
      public function §4]§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         super();
         this.§!G§ = new Matrix3D();
         while(true)
         {
            this.§+!0§ = new Matrix3D();
            this.§]h§ = new Matrix3D();
            loop1:
            while(true)
            {
               this.§,i§ = new Vector.<Matrix3D>(0);
               while(true)
               {
                  this.§get § = 0;
                  addr100:
                  while(!_loc2_)
                  {
                     continue loop1;
                  }
               }
            }
            if(_loc1_ || this)
            {
               this.§%!&§ = 0;
               do
               {
                  this.§>+§ = new Vector.<§]5§>();
                  loop5:
                  do
                  {
                     if(§^G§ == null)
                     {
                        while(_loc1_)
                        {
                           §^G§ = [];
                           while(_loc1_ || this)
                           {
                              this.§=j§(400,300);
                              §[Z§.§%m§.addEventListener(Event.CONTEXT3D_CREATE,this.§]!$§);
                              if(_loc1_ || this)
                              {
                                 continue loop5;
                              }
                           }
                        }
                        §§goto(addr100);
                     }
                     while(true)
                     {
                        this.§ !G§();
                        §§goto(addr55);
                     }
                  }
                  while(_loc2_ && this);
                  
               }
               while(!_loc1_);
               
               return;
            }
         }
      }
      
      public static function §8d§(param1:Matrix3D, param2:DisplayObject) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            param2.§>m§(param1);
         }
      }
      
      public static function §<Y§(param1:Context3D, param2:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         if(!(_loc5_ && param2))
         {
            if(param2)
            {
               addr50:
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
               if(!(_loc5_ && param2))
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
         §§goto(addr50);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            param1.clear(§?g§.§"!2§(param2) / 255,§?g§.§2t§(param2) / 255,§?g§.§7p§(param2) / 255,param3);
         }
      }
      
      protected function get §4p§() : Matrix3D
      {
         return this.§+!0§;
      }
      
      protected function get §-@§() : Matrix3D
      {
         return this.§!G§;
      }
      
      public function §+j§(param1:Context3D, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§@e§ = param1;
            do
            {
               this.§>k§ = param2;
            }
            while(_loc4_);
            
         }
      }
      
      public function get §,!D§() : Context3D
      {
         return this.§@e§;
      }
      
      public function get §!!E§() : int
      {
         return this.§>k§;
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§]5§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§>+§)
         {
            if(_loc4_)
            {
               _loc1_.dispose();
            }
         }
         if(!(_loc5_ && _loc2_))
         {
            §§push(§[Z§.§%m§);
            if(_loc4_)
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     addr76:
                     §[Z§.§%m§.removeEventListener(Event.CONTEXT3D_CREATE,this.§]!$§);
                  }
               }
               return;
            }
         }
         §§goto(addr76);
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            param1.clear(§?g§.§"!2§(param2) / 255,§?g§.§2t§(param2) / 255,§?g§.§7p§(param2) / 255,param3);
         }
      }
      
      private function §]!$§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§>+§ = new <§]5§>[new §]5§()];
         }
      }
      
      public function §=j§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && this))
         {
            §^!2§[0] = 2 / param1;
            if(_loc7_ || param3)
            {
               §^!2§[1] = §^!2§[2] = §^!2§[3] = §^!2§[4] = 0;
               §^!2§[5] = -2 / param2;
               if(_loc7_)
               {
                  §^!2§[6] = §^!2§[7] = §^!2§[8] = §^!2§[9] = 0;
                  if(!_loc6_)
                  {
                     §^!2§[10] = -2 / (param4 - param3);
                     §^!2§[11] = 0;
                     §^!2§[12] = -1;
                     while(true)
                     {
                        §^!2§[13] = 1;
                        addr161:
                        while(true)
                        {
                           §^!2§[14] = -(param4 + param3) / (param4 - param3);
                        }
                     }
                     addr167:
                     addr182:
                  }
                  loop0:
                  while(true)
                  {
                     §^!2§[15] = 1;
                     if(!_loc6_)
                     {
                        while(true)
                        {
                           this.§!G§.copyRawDataFrom(§^!2§);
                           if(!(_loc6_ && param1))
                           {
                              break;
                           }
                           continue loop0;
                        }
                        return;
                        addr132:
                     }
                     §§goto(addr167);
                  }
               }
               §§goto(addr182);
            }
            §§goto(addr161);
         }
         §§goto(addr132);
      }
      
      public function § !G§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§+!0§.identity();
         }
      }
      
      public function §[I§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            this.§+!0§.prependTranslation(param1,param2,param3);
         }
      }
      
      public function §@;§(param1:Number, param2:Vector3D = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            this.§+!0§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
         }
      }
      
      public function §;>§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            this.§+!0§.prependScale(param1,param2,param3);
         }
      }
      
      public function §>m§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            param1.§>m§(this.§+!0§);
         }
      }
      
      public function §1H§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            if(this.§,i§.length < this.§get § + 1)
            {
               if(!(_loc3_ && _loc2_))
               {
                  this.§,i§.push(new Matrix3D());
                  §§goto(addr49);
               }
            }
            §§goto(addr71);
         }
         addr49:
         if(!(_loc3_ && _loc3_))
         {
            addr71:
            this.§,i§[this.§get §++].copyFrom(this.§+!0§);
         }
      }
      
      public function §%!>§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            this.§+!0§.copyFrom(this.§,i§[--this.§get §]);
         }
      }
      
      public function §!8§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§get § = 0;
         }
         do
         {
            this.§ !G§();
         }
         while(!(_loc1_ || this));
         
      }
      
      public function get §^Z§() : Matrix3D
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§]h§.identity();
            while(true)
            {
               this.§]h§.append(this.§+!0§);
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     this.§]h§.append(this.§!G§);
                     if(_loc2_ || this)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return this.§]h§;
               }
            }
         }
         §§goto(addr68);
      }
      
      public function batchQuad(param1:§6!O§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            §§push(this.§!!O§);
            while(true)
            {
               if(!§§pop().§"!P§(param1,param3,param4))
               {
                  continue;
               }
               while(true)
               {
                  this.§2!0§();
               }
            }
         }
         while(true)
         {
            §§goto(addr38);
         }
      }
      
      public function §2!0§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§!!O§);
            if(!(_loc4_ && _loc3_))
            {
               if(§§pop().§ !9§ > 0)
               {
                  if(_loc3_ || _loc1_)
                  {
                     §§push(this.§!!O§);
                     if(_loc3_ || this)
                     {
                        addr56:
                        §§pop().render(this.§,!D§,this.§!G§);
                        if(_loc3_ || _loc1_)
                        {
                           addr70:
                           this.§!!O§.reset();
                           addr71:
                           var _loc1_:*;
                           §§push((_loc1_ = this).§%!&§);
                           if(_loc3_)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc2_:* = §§pop();
                           if(!(_loc4_ && _loc2_))
                           {
                              _loc1_.§%!&§ = _loc2_;
                           }
                           if(_loc3_)
                           {
                              if(this.§>+§.length <= this.§%!&§)
                              {
                              }
                           }
                           §§goto(addr114);
                        }
                        this.§>+§.push(new §]5§());
                        §§goto(addr114);
                     }
                     §§goto(addr70);
                  }
               }
               addr114:
               return;
            }
            §§goto(addr56);
         }
         §§goto(addr71);
      }
      
      public function §16§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§!8§();
         }
         do
         {
            this.§%!&§ = 0;
         }
         while(!_loc1_);
         
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
      
      private function get §!!O§() : §]5§
      {
         return this.§>+§[this.§%!&§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(param3 != §^G§[param2])
            {
               do
               {
                  §^G§[param2] = param3;
                  do
                  {
                     param1.setTextureAt(param2,param3);
                  }
                  while(_loc5_);
                  
               }
               while(!(_loc4_ || param1));
               
               addr53:
            }
            return;
         }
         §§goto(addr53);
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(param2 != §6!J§)
            {
               if(_loc3_ || param1)
               {
                  addr50:
                  §6!J§ = param2;
               }
               do
               {
                  param1.setProgram(param2);
               }
               while(_loc4_);
               
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
