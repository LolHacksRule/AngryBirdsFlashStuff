package § !+§
{
   import §2!-§.Texture;
   import §<!M§.*;
   import §`a§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §%L§
   {
      
      private static var §!4§:Array;
      
      private static var §]f§:Program3D;
      
      private static var §8!L§:Vector.<Number>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §8!L§ = new Vector.<Number>(16,true);
         }
      }
      
      private var §=7§:Matrix3D;
      
      private var §throw§:Matrix3D;
      
      private var §%Q§:Matrix3D;
      
      private var §?y§:Vector.<Matrix3D>;
      
      private var §`I§:int;
      
      private var §^p§:Vector.<§!!Q§>;
      
      private var §"-§:int;
      
      private var §5M§:Context3D;
      
      private var §#!"§:int = -1;
      
      public function §%L§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            loop0:
            while(true)
            {
               this.§=7§ = new Matrix3D();
               addr159:
               while(true)
               {
                  this.§throw§ = new Matrix3D();
                  continue loop0;
               }
            }
         }
         §§goto(addr68);
      }
      
      public static function §7!7§(param1:Matrix3D, param2:DisplayObject) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         §§push(param2.x);
         if(!_loc10_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(param2.y);
         if(_loc11_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(param2.rotation);
         if(!(_loc10_ && param1))
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
         if(!(_loc10_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(param2.pivotX);
         if(_loc11_ || §%L§)
         {
            §§push(Number(§§pop()));
         }
         var _loc8_:* = §§pop();
         §§push(param2.pivotY);
         if(!_loc10_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         if(_loc11_)
         {
            §§push(_loc5_);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(_loc6_);
                                 while(true)
                                 {
                                    §§push(1);
                                    addr429:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                    addr280:
                                    if(!(_loc11_ || param1))
                                    {
                                       continue;
                                    }
                                    §§push(1);
                                    loop38:
                                    for(; !_loc10_; §§push(1),if(_loc10_ && _loc3_)
                                    {
                                       continue;
                                    },if(!_loc10_)
                                    {
                                       §§goto(addr249);
                                       §§push(§§pop() == §§pop());
                                    },§§goto(addr429))
                                    {
                                       §§push(§§pop() == §§pop());
                                       loop39:
                                       while(!(_loc10_ && param1))
                                       {
                                          §§push(!§§pop());
                                          loop40:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop41:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   loop46:
                                                   while(true)
                                                   {
                                                      loop47:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop48:
                                                            while(_loc11_)
                                                            {
                                                               param1.prependScale(_loc6_,_loc7_,1);
                                                               loop49:
                                                               while(true)
                                                               {
                                                                  if(!_loc10_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc8_);
                                                                        addr167:
                                                                        loop51:
                                                                        for(; _loc11_ || param1; §§push(_loc9_),if(_loc10_)
                                                                        {
                                                                           continue;
                                                                        },if(!_loc10_)
                                                                        {
                                                                           §§goto(addr92);
                                                                        },§§goto(addr236))
                                                                        {
                                                                           §§push(0);
                                                                           loop52:
                                                                           while(true)
                                                                           {
                                                                              if(_loc11_)
                                                                              {
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    addr236:
                                                                                    §§push(§§pop() == §§pop());
                                                                                    loop53:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(!§§pop());
                                                                                       loop54:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             continue loop4;
                                                                                          }
                                                                                          §§push(§§pop());
                                                                                          if(_loc10_ && §%L§)
                                                                                          {
                                                                                             continue loop41;
                                                                                          }
                                                                                          if(_loc11_ || param1)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                while(!(_loc10_ && §%L§))
                                                                                                {
                                                                                                   §§pop();
                                                                                                }
                                                                                                loop9:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   loop10:
                                                                                                   while(_loc11_ || param1)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            addr122:
                                                                                                            if(!(_loc10_ && _loc3_))
                                                                                                            {
                                                                                                               loop57:
                                                                                                               while(§§pop())
                                                                                                               {
                                                                                                                  if(!(_loc11_ || §%L§))
                                                                                                                  {
                                                                                                                     addr157:
                                                                                                                     if(_loc11_ || param2)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     addr207:
                                                                                                                     loop56:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc11_)
                                                                                                                        {
                                                                                                                           continue loop48;
                                                                                                                        }
                                                                                                                        addr209:
                                                                                                                        if(_loc11_ || _loc3_)
                                                                                                                        {
                                                                                                                           if(!(_loc10_ && §%L§))
                                                                                                                           {
                                                                                                                              continue loop51;
                                                                                                                           }
                                                                                                                           addr409:
                                                                                                                           if(_loc10_ && param1)
                                                                                                                           {
                                                                                                                              break loop54;
                                                                                                                           }
                                                                                                                           param1.prependTranslation(_loc3_ + _loc8_,_loc4_ + _loc9_,0);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           loop35:
                                                                                                                           for(; !(_loc10_ && _loc3_); §§goto(addr209))
                                                                                                                           {
                                                                                                                              loop36:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc6_);
                                                                                                                                 addr266:
                                                                                                                                 loop37:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc11_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       addr273:
                                                                                                                                       if(_loc10_ && param1)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§goto(addr280);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(0);
                                                                                                                                          loop18:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() == §§pop());
                                                                                                                                             addr380:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(!§§pop());
                                                                                                                                                addr381:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                   addr382:
                                                                                                                                                   while(_loc11_)
                                                                                                                                                   {
                                                                                                                                                      if(!§§pop())
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            break loop35;
                                                                                                                                                         }
                                                                                                                                                         addr385:
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               param1.prependTranslation(_loc3_,_loc4_,0);
                                                                                                                                                               addr366:
                                                                                                                                                               addr425:
                                                                                                                                                               while(!(_loc10_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                               }
                                                                                                                                                               break loop57;
                                                                                                                                                            }
                                                                                                                                                            addr361:
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc5_);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(0);
                                                                                                                                                               addr308:
                                                                                                                                                               while(!(_loc10_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop() == §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     continue loop36;
                                                                                                                                                                  }
                                                                                                                                                                  while(_loc11_)
                                                                                                                                                                  {
                                                                                                                                                                     param1.prependRotation(_loc5_ / Math.PI * 180,Vector3D.Z_AXIS);
                                                                                                                                                                     continue loop35;
                                                                                                                                                                     if(!(_loc10_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        param1.prependTranslation(_loc8_,_loc9_,0);
                                                                                                                                                                        continue loop56;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr366);
                                                                                                                                                               }
                                                                                                                                                               addr92:
                                                                                                                                                               continue loop1;
                                                                                                                                                               if(_loc10_ && §%L§)
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               §§push(0);
                                                                                                                                                               if(_loc10_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop52;
                                                                                                                                                               }
                                                                                                                                                               if(_loc10_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop18;
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop() == §§pop());
                                                                                                                                                               if(_loc11_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc10_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop9;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc10_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop54;
                                                                                                                                                                  }
                                                                                                                                                                  if(!_loc11_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop53;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc10_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop39;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(!§§pop());
                                                                                                                                                               }
                                                                                                                                                               if(_loc10_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop47;
                                                                                                                                                               }
                                                                                                                                                               if(_loc10_)
                                                                                                                                                               {
                                                                                                                                                                  while(_loc11_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(!§§pop());
                                                                                                                                                                     continue loop46;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop40;
                                                                                                                                                                  addr249:
                                                                                                                                                               }
                                                                                                                                                               if(!_loc10_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr122);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  while(_loc11_)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop();
                                                                                                                                                                     break loop48;
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(!§§pop());
                                                                                                                                                                     break loop39;
                                                                                                                                                                  }
                                                                                                                                                                  addr340:
                                                                                                                                                                  addr301:
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue loop10;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          continue loop37;
                                                                                                                                       }
                                                                                                                                       addr378:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop0;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(_loc11_ || param1)
                                                                                                                           {
                                                                                                                              §§push(_loc4_);
                                                                                                                              break loop51;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc7_);
                                                                                                                              continue loop0;
                                                                                                                           }
                                                                                                                           addr451:
                                                                                                                        }
                                                                                                                        §§goto(addr425);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop49;
                                                                                                               }
                                                                                                               return;
                                                                                                               addr129:
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               §§goto(addr409);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr378);
                                                                                                               §§push(_loc3_);
                                                                                                            }
                                                                                                            §§goto(addr425);
                                                                                                         }
                                                                                                         addr407:
                                                                                                      }
                                                                                                      §§goto(addr451);
                                                                                                   }
                                                                                                   continue loop3;
                                                                                                }
                                                                                                addr199:
                                                                                                addr431:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr129);
                                                                                             }
                                                                                             §§goto(addr207);
                                                                                          }
                                                                                          §§goto(addr382);
                                                                                       }
                                                                                       continue loop5;
                                                                                    }
                                                                                    while(!_loc10_)
                                                                                    {
                                                                                       continue loop38;
                                                                                    }
                                                                                    §§goto(addr266);
                                                                                    addr236:
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr308);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr340);
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr339);
                                                                           §§goto(addr167);
                                                                        }
                                                                     }
                                                                     addr165:
                                                                  }
                                                                  §§goto(addr361);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr236);
                                                            }
                                                         }
                                                         §§goto(addr165);
                                                      }
                                                   }
                                                }
                                                §§goto(addr301);
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          if(!(_loc10_ && param2))
                                          {
                                             if(!_loc10_)
                                             {
                                                if(!_loc10_)
                                                {
                                                   if(!(_loc11_ || param1))
                                                   {
                                                      while(_loc11_)
                                                      {
                                                         §§goto(addr407);
                                                      }
                                                      continue loop2;
                                                      addr405:
                                                   }
                                                   §§goto(addr359);
                                                }
                                                §§goto(addr380);
                                             }
                                             break;
                                          }
                                          §§goto(addr385);
                                       }
                                       §§goto(addr381);
                                    }
                                    while(true)
                                    {
                                       §§goto(addr405);
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr431);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr416);
      }
      
      public static function § !;§(param1:Context3D, param2:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         if(_loc6_ || _loc3_)
         {
            if(param2)
            {
               addr30:
               §§push(Context3DBlendFactor.ONE);
               if(_loc5_ && §%L§)
               {
               }
               addr61:
               §§push(§§pop());
            }
            else
            {
               §§push(Context3DBlendFactor.SOURCE_ALPHA);
               if(_loc6_ || param1)
               {
                  §§goto(addr61);
               }
            }
            var _loc4_:* = §§pop();
            if(_loc6_ || param2)
            {
               param1.setBlendFactors(_loc4_,_loc3_);
            }
            return;
         }
         §§goto(addr30);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            param1.clear(§3!Z§.§0#§(param2) / 255,§3!Z§.§!!P§(param2) / 255,§3!Z§.§"!@§(param2) / 255,param3);
         }
      }
      
      protected function get §'! §() : Matrix3D
      {
         return this.§throw§;
      }
      
      protected function get §2<§() : Matrix3D
      {
         return this.§=7§;
      }
      
      public function §+!T§(param1:Context3D, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            this.§5M§ = param1;
         }
         do
         {
            this.§#!"§ = param2;
         }
         while(_loc4_);
         
      }
      
      public function get §9!>§() : Context3D
      {
         return this.§5M§;
      }
      
      public function get §=6§() : int
      {
         return this.§#!"§;
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§!!Q§ = null;
         for each(_loc1_ in this.§^p§)
         {
            if(!(_loc5_ && this))
            {
               _loc1_.dispose();
            }
         }
         if(_loc4_)
         {
            §0Z§.§4J§.removeEventListener(Event.CONTEXT3D_CREATE,this.§3!%§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            param1.clear(§3!Z§.§0#§(param2) / 255,§3!Z§.§!!P§(param2) / 255,§3!Z§.§"!@§(param2) / 255,param3);
         }
      }
      
      private function §3!%§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§^p§ = new <§!!Q§>[new §!!Q§()];
         }
      }
      
      public function §6!E§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || this)
         {
            §8!L§[0] = 2 / param1;
            if(!_loc7_)
            {
               addr31:
               §8!L§[1] = §8!L§[2] = §8!L§[3] = §8!L§[4] = 0;
               if(_loc6_)
               {
                  §8!L§[5] = -2 / param2;
                  if(!(_loc7_ && param2))
                  {
                     var _loc5_:*;
                     §8!L§[7] = _loc5_ = §8!L§[8] = §8!L§[9] = 0;
                     §8!L§[6] = _loc5_;
                     if(_loc6_)
                     {
                        §8!L§[10] = -2 / (param4 - param3);
                        loop4:
                        while(true)
                        {
                           §8!L§[11] = 0;
                           loop5:
                           while(true)
                           {
                              §8!L§[12] = -1;
                              addr186:
                              loop2:
                              while(true)
                              {
                                 §8!L§[13] = 1;
                                 addr166:
                                 while(true)
                                 {
                                    if(!(_loc7_ && this))
                                    {
                                       if(_loc6_ || param3)
                                       {
                                          break;
                                       }
                                       continue loop4;
                                    }
                                    continue loop5;
                                 }
                                 addr160:
                                 addr126:
                                 §8!L§[14] = -(param4 + param3) / (param4 - param3);
                                 §8!L§[15] = 1;
                                 addr147:
                                 while(true)
                                 {
                                    if(_loc7_ && param3)
                                    {
                                       continue;
                                    }
                                    if(!(_loc7_ && param2))
                                    {
                                       addr140:
                                       if(_loc6_ || param1)
                                       {
                                          break;
                                       }
                                       continue loop2;
                                    }
                                    §§goto(addr166);
                                 }
                                 while(true)
                                 {
                                    this.§=7§.copyRawDataFrom(§8!L§);
                                    if(_loc6_)
                                    {
                                       break;
                                    }
                                    §§goto(addr126);
                                    §§goto(addr140);
                                 }
                              }
                           }
                        }
                     }
                  }
                  return;
               }
               §§goto(addr186);
            }
            §§goto(addr147);
         }
         §§goto(addr31);
      }
      
      public function §0!&§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§throw§.identity();
         }
      }
      
      public function §'?§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§throw§.prependTranslation(param1,param2,param3);
         }
      }
      
      public function §@!1§(param1:Number, param2:Vector3D = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            this.§throw§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
         }
      }
      
      public function §>]§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§throw§.prependScale(param1,param2,param3);
         }
      }
      
      public function §`;§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §7!7§(this.§throw§,param1);
         }
      }
      
      public function § use§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            if(this.§?y§.length < this.§`I§ + 1)
            {
               if(_loc3_)
               {
                  this.§?y§.push(new Matrix3D());
                  if(_loc4_ && _loc2_)
                  {
                  }
               }
               §§goto(addr83);
            }
            var _loc1_:*;
            var _loc2_:* = (_loc1_ = this).§`I§ + 1;
            _loc1_.§`I§ = _loc2_;
            this.§?y§[(_loc1_ = this).§`I§].copyFrom(this.§throw§);
         }
         addr83:
      }
      
      public function §<!Z§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            this.§throw§.copyFrom(this.§?y§[--this.§`I§]);
         }
      }
      
      public function §4!<§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§`I§ = 0;
            do
            {
               this.§0!&§();
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      public function get §5!8§() : Matrix3D
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§%Q§.identity();
         }
         do
         {
            this.§%Q§.append(this.§throw§);
            do
            {
               this.§%Q§.append(this.§=7§);
            }
            while(!(_loc2_ || _loc1_));
            
         }
         while(_loc1_ && _loc1_);
         
         return this.§%Q§;
      }
      
      public function batchQuad(param1:§?!N§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(this.§0%§);
            loop0:
            while(true)
            {
               if(!§§pop().§56§(param1,param3,param4))
               {
                  continue;
               }
               if(!_loc6_)
               {
                  while(true)
                  {
                     this.§3N§();
                  }
                  addr72:
               }
               while(true)
               {
                  continue loop0;
               }
            }
         }
         §§goto(addr72);
      }
      
      public function §3N§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§0%§);
            if(_loc4_)
            {
               if(§§pop().§^s§ > 0)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(this.§0%§);
                     if(!_loc3_)
                     {
                        §§pop().render(this.§9!>§,this.§=7§);
                        if(!_loc4_)
                        {
                        }
                        §§goto(addr59);
                     }
                     §§goto(addr56);
                  }
                  addr56:
                  §§pop().reset();
                  if(_loc4_)
                  {
                     §§goto(addr59);
                  }
                  addr59:
                  var _loc1_:*;
                  §§push((_loc1_ = this).§"-§);
                  if(!(_loc3_ && this))
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc2_:* = §§pop();
                  if(_loc4_)
                  {
                     _loc1_.§"-§ = _loc2_;
                  }
                  if(!_loc3_)
                  {
                     if(this.§^p§.length <= this.§"-§)
                     {
                        if(_loc4_ || _loc3_)
                        {
                        }
                     }
                     §§goto(addr109);
                  }
                  this.§^p§.push(new §!!Q§());
                  addr109:
                  return;
                  §§push(this.§0%§);
               }
               §§goto(addr109);
            }
            §§goto(addr56);
         }
         §§goto(addr59);
      }
      
      public function §9!'§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§4!<§();
         }
         do
         {
            this.§"-§ = 0;
         }
         while(_loc1_);
         
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
      
      private function get §0%§() : §!!Q§
      {
         return this.§^p§[this.§"-§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            if(param3 != §!4§[param2])
            {
               if(_loc5_ || param2)
               {
                  §!4§[param2] = param3;
                  do
                  {
                     param1.setTextureAt(param2,param3);
                  }
                  while(!(_loc5_ || param3));
                  
                  addr78:
               }
               §§goto(addr78);
            }
            return;
         }
         §§goto(addr78);
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            if(param2 != §]f§)
            {
               do
               {
                  §]f§ = param2;
                  do
                  {
                     param1.setProgram(param2);
                  }
                  while(_loc4_ && param2);
                  
               }
               while(_loc4_);
               
               addr61:
            }
            return;
         }
         §§goto(addr61);
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
