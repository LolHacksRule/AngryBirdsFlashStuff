package §2m§
{
   import §7H§.*;
   import §?]§.Texture;
   import §`g§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §@>§
   {
      
      private static var §6!7§:Array;
      
      private static var §5f§:Program3D;
      
      private static var §-!&§:Vector.<Number>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §-!&§ = new Vector.<Number>(16,true);
         }
      }
      
      private var §3k§:Matrix3D;
      
      private var §6Y§:Matrix3D;
      
      private var §,4§:Matrix3D;
      
      private var §=!'§:Vector.<Matrix3D>;
      
      private var § !a§:int;
      
      private var §2!g§:Vector.<§^[§>;
      
      private var §;O§:int;
      
      private var §&!t§:Context3D;
      
      private var §?!u§:int = -1;
      
      public function §@>§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            loop0:
            while(true)
            {
               this.§3k§ = new Matrix3D();
               loop1:
               while(true)
               {
                  this.§6Y§ = new Matrix3D();
                  loop2:
                  while(true)
                  {
                     this.§,4§ = new Matrix3D();
                     loop3:
                     while(true)
                     {
                        this.§=!'§ = new Vector.<Matrix3D>(0);
                        while(true)
                        {
                           this.§ !a§ = 0;
                           continue loop2;
                           addr123:
                           loop6:
                           while(_loc2_ || _loc2_)
                           {
                              this.§2!g§ = new Vector.<§^[§>();
                              while(!_loc1_)
                              {
                                 while(true)
                                 {
                                    if(§6!7§ == null)
                                    {
                                       loop9:
                                       while(!(_loc1_ && _loc1_))
                                       {
                                          §6!7§ = [];
                                          while(!_loc1_)
                                          {
                                             if(!(_loc2_ || _loc1_))
                                             {
                                                continue loop2;
                                             }
                                             §§goto(addr64);
                                             while(_loc2_ || _loc1_)
                                             {
                                                §<!?§.§,=§.addEventListener(Event.CONTEXT3D_CREATE,this.§%!y§);
                                                if(_loc2_ || _loc1_)
                                                {
                                                   if(!_loc1_)
                                                   {
                                                      if(!_loc1_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      continue loop9;
                                                   }
                                                   continue loop3;
                                                }
                                             }
                                          }
                                          §§goto(addr116);
                                       }
                                       continue loop6;
                                    }
                                    addr64:
                                    while(true)
                                    {
                                       this.§3!e§();
                                       continue loop3;
                                    }
                                 }
                                 return;
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr118);
      }
      
      public static function §;!C§(param1:Matrix3D, param2:DisplayObject) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            param2.§0!"§(param1);
         }
      }
      
      public static function §?!I§(param1:Context3D, param2:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         if(_loc5_)
         {
            if(param2)
            {
               addr34:
               §§push(Context3DBlendFactor.ONE);
               if(_loc5_ || param1)
               {
               }
               addr50:
               §§push(§§pop());
            }
            else
            {
               §§push(Context3DBlendFactor.SOURCE_ALPHA);
               if(!_loc6_)
               {
                  §§goto(addr50);
               }
            }
            var _loc4_:* = §§pop();
            if(!_loc6_)
            {
               param1.setBlendFactors(_loc4_,_loc3_);
            }
            return;
         }
         §§goto(addr34);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            param1.clear(include.§`#§(param2) / 255,include.§^9§(param2) / 255,include.§]7§(param2) / 255,param3);
         }
      }
      
      protected function get §06§() : Matrix3D
      {
         return this.§6Y§;
      }
      
      protected function get §`!9§() : Matrix3D
      {
         return this.§3k§;
      }
      
      public function §3>§(param1:Context3D, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§&!t§ = param1;
            do
            {
               this.§?!u§ = param2;
            }
            while(!_loc4_);
            
         }
      }
      
      public function get §"Y§() : Context3D
      {
         return this.§&!t§;
      }
      
      public function get §9<§() : int
      {
         return this.§?!u§;
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§^[§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§2!g§)
         {
            if(!(_loc4_ && _loc1_))
            {
               _loc1_.dispose();
            }
         }
         if(_loc5_ || _loc2_)
         {
            §§push(§<!?§.§,=§);
            if(_loc5_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr92);
            }
            §§pop().removeEventListener(Event.CONTEXT3D_CREATE,this.§%!y§);
         }
         addr92:
         if(!(_loc4_ && _loc2_))
         {
            §§push(§<!?§.§,=§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            param1.clear(include.§`#§(param2) / 255,include.§^9§(param2) / 255,include.§]7§(param2) / 255,param3);
         }
      }
      
      private function §%!y§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§2!g§ = new <§^[§>[new §^[§()];
         }
      }
      
      public function §;]§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            §-!&§[0] = 2 / param1;
            if(_loc7_)
            {
               §-!&§[1] = §-!&§[2] = §-!&§[3] = §-!&§[4] = 0;
               if(_loc7_)
               {
                  §-!&§[5] = -2 / param2;
                  if(!(_loc6_ && param2))
                  {
                     §-!&§[6] = §-!&§[7] = §-!&§[8] = §-!&§[9] = 0;
                     if(_loc7_)
                     {
                        §-!&§[10] = -2 / (param4 - param3);
                        addr202:
                        while(true)
                        {
                           §-!&§[11] = 0;
                        }
                        addr202:
                        addr104:
                     }
                     loop0:
                     while(true)
                     {
                        §-!&§[12] = -1;
                        addr180:
                        while(_loc7_ || this)
                        {
                           while(true)
                           {
                              §-!&§[13] = 1;
                              addr157:
                              while(!(_loc7_ || param3))
                              {
                                 continue loop0;
                              }
                              §-!&§[14] = -(param4 + param3) / (param4 - param3);
                           }
                        }
                        §§goto(addr202);
                     }
                  }
                  loop2:
                  while(true)
                  {
                     §-!&§[15] = 1;
                     while(_loc7_)
                     {
                        this.§3k§.copyRawDataFrom(§-!&§);
                        if(_loc6_ && param1)
                        {
                           continue;
                        }
                        if(!(_loc7_ || param1))
                        {
                           continue loop2;
                        }
                        if(!_loc6_)
                        {
                           break loop2;
                        }
                        §§goto(addr180);
                     }
                     §§goto(addr157);
                  }
                  return;
               }
               §§goto(addr202);
            }
            §§goto(addr104);
         }
         §§goto(addr187);
      }
      
      public function §3!e§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§6Y§.identity();
         }
      }
      
      public function §"&§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            this.§6Y§.prependTranslation(param1,param2,param3);
         }
      }
      
      public function §;!N§(param1:Number, param2:Vector3D = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            this.§6Y§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
         }
      }
      
      public function §+!?§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§6Y§.prependScale(param1,param2,param3);
         }
      }
      
      public function §0!"§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            param1.§0!"§(this.§6Y§);
         }
      }
      
      public function §4!s§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            if(this.§=!'§.length < this.§ !a§ + 1)
            {
               if(_loc4_ || _loc3_)
               {
                  §§goto(addr59);
               }
            }
            §§goto(addr66);
         }
         addr59:
         this.§=!'§.push(new Matrix3D());
         if(_loc4_)
         {
            addr66:
            this.§=!'§[this.§ !a§++].copyFrom(this.§6Y§);
         }
      }
      
      public function §[Z§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc1_))
         {
            this.§6Y§.copyFrom(this.§=!'§[--this.§ !a§]);
         }
      }
      
      public function §-h§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§ !a§ = 0;
            do
            {
               this.§3!e§();
            }
            while(_loc1_ && this);
            
         }
      }
      
      public function get §7w§() : Matrix3D
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§,4§.identity();
            while(true)
            {
               this.§,4§.append(this.§6Y§);
               §§goto(addr72);
            }
         }
         addr72:
         while(true)
         {
            this.§,4§.append(this.§3k§);
            if(!(_loc2_ && this))
            {
               if(_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
         return this.§,4§;
      }
      
      public function batchQuad(param1:§ O§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            §§push(this.§]t§);
            while(true)
            {
               if(!§§pop().get(param1,param3,param4,param2))
               {
                  continue;
               }
               if(!_loc5_)
               {
                  this.§6E§();
               }
            }
         }
         while(true)
         {
            §§goto(addr24);
         }
      }
      
      public function §6E§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§]t§);
            if(!(_loc4_ && _loc1_))
            {
               if(§§pop().§;!K§ > 0)
               {
                  if(_loc3_)
                  {
                     §§push(this.§]t§);
                     if(_loc3_ || _loc3_)
                     {
                        §§pop().render(this.§"Y§,this.§3k§);
                        if(_loc3_)
                        {
                           §§goto(addr60);
                        }
                     }
                     §§goto(addr60);
                  }
               }
               §§goto(addr113);
            }
            addr60:
            this.§]t§.reset();
            §§goto(addr58);
         }
         addr58:
         if(_loc3_ || this)
         {
            var _loc1_:*;
            §§push((_loc1_ = this).§;O§);
            if(!(_loc4_ && _loc3_))
            {
               §§push(§§pop() + 1);
            }
            var _loc2_:* = §§pop();
            if(!_loc4_)
            {
               _loc1_.§;O§ = _loc2_;
            }
            if(_loc4_ && _loc3_)
            {
            }
            addr113:
            this.§2!g§.push(new §^[§());
            §§goto(addr118);
         }
         if(this.§2!g§.length <= this.§;O§)
         {
            if(!_loc3_)
            {
            }
            §§goto(addr118);
         }
         addr118:
      }
      
      public function §4!W§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§-h§();
            do
            {
               this.§;O§ = 0;
            }
            while(_loc1_ && _loc1_);
            
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
      
      private function get §]t§() : §^[§
      {
         return this.§2!g§[this.§;O§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            if(param3 != §6!7§[param2])
            {
               if(!_loc4_)
               {
                  §6!7§[param2] = param3;
                  do
                  {
                     param1.setTextureAt(param2,param3);
                  }
                  while(_loc4_ && param3);
                  
                  addr73:
               }
               §§goto(addr73);
            }
            return;
         }
         §§goto(addr73);
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(param2 != §5f§)
            {
               do
               {
                  §5f§ = param2;
                  do
                  {
                     param1.setProgram(param2);
                  }
                  while(_loc4_ && _loc3_);
                  
               }
               while(!(_loc3_ || _loc3_));
               
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
