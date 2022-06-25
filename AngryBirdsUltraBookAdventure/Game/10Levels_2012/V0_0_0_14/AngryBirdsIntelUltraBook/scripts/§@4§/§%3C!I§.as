package §@4§
{
   import §!!9§.Texture;
   import §2N§.*;
   import §9E§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §<!I§
   {
      
      private static var §3!X§:Array;
      
      private static var §4!k§:Program3D;
      
      private static var §6^§:Vector.<Number>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §<!I§)
         {
            §6^§ = new Vector.<Number>(16,true);
         }
      }
      
      private var §7!q§:Matrix3D;
      
      private var §;W§:Matrix3D;
      
      private var §`!q§:Matrix3D;
      
      private var §;t§:Vector.<Matrix3D>;
      
      private var §0!&§:int;
      
      private var §!c§:Vector.<§]!8§>;
      
      private var §%w§:int;
      
      private var §%g§:Context3D;
      
      private var §3!_§:int = -1;
      
      public function §<!I§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
            loop0:
            while(true)
            {
               this.§7!q§ = new Matrix3D();
               loop1:
               while(true)
               {
                  this.§;W§ = new Matrix3D();
                  loop2:
                  for(; !_loc2_; if(!(_loc1_ || _loc2_))
                  {
                     continue;
                  },§§goto(addr52))
                  {
                     this.§`!q§ = new Matrix3D();
                     while(true)
                     {
                        this.§;t§ = new Vector.<Matrix3D>(0);
                        while(!_loc2_)
                        {
                           this.§0!&§ = 0;
                           while(true)
                           {
                              this.§%w§ = 0;
                              addr117:
                              addr65:
                              while(true)
                              {
                                 this.§!c§ = new Vector.<§]!8§>();
                              }
                              if(_loc1_)
                              {
                                 if(!_loc2_)
                                 {
                                    §,!]§.§!9§.addEventListener(Event.CONTEXT3D_CREATE,this.§,!f§);
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       if(!_loc2_)
                                       {
                                          continue loop2;
                                       }
                                       while(_loc1_)
                                       {
                                          §3!X§ = [];
                                          loop9:
                                          while(true)
                                          {
                                             addr80:
                                             while(true)
                                             {
                                                this.§]!d§();
                                                continue loop9;
                                             }
                                          }
                                       }
                                       §§goto(addr117);
                                    }
                                    while(true)
                                    {
                                       if(_loc1_ || _loc1_)
                                       {
                                          §§goto(addr65);
                                       }
                                       else
                                       {
                                          §§goto(addr83);
                                       }
                                    }
                                    addr79:
                                    continue;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr112);
      }
      
      public static function §<!'§(param1:Matrix3D, param2:DisplayObject) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && §<!I§))
         {
            param2.§>l§(param1);
         }
      }
      
      public static function §1!6§(param1:Context3D, param2:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         if(_loc5_ || param2)
         {
            if(param2)
            {
               addr49:
               §§push(Context3DBlendFactor.ONE);
               if(!_loc5_)
               {
               }
               addr65:
               §§push(§§pop());
            }
            else
            {
               §§push(Context3DBlendFactor.SOURCE_ALPHA);
               if(!(_loc6_ && param2))
               {
                  §§goto(addr65);
               }
            }
            var _loc4_:* = §§pop();
            if(_loc5_)
            {
               param1.setBlendFactors(_loc4_,_loc3_);
            }
            return;
         }
         §§goto(addr49);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            param1.clear(§;!u§.§>W§(param2) / 255,§;!u§.§^!Q§(param2) / 255,§;!u§.§+!1§(param2) / 255,param3);
         }
      }
      
      protected function get §`!0§() : Matrix3D
      {
         return this.§;W§;
      }
      
      protected function get §!g§() : Matrix3D
      {
         return this.§7!q§;
      }
      
      public function §-F§(param1:Context3D, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            this.§%g§ = param1;
         }
         do
         {
            this.§3!_§ = param2;
         }
         while(!(_loc3_ || this));
         
      }
      
      public function get §@?§() : Context3D
      {
         return this.§%g§;
      }
      
      public function get §-x§() : int
      {
         return this.§3!_§;
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§]!8§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§!c§)
         {
            if(_loc4_)
            {
               _loc1_.dispose();
            }
         }
         if(_loc4_ || _loc2_)
         {
            §§push(§,!]§.§!9§);
            if(_loc4_ || this)
            {
               if(!§§pop())
               {
               }
               §§goto(addr91);
            }
            §§pop().removeEventListener(Event.CONTEXT3D_CREATE,this.§,!f§);
         }
         addr91:
         if(_loc4_ || _loc2_)
         {
            §§push(§,!]§.§!9§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            param1.clear(§;!u§.§>W§(param2) / 255,§;!u§.§^!Q§(param2) / 255,§;!u§.§+!1§(param2) / 255,param3);
         }
      }
      
      private function §,!f§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§!c§ = new <§]!8§>[new §]!8§()];
         }
      }
      
      public function §&!j§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            §6^§[0] = 2 / param1;
            if(_loc6_)
            {
               §6^§[1] = §6^§[2] = §6^§[3] = §6^§[4] = 0;
               if(!(_loc7_ && param2))
               {
                  §6^§[5] = -2 / param2;
                  if(!_loc7_)
                  {
                     §6^§[6] = §6^§[7] = §6^§[8] = §6^§[9] = 0;
                     addr66:
                     if(_loc6_ || param1)
                     {
                        §6^§[10] = -2 / (param4 - param3);
                        loop0:
                        while(true)
                        {
                           §6^§[11] = 0;
                           addr187:
                           while(true)
                           {
                              §6^§[12] = -1;
                              continue loop0;
                           }
                        }
                        addr196:
                     }
                     while(true)
                     {
                        §6^§[13] = 1;
                        loop3:
                        while(!_loc7_)
                        {
                           §6^§[14] = -(param4 + param3) / (param4 - param3);
                           do
                           {
                              if(_loc6_)
                              {
                                 §6^§[15] = 1;
                                 while(_loc6_ || this)
                                 {
                                    this.§7!q§.copyRawDataFrom(§6^§);
                                    if(_loc7_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr120);
                                 }
                                 continue loop3;
                              }
                              §§goto(addr187);
                           }
                           while(_loc7_);
                           
                           return;
                        }
                        §§goto(addr174);
                     }
                  }
                  §§goto(addr122);
               }
               §§goto(addr196);
            }
            §§goto(addr66);
         }
         §§goto(addr122);
      }
      
      public function §]!d§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§;W§.identity();
         }
      }
      
      public function §2!O§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§;W§.prependTranslation(param1,param2,param3);
         }
      }
      
      public function §+f§(param1:Number, param2:Vector3D = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            this.§;W§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
         }
      }
      
      public function §]!h§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§;W§.prependScale(param1,param2,param3);
         }
      }
      
      public function §>l§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            param1.§>l§(this.§;W§);
         }
      }
      
      public function §8R§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(this.§;t§.length < this.§0!&§ + 1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr54:
                  this.§;t§.push(new Matrix3D());
                  if(!_loc3_)
                  {
                     addr61:
                     this.§;t§[this.§0!&§++].copyFrom(this.§;W§);
                  }
               }
               return;
            }
            §§goto(addr61);
         }
         §§goto(addr54);
      }
      
      public function §2a§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§;W§.copyFrom(this.§;t§[--this.§0!&§]);
         }
      }
      
      public function §3k§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§0!&§ = 0;
         }
         do
         {
            this.§]!d§();
         }
         while(!_loc2_);
         
      }
      
      public function get §?!G§() : Matrix3D
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§`!q§.identity();
         }
         do
         {
            this.§`!q§.append(this.§;W§);
            do
            {
               this.§`!q§.append(this.§7!q§);
            }
            while(!_loc1_);
            
         }
         while(!(_loc1_ || _loc1_));
         
         return this.§`!q§;
      }
      
      public function batchQuad(param1:§1!w§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(this.§=6§);
            while(true)
            {
               if(!§§pop().§"G§(param1,param3,param4))
               {
                  continue;
               }
               while(true)
               {
                  this.§ ;§();
               }
            }
         }
         while(true)
         {
            §§goto(addr23);
         }
      }
      
      public function § ;§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§=6§);
            if(!_loc3_)
            {
               if(§§pop().§1;§ > 0)
               {
                  if(_loc4_ || _loc3_)
                  {
                     §§push(this.§=6§);
                     if(_loc4_ || _loc2_)
                     {
                        §§pop().render(this.§@?§,this.§7!q§);
                        §§goto(addr119);
                     }
                     §§pop().reset();
                     if(!(_loc3_ && this))
                     {
                        var _loc1_:*;
                        §§push((_loc1_ = this).§%w§);
                        if(_loc4_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc2_:* = §§pop();
                        if(_loc4_ || this)
                        {
                           _loc1_.§%w§ = _loc2_;
                        }
                        if(!_loc3_)
                        {
                           if(this.§!c§.length <= this.§%w§)
                           {
                              if(!_loc3_)
                              {
                                 addr114:
                                 this.§!c§.push(new §]!8§());
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr114);
               }
               §§goto(addr119);
            }
            addr119:
            if(!(_loc3_ && _loc3_))
            {
               §§push(this.§=6§);
            }
            return;
         }
         §§goto(addr114);
      }
      
      public function §3!A§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§3k§();
         }
         do
         {
            this.§%w§ = 0;
         }
         while(!(_loc1_ || this));
         
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            param1.present();
         }
      }
      
      private function get §=6§() : §]!8§
      {
         return this.§!c§[this.§%w§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(param3 != §3!X§[param2])
            {
               loop0:
               while(true)
               {
                  §3!X§[param2] = param3;
                  addr58:
                  while(true)
                  {
                     param1.setTextureAt(param2,param3);
                     if(!_loc4_)
                     {
                        if(_loc5_ || this)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr30);
               }
            }
            addr30:
            return;
         }
         §§goto(addr58);
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(param2 != §4!k§)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr51:
                  §4!k§ = param2;
               }
               do
               {
                  param1.setProgram(param2);
               }
               while(!_loc4_);
               
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
