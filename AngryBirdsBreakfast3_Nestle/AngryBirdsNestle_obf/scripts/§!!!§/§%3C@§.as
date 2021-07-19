package §!!!§
{
   import §3!J§.*;
   import §=!4§.Texture;
   import §^!^§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §<@§
   {
      
      private static var §7!D§:Array;
      
      private static var §>r§:Program3D;
      
      private static var §,"$§:Vector.<Number>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §<@§))
         {
            §,"$§ = new Vector.<Number>(16,true);
         }
      }
      
      private var § !w§:Matrix3D;
      
      private var §@!W§:Matrix3D;
      
      private var §!X§:Matrix3D;
      
      private var §;§:Vector.<Matrix3D>;
      
      private var §+"&§:int;
      
      private var §]Z§:Vector.<§-!k§>;
      
      private var §58§:int;
      
      private var §?"5§:Context3D;
      
      private var §""'§:int = -1;
      
      public function §<@§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            loop0:
            while(true)
            {
               this.§ !w§ = new Matrix3D();
               loop1:
               while(true)
               {
                  this.§@!W§ = new Matrix3D();
                  loop2:
                  while(true)
                  {
                     this.§!X§ = new Matrix3D();
                     loop3:
                     while(true)
                     {
                        this.§;§ = new Vector.<Matrix3D>(0);
                        while(true)
                        {
                           this.§+"&§ = 0;
                           while(_loc2_ || _loc1_)
                           {
                              this.§58§ = 0;
                              loop6:
                              while(!_loc1_)
                              {
                                 this.§]Z§ = new Vector.<§-!k§>();
                                 loop7:
                                 for(; !_loc1_; if(!(_loc1_ && _loc2_))
                                 {
                                    while(true)
                                    {
                                       this.§&!n§(400,300);
                                       for(; _loc2_; §6!l§.§+J§.addEventListener(Event.CONTEXT3D_CREATE,this.§'"1§),if(!_loc1_)
                                       {
                                          continue loop3;
                                       })
                                       {
                                          if(!(_loc1_ && _loc2_))
                                          {
                                             continue;
                                          }
                                          §§goto(addr101);
                                       }
                                       §§goto(addr69);
                                    }
                                    return;
                                    addr50:
                                    addr93:
                                 })
                                 {
                                    if(§7!D§ == null)
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          §7!D§ = [];
                                          addr101:
                                          while(_loc2_)
                                          {
                                          }
                                          addr69:
                                          continue loop6;
                                          while(true)
                                          {
                                             if(_loc2_ || this)
                                             {
                                                continue loop7;
                                             }
                                             continue loop8;
                                          }
                                          §§goto(addr101);
                                       }
                                    }
                                    while(true)
                                    {
                                       this.§ H§();
                                       §§goto(addr69);
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                        }
                        if(_loc2_ || _loc2_)
                        {
                           if(_loc2_)
                           {
                              continue loop0;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr93);
      }
      
      public static function §=`§(param1:Matrix3D, param2:DisplayObject) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            param2.§3'§(param1);
         }
      }
      
      public static function §03§(param1:Context3D, param2:Boolean) : void
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
               if(_loc6_ || §<@§)
               {
               }
               addr66:
               §§push(§§pop());
            }
            else
            {
               §§push(Context3DBlendFactor.SOURCE_ALPHA);
               if(_loc6_ || _loc3_)
               {
                  §§goto(addr66);
               }
            }
            var _loc4_:* = §§pop();
            if(_loc6_)
            {
               param1.setBlendFactors(_loc4_,_loc3_);
            }
            return;
         }
         §§goto(addr25);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            param1.clear(§+%§.§<#§(param2) / 255,§+%§.§4!V§(param2) / 255,§+%§.§7h§(param2) / 255,param3);
         }
      }
      
      protected function get § !"§() : Matrix3D
      {
         return this.§@!W§;
      }
      
      protected function get §4@§() : Matrix3D
      {
         return this.§ !w§;
      }
      
      public function §"" §(param1:Context3D, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§?"5§ = param1;
         }
         do
         {
            this.§""'§ = param2;
         }
         while(_loc4_ && param2);
         
      }
      
      public function get §!! §() : Context3D
      {
         return this.§?"5§;
      }
      
      public function get §>F§() : int
      {
         return this.§""'§;
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§-!k§ = null;
         for each(_loc1_ in this.§]Z§)
         {
            if(_loc4_)
            {
               _loc1_.dispose();
            }
         }
         if(!_loc5_)
         {
            §§push(§6!l§.§+J§);
            if(_loc4_)
            {
               if(§§pop())
               {
                  if(!_loc5_)
                  {
                     addr71:
                     §6!l§.§+J§.removeEventListener(Event.CONTEXT3D_CREATE,this.§'"1§);
                  }
               }
               return;
            }
         }
         §§goto(addr71);
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            param1.clear(§+%§.§<#§(param2) / 255,§+%§.§4!V§(param2) / 255,§+%§.§7h§(param2) / 255,param3);
         }
      }
      
      private function §'"1§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§]Z§ = new <§-!k§>[new §-!k§()];
         }
      }
      
      public function §&!n§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            §,"$§[0] = 2 / param1;
            if(!(_loc6_ && param1))
            {
               §,"$§[1] = §,"$§[2] = §,"$§[3] = §,"$§[4] = 0;
               if(_loc7_ || param3)
               {
                  §,"$§[5] = -2 / param2;
                  if(_loc7_ || this)
                  {
                     §,"$§[6] = §,"$§[7] = §,"$§[8] = §,"$§[9] = 0;
                     if(!_loc6_)
                     {
                        §,"$§[10] = -2 / (param4 - param3);
                        while(true)
                        {
                           §,"$§[11] = 0;
                        }
                        addr202:
                        addr114:
                     }
                     while(true)
                     {
                        §,"$§[12] = -1;
                        addr175:
                        while(!_loc6_)
                        {
                           §,"$§[13] = 1;
                        }
                        §§goto(addr202);
                     }
                     addr183:
                  }
                  while(true)
                  {
                     §,"$§[14] = -(param4 + param3) / (param4 - param3);
                     §§goto(addr163);
                  }
               }
               addr163:
               while(true)
               {
                  §,"$§[15] = 1;
                  do
                  {
                     this.§ !w§.copyRawDataFrom(§,"$§);
                  }
                  while(!(_loc7_ || this));
                  
                  if(!(_loc7_ || param3))
                  {
                     continue;
                  }
                  if(_loc6_)
                  {
                     continue loop2;
                  }
                  if(_loc7_)
                  {
                     if(_loc7_)
                     {
                        break;
                     }
                     §§goto(addr183);
                  }
                  §§goto(addr175);
               }
               return;
            }
         }
         §§goto(addr114);
      }
      
      public function § H§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§@!W§.identity();
         }
      }
      
      public function §&!M§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            this.§@!W§.prependTranslation(param1,param2,param3);
         }
      }
      
      public function §,!_§(param1:Number, param2:Vector3D = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§@!W§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
         }
      }
      
      public function §`K§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§@!W§.prependScale(param1,param2,param3);
         }
      }
      
      public function §3'§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            param1.§3'§(this.§@!W§);
         }
      }
      
      public function §%!X§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            if(this.§;§.length < this.§+"&§ + 1)
            {
               if(!(_loc3_ && _loc1_))
               {
                  this.§;§.push(new Matrix3D());
                  if(_loc4_ || _loc1_)
                  {
                  }
                  §§goto(addr89);
               }
            }
            var _loc1_:*;
            var _loc2_:* = (_loc1_ = this).§+"&§ + 1;
            _loc1_.§+"&§ = _loc2_;
            this.§;§[(_loc1_ = this).§+"&§].copyFrom(this.§@!W§);
         }
         addr89:
      }
      
      public function §%!k§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§@!W§.copyFrom(this.§;§[--this.§+"&§]);
         }
      }
      
      public function §=$§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§+"&§ = 0;
         }
         do
         {
            this.§ H§();
         }
         while(_loc2_);
         
      }
      
      public function get §6?§() : Matrix3D
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§!X§.identity();
         }
         while(true)
         {
            this.§!X§.append(this.§@!W§);
            while(_loc2_ || _loc2_)
            {
               this.§!X§.append(this.§ !w§);
               if(_loc2_ || _loc2_)
               {
                  return this.§!X§;
               }
            }
         }
      }
      
      public function batchQuad(param1:§8!l§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §§push(this.§28§);
            while(true)
            {
               if(§§pop().§-!F§(param1,param3,param4,param2))
               {
                  if(_loc6_ || this)
                  {
                     this.§6!s§();
                  }
                  while(true)
                  {
                     addr29:
                     §§pop().§ !z§(param1,param2,param3,param4,this.§@!W§);
                     if(!_loc5_)
                     {
                        return;
                        addr48:
                     }
                  }
               }
               while(true)
               {
                  §§push(this.§28§);
                  if(_loc5_)
                  {
                     break;
                  }
                  §§goto(addr29);
               }
            }
         }
         §§goto(addr48);
      }
      
      public function §6!s§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc1_)
         {
            §§push(this.§28§);
            if(_loc4_)
            {
               if(§§pop().§0=§ > 0)
               {
                  if(_loc4_)
                  {
                     §§push(this.§28§);
                     if(_loc4_)
                     {
                        addr37:
                        §§pop().render(this.§!! §,this.§ !w§);
                        §§goto(addr99);
                     }
                     §§pop().reset();
                     if(_loc4_)
                     {
                        var _loc1_:*;
                        §§push((_loc1_ = this).§58§);
                        if(_loc4_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc2_:* = §§pop();
                        if(!_loc3_)
                        {
                           _loc1_.§58§ = _loc2_;
                        }
                        if(!_loc3_)
                        {
                           if(this.§]Z§.length <= this.§58§)
                           {
                              if(_loc4_ || _loc3_)
                              {
                                 §§goto(addr99);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr99);
               }
               addr99:
               if(!_loc3_)
               {
                  §§push(this.§28§);
               }
               this.§]Z§.push(new §-!k§());
               return;
            }
         }
         §§goto(addr37);
      }
      
      public function nextFrame() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§=$§();
         }
         do
         {
            this.§58§ = 0;
         }
         while(_loc1_ && _loc1_);
         
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            param1.present();
         }
      }
      
      private function get §28§() : §-!k§
      {
         return this.§]Z§[this.§58§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(param3 != §7!D§[param2])
            {
               do
               {
                  §7!D§[param2] = param3;
                  do
                  {
                     param1.setTextureAt(param2,param3);
                  }
                  while(_loc5_ && param1);
                  
               }
               while(_loc5_ && param3);
               
               addr68:
            }
            return;
         }
         §§goto(addr68);
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            if(param2 != §>r§)
            {
               if(_loc3_)
               {
                  §>r§ = param2;
               }
               do
               {
                  param1.setProgram(param2);
               }
               while(_loc4_);
               
               addr44:
            }
            return;
         }
         §§goto(addr44);
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
