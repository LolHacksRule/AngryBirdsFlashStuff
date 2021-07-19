package §6;§
{
   import §4v§.§@A§;
   import §]!a§.Texture;
   import §^a§.§ !'§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §3&§ extends §2^§
   {
       
      
      private var §#Z§:BitmapData;
      
      private var §+w§:int = 0;
      
      private var §&!U§:int = 0;
      
      private var §`%§:Number = 1.0;
      
      private var §var§:Number = 1.0;
      
      private var §>!=§:BitmapData;
      
      private var §7e§:Vector.<Number>;
      
      private var §0[§:Matrix;
      
      private var §"f§:ColorTransform;
      
      public function §3&§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§7e§ = new Vector.<Number>(16);
            while(true)
            {
               this.§0[§ = new Matrix();
               loop1:
               for(; _loc2_; if(_loc1_ && this)
               {
                  continue;
               },§§goto(addr67))
               {
                  this.§"f§ = new ColorTransform();
                  loop2:
                  while(true)
                  {
                     super();
                     while(true)
                     {
                        if(_loc2_ || _loc1_)
                        {
                           continue loop1;
                        }
                        continue loop2;
                        addr67:
                        this.§>!=§ = new BitmapData(1,1,false);
                        if(!_loc1_)
                        {
                           return;
                           addr39:
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr39);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§#Z§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.dispose();
            loop0:
            while(this.§>!=§)
            {
               loop1:
               do
               {
                  this.§>!=§.dispose();
                  while(_loc2_)
                  {
                     this.§>!=§ = null;
                     if(!_loc1_)
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
               while(_loc1_);
               
               break;
            }
            return;
         }
         §§goto(addr42);
      }
      
      override public function batchQuad(param1:§ !'§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = uint(0);
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(!_loc8_)
         {
            if(this.§#Z§)
            {
               while(true)
               {
                  §<!§.copyRawDataTo(this.§7e§,0);
                  while(true)
                  {
                     this.§0[§.setTo(this.§7e§[0],this.§7e§[1],this.§7e§[4],this.§7e§[5],this.§7e§[12],this.§7e§[13]);
                     while(_loc9_ || param3)
                     {
                        this.§0[§.scale(this.§`%§,this.§var§);
                        loop3:
                        while(true)
                        {
                           addr61:
                           while(true)
                           {
                              §§push(param1.color);
                              if(_loc9_)
                              {
                                 §§push(uint(§§pop()));
                              }
                              _loc5_ = §§pop();
                              continue loop3;
                           }
                        }
                        if(_loc8_ && param1)
                        {
                           continue;
                        }
                        if(false)
                        {
                           §§goto(addr61);
                        }
                        else
                        {
                           §§goto(addr137);
                        }
                     }
                  }
                  if(!(_loc9_ || param3))
                  {
                     continue;
                  }
                  §§goto(addr82);
               }
            }
            §§goto(addr354);
         }
         §§goto(addr82);
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(this.§#Z§)
            {
               while(true)
               {
                  §§push(this.§#Z§.width == this.§+w§);
                  loop1:
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
                              while(true)
                              {
                                 §§pop();
                                 addr248:
                                 while(true)
                                 {
                                    §§push(this.§#Z§.height == this.§&!U§);
                                    addr216:
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          continue loop1;
                                       }
                                       §§push(!§§pop());
                                    }
                                 }
                              }
                              addr247:
                           }
                           while(true)
                           {
                              loop6:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    this.§#Z§.fillRect(this.§#Z§.rect,4278190080 | param2);
                                    loop7:
                                    while(true)
                                    {
                                       if(_loc4_ || param3)
                                       {
                                          loop11:
                                          while(true)
                                          {
                                             §§push(this.§#Z§ == null);
                                             loop12:
                                             while(_loc4_ || param1)
                                             {
                                                §§push(§§pop());
                                                loop13:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop14:
                                                      while(_loc4_)
                                                      {
                                                         §§pop();
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §§push(this.§+w§);
                                                            while(true)
                                                            {
                                                               §§push(0);
                                                               addr133:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() > §§pop());
                                                                  addr134:
                                                                  do
                                                                  {
                                                                     if(_loc5_ && param1)
                                                                     {
                                                                        continue loop14;
                                                                     }
                                                                  }
                                                                  while(_loc4_);
                                                                  
                                                                  continue loop12;
                                                               }
                                                               addr165:
                                                               §§push(this.§&!U§);
                                                               if(!(_loc4_ || this))
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(0);
                                                               if(_loc4_)
                                                               {
                                                                  addr80:
                                                                  §§push(§§pop() > §§pop());
                                                                  if(!(_loc5_ && param2))
                                                                  {
                                                                     if(!(_loc5_ && param3))
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    this.§#Z§ = new BitmapData(this.§+w§,this.§&!U§,true,4278190080 | param2);
                                                                                    addr111:
                                                                                    addr224:
                                                                                    while(_loc4_ || param3)
                                                                                    {
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       this.§#Z§ = null;
                                                                                       addr208:
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop11;
                                                                                          addr59:
                                                                                          if(_loc4_ || param1)
                                                                                          {
                                                                                             §§goto(addr19);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr111);
                                                                                    }
                                                                                 }
                                                                                 addr99:
                                                                              }
                                                                              while(this.§#Z§)
                                                                              {
                                                                                 if(!(_loc5_ && param1))
                                                                                 {
                                                                                    if(_loc4_ || this)
                                                                                    {
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             continue loop7;
                                                                                          }
                                                                                          addr158:
                                                                                          while(!(_loc5_ && param1))
                                                                                          {
                                                                                             §§goto(addr165);
                                                                                          }
                                                                                          §§goto(addr248);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr99);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr111);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr57:
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       continue loop15;
                                                                                    }
                                                                                    §§goto(addr59);
                                                                                 }
                                                                              }
                                                                              addr19:
                                                                              return;
                                                                           }
                                                                           addr97:
                                                                        }
                                                                        §§goto(addr216);
                                                                     }
                                                                     §§goto(addr134);
                                                                  }
                                                                  while(!_loc5_)
                                                                  {
                                                                     §§pop();
                                                                     §§goto(addr158);
                                                                     §§goto(addr80);
                                                                  }
                                                                  continue loop2;
                                                                  addr155:
                                                               }
                                                               §§goto(addr133);
                                                            }
                                                         }
                                                      }
                                                      continue loop6;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc5_)
                                                      {
                                                         continue loop13;
                                                      }
                                                      if(_loc5_ && param3)
                                                      {
                                                         break;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         §§goto(addr155);
                                                      }
                                                      §§goto(addr97);
                                                   }
                                                   continue loop3;
                                                }
                                             }
                                             §§goto(addr247);
                                          }
                                          addr166:
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             this.§#Z§.dispose();
                                          }
                                          addr221:
                                       }
                                       §§goto(addr224);
                                    }
                                 }
                                 §§goto(addr221);
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr166);
         }
         §§goto(addr248);
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§#Z§)
            {
               if(_loc2_)
               {
                  addr33:
                  this.§#Z§.unlock();
               }
            }
            return;
         }
         §§goto(addr33);
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§+w§ = param1;
            loop0:
            while(true)
            {
               this.§&!U§ = param2;
               while(true)
               {
                  this.§`%§ = param3;
                  loop2:
                  while(!(_loc6_ && param1))
                  {
                     while(true)
                     {
                        this.§var§ = param4;
                        if(!(_loc6_ && this))
                        {
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr73);
      }
   }
}
