package §6p§
{
   import §3W§.§`!h§;
   import §7R§.Texture;
   import §default§.§^$§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §<!7§ extends §5!W§
   {
       
      
      private var §6!q§:BitmapData;
      
      private var § +§:int = 0;
      
      private var §^5§:int = 0;
      
      private var §="2§:Number = 1.0;
      
      private var §3n§:Number = 1.0;
      
      private var §<$§:BitmapData;
      
      private var §'`§:Vector.<Number>;
      
      private var §&R§:Matrix;
      
      private var § q§:ColorTransform;
      
      public function §<!7§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§'`§ = new Vector.<Number>(16);
         }
         loop0:
         while(true)
         {
            this.§&R§ = new Matrix();
            loop1:
            do
            {
               this.§ q§ = new ColorTransform();
               while(!_loc2_)
               {
                  super();
                  do
                  {
                     this.§<$§ = new BitmapData(1,1,false);
                  }
                  while(_loc2_);
                  
                  if(_loc1_ || this)
                  {
                     continue loop1;
                  }
               }
               continue loop0;
            }
            while(!(_loc1_ || _loc1_));
            
            return;
         }
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§6!q§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.dispose();
            loop0:
            for(; this.§<$§; if(_loc2_ || this)
            {
               break;
            })
            {
               loop1:
               while(true)
               {
                  this.§<$§.dispose();
                  addr72:
                  while(true)
                  {
                     this.§<$§ = null;
                     if(_loc2_)
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
            return;
         }
         §§goto(addr72);
      }
      
      override public function batchQuad(param1:§^$§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = uint(0);
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(_loc9_ || param2)
         {
            if(this.§6!q§)
            {
               while(true)
               {
                  §`!F§.copyRawDataTo(this.§'`§,0);
                  while(true)
                  {
                     this.§&R§.setTo(this.§'`§[0],this.§'`§[1],this.§'`§[4],this.§'`§[5],this.§'`§[12],this.§'`§[13]);
                     loop2:
                     while(true)
                     {
                        this.§&R§.scale(this.§="2§,this.§3n§);
                        while(true)
                        {
                           addr77:
                           while(true)
                           {
                              §§push(param1.color);
                              if(!(_loc8_ && param3))
                              {
                                 §§push(uint(§§pop()));
                              }
                              _loc5_ = §§pop();
                              do
                              {
                                 §§push(param2);
                                 if(!_loc8_)
                                 {
                                    §§push(§§pop() * param1.alpha);
                                    if(!(_loc8_ && param1))
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 param2 = §§pop();
                              }
                              while(_loc8_ && param1);
                              
                              if(!_loc9_)
                              {
                                 break;
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr374);
         }
         §§goto(addr75);
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(this.§6!q§)
            {
               while(true)
               {
                  §§push(this.§6!q§.width == this.§ +§);
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
                                 while(true)
                                 {
                                    §§push(this.§6!q§.height == this.§^5§);
                                    while(!(_loc4_ && param1))
                                    {
                                       §§push(!§§pop());
                                       while(!_loc4_)
                                       {
                                          addr89:
                                          if(!(_loc4_ && this))
                                          {
                                             loop15:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(!(_loc4_ && this))
                                                {
                                                   if(_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      loop16:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         loop17:
                                                         while(true)
                                                         {
                                                            §§push(this.§^5§);
                                                            if(!_loc4_)
                                                            {
                                                               §§push(0);
                                                               if(!(_loc4_ && this))
                                                               {
                                                                  §§push(§§pop() > §§pop());
                                                                  if(!_loc5_)
                                                                  {
                                                                     continue loop16;
                                                                  }
                                                                  if(_loc5_ || this)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 continue loop17;
                                                                              }
                                                                              if(_loc5_)
                                                                              {
                                                                                 this.§6!q§ = new BitmapData(this.§ +§,this.§^5§,true,4278190080 | param2);
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr24);
                                                                                 }
                                                                              }
                                                                              §§goto(addr139);
                                                                           }
                                                                        }
                                                                        addr24:
                                                                        while(this.§6!q§)
                                                                        {
                                                                           continue loop23;
                                                                        }
                                                                        addr20:
                                                                        return;
                                                                     }
                                                                     addr63:
                                                                  }
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§goto(addr89);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr136);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        continue loop18;
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr86);
                                                            }
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr86);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr63);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                      }
                                                      continue loop15;
                                                   }
                                                   addr135:
                                                }
                                                §§goto(addr136);
                                             }
                                             continue loop3;
                                          }
                                       }
                                       continue loop4;
                                       if(_loc4_ && param1)
                                       {
                                          continue;
                                       }
                                       §§goto(addr135);
                                       §§push(§§pop());
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 this.§6!q§.fillRect(this.§6!q§.rect,4278190080 | param2);
                                 §§goto(addr163);
                              }
                              §§goto(addr197);
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr120);
         }
         §§goto(addr150);
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§6!q§)
            {
               if(_loc3_ || _loc3_)
               {
                  addr49:
                  this.§6!q§.unlock();
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param2))
         {
            this.§ +§ = param1;
            loop0:
            do
            {
               this.§^5§ = param2;
               while(true)
               {
                  this.§="2§ = param3;
                  while(_loc6_)
                  {
                     this.§3n§ = param4;
                     if(!(_loc5_ && param1))
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(_loc5_);
            
         }
      }
   }
}
