package §5Q§
{
   import §&!Z§.*;
   import §7!8§.*;
   import §`!#§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §%!t§
   {
      
      private static var §@i§:Array;
      
      private static var §=!K§:Program3D;
      
      private static var §`5§:Vector.<Number>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §`5§ = new Vector.<Number>(16,true);
         }
      }
      
      private var §7!e§:Matrix3D;
      
      private var §6!T§:Matrix3D;
      
      private var §""9§:Matrix3D;
      
      private var §!"G§:Vector.<Matrix3D>;
      
      private var §`z§:int;
      
      private var §9Q§:Vector.<§,Q§>;
      
      private var §88§:int;
      
      private var §8!C§:Context3D;
      
      private var §7" §:int = -1;
      
      public function §%!t§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
            while(true)
            {
               this.§7!e§ = new Matrix3D();
               loop4:
               while(_loc2_ || this)
               {
                  this.§`z§ = 0;
                  loop5:
                  while(true)
                  {
                     this.§88§ = 0;
                     addr128:
                     addr185:
                     loop6:
                     while(_loc2_ || this)
                     {
                        this.§9Q§ = new Vector.<§,Q§>();
                        loop7:
                        while(true)
                        {
                           if(!(_loc2_ || _loc2_))
                           {
                              continue loop6;
                           }
                           if(!_loc2_)
                           {
                              break;
                           }
                           if(§@i§ != null)
                           {
                              while(true)
                              {
                                 this.§+m§();
                                 loop11:
                                 while(_loc2_ || this)
                                 {
                                    if(!(_loc1_ && this))
                                    {
                                       this.§%>§(400,300);
                                       while(true)
                                       {
                                          if(!_loc1_)
                                          {
                                             continue loop5;
                                          }
                                          continue loop11;
                                          addr61:
                                          §^!e§.§`?§.addEventListener(Event.CONTEXT3D_CREATE,this.§2"'§);
                                          if(!(_loc2_ || _loc2_))
                                          {
                                             continue;
                                          }
                                          if(_loc2_)
                                          {
                                             return;
                                          }
                                          addr163:
                                          while(true)
                                          {
                                             this.§!"G§ = new Vector.<Matrix3D>(0);
                                             continue loop4;
                                          }
                                       }
                                       continue loop5;
                                    }
                                 }
                                 continue loop7;
                              }
                              addr62:
                           }
                           while(true)
                           {
                              §@i§ = [];
                              continue loop7;
                              §§goto(addr72);
                           }
                        }
                        while(true)
                        {
                           this.§""9§ = new Matrix3D();
                           §§goto(addr163);
                        }
                     }
                     while(true)
                     {
                        this.§6!T§ = new Matrix3D();
                        §§goto(addr179);
                        §§goto(addr128);
                     }
                  }
               }
            }
         }
         §§goto(addr185);
      }
      
      public static function §4! §(param1:Matrix3D, param2:DisplayObject) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            param2.§0!x§(param1);
         }
      }
      
      public static function §0_§(param1:Context3D, param2:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         if(!(_loc5_ && §%!t§))
         {
            if(param2)
            {
               addr40:
               §§push(Context3DBlendFactor.ONE);
               if(_loc6_ || param2)
               {
               }
               addr71:
               §§push(§§pop());
            }
            else
            {
               §§push(Context3DBlendFactor.SOURCE_ALPHA);
               if(_loc6_ || param1)
               {
                  §§goto(addr71);
               }
            }
            var _loc4_:* = §§pop();
            if(_loc6_)
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
         if(!_loc4_)
         {
            param1.clear(§@!a§.§4N§(param2) / 255,§@!a§.§"g§(param2) / 255,§@!a§.§?"7§(param2) / 255,param3);
         }
      }
      
      protected function get §!H§() : Matrix3D
      {
         return this.§6!T§;
      }
      
      protected function get §9c§() : Matrix3D
      {
         return this.§7!e§;
      }
      
      public function §4!,§(param1:Context3D, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§8!C§ = param1;
         }
         do
         {
            this.§7" § = param2;
         }
         while(_loc3_ && param2);
         
      }
      
      public function get §"!G§() : Context3D
      {
         return this.§8!C§;
      }
      
      public function get §;!c§() : int
      {
         return this.§7" §;
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§,Q§ = null;
         var _loc3_:* = this.§9Q§;
         for each(_loc1_ in _loc3_)
         {
            if(!(_loc4_ && _loc3_))
            {
               _loc1_.dispose();
            }
         }
         if(!_loc4_)
         {
            §§push(§^!e§.§`?§);
            if(_loc5_ || this)
            {
               if(!§§pop())
               {
               }
               §§goto(addr92);
            }
            §§pop().removeEventListener(Event.CONTEXT3D_CREATE,this.§2"'§);
         }
         addr92:
         if(_loc5_ || _loc3_)
         {
            §§push(§^!e§.§`?§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            param1.clear(§@!a§.§4N§(param2) / 255,§@!a§.§"g§(param2) / 255,§@!a§.§?"7§(param2) / 255,param3);
         }
      }
      
      private function §2"'§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§9Q§ = new <§,Q§>[new §,Q§()];
         }
      }
      
      public function §%>§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param3)
         {
            §`5§[0] = 2 / param1;
            if(!_loc6_)
            {
               §`5§[1] = §`5§[2] = §`5§[3] = §`5§[4] = 0;
               if(!_loc6_)
               {
                  §`5§[5] = -2 / param2;
                  if(_loc7_ || this)
                  {
                     §`5§[6] = §`5§[7] = §`5§[8] = §`5§[9] = 0;
                     if(!_loc7_)
                     {
                     }
                     while(true)
                     {
                        §`5§[14] = -(param4 + param3) / (param4 - param3);
                        addr156:
                        §§goto(addr163);
                     }
                     addr169:
                  }
                  §`5§[10] = -2 / (param4 - param3);
                  §§goto(addr202);
               }
               addr163:
               while(!(_loc7_ || param3))
               {
                  while(true)
                  {
                     §`5§[13] = 1;
                     continue loop5;
                  }
               }
               while(true)
               {
                  §`5§[15] = 1;
                  do
                  {
                     this.§7!e§.copyRawDataFrom(§`5§);
                  }
                  while(!_loc7_);
                  
                  if(!(_loc7_ || param2))
                  {
                     continue;
                  }
                  if(!_loc7_)
                  {
                     continue loop5;
                  }
                  if(!(_loc6_ && param2))
                  {
                     break;
                  }
                  loop2:
                  while(_loc6_)
                  {
                     while(true)
                     {
                        §`5§[11] = 0;
                        continue loop2;
                     }
                  }
                  §`5§[12] = -1;
                  §§goto(addr175);
               }
               return;
            }
            §§goto(addr169);
         }
         §§goto(addr202);
      }
      
      public function §+m§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§6!T§.identity();
         }
      }
      
      public function §8g§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            this.§6!T§.prependTranslation(param1,param2,param3);
         }
      }
      
      public function §9!G§(param1:Number, param2:Vector3D = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§6!T§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
         }
      }
      
      public function §>$§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§6!T§.prependScale(param1,param2,param3);
         }
      }
      
      public function §0!x§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            param1.§0!x§(this.§6!T§);
         }
      }
      
      public function §=j§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(this.§!"G§.length < this.§`z§ + 1)
            {
               if(_loc4_ || _loc2_)
               {
                  addr44:
                  this.§!"G§.push(new Matrix3D());
                  if(!_loc3_)
                  {
                     addr51:
                     var _loc1_:*;
                     var _loc2_:* = (_loc1_ = this).§`z§ + 1;
                     _loc1_.§`z§ = _loc2_;
                     this.§!"G§[(_loc1_ = this).§`z§].copyFrom(this.§6!T§);
                  }
               }
               return;
            }
            §§goto(addr51);
         }
         §§goto(addr44);
      }
      
      public function §7l§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§6!T§.copyFrom(this.§!"G§[--this.§`z§]);
         }
      }
      
      public function §&"?§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§`z§ = 0;
         }
         do
         {
            this.§+m§();
         }
         while(_loc1_ && this);
         
      }
      
      public function get §^s§() : Matrix3D
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§""9§.identity();
            while(true)
            {
               this.§""9§.append(this.§6!T§);
               loop1:
               while(!_loc1_)
               {
                  while(true)
                  {
                     this.§""9§.append(this.§7!e§);
                     if(!_loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return this.§""9§;
               }
            }
         }
         §§goto(addr63);
      }
      
      public function batchQuad(param1:§&!D§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            §§push(this.§+`§);
            while(true)
            {
               if(!§§pop().§1!`§(param1,param3,param4,param2))
               {
                  continue;
               }
               if(!_loc5_)
               {
                  this.§2!Y§();
               }
            }
         }
         §§goto(addr81);
      }
      
      public function §2!Y§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§+`§);
            if(_loc3_ || this)
            {
               if(§§pop().§35§ > 0)
               {
                  if(!(_loc4_ && this))
                  {
                     §§push(this.§+`§);
                     if(!_loc4_)
                     {
                        addr41:
                        §§pop().render(this.§"!G§,this.§7!e§);
                        if(_loc3_)
                        {
                           addr50:
                           this.§+`§.reset();
                           if(!(_loc4_ && _loc1_))
                           {
                              var _loc1_:*;
                              §§push((_loc1_ = this).§88§);
                              if(!(_loc4_ && _loc1_))
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc2_:* = §§pop();
                              if(!(_loc4_ && _loc2_))
                              {
                                 _loc1_.§88§ = _loc2_;
                              }
                              if(_loc4_ && _loc3_)
                              {
                              }
                              §§goto(addr128);
                           }
                        }
                        if(this.§9Q§.length <= this.§88§)
                        {
                           if(!(_loc4_ && _loc1_))
                           {
                              this.§9Q§.push(new §,Q§());
                           }
                        }
                        §§goto(addr128);
                     }
                     §§goto(addr50);
                  }
               }
               addr128:
               return;
            }
            §§goto(addr41);
         }
         §§goto(addr50);
      }
      
      public function nextFrame() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§&"?§();
            do
            {
               this.§88§ = 0;
            }
            while(!(_loc1_ || this));
            
         }
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            param1.present();
         }
      }
      
      private function get §+`§() : §,Q§
      {
         return this.§9Q§[this.§88§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(param3 != §@i§[param2])
            {
               if(!(_loc4_ && this))
               {
                  §@i§[param2] = param3;
               }
               do
               {
                  param1.setTextureAt(param2,param3);
               }
               while(!_loc5_);
               
               addr41:
            }
            return;
         }
         §§goto(addr41);
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(param2 != §=!K§)
            {
               do
               {
                  §=!K§ = param2;
                  do
                  {
                     param1.setProgram(param2);
                  }
                  while(_loc3_ && this);
                  
               }
               while(_loc3_ && param2);
               
               addr66:
            }
            return;
         }
         §§goto(addr66);
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
