package §;n§
{
   import §!!!§.§-!k§;
   import §!!!§.§6!l§;
   import §!!!§.§<@§;
   import §#!M§.§,!Y§;
   import §3!J§.DisplayObject;
   import §90§.§"!z§;
   import §=!4§.Texture;
   import §^!^§.§#!_§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DBlendFactor;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §""6§ extends DisplayObject implements §,!Y§
   {
       
      
      private var §>"5§:Texture;
      
      private var §53§:Vector.<§#H§>;
      
      private var §["0§:Number;
      
      private var §3!2§:Vector.<Number>;
      
      private var §3!b§:Vector.<Number>;
      
      private var §2!^§:§#!_§;
      
      private var §3%§:VertexBuffer3D;
      
      private var §17§:VertexBuffer3D;
      
      private var §>7§:VertexBuffer3D;
      
      private var §@E§:Vector.<uint>;
      
      private var §@X§:IndexBuffer3D;
      
      private var §9Q§:int;
      
      private var §;k§:int;
      
      private var §'"4§:Number;
      
      protected var §>!u§:Number;
      
      private var §"!!§:Number = 0.0;
      
      private var § in§:Number;
      
      protected var §1K§:Number;
      
      protected var §&!U§:Number;
      
      protected var §40§:Boolean;
      
      protected var §+!R§:String;
      
      protected var §,!D§:String;
      
      protected var §<!Z§:String;
      
      private var §]V§:int = -1;
      
      private var §?!5§:Boolean = false;
      
      private var §%b§:Number = 0.0;
      
      public function §""6§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            super();
            if(_loc8_)
            {
               if(param1 != null)
               {
                  this.§>"5§ = param1;
                  loop0:
                  while(true)
                  {
                     this.§40§ = param1.premultipliedAlpha;
                     if(_loc7_)
                     {
                        break;
                     }
                     this.§53§ = new Vector.<§#H§>(0,false);
                     if(!(_loc7_ && param3))
                     {
                        this.§3!2§ = new Vector.<Number>();
                        if(_loc8_ || param1)
                        {
                           this.§3!b§ = new Vector.<Number>();
                           while(true)
                           {
                              this.§2!^§ = new §#!_§(0,this.§40§);
                              continue loop0;
                           }
                           addr103:
                        }
                        else
                        {
                           addr202:
                           this.§;]§(param3);
                           if(_loc8_)
                           {
                              addr207:
                              if(_loc7_ && param2)
                              {
                                 addr299:
                                 while(true)
                                 {
                                    §§push(this);
                                    if(!(_loc7_ && this))
                                    {
                                       §§push(param4);
                                       if(_loc8_ || param1)
                                       {
                                          §§push(§§pop());
                                          if(!_loc7_)
                                          {
                                             addr235:
                                             if(!§§pop())
                                             {
                                                if(!_loc7_)
                                                {
                                                   §§pop();
                                                   if(_loc8_)
                                                   {
                                                      if(this.§40§)
                                                      {
                                                         addr245:
                                                         §§push(Context3DBlendFactor.ONE);
                                                         if(_loc7_)
                                                         {
                                                         }
                                                         addr254:
                                                         §§pop().§+!R§ = §§pop();
                                                         while(param3 > 0)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                            }
                                                            §§goto(addr202);
                                                         }
                                                         return;
                                                         addr255:
                                                      }
                                                      §§goto(addr254);
                                                      §§push(Context3DBlendFactor.SOURCE_ALPHA);
                                                      §§goto(addr254);
                                                   }
                                                   §§goto(addr245);
                                                }
                                             }
                                          }
                                          §§goto(addr245);
                                       }
                                       §§goto(addr235);
                                    }
                                    §§goto(addr245);
                                    §§goto(addr207);
                                 }
                                 addr299:
                              }
                           }
                           §§goto(addr255);
                        }
                     }
                     §§goto(addr245);
                  }
                  §§push(this);
                  if(!_loc7_)
                  {
                     §§push(param5);
                     if(_loc8_ || this)
                     {
                        §§push(§§pop());
                        if(!(_loc7_ && param2))
                        {
                           if(!§§pop())
                           {
                              if(_loc7_ && this)
                              {
                              }
                              addr298:
                              §§pop().§,!D§ = §§pop();
                              §§goto(addr299);
                           }
                           §§goto(addr298);
                        }
                        §§pop();
                        addr295:
                        §§push(Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA);
                     }
                     §§goto(addr298);
                  }
                  §§goto(addr295);
               }
               §§goto(addr163);
            }
            §§goto(addr245);
         }
         §§goto(addr163);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§3%§)
            {
               while(true)
               {
                  this.§3%§.dispose();
                  addr147:
                  while(true)
                  {
                  }
               }
               addr144:
            }
            while(true)
            {
               if(this.§17§)
               {
                  if(_loc1_ || _loc2_)
                  {
                     this.§17§.dispose();
                  }
                  while(true)
                  {
                     addr56:
                     if(!(_loc1_ || _loc2_))
                     {
                        continue;
                     }
                     super.dispose();
                     addr63:
                     if(_loc1_ || this)
                     {
                        if(!_loc1_)
                        {
                           loop7:
                           while(true)
                           {
                              loop8:
                              while(true)
                              {
                                 this.§3!2§ = null;
                                 loop9:
                                 while(_loc1_ || _loc1_)
                                 {
                                    this.§3!b§ = null;
                                    loop10:
                                    while(true)
                                    {
                                       if(!(_loc1_ || this))
                                       {
                                          continue loop9;
                                       }
                                       if(_loc1_ || _loc2_)
                                       {
                                          §§goto(addr56);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             this.§@X§.dispose();
                                             break loop10;
                                          }
                                          addr90:
                                       }
                                       §§goto(addr63);
                                    }
                                    continue loop7;
                                 }
                                 addr115:
                                 loop11:
                                 while(true)
                                 {
                                    addr86:
                                    while(true)
                                    {
                                       if(!this.§@X§)
                                       {
                                          continue loop8;
                                       }
                                       §§goto(addr90);
                                       continue loop11;
                                    }
                                 }
                              }
                           }
                        }
                        if(!_loc2_)
                        {
                           return;
                        }
                        §§goto(addr144);
                     }
                     §§goto(addr42);
                  }
                  addr140:
               }
               while(true)
               {
                  if(this.§>7§)
                  {
                     if(_loc1_ || _loc2_)
                     {
                        if(_loc2_ && this)
                        {
                           break;
                        }
                        this.§>7§.dispose();
                     }
                     §§goto(addr115);
                  }
                  §§goto(addr86);
                  §§goto(addr140);
               }
               §§goto(addr147);
            }
         }
         §§goto(addr115);
      }
      
      protected function createParticle() : §#H§
      {
         return new §#H§();
      }
      
      protected function initParticle(param1:§#H§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            param1.x = this.§1K§;
            loop0:
            while(true)
            {
               param1.y = this.§&!U§;
               while(true)
               {
                  param1.§[Q§ = 0;
                  loop2:
                  for(; _loc2_ || _loc3_; if(!_loc2_)
                  {
                     continue;
                  },§§goto(addr61))
                  {
                     param1.§ "-§ = 1;
                     while(true)
                     {
                        param1.red = Math.random();
                        loop4:
                        while(_loc2_ || this)
                        {
                           if(_loc3_)
                           {
                              continue loop0;
                           }
                           param1.green = Math.random();
                           loop5:
                           while(true)
                           {
                              param1.blue = Math.random();
                              while(true)
                              {
                                 if(_loc2_ || this)
                                 {
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    continue loop2;
                                 }
                                 continue loop5;
                                 addr61:
                                 param1.alpha = 0;
                                 if(_loc2_)
                                 {
                                    return;
                                 }
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr67);
      }
      
      protected function advanceParticle(param1:§#H§, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            §§push(param1);
            §§push(param1.y);
            if(!_loc3_)
            {
               §§push(param2);
               if(!_loc3_)
               {
                  §§push(§§pop() * 250);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().y = §§pop();
            while(true)
            {
               §§push(param1);
               §§push(1);
               §§push(param1.§[Q§);
               if(!(_loc3_ && param1))
               {
                  §§push(§§pop() / param1.§ "-§);
               }
               §§pop().alpha = §§pop() - §§pop();
            }
            addr118:
         }
         loop1:
         while(true)
         {
            param1.scaleX = 1 - param1.alpha;
            loop2:
            do
            {
               if(!_loc4_)
               {
                  continue loop1;
               }
               param1.scaleY = 1 - param1.alpha;
               while(_loc4_)
               {
                  §§push(param1);
                  §§push(param1.§[Q§);
                  if(_loc4_)
                  {
                     §§push(§§pop() + param2);
                  }
                  §§pop().§[Q§ = §§pop();
                  if(!_loc3_)
                  {
                     continue loop2;
                  }
               }
               §§goto(addr118);
            }
            while(_loc3_ && _loc3_);
            
            return;
         }
      }
      
      private function §;]§(param1:int) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:* = 0;
         var _loc7_:int = 0;
         §§push(this.§7!x§);
         if(!_loc9_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§7!x§);
         if(_loc8_)
         {
            §§push(int(§§pop() + param1));
         }
         var _loc3_:* = §§pop();
         var _loc4_:§#!_§;
         (_loc4_ = new §#!_§(4)).setTexCoords(0,0,0);
         if(!_loc9_)
         {
            _loc4_.setTexCoords(1,1,0);
         }
         loop0:
         while(true)
         {
            _loc4_.setTexCoords(2,0,1);
            while(true)
            {
               _loc4_.setTexCoords(3,1,1);
               loop2:
               while(!(_loc9_ && this))
               {
                  if(!_loc8_)
                  {
                     continue loop0;
                  }
                  this.§>"5§.adjustVertexData(_loc4_,0,4);
                  loop3:
                  while(true)
                  {
                     loop4:
                     while(true)
                     {
                        this.§53§.fixed = false;
                        while(_loc8_)
                        {
                           this.§@E§.fixed = false;
                           if(!_loc8_)
                           {
                              continue;
                           }
                           if(_loc9_)
                           {
                              break loop4;
                           }
                           if(false)
                           {
                              continue loop4;
                           }
                           §§push(_loc2_);
                           if(_loc8_)
                           {
                              §§push(int(§§pop()));
                           }
                           var _loc5_:* = §§pop();
                           addr164:
                           §§push(_loc5_);
                           if(_loc8_ || this)
                           {
                              if(_loc8_)
                              {
                                 if(_loc8_)
                                 {
                                    §§push(_loc3_);
                                    if(_loc8_)
                                    {
                                       if(_loc8_ || param1)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             if(!_loc9_)
                                             {
                                                if(_loc8_ || param1)
                                                {
                                                   this.§53§.fixed = true;
                                                   addr201:
                                                   if(_loc8_)
                                                   {
                                                      if(!(_loc9_ && param1))
                                                      {
                                                         this.§@E§.fixed = true;
                                                         addr144:
                                                         if(!(_loc9_ && this))
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               this.§?!5§ = true;
                                                               if(_loc8_ || _loc3_)
                                                               {
                                                                  if(_loc8_ || param1)
                                                                  {
                                                                     if(_loc9_ && this)
                                                                     {
                                                                        addr278:
                                                                        if(!(_loc9_ && param1))
                                                                        {
                                                                           this.§3!b§.push(0);
                                                                           addr261:
                                                                           if(!_loc9_)
                                                                           {
                                                                              if(!(_loc9_ && this))
                                                                              {
                                                                                 _loc7_++;
                                                                                 addr255:
                                                                                 §§push(_loc7_);
                                                                                 if(_loc8_ || this)
                                                                                 {
                                                                                    addr245:
                                                                                    if(§§pop() >= 3)
                                                                                    {
                                                                                       addr246:
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          this.§2!^§.append(_loc4_);
                                                                                          this.§@E§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
                                                                                          _loc5_++;
                                                                                          addr213:
                                                                                          §§goto(addr164);
                                                                                          addr252:
                                                                                          addr234:
                                                                                       }
                                                                                       §§goto(addr255);
                                                                                    }
                                                                                    this.§3!2§.push(0);
                                                                                    §§goto(addr278);
                                                                                 }
                                                                                 addr313:
                                                                                 _loc6_ = §§pop();
                                                                                 this.§53§.push(this.createParticle());
                                                                                 addr314:
                                                                              }
                                                                              addr288:
                                                                              _loc7_ = 0;
                                                                           }
                                                                           §§goto(addr255);
                                                                        }
                                                                        §§goto(addr314);
                                                                     }
                                                                     return;
                                                                  }
                                                                  §§goto(addr201);
                                                               }
                                                               §§goto(addr144);
                                                            }
                                                            §§goto(addr261);
                                                         }
                                                         §§goto(addr252);
                                                      }
                                                      §§goto(addr246);
                                                   }
                                                   §§goto(addr213);
                                                }
                                                §§goto(addr234);
                                             }
                                             §§goto(addr201);
                                          }
                                          addr310:
                                          §§push(_loc5_);
                                          §§push(4);
                                       }
                                       §§goto(addr313);
                                       §§push(int(§§pop() * §§pop()));
                                    }
                                    §§goto(addr245);
                                 }
                                 §§goto(addr310);
                              }
                              §§goto(addr288);
                           }
                           §§goto(addr255);
                        }
                        continue loop3;
                     }
                     continue loop2;
                  }
               }
            }
         }
      }
      
      private function §#!s§(param1:Context3D) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            §§push(this.§?!5§);
            if(_loc4_)
            {
               if(!§§pop())
               {
                  if(_loc4_ || this)
                  {
                     §§goto(addr37);
                  }
               }
               else
               {
                  if(param1 == null)
                  {
                     if(_loc4_)
                     {
                        §§goto(addr45);
                     }
                  }
                  §§push(this.§2!^§.§-!n§);
                  if(_loc4_ || param1)
                  {
                     §§push(int(§§pop() / 4));
                  }
                  var _loc2_:* = §§pop();
                  if(!_loc3_)
                  {
                     if(this.§3%§)
                     {
                        loop0:
                        while(true)
                        {
                           this.§3%§.dispose();
                           addr280:
                           while(true)
                           {
                           }
                           loop4:
                           while(true)
                           {
                              if(!_loc4_)
                              {
                                 continue loop0;
                              }
                              while(true)
                              {
                                 if(this.§>7§)
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       if(!(_loc4_ || _loc3_))
                                       {
                                          break loop4;
                                       }
                                       this.§>7§.dispose();
                                       while(true)
                                       {
                                          addr111:
                                          if(_loc3_ && this)
                                          {
                                             continue;
                                          }
                                          addr118:
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             this.§@X§.uploadFromVector(this.§@E§,0,_loc2_ * 6);
                                             addr125:
                                             if(!(_loc4_ || _loc2_))
                                             {
                                                addr235:
                                                loop16:
                                                while(true)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      addr98:
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr111);
                                                            }
                                                            else
                                                            {
                                                               while(_loc4_ || _loc3_)
                                                               {
                                                                  this.§17§ = param1.createVertexBuffer(_loc2_ * 4,§#!_§.§1+§);
                                                               }
                                                               while(true)
                                                               {
                                                                  addr211:
                                                                  while(true)
                                                                  {
                                                                     this.§3%§ = param1.createVertexBuffer(_loc2_ * 4,§#!_§.each);
                                                                     continue loop6;
                                                                  }
                                                               }
                                                               addr238:
                                                               addr203:
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            this.§17§.uploadFromVector(this.§2!^§.§?c§,0,_loc2_ * 4);
                                                            addr179:
                                                            while(true)
                                                            {
                                                               this.§>7§ = param1.createVertexBuffer(_loc2_ * 4,§#!_§.§+!;§);
                                                            }
                                                         }
                                                      }
                                                      while(!_loc3_)
                                                      {
                                                         this.§>7§.uploadFromVector(this.§2!^§.§%!0§,0,_loc2_ * 4);
                                                         §§goto(addr98);
                                                      }
                                                      §§goto(addr179);
                                                   }
                                                   while(!(_loc3_ && _loc3_))
                                                   {
                                                      this.§@X§ = param1.createIndexBuffer(_loc2_ * 6);
                                                      continue loop16;
                                                   }
                                                   continue loop6;
                                                }
                                                while(true)
                                                {
                                                   this.§@X§.dispose();
                                                   §§goto(addr238);
                                                }
                                                addr235:
                                             }
                                             return true;
                                          }
                                          while(true)
                                          {
                                             this.§17§.dispose();
                                             continue loop4;
                                             §§goto(addr118);
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    if(this.§@X§)
                                    {
                                       §§goto(addr235);
                                    }
                                    §§goto(addr211);
                                    §§goto(addr253);
                                 }
                              }
                           }
                           §§goto(addr280);
                        }
                     }
                     while(true)
                     {
                        if(this.§17§)
                        {
                           §§goto(addr258);
                        }
                        §§goto(addr239);
                        §§goto(addr280);
                     }
                  }
                  §§goto(addr235);
               }
               addr45:
               throw new §"!z§();
            }
            §§goto(addr37);
         }
         addr37:
         return false;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§'"4§ != 0)
            {
               if(_loc3_)
               {
                  this.§ in§ = param1;
               }
            }
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§ in§ = 0;
         }
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Matrix = §else §(param1);
         var _loc4_:Point = _loc3_.transformPoint(new Point(x,y));
         if(!_loc6_)
         {
            if(param2 != null)
            {
               loop0:
               while(true)
               {
                  param2.x = _loc4_.x;
                  loop1:
                  while(true)
                  {
                     param2.y = _loc4_.y;
                     while(!_loc6_)
                     {
                        param2.width = 0;
                        do
                        {
                           param2.height = 0;
                        }
                        while(_loc6_);
                        
                        if(_loc5_)
                        {
                           if(_loc5_)
                           {
                              break loop1;
                           }
                           continue loop1;
                        }
                     }
                  }
                  if(_loc5_)
                  {
                     break;
                  }
                  addr99:
                  while(true)
                  {
                     continue loop0;
                  }
               }
               return param2;
            }
            return new Rectangle(_loc4_.x,_loc4_.y);
         }
         §§goto(addr99);
      }
      
      public function §>!s§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.advanceTime(param1);
         }
         do
         {
            this.§=e§(null);
         }
         while(_loc2_);
         
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§%b§ = param1;
         }
      }
      
      private function §=e§(param1:Matrix3D) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function §=!N§(param1:Matrix3D) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§#H§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§9Q§)
         {
            _loc3_ = this.§53§[_loc2_];
            if(!_loc5_)
            {
               this.§3!2§[_loc2_ * 3] = _loc3_.x;
               loop1:
               while(true)
               {
                  addr55:
                  while(true)
                  {
                     this.§3!2§[_loc2_ * 3 + 1] = _loc3_.y;
                     continue loop1;
                  }
               }
               addr75:
            }
            while(true)
            {
               _loc2_++;
               if(_loc5_)
               {
                  continue;
               }
               if(_loc4_ || this)
               {
                  if(true)
                  {
                     break;
                  }
               }
               else
               {
                  §§goto(addr75);
               }
               §§goto(addr55);
            }
         }
         if(!_loc5_)
         {
            param1.transformVectors(this.§3!2§,this.§3!b§);
         }
      }
      
      override public function render(param1:§<@§, param2:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            this.§=e§(param1.§6?§);
            loop0:
            while(true)
            {
               if(this.§;k§ == 0)
               {
                  if(_loc6_)
                  {
                     break;
                  }
                  addr65:
                  while(true)
                  {
                  }
               }
               addr53:
               while(true)
               {
                  param1.§6!s§();
                  do
                  {
                     §§push(param2);
                     if(!(_loc7_ && _loc3_))
                     {
                        §§push(§§pop() * this.alpha);
                        if(_loc6_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     param2 = §§pop();
                  }
                  while(!_loc6_);
                  
                  if(_loc6_ || _loc3_)
                  {
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr65);
      }
      
      public function get §^+§() : Boolean
      {
         return false;
      }
      
      public function get §7!x§() : int
      {
         return this.§2!^§.§-!n§ / 4;
      }
      
      public function get §=w§() : int
      {
         return this.§9Q§;
      }
      
      public function get §8!k§() : Number
      {
         return this.§'"4§;
      }
      
      public function set §8!k§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§'"4§ = param1;
         }
      }
      
      public function get §0G§() : Number
      {
         return this.§1K§;
      }
      
      public function set §0G§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§1K§ = param1;
         }
      }
      
      public function get §,1§() : Number
      {
         return this.§&!U§;
      }
      
      public function set §,1§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§&!U§ = param1;
         }
      }
      
      public function get texture() : Texture
      {
         return this.§>"5§;
      }
   }
}
