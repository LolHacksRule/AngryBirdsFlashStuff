package §-Z§
{
   import §3!$§.*;
   import §[P§.Texture;
   import §^V§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class § G§
   {
      
      private static var §&r§:Array;
      
      private static var §#!!§:Program3D;
      
      private static var §,!1§:Vector.<Number>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || § G§)
         {
            §,!1§ = new Vector.<Number>(16,true);
         }
      }
      
      private var § do§:Matrix3D;
      
      private var §&s§:Matrix3D;
      
      private var §]!2§:Matrix3D;
      
      private var §>!§:Vector.<Matrix3D>;
      
      private var §>O§:int;
      
      private var §3N§:Vector.<§0o§>;
      
      private var §2n§:int;
      
      private var §9!9§:Context3D;
      
      private var §-4§:int = -1;
      
      public function § G§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         super();
         loop0:
         while(true)
         {
            this.§ do§ = new Matrix3D();
            this.§&s§ = new Matrix3D();
            while(true)
            {
               this.§]!2§ = new Matrix3D();
               this.§>!§ = new Vector.<Matrix3D>(0);
               loop2:
               while(true)
               {
                  this.§>O§ = 0;
                  loop3:
                  while(true)
                  {
                     this.§2n§ = 0;
                     this.§3N§ = new Vector.<§0o§>();
                     if(§&r§ == null)
                     {
                        continue loop2;
                     }
                     loop6:
                     while(true)
                     {
                        this.§%<§();
                        if(_loc2_)
                        {
                           break;
                        }
                        continue loop3;
                        addr84:
                        while(true)
                        {
                           continue loop6;
                           addr46:
                           §?h§.§ n§.addEventListener(Event.CONTEXT3D_CREATE,this.§ ,§);
                           if(!(_loc2_ && _loc1_))
                           {
                              if(_loc1_)
                              {
                                 return;
                              }
                              continue loop2;
                           }
                        }
                     }
                     continue loop0;
                  }
               }
               if(!(_loc1_ || _loc1_))
               {
                  continue;
               }
               §&r§ = [];
               §§goto(addr84);
            }
         }
      }
      
      public static function §3T§(param1:Matrix3D, param2:DisplayObject) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         §§push(param2.x);
         if(!(_loc10_ && param2))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(param2.y);
         if(_loc11_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(param2.rotation);
         if(_loc11_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(param2.scaleX);
         if(_loc11_)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(param2.scaleY);
         if(_loc11_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(param2.pivotX);
         if(_loc11_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc8_:* = §§pop();
         §§push(param2.pivotY);
         if(!(_loc10_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         if(_loc11_)
         {
            §§push(_loc5_);
            §§push(0);
            loop0:
            while(true)
            {
               §§push(§§pop() == §§pop());
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           §§push(_loc6_);
                           addr370:
                           while(true)
                           {
                              §§push(1);
                              addr371:
                              while(true)
                              {
                                 §§push(§§pop() == §§pop());
                              }
                           }
                        }
                        addr382:
                     }
                     while(true)
                     {
                        §§push(§§pop());
                        loop7:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop8:
                              while(true)
                              {
                                 §§pop();
                                 loop9:
                                 while(true)
                                 {
                                    §§push(_loc7_);
                                    loop10:
                                    while(true)
                                    {
                                       §§push(1);
                                       loop11:
                                       while(_loc11_)
                                       {
                                          §§push(§§pop() == §§pop());
                                          while(true)
                                          {
                                             loop13:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   param1.prependTranslation(_loc3_ + _loc8_,_loc4_ + _loc9_,0);
                                                   break;
                                                }
                                                §§push(_loc3_);
                                                loop14:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   loop15:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      loop16:
                                                      while(true)
                                                      {
                                                         §§push(!§§pop());
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            loop18:
                                                            while(!_loc10_)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  loop19:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc11_)
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     if(!_loc11_)
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     §§pop();
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc4_);
                                                                        §§push(0);
                                                                        loop21:
                                                                        for(; !_loc10_; while(_loc11_ || param1)
                                                                        {
                                                                           if(_loc10_)
                                                                           {
                                                                              continue loop15;
                                                                           }
                                                                           §§push(§§pop() == §§pop());
                                                                           if(!(_loc10_ && param1))
                                                                           {
                                                                              if(_loc11_ || § G§)
                                                                              {
                                                                                 §§push(!§§pop());
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    §§goto(addr169);
                                                                                 }
                                                                                 §§goto(addr199);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr382);
                                                                              }
                                                                           }
                                                                           §§goto(addr169);
                                                                        })
                                                                        {
                                                                           §§push(§§pop() == §§pop());
                                                                           while(true)
                                                                           {
                                                                              §§push(!§§pop());
                                                                              addr169:
                                                                              if(_loc10_ && param1)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(_loc10_)
                                                                              {
                                                                                 continue loop19;
                                                                              }
                                                                              §§push(§§pop());
                                                                              if(_loc11_)
                                                                              {
                                                                                 if(!(_loc11_ || param2))
                                                                                 {
                                                                                    continue loop18;
                                                                                 }
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    loop38:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       if(!(_loc10_ && param1))
                                                                                       {
                                                                                          addr207:
                                                                                          §§push(_loc9_);
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             continue loop10;
                                                                                          }
                                                                                          loop36:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc11_ || param1)
                                                                                             {
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§push(0);
                                                                                                continue loop21;
                                                                                             }
                                                                                             addr210:
                                                                                             while(_loc11_ || param1)
                                                                                             {
                                                                                                if(_loc11_)
                                                                                                {
                                                                                                   §§push(1);
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      §§push(§§pop() == §§pop());
                                                                                                      break loop38;
                                                                                                   }
                                                                                                   addr248:
                                                                                                   while(!(_loc10_ && _loc3_))
                                                                                                   {
                                                                                                      §§push(§§pop() == §§pop());
                                                                                                      if(!(_loc10_ && param1))
                                                                                                      {
                                                                                                         §§push(!§§pop());
                                                                                                      }
                                                                                                      while(_loc11_ || § G§)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         while(_loc11_ || § G§)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     continue loop20;
                                                                                                                  }
                                                                                                                  addr130:
                                                                                                                  §§push(_loc8_);
                                                                                                                  continue loop36;
                                                                                                               }
                                                                                                               continue loop20;
                                                                                                               addr233:
                                                                                                            }
                                                                                                            §§pop();
                                                                                                         }
                                                                                                         continue loop2;
                                                                                                      }
                                                                                                      continue loop16;
                                                                                                   }
                                                                                                   continue loop11;
                                                                                                }
                                                                                                continue loop14;
                                                                                             }
                                                                                             loop25:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(0);
                                                                                                addr285:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop() != §§pop())
                                                                                                   {
                                                                                                      addr286:
                                                                                                      loop27:
                                                                                                      while(_loc11_)
                                                                                                      {
                                                                                                         param1.prependRotation(_loc5_ / Math.PI * 180,Vector3D.Z_AXIS);
                                                                                                         if(_loc11_)
                                                                                                         {
                                                                                                            if(!(_loc11_ || § G§))
                                                                                                            {
                                                                                                               break loop19;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr248);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr317:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               param1.prependTranslation(_loc3_,_loc4_,0);
                                                                                                               break loop27;
                                                                                                            }
                                                                                                            addr317:
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         addr282:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            continue loop25;
                                                                                                         }
                                                                                                      }
                                                                                                      addr286:
                                                                                                   }
                                                                                                   §§goto(addr245);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr370);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr210);
                                                                                          continue loop38;
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(!§§pop());
                                                                                       if(!(_loc10_ && _loc3_))
                                                                                       {
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             continue loop13;
                                                                                          }
                                                                                          §§goto(addr233);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr264);
                                                                                    addr199:
                                                                                    addr223:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr120);
                                                                                 }
                                                                                 §§goto(addr286);
                                                                              }
                                                                              §§goto(addr272);
                                                                           }
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                  }
                                                                  continue loop9;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     §§goto(addr317);
                                                                  }
                                                                  §§goto(addr282);
                                                                  §§goto(addr314);
                                                               }
                                                            }
                                                            continue loop7;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             return;
                                          }
                                       }
                                       §§goto(addr371);
                                    }
                                 }
                              }
                           }
                           §§goto(addr356);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr317);
      }
      
      public static function §0r§(param1:Context3D, param2:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         if(_loc5_ || _loc3_)
         {
            if(param2)
            {
               addr39:
               §§push(Context3DBlendFactor.ONE);
               if(_loc5_ || param1)
               {
                  addr70:
                  §§push(§§pop());
               }
            }
            else
            {
               §§push(Context3DBlendFactor.SOURCE_ALPHA);
               if(_loc5_ || param1)
               {
                  §§goto(addr70);
               }
            }
            var _loc4_:* = §§pop();
            if(!_loc6_)
            {
               param1.setBlendFactors(_loc4_,_loc3_);
            }
            return;
         }
         §§goto(addr39);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            param1.clear(§5!6§.§get §(param2) / 255,§5!6§.§>c§(param2) / 255,§5!6§.§;!D§(param2) / 255,param3);
         }
      }
      
      protected function get §1w§() : Matrix3D
      {
         return this.§&s§;
      }
      
      protected function get §[!E§() : Matrix3D
      {
         return this.§ do§;
      }
      
      public function §case§(param1:Context3D, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            this.§9!9§ = param1;
         }
         do
         {
            this.§-4§ = param2;
         }
         while(!(_loc4_ || param1));
         
      }
      
      public function get context() : Context3D
      {
         return this.§9!9§;
      }
      
      public function get §@R§() : int
      {
         return this.§-4§;
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§0o§ = null;
         for each(_loc1_ in this.§3N§)
         {
            if(!_loc4_)
            {
               _loc1_.dispose();
            }
         }
         if(_loc5_)
         {
            §§push(§?h§.§ n§);
            if(_loc5_)
            {
               if(§§pop())
               {
                  if(_loc5_ || _loc1_)
                  {
                     addr77:
                     §?h§.§ n§.removeEventListener(Event.CONTEXT3D_CREATE,this.§ ,§);
                  }
               }
               return;
            }
         }
         §§goto(addr77);
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            param1.clear(§5!6§.§get §(param2) / 255,§5!6§.§>c§(param2) / 255,§5!6§.§;!D§(param2) / 255,param3);
         }
      }
      
      private function § ,§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§3N§ = new <§0o§>[new §0o§()];
         }
      }
      
      public function §0!%§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param2)
         {
            §,!1§[0] = 2 / param1;
            §,!1§[1] = §,!1§[2] = §,!1§[3] = §,!1§[4] = 0;
            if(!_loc7_)
            {
               §,!1§[5] = -2 / param2;
               §,!1§[6] = §,!1§[7] = §,!1§[8] = §,!1§[9] = 0;
               §,!1§[10] = -2 / (param4 - param3);
               addr169:
               while(true)
               {
                  §,!1§[11] = 0;
                  §,!1§[12] = -1;
                  do
                  {
                     §,!1§[13] = 1;
                  }
                  while(!_loc6_);
                  
                  §,!1§[14] = -(param4 + param3) / (param4 - param3);
               }
               addr169:
            }
            while(true)
            {
               §,!1§[15] = 1;
               do
               {
                  this.§ do§.copyRawDataFrom(§,!1§);
               }
               while(_loc7_);
               
               if(!_loc7_)
               {
                  break;
               }
               §§goto(addr169);
            }
            return;
         }
         §§goto(addr169);
      }
      
      public function §%<§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§&s§.identity();
         }
      }
      
      public function §9w§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            this.§&s§.prependTranslation(param1,param2,param3);
         }
      }
      
      public function §9!?§(param1:Number, param2:Vector3D = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            this.§&s§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
         }
      }
      
      public function §2!!§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§&s§.prependScale(param1,param2,param3);
         }
      }
      
      public function §&?§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §3T§(this.§&s§,param1);
         }
      }
      
      public function §%a§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc1_)
         {
            if(this.§>!§.length < this.§>O§ + 1)
            {
               if(!(_loc4_ && this))
               {
                  this.§>!§.push(new Matrix3D());
                  addr48:
                  if(!(_loc4_ && _loc1_))
                  {
                     addr70:
                     this.§>!§[this.§>O§++].copyFrom(this.§&s§);
                  }
               }
               return;
            }
            §§goto(addr70);
         }
         §§goto(addr48);
      }
      
      public function §?6§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§&s§.copyFrom(this.§>!§[--this.§>O§]);
         }
      }
      
      public function §3H§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§>O§ = 0;
         }
         do
         {
            this.§%<§();
         }
         while(!_loc2_);
         
      }
      
      public function get §4L§() : Matrix3D
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§]!2§.identity();
            while(true)
            {
               this.§]!2§.append(this.§&s§);
               §§goto(addr68);
            }
         }
         addr68:
         while(true)
         {
            this.§]!2§.append(this.§ do§);
            if(!(_loc1_ && _loc2_))
            {
               if(!_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
         return this.§]!2§;
      }
      
      public function batchQuad(param1:§09§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §§push(this.§#!1§);
            loop0:
            while(true)
            {
               if(!§§pop().§9J§(param1,param3,param4))
               {
                  continue;
               }
               while(true)
               {
                  this.§ ]§();
                  addr79:
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      public function § ]§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§#!1§);
         if(!(_loc4_ && _loc2_))
         {
            if(§§pop().§%!,§ > 0)
            {
               if(_loc3_)
               {
                  §§push(this.§#!1§);
                  if(_loc3_)
                  {
                     §§pop().render(this.context,this.§ do§);
                     if(_loc3_ || this)
                     {
                        addr58:
                        this.§#!1§.reset();
                        if(_loc3_ || _loc3_)
                        {
                           addr66:
                           var _loc1_:*;
                           §§push((_loc1_ = this).§2n§);
                           if(!_loc4_)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc2_:* = §§pop();
                           if(_loc3_ || _loc3_)
                           {
                              _loc1_.§2n§ = _loc2_;
                           }
                           if(!_loc3_)
                           {
                           }
                        }
                        §§goto(addr109);
                     }
                     if(this.§3N§.length <= this.§2n§)
                     {
                        this.§3N§.push(new §0o§());
                        §§goto(addr109);
                     }
                     addr109:
                     return;
                  }
                  §§goto(addr58);
               }
            }
            §§goto(addr66);
         }
         §§goto(addr58);
      }
      
      public function §3o§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§3H§();
            do
            {
               this.§2n§ = 0;
            }
            while(_loc1_ && this);
            
         }
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            param1.present();
         }
      }
      
      private function get §#!1§() : §0o§
      {
         return this.§3N§[this.§2n§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            if(param3 != §&r§[param2])
            {
               loop0:
               while(true)
               {
                  §&r§[param2] = param3;
                  addr72:
                  while(true)
                  {
                     param1.setTextureAt(param2,param3);
                     if(!(_loc5_ && param3))
                     {
                        if(_loc4_ || param2)
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
         §§goto(addr72);
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(param2 != §#!!§)
            {
               loop0:
               while(true)
               {
                  §#!!§ = param2;
                  addr59:
                  while(true)
                  {
                     param1.setProgram(param2);
                     if(!(_loc3_ && this))
                     {
                        if(_loc4_ || _loc3_)
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
         §§goto(addr59);
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
