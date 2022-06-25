package §0!I§
{
   import § !'§.§4!+§;
   import §'!9§.DisplayObject;
   import §<!o§.§8!h§;
   import §<&§.§!j§;
   import §<&§.§^b§;
   import §<&§.§`K§;
   import §^!+§.Texture;
   import §`s§.§0p§;
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
   
   public class §@C§ extends DisplayObject implements §8!h§
   {
       
      
      private var §[!5§:Texture;
      
      private var §'9§:Vector.<§7v§>;
      
      private var §=3§:Number;
      
      private var §34§:Vector.<Number>;
      
      private var §[!^§:Vector.<Number>;
      
      private var § Q§:§0p§;
      
      private var §`9§:VertexBuffer3D;
      
      private var §'!T§:VertexBuffer3D;
      
      private var §,!g§:VertexBuffer3D;
      
      private var §0!3§:Vector.<uint>;
      
      private var §=!"§:IndexBuffer3D;
      
      private var §"!H§:int;
      
      private var §1<§:int;
      
      private var §#+§:Number;
      
      protected var §0x§:Number;
      
      private var §%!;§:Number = 0.0;
      
      private var §&!M§:Number;
      
      protected var §%v§:Number;
      
      protected var §@!k§:Number;
      
      protected var §<!h§:Boolean;
      
      protected var §=v§:String;
      
      protected var §>y§:String;
      
      protected var §1!6§:String;
      
      private var §7!F§:int = -1;
      
      private var §%!'§:Boolean = false;
      
      private var §`e§:Number = 0.0;
      
      public function §@C§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || this)
         {
            super();
            loop0:
            for(; param1 != null; while(true)
            {
               if(_loc8_ || this)
               {
                  this.§0!3§ = new Vector.<uint>(0);
                  if(_loc8_ || param1)
                  {
                     §§goto(addr75);
                  }
                  break;
               }
               continue loop0;
               §§goto(addr46);
            },§§goto(addr217))
            {
               loop1:
               while(true)
               {
                  this.§[!5§ = param1;
                  if(!_loc8_)
                  {
                     break;
                  }
                  this.§<!h§ = param1.premultipliedAlpha;
                  if(_loc7_ && param3)
                  {
                     break;
                  }
                  if(!(_loc7_ && param2))
                  {
                     this.§'9§ = new Vector.<§7v§>(0,false);
                     if(_loc8_ || param2)
                     {
                        this.§34§ = new Vector.<Number>();
                        while(true)
                        {
                           this.§[!^§ = new Vector.<Number>();
                           if(_loc8_)
                           {
                              this.§ Q§ = new §0p§(0,this.§<!h§);
                              continue loop0;
                           }
                           addr217:
                           addr214:
                           addr75:
                           this.§@!>§(param3);
                           if(_loc7_ && param1)
                           {
                              continue;
                           }
                           if(!_loc8_)
                           {
                              break loop0;
                           }
                           this.§#+§ = param2;
                           loop7:
                           while(true)
                           {
                              addr35:
                              while(true)
                              {
                                 this.§&!M§ = 0;
                                 continue loop7;
                              }
                           }
                        }
                        addr118:
                     }
                     else
                     {
                        for(; param3 > 0; while(!(_loc8_ || param2))
                        {
                           break loop1;
                           §§pop().§=v§ = §§pop();
                        })
                        {
                           if(!_loc7_)
                           {
                              if(_loc7_)
                              {
                                 continue;
                              }
                           }
                           §§goto(addr214);
                        }
                     }
                     return;
                  }
               }
               while(true)
               {
                  §§push(this);
                  if(!(_loc7_ && param1))
                  {
                     §§push(param4);
                     if(_loc8_ || param3)
                     {
                        §§push(§§pop());
                        if(!_loc7_)
                        {
                           if(!§§pop())
                           {
                              if(_loc8_)
                              {
                                 §§pop();
                                 if(!_loc7_)
                                 {
                                    if(this.§<!h§)
                                    {
                                       addr248:
                                       §§push(Context3DBlendFactor.ONE);
                                       if(_loc8_)
                                       {
                                          addr253:
                                       }
                                    }
                                    else
                                    {
                                       §§push(Context3DBlendFactor.SOURCE_ALPHA);
                                    }
                                 }
                                 §§goto(addr248);
                              }
                              §§goto(addr253);
                           }
                        }
                        §§goto(addr257);
                     }
                     §§goto(addr253);
                  }
                  §§goto(addr248);
               }
            }
            throw new ArgumentError("texture must not be null");
         }
         §§goto(addr118);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.§`9§)
            {
               if(_loc2_)
               {
                  this.§`9§.dispose();
               }
               while(true)
               {
               }
               addr138:
            }
            while(true)
            {
               if(this.§'!T§)
               {
                  loop2:
                  while(_loc2_)
                  {
                     this.§'!T§.dispose();
                     while(true)
                     {
                     }
                     loop9:
                     while(true)
                     {
                        if(!(_loc2_ || _loc2_))
                        {
                           continue loop2;
                        }
                        loop10:
                        while(true)
                        {
                           this.§34§ = null;
                           loop11:
                           while(true)
                           {
                              if(_loc2_ || this)
                              {
                                 addr72:
                                 if(_loc2_ || this)
                                 {
                                    this.§[!^§ = null;
                                    do
                                    {
                                       if(!_loc1_)
                                       {
                                          continue loop9;
                                       }
                                       continue loop11;
                                       super.dispose();
                                    }
                                    while(_loc1_);
                                    
                                    return;
                                    addr34:
                                 }
                                 addr116:
                                 while(true)
                                 {
                                    this.§,!g§.dispose();
                                    addr119:
                                    loop6:
                                    while(true)
                                    {
                                       addr80:
                                       while(true)
                                       {
                                          if(!this.§=!"§)
                                          {
                                             continue loop10;
                                          }
                                          continue loop6;
                                       }
                                    }
                                    §§goto(addr72);
                                 }
                              }
                              while(_loc2_ || _loc2_)
                              {
                                 this.§=!"§.dispose();
                                 continue loop9;
                              }
                              §§goto(addr119);
                           }
                        }
                     }
                     §§goto(addr129);
                  }
                  continue;
               }
               while(true)
               {
                  if(this.§,!g§)
                  {
                     §§goto(addr116);
                  }
                  §§goto(addr80);
                  §§goto(addr129);
               }
            }
         }
         §§goto(addr34);
      }
      
      protected function createParticle() : §7v§
      {
         return new §7v§();
      }
      
      protected function initParticle(param1:§7v§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            param1.x = this.§%v§;
            loop0:
            while(true)
            {
               param1.y = this.§@!k§;
               loop1:
               while(true)
               {
                  param1.§%p§ = 0;
                  while(true)
                  {
                     param1.§with§ = 1;
                     loop3:
                     for(; !(_loc2_ && this); if(!(_loc2_ && _loc3_))
                     {
                        continue loop1;
                     })
                     {
                        param1.red = Math.random();
                        while(true)
                        {
                           param1.green = Math.random();
                           loop5:
                           while(_loc3_ || _loc3_)
                           {
                              param1.blue = Math.random();
                              while(true)
                              {
                                 param1.alpha = 0;
                                 if(_loc3_)
                                 {
                                    if(!(_loc2_ && this))
                                    {
                                       continue loop3;
                                    }
                                    continue loop5;
                                 }
                              }
                              return;
                           }
                        }
                     }
                  }
                  if(_loc2_ && param1)
                  {
                     continue;
                  }
                  if(!_loc3_)
                  {
                     continue loop0;
                  }
                  §§goto(addr68);
               }
            }
         }
         §§goto(addr74);
      }
      
      protected function advanceParticle(param1:§7v§, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §§push(param1);
            §§push(param1.y);
            if(_loc4_ || _loc3_)
            {
               §§push(param2);
               if(!(_loc3_ && _loc3_))
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
               §§push(param1.§%p§);
               if(!_loc3_)
               {
                  §§push(§§pop() / param1.§with§);
               }
               §§pop().alpha = §§pop() - §§pop();
               loop1:
               while(_loc4_ || _loc3_)
               {
                  while(true)
                  {
                     param1.scaleX = 1 - param1.alpha;
                     loop3:
                     do
                     {
                        param1.scaleY = 1 - param1.alpha;
                        while(_loc4_)
                        {
                           §§push(param1);
                           §§push(param1.§%p§);
                           if(!_loc3_)
                           {
                              §§push(§§pop() + param2);
                           }
                           §§pop().§%p§ = §§pop();
                           if(!(_loc3_ && this))
                           {
                              continue loop3;
                           }
                        }
                        continue loop1;
                     }
                     while(!(_loc4_ || param2));
                     
                     return;
                  }
               }
            }
         }
         §§goto(addr110);
      }
      
      private function §@!>§(param1:int) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         §§push(this.§7!x§);
         if(!(_loc9_ && _loc2_))
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
         var _loc4_:§0p§;
         (_loc4_ = new §0p§(4)).setTexCoords(0,0,0);
         if(!(_loc9_ && _loc3_))
         {
            _loc4_.setTexCoords(1,1,0);
         }
         loop0:
         while(true)
         {
            _loc4_.setTexCoords(2,0,1);
            addr111:
            while(true)
            {
               addr91:
               _loc4_.setTexCoords(3,1,1);
               continue loop0;
            }
         }
      }
      
      private function §#!8§(param1:Context3D) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§%!'§);
            if(!(_loc3_ && this))
            {
               if(!§§pop())
               {
                  if(!_loc3_)
                  {
                     §§goto(addr37);
                  }
               }
               else
               {
                  if(param1 == null)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        §§goto(addr55);
                     }
                  }
                  §§push(this.§ Q§.§<`§);
                  if(_loc4_ || _loc3_)
                  {
                     §§push(int(§§pop() / 4));
                  }
                  var _loc2_:* = §§pop();
                  if(!_loc3_)
                  {
                     if(this.§`9§)
                     {
                        while(true)
                        {
                           this.§`9§.dispose();
                           addr290:
                           while(true)
                           {
                           }
                        }
                        addr287:
                     }
                     loop2:
                     while(true)
                     {
                        if(this.§'!T§)
                        {
                           addr280:
                           while(true)
                           {
                              this.§'!T§.dispose();
                              addr283:
                              while(true)
                              {
                              }
                           }
                           addr280:
                        }
                        loop5:
                        while(true)
                        {
                           if(this.§,!g§)
                           {
                              while(_loc4_ || param1)
                              {
                                 this.§,!g§.dispose();
                                 while(true)
                                 {
                                 }
                                 addr205:
                                 if(!(_loc3_ && param1))
                                 {
                                    this.§'!T§.uploadFromVector(this.§ Q§.§-=§,0,_loc2_ * 4);
                                    loop15:
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                          this.§,!g§ = param1.createVertexBuffer(_loc2_ * 4,§0p§.§<h§);
                                          loop16:
                                          while(_loc4_ || _loc3_)
                                          {
                                             this.§,!g§.uploadFromVector(this.§ Q§.§!!=§,0,_loc2_ * 4);
                                             loop17:
                                             while(!_loc3_)
                                             {
                                                while(true)
                                                {
                                                   this.§=!"§ = param1.createIndexBuffer(_loc2_ * 6);
                                                   addr122:
                                                   addr198:
                                                   while(!(_loc3_ && this))
                                                   {
                                                      this.§=!"§.uploadFromVector(this.§0!3§,0,_loc2_ * 6);
                                                      if(_loc4_ || this)
                                                      {
                                                         if(!(_loc4_ || this))
                                                         {
                                                            continue loop17;
                                                         }
                                                         if(!_loc4_)
                                                         {
                                                            continue loop15;
                                                         }
                                                         addr106:
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            §§goto(addr113);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               this.§=!"§.dispose();
                                                               break loop16;
                                                               §§goto(addr106);
                                                            }
                                                            addr245:
                                                         }
                                                         continue loop17;
                                                      }
                                                   }
                                                   addr225:
                                                   for(; _loc4_; §§goto(addr198))
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         this.§'!T§ = param1.createVertexBuffer(_loc2_ * 4,§0p§.§0!Q§);
                                                         continue;
                                                      }
                                                      §§goto(addr280);
                                                   }
                                                   addr240:
                                                   while(!(_loc3_ && _loc2_))
                                                   {
                                                      §§goto(addr205);
                                                      §§goto(addr122);
                                                   }
                                                   while(true)
                                                   {
                                                      this.§`9§.uploadFromByteArray(this.§ Q§.§2!e§,0,0,_loc2_ * 4);
                                                      §§goto(addr225);
                                                   }
                                                   §§goto(addr280);
                                                }
                                                return true;
                                             }
                                          }
                                          while(true)
                                          {
                                             if(!_loc4_)
                                             {
                                                §§goto(addr287);
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr275);
                                       }
                                       addr230:
                                       while(true)
                                       {
                                          this.§`9§ = param1.createVertexBuffer(_loc2_ * 4,§0p§.§1!0§);
                                          §§goto(addr240);
                                       }
                                    }
                                    continue loop5;
                                 }
                              }
                              continue loop2;
                           }
                           while(true)
                           {
                              if(this.§=!"§)
                              {
                                 §§goto(addr245);
                              }
                              §§goto(addr230);
                              §§goto(addr275);
                           }
                        }
                     }
                  }
                  §§goto(addr153);
               }
               addr55:
               throw new §4!+§();
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
         if(!(_loc2_ && _loc3_))
         {
            if(this.§#+§ != 0)
            {
               if(!(_loc2_ && this))
               {
                  addr45:
                  this.§&!M§ = param1;
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§&!M§ = 0;
         }
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Matrix = §^2§(param1);
         var _loc4_:Point = _loc3_.transformPoint(new Point(x,y));
         if(_loc5_)
         {
            if(param2 != null)
            {
               while(true)
               {
                  param2.x = _loc4_.x;
                  while(!_loc6_)
                  {
                     param2.y = _loc4_.y;
                     loop2:
                     for(; !_loc6_; if(!(_loc5_ || _loc3_))
                     {
                        continue;
                     },§§goto(addr60))
                     {
                        param2.width = 0;
                        loop3:
                        while(_loc5_)
                        {
                           while(true)
                           {
                              param2.height = 0;
                              if(_loc5_)
                              {
                                 continue loop2;
                              }
                              continue loop3;
                           }
                           return param2;
                        }
                     }
                  }
               }
            }
            return new Rectangle(_loc4_.x,_loc4_.y);
         }
         §§goto(addr77);
      }
      
      public function §&9§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.advanceTime(param1);
         }
         do
         {
            this.§`!#§(null);
         }
         while(_loc2_);
         
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§`e§ = param1;
         }
      }
      
      private function §`!#§(param1:Matrix3D) : void
      {
         var _loc34_:Boolean = true;
         var _loc35_:Boolean = false;
         var _loc4_:§7v§ = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc11_:§7v§ = null;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = 0;
         var _loc15_:* = false;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:* = NaN;
         var _loc23_:* = NaN;
         var _loc24_:* = NaN;
         var _loc25_:* = NaN;
         var _loc26_:* = NaN;
         var _loc27_:* = NaN;
         var _loc28_:* = NaN;
         var _loc29_:* = NaN;
         var _loc30_:* = NaN;
         var _loc31_:* = NaN;
         if(_loc34_ || this)
         {
            §§push(Boolean(isNaN(this.§`e§)));
            if(!(_loc35_ && _loc2_))
            {
               if(!§§pop())
               {
                  if(!(_loc35_ && this))
                  {
                     §§pop();
                     if(!(_loc35_ && this))
                     {
                        addr102:
                        §§push(this.§`e§);
                        if(!(_loc35_ && this))
                        {
                           addr113:
                           if(§§pop() == 0)
                           {
                              if(!_loc35_)
                              {
                                 return;
                              }
                              addr117:
                              §§push(this.§`e§);
                              if(!_loc35_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           §§goto(addr117);
                        }
                        var _loc2_:* = §§pop();
                        if(_loc34_ || this)
                        {
                           this.§`e§ = 0;
                           if(!_loc35_)
                           {
                              addr135:
                              _loc2_ = Number(Math.min(0.2,_loc2_));
                           }
                           var _loc3_:int = 0;
                           loop0:
                           while(true)
                           {
                              §§push(_loc3_);
                              if(_loc34_)
                              {
                                 §§push(this.§"!H§);
                                 if(!_loc35_)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       if((_loc4_ = this.§'9§[_loc3_]).§%p§ < _loc4_.§with§)
                                       {
                                          if(_loc34_)
                                          {
                                             this.advanceParticle(_loc4_,_loc2_);
                                             if(_loc35_)
                                             {
                                                continue;
                                             }
                                             _loc3_++;
                                             if(_loc34_ || _loc2_)
                                             {
                                                continue;
                                             }
                                          }
                                          addr180:
                                          _loc11_ = this.§'9§[this.§"!H§ - 1];
                                          if(!_loc35_)
                                          {
                                             this.§'9§[this.§"!H§ - 1] = _loc4_;
                                             if(!(_loc35_ && _loc3_))
                                             {
                                                this.§'9§[_loc3_] = _loc11_;
                                             }
                                          }
                                       }
                                       else if(_loc3_ != this.§"!H§ - 1)
                                       {
                                          if(!_loc34_)
                                          {
                                             continue;
                                          }
                                          §§goto(addr180);
                                       }
                                       var _loc32_:*;
                                       §§push((_loc32_ = this).§"!H§);
                                       if(!_loc35_)
                                       {
                                          §§push(§§pop() - 1);
                                       }
                                       var _loc33_:* = §§pop();
                                       if(!(_loc35_ && this))
                                       {
                                          _loc32_.§"!H§ = _loc33_;
                                       }
                                       continue;
                                    }
                                    if(!(_loc35_ && _loc2_))
                                    {
                                       §§push(this.§&!M§);
                                       if(!(_loc35_ && _loc2_))
                                       {
                                          §§push(0);
                                          if(!(_loc35_ && param1))
                                          {
                                             if(§§pop() > §§pop())
                                             {
                                                if(!_loc35_)
                                                {
                                                   §§push(1);
                                                   if(!(_loc35_ && _loc3_))
                                                   {
                                                      §§push(§§pop() / this.§#+§);
                                                      if(!_loc35_)
                                                      {
                                                         addr277:
                                                         §§push(Number(§§pop()));
                                                         if(!(_loc35_ && param1))
                                                         {
                                                            _loc12_ = §§pop();
                                                            if(!(_loc35_ && param1))
                                                            {
                                                               addr293:
                                                               §§push(this);
                                                               §§push(this.§=3§);
                                                               if(!(_loc35_ && param1))
                                                               {
                                                                  §§push(§§pop() + _loc2_);
                                                               }
                                                               §§pop().§=3§ = §§pop();
                                                               if(!_loc35_)
                                                               {
                                                                  addr308:
                                                                  loop192:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§=3§);
                                                                     if(!(_loc35_ && this))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(0);
                                                                           addr507:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop() > §§pop())
                                                                              {
                                                                                 §§push(this.§"!H§);
                                                                                 if(!(_loc35_ && this))
                                                                                 {
                                                                                    §§push(this.§7!x§);
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop() == §§pop())
                                                                                       {
                                                                                          if(_loc34_)
                                                                                          {
                                                                                             this.§@!>§(this.§7!x§);
                                                                                             if(_loc35_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                _loc4_ = this.§'9§[this.§"!H§++] as §7v§;
                                                                                                if(!(_loc35_ && this))
                                                                                                {
                                                                                                   this.initParticle(_loc4_);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   this.advanceParticle(_loc4_,this.§=3§);
                                                                                                   loop185:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc12_);
                                                                                                      if(_loc34_ || param1)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                      loop186:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc13_ = §§pop();
                                                                                                         loop187:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!isNaN(this.§0x§))
                                                                                                            {
                                                                                                               if(!_loc35_)
                                                                                                               {
                                                                                                                  §§push(_loc12_);
                                                                                                                  if(!_loc34_)
                                                                                                                  {
                                                                                                                     continue loop186;
                                                                                                                  }
                                                                                                                  §§push(1 - this.§0x§);
                                                                                                                  if(!(_loc35_ && param1))
                                                                                                                  {
                                                                                                                     §§push(Math.random() * this.§0x§);
                                                                                                                     if(_loc34_ || _loc2_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * 2);
                                                                                                                     }
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(_loc34_)
                                                                                                                     {
                                                                                                                        addr456:
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc35_)
                                                                                                                        {
                                                                                                                           continue loop186;
                                                                                                                        }
                                                                                                                        §§push(this.§%!;§);
                                                                                                                     }
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(_loc34_)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                     continue loop186;
                                                                                                                  }
                                                                                                                  §§goto(addr456);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     addr409:
                                                                                                                     while(_loc34_ || this)
                                                                                                                     {
                                                                                                                        §§push(this);
                                                                                                                        §§push(this.§=3§);
                                                                                                                        if(_loc34_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() - _loc13_);
                                                                                                                        }
                                                                                                                        §§pop().§=3§ = §§pop();
                                                                                                                        if(!_loc35_)
                                                                                                                        {
                                                                                                                           if(_loc34_ || _loc2_)
                                                                                                                           {
                                                                                                                              continue loop185;
                                                                                                                           }
                                                                                                                           continue loop187;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr473:
                                                                                                               }
                                                                                                            }
                                                                                                            addr391:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this);
                                                                                                               §§push(this.§%!;§);
                                                                                                               if(!_loc35_)
                                                                                                               {
                                                                                                                  §§push(_loc12_);
                                                                                                                  if(_loc34_ || param1)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - _loc13_);
                                                                                                                  }
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                               }
                                                                                                               §§pop().§%!;§ = §§pop();
                                                                                                               §§goto(addr409);
                                                                                                            }
                                                                                                            continue loop185;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   if(!(_loc34_ || param1))
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   if(true)
                                                                                                   {
                                                                                                      continue loop192;
                                                                                                   }
                                                                                                   §§goto(addr391);
                                                                                                }
                                                                                             }
                                                                                             addr330:
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr330);
                                                                                    }
                                                                                    addr321:
                                                                                 }
                                                                                 break loop0;
                                                                              }
                                                                              addr522:
                                                                              addr531:
                                                                              if(!_loc35_)
                                                                              {
                                                                                 addr510:
                                                                                 §§push(this.§&!M§);
                                                                                 break loop192;
                                                                              }
                                                                              this.§&!M§ = Math.max(0,this.§&!M§ - _loc2_);
                                                                              break loop0;
                                                                           }
                                                                           continue loop192;
                                                                        }
                                                                        addr506:
                                                                     }
                                                                     break;
                                                                  }
                                                                  if(§§pop() != Number.MAX_VALUE)
                                                                  {
                                                                     if(_loc34_ || _loc2_)
                                                                     {
                                                                        §§goto(addr522);
                                                                     }
                                                                  }
                                                                  §§goto(addr531);
                                                               }
                                                               §§goto(addr330);
                                                            }
                                                            §§goto(addr510);
                                                         }
                                                      }
                                                      §§goto(addr506);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr293);
                                             }
                                             §§goto(addr531);
                                          }
                                          §§goto(addr507);
                                       }
                                       §§goto(addr277);
                                    }
                                    §§goto(addr308);
                                 }
                                 §§goto(addr321);
                              }
                              break;
                           }
                           var _loc5_:* = §§pop();
                           §§push(this.§[!5§.width);
                           if(_loc34_)
                           {
                              §§push(Number(§§pop()));
                           }
                           var _loc8_:* = §§pop();
                           §§push(this.§[!5§.height);
                           if(_loc34_ || param1)
                           {
                              §§push(Number(§§pop()));
                           }
                           var _loc9_:* = §§pop();
                           if(_loc34_ || param1)
                           {
                              this.§1<§ = 0;
                           }
                           var _loc10_:Vector3D = new Vector3D();
                           if(_loc34_ || _loc3_)
                           {
                              if(param1)
                              {
                                 if(_loc34_ || param1)
                                 {
                                    addr582:
                                    this.§26§(param1);
                                    if(_loc35_)
                                    {
                                    }
                                    §§goto(addr2234);
                                 }
                                 §§push(0);
                                 if(!_loc35_)
                                 {
                                    _loc14_ = §§pop();
                                    if(!_loc35_)
                                    {
                                       while(true)
                                       {
                                          §§push(_loc14_);
                                       }
                                       addr2230:
                                    }
                                    §§goto(addr2234);
                                 }
                                 while(§§pop() < this.§"!H§)
                                 {
                                    §§push((_loc4_ = this.§'9§[_loc14_]).x);
                                    if(!(_loc35_ && _loc3_))
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc34_ || this)
                                       {
                                          _loc6_ = §§pop();
                                          if(_loc34_ || param1)
                                          {
                                             §§push(_loc4_.y);
                                             if(!_loc35_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(_loc34_ || this)
                                                {
                                                   _loc7_ = §§pop();
                                                   loop4:
                                                   while(true)
                                                   {
                                                      §§push(true);
                                                      loop5:
                                                      while(true)
                                                      {
                                                         _loc15_ = §§pop();
                                                         if(_loc34_)
                                                         {
                                                            _loc10_.x = _loc6_;
                                                            while(true)
                                                            {
                                                               _loc10_.y = _loc7_;
                                                               loop7:
                                                               while(true)
                                                               {
                                                                  §§push(Number(this.§[!^§[_loc14_ * 3]));
                                                                  if(!(_loc35_ && param1))
                                                                  {
                                                                     _loc16_ = §§pop();
                                                                     if(_loc34_)
                                                                     {
                                                                        §§push(Number(this.§[!^§[_loc14_ * 3 + 1]));
                                                                        if(_loc34_ || _loc2_)
                                                                        {
                                                                           _loc17_ = §§pop();
                                                                           if(!_loc35_)
                                                                           {
                                                                              §§push(_loc8_);
                                                                              if(_loc34_ || _loc3_)
                                                                              {
                                                                                 §§push(_loc4_.scaleX);
                                                                                 if(!_loc35_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(2);
                                                                                       loop9:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() / §§pop());
                                                                                          if(!(_loc35_ && param1))
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             loop158:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc18_ = §§pop();
                                                                                                if(_loc34_)
                                                                                                {
                                                                                                   §§push(_loc9_);
                                                                                                   if(_loc34_)
                                                                                                   {
                                                                                                      §§push(_loc4_.scaleY);
                                                                                                      if(_loc34_ || this)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(_loc34_ || _loc2_)
                                                                                                         {
                                                                                                            §§push(2);
                                                                                                            if(_loc35_)
                                                                                                            {
                                                                                                               continue loop9;
                                                                                                            }
                                                                                                            §§push(§§pop() / §§pop());
                                                                                                            if(_loc34_ || this)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(!_loc35_)
                                                                                                               {
                                                                                                                  _loc19_ = §§pop();
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc16_);
                                                                                                                     if(_loc35_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     continue loop158;
                                                                                                                  }
                                                                                                                  addr2061:
                                                                                                                  _loc28_ = §§pop();
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc34_ || param1)
                                                                                                                     {
                                                                                                                        break loop5;
                                                                                                                     }
                                                                                                                     loop14:
                                                                                                                     while(_loc34_)
                                                                                                                     {
                                                                                                                        §§push(_loc18_);
                                                                                                                        loop15:
                                                                                                                        while(_loc34_)
                                                                                                                        {
                                                                                                                           §§push(-§§pop());
                                                                                                                           loop16:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc22_);
                                                                                                                              loop17:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 loop18:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc19_);
                                                                                                                                    addr2113:
                                                                                                                                    loop143:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc23_);
                                                                                                                                       loop49:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          addr2115:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                             loop145:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!(_loc35_ && this))
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   loop53:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc26_ = §§pop();
                                                                                                                                                      loop54:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc34_ || param1)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc18_);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(-§§pop());
                                                                                                                                                               if(!_loc35_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc23_);
                                                                                                                                                                  break loop54;
                                                                                                                                                               }
                                                                                                                                                               addr2086:
                                                                                                                                                               loop136:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc19_);
                                                                                                                                                                  addr2087:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc22_);
                                                                                                                                                                     loop153:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc35_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           addr2096:
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           loop38:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              addr2097:
                                                                                                                                                                              addr2099:
                                                                                                                                                                              addr2100:
                                                                                                                                                                              while(_loc35_)
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc19_);
                                                                                                                                                                                    addr2154:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc23_);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§push(-§§pop());
                                                                                                                                                                              loop22:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                 loop23:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc27_ = §§pop();
                                                                                                                                                                                    loop24:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc35_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc18_);
                                                                                                                                                                                          loop25:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc22_);
                                                                                                                                                                                             if(!(_loc35_ && _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc34_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop38;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(_loc34_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc34_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      continue loop16;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr2152:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr2153);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc22_);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr2138:
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                loop40:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc23_);
                                                                                                                                                                                                   loop41:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc34_ || param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         loop42:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc34_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                               loop43:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc35_ && _loc2_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc35_ && _loc2_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                        while(_loc34_ || _loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc35_ && param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr2061);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr2157:
                                                                                                                                                                                                                              while(!_loc35_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr2143:
                                                                                                                                                                                                                                 §§push(-§§pop());
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                    addr2145:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc25_ = §§pop();
                                                                                                                                                                                                                                       continue loop14;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr2143);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              loop32:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                 addr2158:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _loc24_ = §§pop();
                                                                                                                                                                                                                                    addr2159:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc18_);
                                                                                                                                                                                                                                       addr2135:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc23_);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop32;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr2157:
                                                                                                                                                                                                                              addr2141:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr1853:
                                                                                                                                                                                                                           if(_loc35_ && this)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(!_loc35_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc19_);
                                                                                                                                                                                                                              if(_loc34_ || _loc2_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1870:
                                                                                                                                                                                                                                 §§push(_loc23_);
                                                                                                                                                                                                                                 loop154:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc35_ && _loc2_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc34_ || _loc3_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop41;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                       loop141:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc35_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop42;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(_loc35_ && _loc2_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             break loop54;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(!(_loc35_ && _loc3_))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                             loop146:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc34_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop18;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(!_loc34_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop15;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                                loop142:
                                                                                                                                                                                                                                                while(_loc35_ && _loc3_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   loop46:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc34_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop53;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc23_);
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc35_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               break loop46;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                            continue loop25;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr1936:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr2158);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop142;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop40;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                loop10:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   _loc30_ = §§pop();
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc18_);
                                                                                                                                                                                                                                                         if(!_loc35_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc35_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1694:
                                                                                                                                                                                                                                                               §§push(-§§pop());
                                                                                                                                                                                                                                                               if(!(_loc35_ && _loc2_))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!(_loc34_ || param1))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop146;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  if(_loc35_ && _loc2_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop145;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§push(_loc23_);
                                                                                                                                                                                                                                                                  if(!_loc35_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!(_loc35_ && this))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc35_ && _loc2_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop143;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                        if(!_loc35_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc35_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc34_ || _loc3_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1745:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(_loc19_);
                                                                                                                                                                                                                                                                                    if(!_loc35_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!(_loc34_ || _loc2_))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop141;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(!_loc35_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc35_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc22_);
                                                                                                                                                                                                                                                                                             if(!_loc34_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop154;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             if(!(_loc34_ || _loc2_))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop153;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                addr1771:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc35_ && param1)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop10;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   if(!_loc35_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc35_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc34_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!(_loc35_ && _loc3_))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(-§§pop());
                                                                                                                                                                                                                                                                                                               if(!(_loc35_ && this))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop43;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr1821:
                                                                                                                                                                                                                                                                                                               addr1821:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!_loc34_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue loop136;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  _loc31_ = §§pop();
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc34_ || param1)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(this.§ Q§);
                                                                                                                                                                                                                                                                                                                        loop109:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                           loop110:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                              if(_loc34_ || this)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr1681:
                                                                                                                                                                                                                                                                                                                                 §§push(_loc26_);
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1681);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 addr1682:
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(_loc27_);
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§pop().§^L§(§§pop(),§§pop(),§§pop());
                                                                                                                                                                                                                                                                                                                                          addr1687:
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(this.§ Q§);
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(1);
                                                                                                                                                                                                                                                                                                                                                   loop122:
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                            if(_loc34_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr1662:
                                                                                                                                                                                                                                                                                                                                                               §§push(_loc24_);
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1662);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               addr1663:
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc25_);
                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§pop().§^L§(§§pop(),§§pop(),§§pop());
                                                                                                                                                                                                                                                                                                                                                                        addr1668:
                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§push(this.§ Q§);
                                                                                                                                                                                                                                                                                                                                                                           loop74:
                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                                              addr1618:
                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc34_ || this)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    addr1626:
                                                                                                                                                                                                                                                                                                                                                                                    §§push(2);
                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc34_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          continue loop122;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                                          addr1630:
                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§push(_loc30_);
                                                                                                                                                                                                                                                                                                                                                                                             addr1631:
                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                addr1632:
                                                                                                                                                                                                                                                                                                                                                                                                loop104:
                                                                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                                   addr1633:
                                                                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(_loc31_);
                                                                                                                                                                                                                                                                                                                                                                                                      addr1634:
                                                                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                         addr1635:
                                                                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            §§pop().§^L§(§§pop(),§§pop(),§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                            addr1636:
                                                                                                                                                                                                                                                                                                                                                                                                            addr1994:
                                                                                                                                                                                                                                                                                                                                                                                                            while(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               if(!_loc34_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  continue loop24;
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(this.§ Q§);
                                                                                                                                                                                                                                                                                                                                                                                                                  continue loop74;
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            loop21:
                                                                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(_loc18_);
                                                                                                                                                                                                                                                                                                                                                                                                               addr1834:
                                                                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(-§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                  addr1835:
                                                                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc34_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc22_);
                                                                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc34_ || param1))
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           continue loop141;
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc34_ || this))
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              continue loop25;
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1853);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           _loc29_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                           continue loop21;
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        addr1993:
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      continue loop104;
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    continue loop122;
                                                                                                                                                                                                                                                                                                                                                                                    addr1626:
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 continue loop110;
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              continue loop110;
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§pop().§5c§(§§pop(),§§pop(),_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
                                                                                                                                                                                                                                                                                                                                                      addr2229:
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(_loc4_.rotation);
                                                                                                                                                                                                                                                                                                                                                         addr2207:
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(0);
                                                                                                                                                                                                                                                                                                                                                            addr2208:
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() == §§pop());
                                                                                                                                                                                                                                                                                                                                                               if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  addr2211:
                                                                                                                                                                                                                                                                                                                                                                  §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                                                                  while(!§§pop())
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        addr2186:
                                                                                                                                                                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           addr2187:
                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§push(Number(Math.cos(_loc4_.rotation)));
                                                                                                                                                                                                                                                                                                                                                                              addr2192:
                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 _loc22_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                 addr2193:
                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(Number(Math.sin(_loc4_.rotation)));
                                                                                                                                                                                                                                                                                                                                                                                    break loop9;
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           addr2187:
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1525);
                                                                                                                                                                                                                                                                                                                                                                           §§push(this.§ Q§);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     continue loop17;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  addr2212:
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               addr2214:
                                                                                                                                                                                                                                                                                                                                                               loop131:
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§pop();
                                                                                                                                                                                                                                                                                                                                                                  addr2215:
                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(Math.abs(_loc18_ - _loc19_) > 0.5);
                                                                                                                                                                                                                                                                                                                                                                     if(!_loc34_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        continue loop131;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     if(_loc35_ && _loc3_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr2212);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr2185);
                                                                                                                                                                                                                                                                                                                                                                     continue loop131;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                if(_loc35_ && _loc2_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   continue;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                if(_loc35_ && param1)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   continue loop109;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                if(!(_loc35_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1371);
                                                                                                                                                                                                                                                                                                                                                   §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr2219);
                                                                                                                                                                                                                                                                                                                                                §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        addr1831:
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr2193);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            break loop9;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr1987:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!_loc35_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr1989:
                                                                                                                                                                                                                                                                                                               §§push(-§§pop());
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc34_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     break loop7;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop22;
                                                                                                                                                                                                                                                                                                                  §§goto(addr1989);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr1990:
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§goto(addr2097);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr2157);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1835);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1846);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr1770:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr2141);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr2140:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr1936);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1770);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr1745:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr2144);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1990);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1771);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1986:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr1986:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1987);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1770);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1821);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1834);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1821);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr2187);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr1908:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr2137);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc35_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop49;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                          continue loop154;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr1983:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1986);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1886);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr2135);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop23;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr2207);
                                                                                                                                                                                                                     §§goto(addr2136);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr2192);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr2208);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                addr2020:
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr2140);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr2229);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr2096:
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           addr2156:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr2157);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr2072:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr2215);
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc34_)
                                                                                                                                                         {
                                                                                                                                                            continue loop17;
                                                                                                                                                         }
                                                                                                                                                         if(_loc34_ || param1)
                                                                                                                                                         {
                                                                                                                                                            addr2085:
                                                                                                                                                            §§goto(addr2086);
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr2156);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr2145);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§goto(addr2152);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr2167:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§goto(addr2151);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr1058:
                                                                                                               }
                                                                                                               §§goto(addr1834);
                                                                                                            }
                                                                                                            §§goto(addr2099);
                                                                                                         }
                                                                                                         §§goto(addr2135);
                                                                                                      }
                                                                                                      §§goto(addr2085);
                                                                                                   }
                                                                                                   §§goto(addr2019);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr1200:
                                                                                                   §§push(this.§ Q§);
                                                                                                   addr1200:
                                                                                                }
                                                                                                §§goto(addr2218);
                                                                                             }
                                                                                             addr1083:
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          _loc23_ = §§pop();
                                                                                          §§goto(addr2167);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1986);
                                                                              }
                                                                              §§goto(addr2143);
                                                                           }
                                                                           §§goto(addr1343);
                                                                        }
                                                                        §§goto(addr1745);
                                                                     }
                                                                     §§goto(addr1218);
                                                                  }
                                                                  break;
                                                                  if(_loc35_ && this)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(!_loc34_)
                                                                  {
                                                                     continue loop4;
                                                                  }
                                                                  §§push(_loc17_);
                                                                  if(!(_loc35_ && _loc3_))
                                                                  {
                                                                     §§push(-1.1);
                                                                     if(!_loc35_)
                                                                     {
                                                                        §§goto(addr935);
                                                                        §§push(§§pop() < §§pop());
                                                                     }
                                                                     §§goto(addr2115);
                                                                  }
                                                                  §§goto(addr2192);
                                                               }
                                                               §§goto(addr1993);
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr1926);
                                                   }
                                                }
                                                §§goto(addr1915);
                                             }
                                             §§goto(addr2135);
                                          }
                                          §§goto(addr1645);
                                       }
                                       §§goto(addr1745);
                                    }
                                    §§goto(addr1083);
                                    §§goto(addr2230);
                                 }
                              }
                              addr2234:
                              return;
                           }
                           §§goto(addr582);
                        }
                        §§goto(addr135);
                     }
                     §§goto(addr117);
                  }
               }
            }
            §§goto(addr113);
         }
         §§goto(addr102);
      }
      
      private function §26§(param1:Matrix3D) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§7v§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§"!H§)
         {
            _loc3_ = this.§'9§[_loc2_];
            if(_loc4_)
            {
               this.§34§[_loc2_ * 3] = _loc3_.x;
               loop1:
               while(true)
               {
                  addr53:
                  while(true)
                  {
                     this.§34§[_loc2_ * 3 + 1] = _loc3_.y;
                     continue loop1;
                  }
               }
            }
            while(false)
            {
               §§goto(addr53);
            }
         }
         if(!(_loc5_ && _loc3_))
         {
            param1.transformVectors(this.§34§,this.§[!^§);
         }
      }
      
      override public function render(param1:§`K§, param2:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param1)
         {
            this.§`!#§(param1.§7!Y§);
            loop0:
            while(true)
            {
               do
               {
                  if(this.§1<§ == 0)
                  {
                     if(_loc6_)
                     {
                        return;
                     }
                     continue loop0;
                  }
                  addr24:
                  while(true)
                  {
                     §§push(param2);
                     if(_loc6_ || param2)
                     {
                        §§push(§§pop() * this.alpha);
                        if(!_loc7_)
                        {
                           addr38:
                           §§push(Number(§§pop()));
                        }
                        param2 = §§pop();
                        if(_loc6_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     §§goto(addr38);
                  }
               }
               while(false);
               
               §§push(§!j§);
               §§push(param2 == 1);
               if(_loc6_ || param1)
               {
                  §§push(!§§pop());
               }
               §§push(§§pop().§1a§(§§pop(),this.§[!5§.mipMapping,false,this.§1!6§,true));
               if(_loc6_)
               {
                  §§push(§§pop());
               }
               var _loc3_:* = §§pop();
               var _loc4_:Context3D;
               if((_loc4_ = param1.§8"§) == null)
               {
                  if(_loc6_ || this)
                  {
                     return;
                  }
               }
               var _loc5_:Vector.<Number> = !!this.§<!h§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
               if(!(_loc7_ && this))
               {
                  if(param1.§5!F§ != this.§7!F§)
                  {
                     while(true)
                     {
                        this.§@!>§(0);
                        addr429:
                        while(true)
                        {
                           this.§7!F§ = param1.§5!F§;
                           addr420:
                           while(true)
                           {
                           }
                        }
                        addr378:
                        if(_loc7_ && param1)
                        {
                           continue;
                        }
                        while(true)
                        {
                           _loc4_.setBlendFactors(this.§=v§,this.§>y§);
                           loop12:
                           while(true)
                           {
                              _loc4_.setProgram(§^b§.§9E§.§!g§(_loc3_));
                              loop13:
                              while(true)
                              {
                                 _loc4_.setTextureAt(0,this.§[!5§.getBase(_loc4_));
                                 loop14:
                                 while(true)
                                 {
                                    _loc4_.setVertexBufferAt(0,this.§,!g§,§0p§.§[!w§,Context3DVertexBufferFormat.FLOAT_3);
                                    while(_loc6_ || param2)
                                    {
                                       while(true)
                                       {
                                          _loc4_.setVertexBufferAt(1,this.§`9§,§0p§.§;Z§,Context3DVertexBufferFormat.FLOAT_2);
                                          while(true)
                                          {
                                             _loc4_.setVertexBufferAt(2,this.§'!T§,§0p§.§"!<§,Context3DVertexBufferFormat.FLOAT_4);
                                             addr300:
                                             while(!_loc7_)
                                             {
                                                continue loop13;
                                             }
                                             continue loop14;
                                             addr208:
                                             if(!(_loc7_ && param1))
                                             {
                                                return;
                                             }
                                          }
                                       }
                                       addr263:
                                       if(_loc6_ || this)
                                       {
                                          _loc4_.setVertexBufferAt(0,null);
                                          while(_loc6_)
                                          {
                                             _loc4_.setVertexBufferAt(1,null);
                                             continue loop12;
                                          }
                                          loop21:
                                          while(true)
                                          {
                                             if(_loc6_ || _loc3_)
                                             {
                                                §§goto(addr263);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   _loc4_.drawTriangles(this.§=!"§,0,this.§1<§ * 2);
                                                   continue loop21;
                                                }
                                                addr279:
                                             }
                                          }
                                          addr243:
                                       }
                                    }
                                    loop9:
                                    while(!_loc7_)
                                    {
                                       this.§,!g§.uploadFromVector(this.§ Q§.§!!=§,0,this.§1<§ * 4);
                                       while(true)
                                       {
                                          if(_loc6_)
                                          {
                                             §§goto(addr378);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                this.§'!T§.uploadFromVector(this.§ Q§.§-=§,0,this.§1<§ * 4);
                                                continue loop9;
                                             }
                                             addr401:
                                          }
                                       }
                                       §§goto(addr429);
                                    }
                                    §§goto(addr420);
                                 }
                              }
                           }
                        }
                        addr356:
                     }
                  }
                  while(true)
                  {
                     if(!this.§#!8§(_loc4_))
                     {
                        §§goto(addr401);
                     }
                     §§goto(addr356);
                     §§goto(addr420);
                  }
               }
               §§goto(addr338);
            }
         }
         while(true)
         {
            §§goto(addr24);
         }
      }
      
      public function get §1!Y§() : Boolean
      {
         return false;
      }
      
      public function get §7!x§() : int
      {
         return this.§ Q§.§<`§ / 4;
      }
      
      public function get §-!u§() : int
      {
         return this.§"!H§;
      }
      
      public function get §`!R§() : Number
      {
         return this.§#+§;
      }
      
      public function set §`!R§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§#+§ = param1;
         }
      }
      
      public function get §!!K§() : Number
      {
         return this.§%v§;
      }
      
      public function set §!!K§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§%v§ = param1;
         }
      }
      
      public function get §]Q§() : Number
      {
         return this.§@!k§;
      }
      
      public function set §]Q§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§@!k§ = param1;
         }
      }
      
      public function get texture() : Texture
      {
         return this.§[!5§;
      }
   }
}
