package §`C§
{
   import §;! §.§[!'§;
   import §]!B§.Texture;
   import §]@§.§9!<§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §!T§ extends §'!N§
   {
       
      
      private var §1C§:BitmapData;
      
      private var §+!X§:int = 0;
      
      private var §?w§:int = 0;
      
      private var §7!P§:Number = 1.0;
      
      private var §!4§:Number = 1.0;
      
      private var §'!0§:BitmapData;
      
      private var §@k§:Vector.<Number>;
      
      private var §&§:Matrix;
      
      private var §8!4§:ColorTransform;
      
      public function §!T§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§@k§ = new Vector.<Number>(16);
            while(true)
            {
               this.§&§ = new Matrix();
               loop3:
               while(!(_loc2_ && this))
               {
                  this.§'!0§ = new BitmapData(1,1,false);
                  if(!(_loc2_ && _loc2_))
                  {
                     addr38:
                     if(_loc2_ && _loc2_)
                     {
                        loop2:
                        while(true)
                        {
                           if(_loc1_)
                           {
                              super();
                              continue loop3;
                           }
                           addr90:
                           while(true)
                           {
                              this.§8!4§ = new ColorTransform();
                              continue loop2;
                           }
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr90);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§1C§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.dispose();
            loop0:
            while(this.§'!0§)
            {
               if(!_loc1_)
               {
                  this.§'!0§.dispose();
               }
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     this.§'!0§ = null;
                     if(!_loc1_)
                     {
                        break loop0;
                     }
                     continue loop1;
                  }
               }
            }
            return;
         }
         §§goto(addr67);
      }
      
      override public function batchQuad(param1:§9!<§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:* = uint(0);
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(_loc8_ || param1)
         {
            if(this.§1C§)
            {
               if(_loc8_)
               {
                  addr110:
                  §7!V§.copyRawDataTo(this.§@k§,0);
               }
               while(true)
               {
                  this.§&§.setTo(this.§@k§[0],this.§@k§[1],this.§@k§[4],this.§@k§[5],this.§@k§[12],this.§@k§[13]);
                  loop1:
                  while(true)
                  {
                     this.§&§.scale(this.§7!P§,this.§!4§);
                     loop2:
                     while(true)
                     {
                        addr57:
                        while(true)
                        {
                           §§push(param1.color);
                           if(!_loc9_)
                           {
                              §§push(uint(§§pop()));
                           }
                           _loc5_ = §§pop();
                           do
                           {
                              if(!_loc9_)
                              {
                                 §§push(param2);
                                 if(_loc8_)
                                 {
                                    §§push(§§pop() * param1.alpha);
                                    if(_loc9_)
                                    {
                                       continue;
                                    }
                                 }
                                 §§push(Number(§§pop()));
                                 continue;
                              }
                              continue loop2;
                           }
                           while(param2 = §§pop(), _loc9_);
                           
                           continue loop1;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            §§goto(addr333);
         }
         §§goto(addr110);
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            if(this.§1C§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§1C§.width == this.§+!X§);
                  while(true)
                  {
                     §§push(!§§pop());
                     loop2:
                     while(true)
                     {
                        §§push(§§pop());
                        loop3:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§pop();
                                 loop5:
                                 while(true)
                                 {
                                    §§push(this.§1C§.height == this.§?w§);
                                    while(true)
                                    {
                                       §§push(!§§pop());
                                       addr222:
                                       while(!(_loc5_ && param1))
                                       {
                                       }
                                       continue loop4;
                                       addr172:
                                       if(!(_loc5_ && this))
                                       {
                                          §§push(§§pop());
                                          while(!_loc5_)
                                          {
                                             if(!§§pop())
                                             {
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      loop14:
                                                      while(_loc4_ || param1)
                                                      {
                                                         §§pop();
                                                         loop15:
                                                         for(; _loc4_ || param2; if(!(_loc5_ && param3))
                                                         {
                                                            addr24:
                                                         },continue,return)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               §§push(this.§?w§);
                                                               if(!(_loc5_ && param1))
                                                               {
                                                                  §§push(0);
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§push(§§pop() > §§pop());
                                                                     if(!(_loc4_ || param3))
                                                                     {
                                                                        continue loop14;
                                                                     }
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                        loop16:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc4_ || this)
                                                                              {
                                                                                 this.§1C§ = new BitmapData(this.§+!X§,this.§?w§,true,4278190080 | param2);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 addr34:
                                                                                 if(_loc4_ || param3)
                                                                                 {
                                                                                    if(!(_loc4_ || param3))
                                                                                    {
                                                                                       break loop16;
                                                                                    }
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       this.§1C§.lock();
                                                                                       continue loop15;
                                                                                    }
                                                                                    continue loop5;
                                                                                 }
                                                                              }
                                                                              addr107:
                                                                           }
                                                                           while(this.§1C§)
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 continue loop15;
                                                                              }
                                                                              §§goto(addr34);
                                                                              §§goto(addr107);
                                                                           }
                                                                           §§goto(addr24);
                                                                        }
                                                                        loop24:
                                                                        while(true)
                                                                        {
                                                                           if(_loc4_ || param3)
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§1C§ == null);
                                                                                 if(_loc4_ || this)
                                                                                 {
                                                                                    §§goto(addr172);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr183:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       break loop15;
                                                                                    }
                                                                                    addr183:
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr234:
                                                                           while(true)
                                                                           {
                                                                              this.§1C§ = null;
                                                                              continue loop24;
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           this.§1C§.dispose();
                                                                           §§goto(addr234);
                                                                        }
                                                                     }
                                                                     §§goto(addr183);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() > §§pop());
                                                                     if(!(_loc5_ && this))
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                     continue loop14;
                                                                  }
                                                                  addr112:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr112);
                                                               }
                                                               addr111:
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                               }
                                                               addr199:
                                                            }
                                                            §§goto(addr160);
                                                         }
                                                         while(true)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            §§goto(addr111);
                                                            §§push(this.§+!X§);
                                                         }
                                                      }
                                                      §§goto(addr222);
                                                   }
                                                   §§goto(addr86);
                                                }
                                                continue;
                                                addr137:
                                             }
                                             §§goto(addr183);
                                          }
                                          continue loop3;
                                       }
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 this.§1C§.fillRect(this.§1C§.rect,4278190080 | param2);
                                 §§goto(addr199);
                              }
                              §§goto(addr231);
                           }
                        }
                     }
                     if(!(_loc4_ || param3))
                     {
                        continue;
                     }
                     §§goto(addr137);
                  }
               }
            }
            §§goto(addr160);
         }
         §§goto(addr234);
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(this.§1C§)
            {
               if(_loc2_ || param1)
               {
                  addr53:
                  this.§1C§.unlock();
               }
            }
            return;
         }
         §§goto(addr53);
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§+!X§ = param1;
            while(true)
            {
               this.§?w§ = param2;
               loop1:
               while(!(_loc6_ && param1))
               {
                  while(true)
                  {
                     this.§7!P§ = param3;
                     do
                     {
                        this.§!4§ = param4;
                     }
                     while(_loc6_);
                     
                     if(_loc5_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr68);
      }
   }
}
