package §`!a§
{
   import §%q§.Texture;
   import §+o§.*;
   import §6![§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §0L§
   {
      
      private static var §1u§:Array;
      
      private static var §=!Y§:Program3D;
      
      private static var §7!9§:Vector.<Number>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §7!9§ = new Vector.<Number>(16,true);
         }
      }
      
      private var §6-§:Matrix3D;
      
      private var §3!h§:Matrix3D;
      
      private var §@9§:Matrix3D;
      
      private var §3!§:Vector.<Matrix3D>;
      
      private var §4!;§:int;
      
      private var §;u§:Vector.<§4>§>;
      
      private var §`!R§:int;
      
      private var §&!a§:Context3D;
      
      private var §2!t§:int = -1;
      
      public function §0L§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            while(true)
            {
               this.§6-§ = new Matrix3D();
               addr164:
               while(true)
               {
                  this.§3!h§ = new Matrix3D();
               }
               loop4:
               while(!(_loc2_ && this))
               {
                  this.§4!;§ = 0;
                  while(true)
                  {
                     this.§`!R§ = 0;
                     loop6:
                     for(; _loc1_; while(true)
                     {
                        if(_loc1_ || this)
                        {
                           if(_loc1_)
                           {
                              §§goto(addr46);
                           }
                           break;
                        }
                        continue loop6;
                     },while(true)
                     {
                        this.§@9§ = new Matrix3D();
                        §§goto(addr140);
                     })
                     {
                        this.§;u§ = new Vector.<§4>§>();
                        loop7:
                        for(; _loc1_ || this; if(!(_loc1_ || _loc1_))
                        {
                           continue;
                        },§§goto(addr63))
                        {
                           if(§1u§ != null)
                           {
                              loop10:
                              while(true)
                              {
                                 this.§^U§();
                                 addr49:
                                 while(true)
                                 {
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       continue loop7;
                                    }
                                    addr63:
                                    this.§0!n§(400,300);
                                    do
                                    {
                                       §1"&§.§1i§.addEventListener(Event.CONTEXT3D_CREATE,this.§%;§);
                                    }
                                    while(!_loc1_);
                                    
                                    if(!_loc2_)
                                    {
                                       if(_loc1_)
                                       {
                                          break loop10;
                                       }
                                       break;
                                    }
                                 }
                                 continue loop6;
                              }
                              if(!_loc2_)
                              {
                                 return;
                              }
                              continue loop4;
                              addr46:
                           }
                           while(true)
                           {
                              §1u§ = [];
                              continue loop6;
                              §§goto(addr49);
                           }
                        }
                        while(!_loc2_)
                        {
                           this.§3!§ = new Vector.<Matrix3D>(0);
                           continue loop4;
                           §§goto(addr98);
                        }
                        addr98:
                        §§goto(addr164);
                     }
                  }
               }
            }
         }
         §§goto(addr158);
      }
      
      public static function §?!"§(param1:Matrix3D, param2:DisplayObject) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            param2.§9K§(param1);
         }
      }
      
      public static function §@M§(param1:Context3D, param2:Boolean) : void
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
               if(_loc6_ || §0L§)
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
         if(_loc5_ || param2)
         {
            param1.clear(§,!L§.§3!2§(param2) / 255,§,!L§.§3!B§(param2) / 255,§,!L§.§>]§(param2) / 255,param3);
         }
      }
      
      protected function get § !K§() : Matrix3D
      {
         return this.§3!h§;
      }
      
      protected function get §`!A§() : Matrix3D
      {
         return this.§6-§;
      }
      
      public function § N§(param1:Context3D, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§&!a§ = param1;
            do
            {
               this.§2!t§ = param2;
            }
            while(_loc4_ && _loc3_);
            
         }
      }
      
      public function get §`r§() : Context3D
      {
         return this.§&!a§;
      }
      
      public function get §#A§() : int
      {
         return this.§2!t§;
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§4>§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§;u§)
         {
            if(_loc4_)
            {
               _loc1_.dispose();
            }
         }
         if(_loc4_)
         {
            §§push(§1"&§.§1i§);
            if(!(_loc5_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     addr76:
                     §1"&§.§1i§.removeEventListener(Event.CONTEXT3D_CREATE,this.§%;§);
                  }
               }
               return;
            }
         }
         §§goto(addr76);
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            param1.clear(§,!L§.§3!2§(param2) / 255,§,!L§.§3!B§(param2) / 255,§,!L§.§>]§(param2) / 255,param3);
         }
      }
      
      private function §%;§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§;u§ = new <§4>§>[new §4>§()];
         }
      }
      
      public function §0!n§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param3))
         {
            §7!9§[0] = 2 / param1;
            if(_loc6_ || this)
            {
               §7!9§[1] = §7!9§[2] = §7!9§[3] = §7!9§[4] = 0;
               if(!(_loc7_ && param1))
               {
                  §7!9§[5] = -2 / param2;
                  if(!(_loc7_ && this))
                  {
                     §7!9§[6] = §7!9§[7] = §7!9§[8] = §7!9§[9] = 0;
                     addr81:
                     if(_loc6_ || param3)
                     {
                        §7!9§[10] = -2 / (param4 - param3);
                        while(true)
                        {
                           §7!9§[11] = 0;
                           while(_loc6_ || this)
                           {
                              §7!9§[12] = -1;
                              loop2:
                              while(_loc6_)
                              {
                                 while(true)
                                 {
                                    §7!9§[13] = 1;
                                    addr176:
                                    loop3:
                                    while(true)
                                    {
                                       §7!9§[14] = -(param4 + param3) / (param4 - param3);
                                       loop4:
                                       while(!_loc7_)
                                       {
                                          while(true)
                                          {
                                             §7!9§[15] = 1;
                                             do
                                             {
                                                this.§6-§.copyRawDataFrom(§7!9§);
                                             }
                                             while(!(_loc6_ || param3));
                                             
                                             if(_loc6_)
                                             {
                                                continue loop3;
                                             }
                                             continue loop4;
                                          }
                                          return;
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                           }
                        }
                        addr123:
                     }
                     §§goto(addr184);
                  }
                  §§goto(addr123);
               }
               §§goto(addr176);
            }
            §§goto(addr81);
         }
         §§goto(addr170);
      }
      
      public function §^U§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§3!h§.identity();
         }
      }
      
      public function §<F§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            this.§3!h§.prependTranslation(param1,param2,param3);
         }
      }
      
      public function §@![§(param1:Number, param2:Vector3D = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§3!h§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
         }
      }
      
      public function §[I§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§3!h§.prependScale(param1,param2,param3);
         }
      }
      
      public function §9K§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            param1.§9K§(this.§3!h§);
         }
      }
      
      public function §5!_§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            if(this.§3!§.length < this.§4!;§ + 1)
            {
               if(_loc3_ || this)
               {
                  this.§3!§.push(new Matrix3D());
                  if(!_loc4_)
                  {
                     addr55:
                     var _loc1_:*;
                     var _loc2_:* = (_loc1_ = this).§4!;§ + 1;
                     _loc1_.§4!;§ = _loc2_;
                     this.§3!§[(_loc1_ = this).§4!;§].copyFrom(this.§3!h§);
                  }
                  return;
               }
            }
         }
         §§goto(addr55);
      }
      
      public function §,;§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            this.§3!h§.copyFrom(this.§3!§[--this.§4!;§]);
         }
      }
      
      public function §9T§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§4!;§ = 0;
         }
         do
         {
            this.§^U§();
         }
         while(_loc2_ && _loc2_);
         
      }
      
      public function get §+!c§() : Matrix3D
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§@9§.identity();
            while(true)
            {
               this.§@9§.append(this.§3!h§);
               §§goto(addr77);
            }
         }
         addr77:
         while(true)
         {
            this.§@9§.append(this.§6-§);
            if(!(_loc2_ && this))
            {
               if(_loc1_ || _loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
         return this.§@9§;
      }
      
      public function batchQuad(param1:§ !f§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            §§push(this.§]!L§);
            while(true)
            {
               if(!§§pop().§%@§(param1,param3,param4,param2))
               {
                  continue;
               }
               if(_loc5_ || param3)
               {
                  this.§6"$§();
               }
            }
         }
         while(true)
         {
            §§goto(addr28);
         }
      }
      
      public function §6"$§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§]!L§);
            if(!(_loc4_ && _loc3_))
            {
               if(§§pop().§%2§ > 0)
               {
                  if(_loc3_ || _loc1_)
                  {
                     §§push(this.§]!L§);
                     if(_loc3_)
                     {
                        §§pop().render(this.§`r§,this.§6-§);
                        if(!_loc4_)
                        {
                           addr50:
                           this.§]!L§.reset();
                           if(_loc4_ && _loc3_)
                           {
                           }
                           §§goto(addr123);
                        }
                        var _loc1_:*;
                        §§push((_loc1_ = this).§`!R§);
                        if(!(_loc4_ && this))
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc2_:* = §§pop();
                        if(_loc3_ || _loc1_)
                        {
                           _loc1_.§`!R§ = _loc2_;
                        }
                        if(!_loc4_)
                        {
                           if(this.§;u§.length <= this.§`!R§)
                           {
                              if(_loc4_ && _loc3_)
                              {
                              }
                              §§goto(addr123);
                           }
                           addr123:
                           return;
                        }
                     }
                     §§goto(addr50);
                  }
                  this.§;u§.push(new §4>§());
               }
            }
         }
         §§goto(addr50);
      }
      
      public function nextFrame() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§9T§();
         }
         do
         {
            this.§`!R§ = 0;
         }
         while(_loc2_ && _loc2_);
         
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
      
      private function get §]!L§() : §4>§
      {
         return this.§;u§[this.§`!R§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            if(param3 != §1u§[param2])
            {
               loop0:
               while(true)
               {
                  §1u§[param2] = param3;
                  addr62:
                  while(true)
                  {
                     param1.setTextureAt(param2,param3);
                     if(_loc4_)
                     {
                        if(_loc4_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr19);
               }
            }
            addr19:
            return;
         }
         §§goto(addr62);
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(param2 != §=!Y§)
            {
               do
               {
                  §=!Y§ = param2;
                  do
                  {
                     param1.setProgram(param2);
                  }
                  while(!_loc4_);
                  
               }
               while(_loc3_);
               
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
