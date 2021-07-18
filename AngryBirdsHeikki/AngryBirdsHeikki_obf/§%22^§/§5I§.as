package §"^§
{
   import §2Y§.§7?§;
   import §=9§.§>!<§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §5I§ extends §'X§
   {
       
      
      private var §=Z§:BitmapData;
      
      private var §+g§:int = 0;
      
      private var §3!3§:int = 0;
      
      private var §[!4§:Number = 1.0;
      
      private var §=G§:Number = 1.0;
      
      private var §]!$§:BitmapData;
      
      private var §#!+§:Vector.<Number>;
      
      private var §-q§:Matrix;
      
      private var §3!4§:ColorTransform;
      
      public function §5I§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§#!+§ = new Vector.<Number>(16);
            loop0:
            while(true)
            {
               this.§-q§ = new Matrix();
               while(true)
               {
                  this.§3!4§ = new ColorTransform();
                  while(_loc2_ || this)
                  {
                     super();
                     while(!(_loc1_ && this))
                     {
                        if(!_loc1_)
                        {
                           this.§]!$§ = new BitmapData(1,1,false);
                           if(_loc2_ || _loc2_)
                           {
                              return;
                              addr39:
                           }
                           continue;
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr39);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§=Z§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.dispose();
            while(this.§]!$§)
            {
               if(_loc2_)
               {
                  this.§]!$§.dispose();
               }
               do
               {
                  this.§]!$§ = null;
               }
               while(!(_loc2_ || _loc1_));
               
               if(!_loc1_)
               {
                  addr52:
                  break;
               }
            }
            return;
         }
         §§goto(addr52);
      }
      
      override public function batchQuad(param1:§7?§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(!_loc8_)
         {
            if(this.§=Z§)
            {
               loop0:
               while(true)
               {
                  §1U§.copyRawDataTo(this.§#!+§,0);
                  addr126:
                  while(true)
                  {
                     this.§-q§.setTo(this.§#!+§[0],this.§#!+§[1],this.§#!+§[4],this.§#!+§[5],this.§#!+§[12],this.§#!+§[13]);
                     continue loop0;
                  }
               }
            }
            §§goto(addr339);
         }
         §§goto(addr72);
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(this.§=Z§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§=Z§.width == this.§+g§);
                  loop1:
                  while(true)
                  {
                     §§push(!§§pop());
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
                                    §§push(this.§=Z§.height == this.§3!3§);
                                    if(_loc4_ || this)
                                    {
                                       if(_loc5_)
                                       {
                                          break;
                                       }
                                       §§push(!§§pop());
                                       while(true)
                                       {
                                       }
                                    }
                                    loop6:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          this.§=Z§.fillRect(this.§=Z§.rect,4278190080 | param2);
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(this.§=Z§ == null);
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      loop14:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop15:
                                                            while(!(_loc5_ && param1))
                                                            {
                                                               §§pop();
                                                               while(true)
                                                               {
                                                                  §§push(this.§+g§);
                                                                  while(true)
                                                                  {
                                                                     §§push(0);
                                                                     addr136:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() > §§pop());
                                                                     }
                                                                     addr166:
                                                                     §§push(this.§3!3§);
                                                                     if(!_loc4_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§push(0);
                                                                     if(!(_loc5_ && param1))
                                                                     {
                                                                        §§push(§§pop() > §§pop());
                                                                        if(_loc4_)
                                                                        {
                                                                           addr75:
                                                                           if(_loc4_ || param3)
                                                                           {
                                                                              if(_loc5_ && param3)
                                                                              {
                                                                                 continue loop15;
                                                                              }
                                                                              if(_loc5_)
                                                                              {
                                                                                 continue loop6;
                                                                              }
                                                                              loop23:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       if(_loc4_ || param2)
                                                                                       {
                                                                                          if(_loc4_ || this)
                                                                                          {
                                                                                             this.§=Z§ = new BitmapData(this.§+g§,this.§3!3§,true,4278190080 | param2);
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr23);
                                                                                             }
                                                                                             addr131:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                this.§=Z§.dispose();
                                                                                                break loop23;
                                                                                             }
                                                                                             addr222:
                                                                                          }
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr131);
                                                                                 }
                                                                                 addr23:
                                                                                 while(this.§=Z§)
                                                                                 {
                                                                                    if(_loc5_ && param3)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    addr58:
                                                                                    addr58:
                                                                                    continue loop24;
                                                                                 }
                                                                                 return;
                                                                              }
                                                                              while(!(_loc5_ && this))
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 this.§=Z§ = null;
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop12;
                                                                                 }
                                                                              }
                                                                              continue loop5;
                                                                              addr91:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc5_ && param1)
                                                                              {
                                                                                 continue loop14;
                                                                              }
                                                                              if(!_loc4_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 continue loop13;
                                                                              }
                                                                              §§goto(addr91);
                                                                              §§goto(addr75);
                                                                           }
                                                                           continue loop3;
                                                                           addr138:
                                                                        }
                                                                        continue loop13;
                                                                     }
                                                                     §§goto(addr136);
                                                                  }
                                                               }
                                                            }
                                                            continue loop4;
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr138);
                                                         }
                                                      }
                                                   }
                                                }
                                                addr167:
                                             }
                                             §§goto(addr202);
                                             if(_loc5_ && this)
                                             {
                                                continue;
                                             }
                                             this.§=Z§.lock();
                                             §§goto(addr58);
                                          }
                                       }
                                       §§goto(addr222);
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                           §§goto(addr220);
                        }
                     }
                  }
               }
            }
            §§goto(addr167);
         }
         §§goto(addr58);
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(this.§=Z§)
            {
               if(!_loc2_)
               {
                  this.§=Z§.unlock();
               }
            }
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§+g§ = param1;
         }
         loop0:
         while(true)
         {
            this.§3!3§ = param2;
            while(true)
            {
               this.§[!4§ = param3;
               while(!_loc5_)
               {
                  continue loop0;
                  this.§=G§ = param4;
                  if(_loc6_)
                  {
                     return;
                  }
               }
            }
         }
      }
   }
}
