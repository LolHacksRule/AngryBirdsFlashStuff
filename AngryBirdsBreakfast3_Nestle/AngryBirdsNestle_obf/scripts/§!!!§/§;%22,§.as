package §!!!§
{
   import §3!J§.§8!l§;
   import §=!4§.Texture;
   import §^!^§.§+%§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §;",§ extends §<@§
   {
       
      
      private var §-!x§:BitmapData;
      
      private var §0d§:int = 0;
      
      private var §,!p§:int = 0;
      
      private var §0!$§:Number = 1.0;
      
      private var §>4§:Number = 1.0;
      
      private var §[!D§:BitmapData;
      
      private var §?D§:Vector.<Number>;
      
      private var §?S§:Matrix;
      
      private var §=8§:ColorTransform;
      
      public function §;",§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§?D§ = new Vector.<Number>(16);
            while(true)
            {
               this.§?S§ = new Matrix();
               loop1:
               for(; !(_loc2_ && _loc2_); if(_loc2_ && this)
               {
                  continue;
               },§§goto(addr71))
               {
                  this.§=8§ = new ColorTransform();
                  while(true)
                  {
                     super();
                     loop3:
                     while(_loc1_ || _loc1_)
                     {
                        continue loop1;
                        while(true)
                        {
                           this.§[!D§ = new BitmapData(1,1,false);
                           if(!(_loc2_ && this))
                           {
                              break;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§-!x§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.dispose();
            while(this.§[!D§)
            {
               if(_loc2_)
               {
                  do
                  {
                     this.§[!D§ = null;
                  }
                  while(_loc2_);
                  
               }
               else
               {
                  addr71:
               }
               if(_loc2_ && _loc1_)
               {
                  continue;
               }
            }
            return;
         }
         this.§[!D§.dispose();
         §§goto(addr71);
      }
      
      override public function batchQuad(param1:§8!l§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(!_loc9_)
         {
            if(this.§-!x§)
            {
               loop0:
               while(true)
               {
                  § !"§.copyRawDataTo(this.§?D§,0);
                  addr130:
                  while(true)
                  {
                     this.§?S§.setTo(this.§?D§[0],this.§?D§[1],this.§?D§[4],this.§?D§[5],this.§?D§[12],this.§?D§[13]);
                     continue loop0;
                  }
               }
               addr125:
            }
            §§goto(addr353);
         }
         §§goto(addr125);
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            if(this.§-!x§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§-!x§.width == this.§0d§);
                  if(_loc5_)
                  {
                     §§push(!§§pop());
                  }
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
                              loop5:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    this.§-!x§.fillRect(this.§-!x§.rect,4278190080 | param2);
                                    loop6:
                                    while(true)
                                    {
                                       if(_loc5_ || this)
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             §§push(this.§-!x§ == null);
                                             if(!(_loc4_ && this))
                                             {
                                                §§push(§§pop());
                                                loop11:
                                                for(; !(_loc4_ && param2); loop13:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc5_ || param1))
                                                   {
                                                      break;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      loop14:
                                                      while(true)
                                                      {
                                                         if(!(_loc4_ && this))
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               §§pop();
                                                               while(true)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     break loop14;
                                                                  }
                                                                  if(!_loc5_)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  §§push(this.§,!p§);
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§push(0);
                                                                     if(!_loc4_)
                                                                     {
                                                                        continue loop14;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr102);
                                                                  }
                                                                  §§goto(addr103);
                                                               }
                                                               continue loop13;
                                                               addr134:
                                                            }
                                                            continue loop5;
                                                         }
                                                         §§goto(addr160);
                                                      }
                                                      §§goto(addr161);
                                                   }
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc5_ || param1)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            this.§-!x§ = new BitmapData(this.§0d§,this.§,!p§,true,4278190080 | param2);
                                                         }
                                                         while(true)
                                                         {
                                                            addr40:
                                                            if(!(_loc5_ || param1))
                                                            {
                                                               continue;
                                                            }
                                                            if(!_loc4_)
                                                            {
                                                               this.§-!x§.lock();
                                                               addr52:
                                                               if(!_loc4_)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§goto(addr25);
                                                                  }
                                                                  loop4:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§-!x§.height == this.§,!p§);
                                                                     if(_loc4_)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     if(!_loc4_)
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     addr238:
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        continue loop4;
                                                                     }
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               §§goto(addr134);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  this.§-!x§.dispose();
                                                                  addr213:
                                                                  while(true)
                                                                  {
                                                                     this.§-!x§ = null;
                                                                     continue loop10;
                                                                  }
                                                               }
                                                               addr210:
                                                            }
                                                         }
                                                         addr98:
                                                      }
                                                      while(true)
                                                      {
                                                         if(this.§-!x§)
                                                         {
                                                            if(!(_loc4_ && param2))
                                                            {
                                                               §§goto(addr40);
                                                            }
                                                            §§goto(addr52);
                                                         }
                                                         break;
                                                         §§goto(addr98);
                                                      }
                                                      addr25:
                                                      return;
                                                   }
                                                })
                                                {
                                                   if(§§pop())
                                                   {
                                                      addr160:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         addr161:
                                                         while(true)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            §§push(this.§0d§);
                                                            while(true)
                                                            {
                                                               §§push(0);
                                                               addr103:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() > §§pop());
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr160:
                                                   }
                                                   while(true)
                                                   {
                                                      continue loop11;
                                                      §§goto(addr103);
                                                   }
                                                }
                                                continue loop2;
                                             }
                                             §§goto(addr160);
                                             addr188:
                                             while(true)
                                             {
                                                continue loop10;
                                             }
                                          }
                                          addr139:
                                       }
                                       §§goto(addr213);
                                    }
                                 }
                                 §§goto(addr210);
                              }
                           }
                           addr208:
                        }
                        §§goto(addr238);
                     }
                     if(_loc4_ && this)
                     {
                        continue;
                     }
                     §§goto(addr208);
                     §§push(!§§pop());
                  }
               }
            }
            §§goto(addr139);
         }
         §§goto(addr188);
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(this.§-!x§)
            {
               if(!_loc3_)
               {
                  addr48:
                  this.§-!x§.unlock();
               }
            }
            return;
         }
         §§goto(addr48);
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§0d§ = param1;
         }
         while(true)
         {
            this.§,!p§ = param2;
            while(!(_loc6_ && this))
            {
               this.§0!$§ = param3;
               do
               {
                  this.§>4§ = param4;
               }
               while(!_loc5_);
               
               if(!(_loc6_ && param3))
               {
                  return;
               }
            }
         }
      }
   }
}
