package §%!j§
{
   import §+!-§.*;
   import §0!%§.Texture;
   import §`!=§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §&Y§
   {
      
      private static var §>![§:Array;
      
      private static var §"!#§:Program3D;
      
      private static var §2r§:Vector.<Number>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §2r§ = new Vector.<Number>(16,true);
         }
      }
      
      private var §3L§:Matrix3D;
      
      private var §9^§:Matrix3D;
      
      private var §!" §:Matrix3D;
      
      private var §0!D§:Vector.<Matrix3D>;
      
      private var §;t§:int;
      
      private var §!!z§:Vector.<§,5§>;
      
      private var §?P§:int;
      
      private var §^!O§:Context3D;
      
      private var §`!J§:int = -1;
      
      public function §&Y§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
            while(true)
            {
               this.§3L§ = new Matrix3D();
               loop1:
               for(; _loc1_ || _loc1_; while(_loc1_ || this)
               {
                  this.§;t§ = 0;
                  §§goto(addr127);
               })
               {
                  this.§9^§ = new Matrix3D();
                  loop2:
                  while(true)
                  {
                     this.§!" § = new Matrix3D();
                     loop3:
                     while(true)
                     {
                        this.§0!D§ = new Vector.<Matrix3D>(0);
                        continue loop1;
                        addr98:
                        if(!(_loc2_ && _loc1_))
                        {
                           if(!_loc2_)
                           {
                              loop10:
                              while(true)
                              {
                                 this.§3&§();
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       break;
                                       addr96:
                                    }
                                    this.§`!M§(400,300);
                                    loop12:
                                    while(true)
                                    {
                                       if(_loc1_)
                                       {
                                          addr65:
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             continue;
                                          }
                                          addr122:
                                          loop6:
                                          while(true)
                                          {
                                             this.§!!z§ = new Vector.<§,5§>();
                                             addr115:
                                             addr127:
                                             while(!_loc2_)
                                             {
                                                if(§>![§ != null)
                                                {
                                                   continue loop10;
                                                }
                                             }
                                             while(true)
                                             {
                                                this.§?P§ = 0;
                                                continue loop6;
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §>![§ = [];
                                          break loop12;
                                       }
                                    }
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          §§goto(addr98);
                                       }
                                       else
                                       {
                                          §§goto(addr115);
                                       }
                                    }
                                    continue loop3;
                                    if(!(_loc1_ || this))
                                    {
                                       continue;
                                    }
                                    if(_loc1_ || _loc1_)
                                    {
                                       break loop10;
                                    }
                                    §§goto(addr96);
                                 }
                                 continue loop1;
                              }
                              return;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr122);
      }
      
      public static function §4!e§(param1:Matrix3D, param2:DisplayObject) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || §&Y§)
         {
            param2.§1w§(param1);
         }
      }
      
      public static function §;!E§(param1:Context3D, param2:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         if(_loc6_)
         {
            if(param2)
            {
               addr25:
               §§push(Context3DBlendFactor.ONE);
               if(_loc6_)
               {
                  addr51:
                  §§push(§§pop());
               }
            }
            else
            {
               §§push(Context3DBlendFactor.SOURCE_ALPHA);
               if(!(_loc5_ && param2))
               {
                  §§goto(addr51);
               }
            }
            var _loc4_:* = §§pop();
            if(!(_loc5_ && §&Y§))
            {
               param1.setBlendFactors(_loc4_,_loc3_);
            }
            return;
         }
         §§goto(addr25);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && §&Y§))
         {
            param1.clear(§9q§.§@g§(param2) / 255,§9q§.§!e§(param2) / 255,§9q§.§6!1§(param2) / 255,param3);
         }
      }
      
      protected function get §"!Y§() : Matrix3D
      {
         return this.§9^§;
      }
      
      protected function get §-Q§() : Matrix3D
      {
         return this.§3L§;
      }
      
      public function §+"+§(param1:Context3D, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§^!O§ = param1;
            do
            {
               this.§`!J§ = param2;
            }
            while(_loc3_);
            
         }
      }
      
      public function get §-!K§() : Context3D
      {
         return this.§^!O§;
      }
      
      public function get § !Z§() : int
      {
         return this.§`!J§;
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§,5§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§!!z§;
         for each(_loc1_ in _loc3_)
         {
            if(!(_loc5_ && _loc2_))
            {
               _loc1_.dispose();
            }
         }
         if(!(_loc5_ && _loc2_))
         {
            §§push(§%K§.§`9§);
            if(!(_loc5_ && this))
            {
               if(§§pop())
               {
                  if(_loc4_ || _loc3_)
                  {
                     addr91:
                     §%K§.§`9§.removeEventListener(Event.CONTEXT3D_CREATE,this.§ !m§);
                  }
               }
               return;
            }
         }
         §§goto(addr91);
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            param1.clear(§9q§.§@g§(param2) / 255,§9q§.§!e§(param2) / 255,§9q§.§6!1§(param2) / 255,param3);
         }
      }
      
      private function § !m§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§!!z§ = new <§,5§>[new §,5§()];
         }
      }
      
      public function §`!M§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            §2r§[0] = 2 / param1;
            if(_loc7_ || param3)
            {
               §2r§[1] = §2r§[2] = §2r§[3] = §2r§[4] = 0;
               if(!(_loc6_ && param2))
               {
                  addr64:
                  §2r§[5] = -2 / param2;
                  if(!(_loc6_ && param2))
                  {
                     §2r§[6] = §2r§[7] = §2r§[8] = §2r§[9] = 0;
                     addr77:
                     if(_loc7_)
                     {
                        §2r§[10] = -2 / (param4 - param3);
                     }
                     loop0:
                     while(true)
                     {
                        §2r§[15] = 1;
                        while(_loc7_ || param1)
                        {
                           this.§3L§.copyRawDataFrom(§2r§);
                           if(!_loc6_)
                           {
                              if(!(_loc6_ && this))
                              {
                                 if(!_loc6_)
                                 {
                                    if(!(_loc6_ && param2))
                                    {
                                       break loop0;
                                    }
                                    loop2:
                                    while(true)
                                    {
                                       §2r§[12] = -1;
                                       addr207:
                                       while(true)
                                       {
                                          §2r§[11] = 0;
                                          continue loop2;
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §2r§[13] = 1;
                                 }
                              }
                              while(_loc6_)
                              {
                                 §§goto(addr207);
                              }
                              §2r§[14] = -(param4 + param3) / (param4 - param3);
                              break;
                           }
                        }
                     }
                     return;
                     addr168:
                  }
                  §§goto(addr207);
               }
               §§goto(addr168);
            }
            §§goto(addr64);
         }
         §§goto(addr77);
      }
      
      public function §3&§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§9^§.identity();
         }
      }
      
      public function §0g§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            this.§9^§.prependTranslation(param1,param2,param3);
         }
      }
      
      public function §"!u§(param1:Number, param2:Vector3D = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            this.§9^§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
         }
      }
      
      public function §^P§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            this.§9^§.prependScale(param1,param2,param3);
         }
      }
      
      public function §1w§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            param1.§1w§(this.§9^§);
         }
      }
      
      public function §,!z§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            if(this.§0!D§.length < this.§;t§ + 1)
            {
               if(_loc4_)
               {
                  this.§0!D§.push(new Matrix3D());
                  if(!_loc4_)
                  {
                  }
               }
               §§goto(addr79);
            }
            var _loc1_:*;
            var _loc2_:* = (_loc1_ = this).§;t§ + 1;
            _loc1_.§;t§ = _loc2_;
            this.§0!D§[(_loc1_ = this).§;t§].copyFrom(this.§9^§);
         }
         addr79:
      }
      
      public function §@!<§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§9^§.copyFrom(this.§0!D§[--this.§;t§]);
         }
      }
      
      public function §45§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§;t§ = 0;
         }
         do
         {
            this.§3&§();
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      public function get §'D§() : Matrix3D
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§!" §.identity();
            while(true)
            {
               this.§!" §.append(this.§9^§);
               while(!_loc2_)
               {
                  this.§!" §.append(this.§3L§);
                  if(!(_loc2_ && _loc1_))
                  {
                     return this.§!" §;
                     addr53:
                  }
               }
            }
         }
         §§goto(addr53);
      }
      
      public function batchQuad(param1:§4!O§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            §§push(this.§8!i§);
            while(true)
            {
               if(§§pop().§^G§(param1,param3,param4))
               {
                  if(_loc6_)
                  {
                     this.§0"6§();
                     addr75:
                     while(true)
                     {
                     }
                     addr75:
                  }
                  §§goto(addr75);
               }
               while(true)
               {
                  §§push(this.§8!i§);
                  if(_loc5_)
                  {
                     break;
                  }
                  §§pop().§0!B§(param1,param2,param3,param4,this.§9^§);
                  if(!_loc5_)
                  {
                     return;
                  }
                  §§goto(addr75);
               }
            }
         }
         §§goto(addr75);
      }
      
      public function §0"6§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§8!i§);
            if(_loc4_)
            {
               if(§§pop().§^"-§ > 0)
               {
                  if(!(_loc3_ && _loc1_))
                  {
                     §§push(this.§8!i§);
                     if(!_loc3_)
                     {
                        §§goto(addr37);
                     }
                     §§goto(addr61);
                  }
               }
               §§goto(addr64);
            }
            addr37:
            §§pop().render(this.§-!K§,this.§3L§);
            if(_loc4_ || this)
            {
               addr61:
               this.§8!i§.reset();
               if(!_loc3_)
               {
                  addr64:
                  var _loc1_:*;
                  §§push((_loc1_ = this).§?P§);
                  if(!(_loc3_ && this))
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc2_:* = §§pop();
                  if(_loc4_)
                  {
                     _loc1_.§?P§ = _loc2_;
                  }
                  if(_loc3_)
                  {
                  }
                  §§goto(addr109);
               }
            }
            if(this.§!!z§.length <= this.§?P§)
            {
               if(_loc4_)
               {
                  addr104:
                  this.§!!z§.push(new §,5§());
               }
               §§goto(addr109);
            }
            addr109:
            return;
         }
         §§goto(addr104);
      }
      
      public function §<Q§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§45§();
            do
            {
               this.§?P§ = 0;
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            param1.present();
         }
      }
      
      private function get §8!i§() : §,5§
      {
         return this.§!!z§[this.§?P§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            if(param3 != §>![§[param2])
            {
               loop0:
               while(true)
               {
                  §>![§[param2] = param3;
                  addr68:
                  while(true)
                  {
                     param1.setTextureAt(param2,param3);
                     if(!_loc4_)
                     {
                        if(!_loc4_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr35);
               }
            }
            addr35:
            return;
         }
         §§goto(addr68);
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(param2 != §"!#§)
            {
               if(_loc3_ || _loc3_)
               {
                  addr60:
                  §"!#§ = param2;
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
