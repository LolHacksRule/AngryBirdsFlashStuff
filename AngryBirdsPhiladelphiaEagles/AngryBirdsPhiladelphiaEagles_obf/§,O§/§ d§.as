package §,O§
{
   import § N§.DisplayObject;
   import §!`§.§%9§;
   import §+§.§0&§;
   import §5Z§.§4]§;
   import §5Z§.§[Z§;
   import §5Z§.§]5§;
   import §7!O§.§-!C§;
   import §8z§.Texture;
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
   
   public class § d§ extends DisplayObject implements §%9§
   {
       
      
      private var §-`§:Texture;
      
      private var §6l§:Vector.<§50§>;
      
      private var §4!=§:Number;
      
      private var §#d§:Vector.<Number>;
      
      private var §]!"§:Vector.<Number>;
      
      private var §"!F§:§0&§;
      
      private var §=t§:VertexBuffer3D;
      
      private var § >§:VertexBuffer3D;
      
      private var §;F§:VertexBuffer3D;
      
      private var §4!"§:Vector.<uint>;
      
      private var §+!P§:IndexBuffer3D;
      
      private var §?!"§:int;
      
      private var dynamic:int;
      
      private var §-o§:Number;
      
      protected var §'!L§:Number;
      
      private var § '§:Number = 0.0;
      
      private var §7!L§:Number;
      
      protected var §^!4§:Number;
      
      protected var §>g§:Number;
      
      protected var §7o§:Boolean;
      
      protected var §;p§:String;
      
      protected var §>=§:String;
      
      protected var §=o§:String;
      
      private var §4!<§:int = -1;
      
      private var §9E§:Boolean = false;
      
      private var §4!&§:Number = 0.0;
      
      public function § d§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || param2)
         {
            super();
            if(_loc7_)
            {
               if(param1 != null)
               {
                  this.§-`§ = param1;
                  this.§7o§ = param1.premultipliedAlpha;
                  while(true)
                  {
                     this.§6l§ = new Vector.<§50§>(0,false);
                     if(_loc7_ || param2)
                     {
                        this.§#d§ = new Vector.<Number>();
                        this.§]!"§ = new Vector.<Number>();
                        if(_loc7_)
                        {
                           continue;
                        }
                        addr258:
                        §§push(this);
                        if(!(_loc8_ && param1))
                        {
                           §§push(param4);
                           if(!(_loc8_ && param3))
                           {
                              §§push(§§pop());
                              if(_loc7_ || param1)
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc7_ || param3)
                                    {
                                       addr203:
                                       §§pop();
                                       if(_loc7_ || param2)
                                       {
                                          addr211:
                                          if(!this.§7o§)
                                          {
                                             addr233:
                                             §§pop().§;p§ = Context3DBlendFactor.SOURCE_ALPHA;
                                             break;
                                          }
                                          §§goto(addr233);
                                       }
                                       §§push(Context3DBlendFactor.ONE);
                                       if(!_loc8_)
                                       {
                                          addr219:
                                       }
                                    }
                                    §§goto(addr219);
                                 }
                                 §§goto(addr233);
                              }
                              §§goto(addr219);
                           }
                           §§goto(addr203);
                        }
                        §§goto(addr211);
                     }
                     break;
                  }
                  if(param3 > 0)
                  {
                     §§goto(addr165);
                  }
                  §§goto(addr157);
                  addr127:
               }
               throw new ArgumentError("texture must not be null");
            }
            §§goto(addr168);
         }
         §§goto(addr127);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(this.§=t§)
         {
            while(true)
            {
               this.§=t§.dispose();
               addr102:
               while(true)
               {
               }
            }
            addr99:
         }
         while(true)
         {
            if(this.§ >§)
            {
               if(_loc1_ || this)
               {
                  if(_loc2_)
                  {
                     continue;
                  }
                  this.§ >§.dispose();
               }
               while(_loc1_)
               {
                  this.§;F§.dispose();
                  if(_loc1_)
                  {
                     §§goto(addr47);
                  }
               }
               §§goto(addr99);
            }
            while(this.§;F§)
            {
               §§goto(addr61);
            }
            addr47:
            if(this.§+!P§)
            {
               if(!_loc2_)
               {
                  this.§+!P§.dispose();
               }
            }
            this.§#d§ = null;
            this.§]!"§ = null;
            do
            {
               super.dispose();
            }
            while(!_loc1_);
            
            return;
         }
      }
      
      protected function createParticle() : §50§
      {
         return new §50§();
      }
      
      protected function initParticle(param1:§50§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            param1.x = this.§^!4§;
            loop0:
            while(true)
            {
               param1.y = this.§>g§;
               while(true)
               {
                  param1.§=d§ = 0;
                  while(_loc3_ || _loc2_)
                  {
                     continue loop0;
                     param1.§[@§ = 1;
                     param1.red = Math.random();
                     if(_loc2_)
                     {
                        continue;
                     }
                     param1.green = Math.random();
                     while(true)
                     {
                        param1.blue = Math.random();
                        while(!(_loc2_ && this))
                        {
                           param1.alpha = 0;
                           if(!_loc2_)
                           {
                              return;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr67);
      }
      
      protected function advanceParticle(param1:§50§, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(param1);
            §§push(param1.y);
            if(_loc3_)
            {
               §§push(param2);
               if(!(_loc4_ && this))
               {
                  §§push(§§pop() * 250);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().y = §§pop();
            loop0:
            while(true)
            {
               §§push(param1);
               §§push(1);
               §§push(param1.§=d§);
               if(_loc3_)
               {
                  §§push(§§pop() / param1.§[@§);
               }
               §§pop().alpha = §§pop() - §§pop();
               while(true)
               {
                  param1.scaleX = 1 - param1.alpha;
                  while(!_loc4_)
                  {
                     param1.scaleY = 1 - param1.alpha;
                     loop3:
                     while(!_loc4_)
                     {
                        continue loop0;
                        while(true)
                        {
                           §§push(param1);
                           §§push(param1.§=d§);
                           if(_loc3_ || param2)
                           {
                              §§push(§§pop() + param2);
                           }
                           §§pop().§=d§ = §§pop();
                           if(_loc3_ || param1)
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
      
      private function §#!D§(param1:int) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:int = 0;
         var _loc7_:* = 0;
         §§push(this.§5j§);
         if(_loc9_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§5j§);
         if(_loc9_)
         {
            §§push(int(§§pop() + param1));
         }
         var _loc3_:* = §§pop();
         var _loc4_:§0&§;
         (_loc4_ = new §0&§(4)).setTexCoords(0,0,0);
         if(_loc9_ || _loc2_)
         {
            _loc4_.setTexCoords(1,1,0);
         }
         loop0:
         while(true)
         {
            _loc4_.setTexCoords(2,0,1);
            loop1:
            while(true)
            {
               _loc4_.setTexCoords(3,1,1);
               while(true)
               {
                  this.§-`§.adjustVertexData(_loc4_,0,4);
                  loop3:
                  while(true)
                  {
                     addr71:
                     while(true)
                     {
                        this.§6l§.fixed = false;
                        continue loop3;
                     }
                     continue loop1;
                  }
                  if(_loc8_ && param1)
                  {
                     continue;
                  }
                  this.§4!"§.fixed = false;
                  if(!_loc8_)
                  {
                     if(_loc8_)
                     {
                        continue loop1;
                     }
                     if(_loc8_)
                     {
                        continue loop0;
                     }
                     if(false)
                     {
                        §§goto(addr71);
                     }
                     §§push(_loc2_);
                     if(_loc9_ || _loc3_)
                     {
                        §§push(int(§§pop()));
                     }
                     var _loc5_:* = §§pop();
                     addr168:
                     §§push(_loc5_);
                     if(_loc9_)
                     {
                        if(!_loc8_)
                        {
                           §§push(_loc3_);
                           if(_loc9_)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 addr178:
                                 if(!_loc8_)
                                 {
                                    this.§6l§.fixed = true;
                                    this.§4!"§.fixed = true;
                                    if(!_loc8_)
                                    {
                                       if(!_loc8_)
                                       {
                                          if(!(_loc8_ && _loc2_))
                                          {
                                             if(_loc8_)
                                             {
                                                addr267:
                                                if(_loc9_)
                                                {
                                                   this.§]!"§.push(0);
                                                   _loc7_++;
                                                   addr259:
                                                   §§push(_loc7_);
                                                   if(!(_loc8_ && _loc3_))
                                                   {
                                                      addr226:
                                                      §§push(3);
                                                      if(!_loc8_)
                                                      {
                                                         if(§§pop() >= §§pop())
                                                         {
                                                            addr229:
                                                            this.§"!F§.append(_loc4_);
                                                            addr233:
                                                            if(!(_loc8_ && _loc3_))
                                                            {
                                                               this.§4!"§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
                                                               addr208:
                                                               if(!(_loc8_ && _loc2_))
                                                               {
                                                                  _loc5_++;
                                                                  addr187:
                                                                  §§goto(addr168);
                                                               }
                                                               §§goto(addr233);
                                                            }
                                                            §§goto(addr259);
                                                         }
                                                         this.§#d§.push(0);
                                                         §§goto(addr267);
                                                      }
                                                      addr289:
                                                      _loc6_ = §§pop() * §§pop();
                                                      this.§6l§.push(this.createParticle());
                                                      §§push(0);
                                                      addr287:
                                                   }
                                                   if(_loc9_)
                                                   {
                                                      _loc7_ = §§pop();
                                                      §§goto(addr259);
                                                      addr275:
                                                   }
                                                   addr286:
                                                   §§goto(addr287);
                                                   §§push(4);
                                                }
                                                §§goto(addr275);
                                             }
                                             this.§9E§ = true;
                                             return;
                                          }
                                          §§goto(addr229);
                                       }
                                       §§goto(addr208);
                                    }
                                    §§goto(addr178);
                                 }
                                 §§goto(addr187);
                              }
                              §§goto(addr286);
                              §§push(_loc5_);
                           }
                           §§goto(addr226);
                        }
                        §§goto(addr289);
                     }
                     §§goto(addr259);
                  }
                  §§goto(addr76);
               }
            }
         }
      }
      
      private function §finally§(param1:Context3D) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§9E§);
            if(!_loc4_)
            {
               if(!§§pop())
               {
                  if(_loc3_ || param1)
                  {
                     §§goto(addr31);
                  }
               }
               else if(param1 == null)
               {
                  if(!_loc4_)
                  {
                     §§goto(addr44);
                  }
               }
               §§push(this.§"!F§.§6P§);
               if(_loc3_)
               {
                  §§push(int(§§pop() / 4));
               }
               var _loc2_:* = §§pop();
               if(this.§=t§)
               {
                  while(true)
                  {
                     this.§=t§.dispose();
                     addr232:
                     while(true)
                     {
                     }
                  }
                  addr229:
               }
               while(true)
               {
                  if(this.§ >§)
                  {
                     this.§ >§.dispose();
                     while(true)
                     {
                        addr192:
                        this.§+!P§.dispose();
                        if(!_loc3_)
                        {
                           continue;
                        }
                        addr175:
                        this.§=t§ = param1.createVertexBuffer(_loc2_ * 4,§0&§.§7R§);
                        loop7:
                        while(true)
                        {
                           this.§=t§.uploadFromByteArray(this.§"!F§.§4!#§,0,0,_loc2_ * 4);
                           while(true)
                           {
                              this.§ >§ = param1.createVertexBuffer(_loc2_ * 4,§0&§.§<W§);
                              this.§ >§.uploadFromVector(this.§"!F§.§+!R§,0,_loc2_ * 4);
                              loop9:
                              while(true)
                              {
                                 this.§;F§ = param1.createVertexBuffer(_loc2_ * 4,§0&§.§&!H§);
                                 while(true)
                                 {
                                    this.§;F§.uploadFromVector(this.§"!F§.§5q§,0,_loc2_ * 4);
                                    addr114:
                                    while(_loc3_)
                                    {
                                       if(!_loc4_)
                                       {
                                          continue loop7;
                                       }
                                       continue loop9;
                                    }
                                 }
                              }
                              addr74:
                              if(_loc3_ || this)
                              {
                                 return true;
                              }
                           }
                        }
                     }
                     addr225:
                  }
                  while(true)
                  {
                     if(this.§;F§)
                     {
                        §§goto(addr212);
                     }
                     §§goto(addr186);
                     §§goto(addr225);
                  }
                  §§goto(addr232);
               }
            }
            addr31:
            return false;
         }
         addr44:
         throw new §-!C§();
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(this.§-o§ != 0)
            {
               if(!_loc2_)
               {
                  addr30:
                  this.§7!L§ = param1;
               }
            }
            return;
         }
         §§goto(addr30);
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§7!L§ = 0;
         }
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Matrix = §>!B§(param1);
         var _loc4_:Point = _loc3_.transformPoint(new Point(x,y));
         if(!_loc6_)
         {
            if(param2 == null)
            {
               return new Rectangle(_loc4_.x,_loc4_.y);
            }
            while(true)
            {
               param2.x = _loc4_.x;
               param2.y = _loc4_.y;
               loop1:
               while(!_loc6_)
               {
                  while(true)
                  {
                     param2.width = 0;
                     if(!_loc6_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  param2.height = 0;
                  return param2;
               }
            }
         }
         §§goto(addr76);
      }
      
      public function §^m§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.advanceTime(param1);
         }
         do
         {
            this.§!!>§(null);
         }
         while(_loc3_);
         
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§4!&§ = param1;
         }
      }
      
      private function §!!>§(param1:Matrix3D) : void
      {
         var _loc34_:Boolean = false;
         var _loc35_:Boolean = true;
         var _loc4_:§50§ = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc11_:§50§ = null;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = 0;
         var _loc15_:* = false;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         var _loc21_:* = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:* = NaN;
         var _loc24_:* = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:* = NaN;
         var _loc28_:* = NaN;
         var _loc29_:* = NaN;
         var _loc30_:* = NaN;
         var _loc31_:* = NaN;
         if(_loc35_ || _loc2_)
         {
            §§push(Boolean(isNaN(this.§4!&§)));
            if(_loc35_)
            {
               if(!§§pop())
               {
                  if(_loc35_)
                  {
                     §§pop();
                     if(!_loc34_)
                     {
                        §§push(this.§4!&§);
                        if(_loc35_ || _loc3_)
                        {
                           addr99:
                           if(§§pop() == 0)
                           {
                              if(!(_loc34_ && _loc3_))
                              {
                                 §§goto(addr107);
                              }
                              else
                              {
                                 addr108:
                                 §§push(this.§4!&§);
                                 if(_loc35_)
                                 {
                                    addr112:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc2_:* = §§pop();
                                 if(_loc35_ || _loc3_)
                                 {
                                    this.§4!&§ = 0;
                                    if(_loc35_)
                                    {
                                       addr126:
                                       _loc2_ = Number(Math.min(0.2,_loc2_));
                                    }
                                    var _loc3_:int = 0;
                                    loop0:
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                       if(!(_loc34_ && this))
                                       {
                                          §§push(this.§?!"§);
                                          if(!_loc34_)
                                          {
                                             if(§§pop() < §§pop())
                                             {
                                                if((_loc4_ = this.§6l§[_loc3_]).§=d§ < _loc4_.§[@§)
                                                {
                                                   if(_loc34_)
                                                   {
                                                      continue;
                                                   }
                                                   this.advanceParticle(_loc4_,_loc2_);
                                                   if(_loc34_ && param1)
                                                   {
                                                      continue;
                                                   }
                                                   _loc3_++;
                                                   if(!(_loc34_ && _loc3_))
                                                   {
                                                      continue;
                                                   }
                                                   addr181:
                                                   _loc11_ = this.§6l§[this.§?!"§ - 1];
                                                   if(!_loc34_)
                                                   {
                                                      this.§6l§[this.§?!"§ - 1] = _loc4_;
                                                      if(!(_loc34_ && this))
                                                      {
                                                         this.§6l§[_loc3_] = _loc11_;
                                                      }
                                                   }
                                                }
                                                else if(_loc3_ != this.§?!"§ - 1)
                                                {
                                                   if(_loc34_ && _loc3_)
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr181);
                                                }
                                                var _loc32_:*;
                                                §§push((_loc32_ = this).§?!"§);
                                                if(!_loc34_)
                                                {
                                                   §§push(§§pop() - 1);
                                                }
                                                var _loc33_:* = §§pop();
                                                if(!(_loc34_ && this))
                                                {
                                                   _loc32_.§?!"§ = _loc33_;
                                                }
                                                continue;
                                             }
                                             §§push(this.§7!L§);
                                             if(_loc35_)
                                             {
                                                §§push(0);
                                                if(!(_loc34_ && _loc3_))
                                                {
                                                   if(§§pop() > §§pop())
                                                   {
                                                      if(!(_loc34_ && this))
                                                      {
                                                         §§push(1);
                                                         if(!(_loc34_ && _loc3_))
                                                         {
                                                            §§push(§§pop() / this.§-o§);
                                                            if(_loc35_ || this)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(_loc35_ || _loc2_)
                                                               {
                                                                  _loc12_ = §§pop();
                                                                  §§push(this);
                                                                  §§push(this.§4!=§);
                                                                  if(!(_loc34_ && _loc2_))
                                                                  {
                                                                     §§push(§§pop() + _loc2_);
                                                                  }
                                                                  §§pop().§4!=§ = §§pop();
                                                                  if(_loc35_)
                                                                  {
                                                                     loop85:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§4!=§);
                                                                        if(!(_loc34_ && param1))
                                                                        {
                                                                           addr470:
                                                                           while(true)
                                                                           {
                                                                              §§push(0);
                                                                              addr471:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop() <= §§pop())
                                                                                 {
                                                                                    addr481:
                                                                                    if(!_loc34_)
                                                                                    {
                                                                                       addr474:
                                                                                       §§push(this.§7!L§);
                                                                                       break loop85;
                                                                                    }
                                                                                    this.§7!L§ = Math.max(0,this.§7!L§ - _loc2_);
                                                                                    break;
                                                                                 }
                                                                                 §§push(this.§?!"§);
                                                                                 if(_loc35_ || this)
                                                                                 {
                                                                                    break loop0;
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              addr491:
                                                                              var _loc5_:* = §§pop();
                                                                              §§push(this.§-`§.width);
                                                                              if(_loc35_ || param1)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              var _loc8_:* = §§pop();
                                                                              §§push(this.§-`§.height);
                                                                              if(!_loc34_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              var _loc9_:* = §§pop();
                                                                              if(_loc35_)
                                                                              {
                                                                                 this.dynamic = 0;
                                                                              }
                                                                              var _loc10_:Vector3D = new Vector3D();
                                                                              if(_loc35_ || this)
                                                                              {
                                                                                 if(param1)
                                                                                 {
                                                                                    if(_loc35_)
                                                                                    {
                                                                                       this.§>_§(param1);
                                                                                       if(!_loc34_)
                                                                                       {
                                                                                          §§push(0);
                                                                                          if(_loc35_)
                                                                                          {
                                                                                             _loc14_ = §§pop();
                                                                                             if(!_loc34_)
                                                                                             {
                                                                                                addr542:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc14_);
                                                                                                }
                                                                                                addr1701:
                                                                                             }
                                                                                             §§goto(addr1705);
                                                                                          }
                                                                                          loop9:
                                                                                          for(; §§pop() < this.§?!"§; §§goto(addr1701))
                                                                                          {
                                                                                             §§push((_loc4_ = this.§6l§[_loc14_]).x);
                                                                                             if(!_loc34_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                if(_loc35_ || _loc3_)
                                                                                                {
                                                                                                   _loc6_ = §§pop();
                                                                                                   §§push(_loc4_.y);
                                                                                                   loop10:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(!_loc34_)
                                                                                                      {
                                                                                                         _loc7_ = §§pop();
                                                                                                         §§push(true);
                                                                                                         loop11:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc15_ = §§pop();
                                                                                                            loop12:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc10_.x = _loc6_;
                                                                                                               if(!_loc34_)
                                                                                                               {
                                                                                                                  _loc10_.y = _loc7_;
                                                                                                                  if(!(_loc34_ && this))
                                                                                                                  {
                                                                                                                     _loc16_ = this.§]!"§[_loc14_ * 3];
                                                                                                                     _loc17_ = this.§]!"§[_loc14_ * 3 + 1];
                                                                                                                     if(!(_loc34_ && _loc2_))
                                                                                                                     {
                                                                                                                        §§push(_loc8_);
                                                                                                                        if(!_loc34_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * _loc4_.scaleX);
                                                                                                                           loop13:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(2);
                                                                                                                              loop14:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop() / §§pop()));
                                                                                                                                 loop15:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc18_ = §§pop();
                                                                                                                                    if(!_loc35_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§push(_loc9_);
                                                                                                                                    loop16:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc4_.scaleY);
                                                                                                                                       if(!(_loc34_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(_loc35_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             §§push(2);
                                                                                                                                             if(!_loc35_)
                                                                                                                                             {
                                                                                                                                                continue loop14;
                                                                                                                                             }
                                                                                                                                             §§push(Number(§§pop() / §§pop()));
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc19_ = §§pop();
                                                                                                                                                addr904:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc16_);
                                                                                                                                                   loop19:
                                                                                                                                                   while(_loc35_ || param1)
                                                                                                                                                   {
                                                                                                                                                      §§push(-1.1);
                                                                                                                                                      loop20:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() < §§pop());
                                                                                                                                                         if(!(§§pop() < §§pop()))
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            if(!_loc34_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc16_);
                                                                                                                                                               if(!(_loc34_ && _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  continue loop16;
                                                                                                                                                               }
                                                                                                                                                               addr1019:
                                                                                                                                                               _loc5_ = int(§§pop());
                                                                                                                                                               addr1018:
                                                                                                                                                               if(_loc35_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  addr1002:
                                                                                                                                                                  _loc14_++;
                                                                                                                                                                  if(_loc35_)
                                                                                                                                                                  {
                                                                                                                                                                     if(true)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop9;
                                                                                                                                                                     }
                                                                                                                                                                     addr1007:
                                                                                                                                                                     §§push(_loc5_);
                                                                                                                                                                     if(!(_loc34_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr1018);
                                                                                                                                                                        §§push(§§pop() + 4);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1019);
                                                                                                                                                               }
                                                                                                                                                               addr1089:
                                                                                                                                                               if(_loc35_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc34_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     addr1103:
                                                                                                                                                                     §§goto(addr1007);
                                                                                                                                                                  }
                                                                                                                                                                  loop54:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc18_);
                                                                                                                                                                     if(!(_loc34_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc35_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           addr1449:
                                                                                                                                                                           §§push(-§§pop());
                                                                                                                                                                           loop55:
                                                                                                                                                                           while(!(_loc34_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              addr1457:
                                                                                                                                                                              §§push(_loc22_);
                                                                                                                                                                              if(_loc35_ || _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc35_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    loop56:
                                                                                                                                                                                    while(!_loc34_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc19_);
                                                                                                                                                                                       if(_loc35_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() + §§pop() * _loc23_);
                                                                                                                                                                                          loop57:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc34_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc34_ && _loc2_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc34_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1492:
                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                      loop58:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc30_ = §§pop();
                                                                                                                                                                                                         if(_loc35_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1496:
                                                                                                                                                                                                            §§push(_loc18_);
                                                                                                                                                                                                            if(_loc35_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(-§§pop());
                                                                                                                                                                                                               §§push(_loc23_);
                                                                                                                                                                                                               if(_loc35_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  if(_loc34_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr1373:
                                                                                                                                                                                                                  if(!(_loc34_ && _loc2_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1585:
                                                                                                                                                                                                                     if(!(_loc34_ && this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc19_);
                                                                                                                                                                                                                        if(_loc35_ || _loc2_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc35_ || this)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc34_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc22_);
                                                                                                                                                                                                                                 if(!(_loc34_ && param1))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr1413:
                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                    if(_loc35_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                       if(!(_loc34_ && _loc3_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(-§§pop());
                                                                                                                                                                                                                                          if(_loc34_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop55;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                          if(_loc34_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop57;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(_loc34_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop56;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          _loc31_ = §§pop();
                                                                                                                                                                                                                                          loop59:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(this.§"!F§);
                                                                                                                                                                                                                                             §§push(_loc5_);
                                                                                                                                                                                                                                             §§push(_loc6_);
                                                                                                                                                                                                                                             loop60:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc26_);
                                                                                                                                                                                                                                                loop61:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                   loop62:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc7_);
                                                                                                                                                                                                                                                      loop63:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc27_);
                                                                                                                                                                                                                                                         loop64:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                            loop65:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§pop().§7! §(§§pop(),§§pop(),§§pop());
                                                                                                                                                                                                                                                               if(_loc35_ || this)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  break loop12;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr1700:
                                                                                                                                                                                                                                                               loop66:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc4_.rotation);
                                                                                                                                                                                                                                                                  §§push(0);
                                                                                                                                                                                                                                                                  addr1679:
                                                                                                                                                                                                                                                                  addr1619:
                                                                                                                                                                                                                                                                  loop67:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() == §§pop());
                                                                                                                                                                                                                                                                     if(_loc35_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1682:
                                                                                                                                                                                                                                                                        §§push(!§§pop());
                                                                                                                                                                                                                                                                        loop68:
                                                                                                                                                                                                                                                                        while(§§pop())
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§pop();
                                                                                                                                                                                                                                                                              §§push(Math.abs(_loc18_ - _loc19_) > 0.5);
                                                                                                                                                                                                                                                                              if(_loc35_ || param1)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!_loc34_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    break loop68;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop68;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr1663:
                                                                                                                                                                                                                                                                           _loc22_ = Math.cos(_loc4_.rotation);
                                                                                                                                                                                                                                                                           §§push(Number(Math.sin(_loc4_.rotation)));
                                                                                                                                                                                                                                                                           break loop55;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§push(this.§"!F§);
                                                                                                                                                                                                                                                                        loop69:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc35_ || this))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              break loop65;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§push(_loc5_);
                                                                                                                                                                                                                                                                           loop70:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc6_);
                                                                                                                                                                                                                                                                              if(!(_loc35_ || _loc2_))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop60;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              if(!(_loc35_ || this))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop62;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§push(_loc18_);
                                                                                                                                                                                                                                                                              if(!(_loc34_ && _loc2_))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!_loc34_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                    continue loop60;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop65;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr1243:
                                                                                                                                                                                                                                                                              §§push(_loc19_);
                                                                                                                                                                                                                                                                              if(!_loc35_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop64;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                              if(_loc34_ && this)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop63;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              if(_loc34_ && _loc3_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop61;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§pop().§7! §(§§pop(),§§pop(),§§pop());
                                                                                                                                                                                                                                                                              if(!_loc35_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop59;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§push(this.§"!F§);
                                                                                                                                                                                                                                                                              if(_loc34_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1689:
                                                                                                                                                                                                                                                                                 §§push(_loc5_);
                                                                                                                                                                                                                                                                                 continue loop66;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§push(_loc5_);
                                                                                                                                                                                                                                                                              §§push(1);
                                                                                                                                                                                                                                                                              loop71:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                 loop72:
                                                                                                                                                                                                                                                                                 while(_loc35_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc35_ || _loc2_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(_loc6_);
                                                                                                                                                                                                                                                                                       if(_loc35_ || _loc2_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop() + _loc18_);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       loop73:
                                                                                                                                                                                                                                                                                       for(; !(_loc34_ && this); while(_loc35_ || this)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc7_);
                                                                                                                                                                                                                                                                                          if(_loc35_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr1139);
                                                                                                                                                                                                                                                                                             §§push(_loc19_);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1140);
                                                                                                                                                                                                                                                                                       })
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc7_);
                                                                                                                                                                                                                                                                                          if(_loc35_ || _loc3_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc35_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc19_);
                                                                                                                                                                                                                                                                                                loop74:
                                                                                                                                                                                                                                                                                                while(!_loc34_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                   loop75:
                                                                                                                                                                                                                                                                                                   while(_loc35_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§pop().§7! §(§§pop(),§§pop(),§§pop());
                                                                                                                                                                                                                                                                                                      §§push(this.§"!F§);
                                                                                                                                                                                                                                                                                                      loop76:
                                                                                                                                                                                                                                                                                                      for(; _loc35_; while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§pop().§7! §(§§pop(),§§pop(),§§pop());
                                                                                                                                                                                                                                                                                                         §§push(this.§"!F§);
                                                                                                                                                                                                                                                                                                         if(!_loc35_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop76;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§push(_loc5_);
                                                                                                                                                                                                                                                                                                         if(_loc34_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         if(!_loc35_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop66;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§push(3);
                                                                                                                                                                                                                                                                                                         if(!_loc34_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                            if(!_loc34_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§goto(addr1287);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§goto(addr1121);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         if(_loc35_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr1298:
                                                                                                                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                            if(_loc35_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(_loc6_);
                                                                                                                                                                                                                                                                                                               §§push(_loc30_);
                                                                                                                                                                                                                                                                                                               if(!(_loc34_ && param1))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr1331:
                                                                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                  if(!(_loc34_ && _loc2_))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§goto(addr1319);
                                                                                                                                                                                                                                                                                                                     §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                     §§push(_loc31_);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                  §§push(_loc25_);
                                                                                                                                                                                                                                                                                                                  break loop74;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1320);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr1328:
                                                                                                                                                                                                                                                                                                            §§goto(addr1331);
                                                                                                                                                                                                                                                                                                            §§push(_loc6_ + _loc24_);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1328);
                                                                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                      },continue loop70)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc35_ || param1)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc5_);
                                                                                                                                                                                                                                                                                                            §§push(2);
                                                                                                                                                                                                                                                                                                            if(!_loc34_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                               while(_loc35_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(_loc18_);
                                                                                                                                                                                                                                                                                                                     addr1125:
                                                                                                                                                                                                                                                                                                                     addr1286:
                                                                                                                                                                                                                                                                                                                     addr1287:
                                                                                                                                                                                                                                                                                                                     while(_loc35_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                        continue loop73;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr1287:
                                                                                                                                                                                                                                                                                                                     §§pop().§7! §(§§pop(),§§pop(),§§pop());
                                                                                                                                                                                                                                                                                                                     §§goto(addr1007);
                                                                                                                                                                                                                                                                                                                     §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                     if(!(_loc34_ && param1))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(_loc18_);
                                                                                                                                                                                                                                                                                                                        if(!_loc35_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§pop().§7! §(§§pop(),§§pop(),§§pop());
                                                                                                                                                                                                                                                                                                                           if(_loc35_ || param1)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(this.§"!F§);
                                                                                                                                                                                                                                                                                                                              break loop65;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                        if(_loc35_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                           if(_loc35_ || _loc3_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr1066:
                                                                                                                                                                                                                                                                                                                              §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                              if(!(_loc34_ && _loc3_))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(_loc34_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    continue loop74;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 if(!(_loc34_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                    if(_loc34_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       continue loop76;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    if(_loc35_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§pop().§7! §(§§pop(),§§pop(),§§pop());
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1089);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1125);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    addr1278:
                                                                                                                                                                                                                                                                                                                                    if(!(_loc35_ || _loc3_))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       addr1320:
                                                                                                                                                                                                                                                                                                                                       §§pop().§7! §(§§pop(),§§pop(),§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                       addr1268:
                                                                                                                                                                                                                                                                                                                                       §§push(this.§"!F§);
                                                                                                                                                                                                                                                                                                                                       §§push(_loc5_ + 3);
                                                                                                                                                                                                                                                                                                                                       break loop72;
                                                                                                                                                                                                                                                                                                                                       addr1319:
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1286);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                    continue loop76;
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1066);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 addr1139:
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           addr1275:
                                                                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                           §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                           break loop75;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        continue loop73;
                                                                                                                                                                                                                                                                                                                        addr1334:
                                                                                                                                                                                                                                                                                                                        break loop67;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               continue loop72;
                                                                                                                                                                                                                                                                                                               addr1121:
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            continue loop71;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1268);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop69;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1278);
                                                                                                                                                                                                                                                                                                   §§push(_loc29_);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1334);
                                                                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1328);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1190);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr1272:
                                                                                                                                                                                                                                                                                       if(!_loc34_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr1275);
                                                                                                                                                                                                                                                                                          §§push(_loc28_);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1331);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1298);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1272);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop60;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr1683:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1685);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr1589:
                                                                                                                                                                                                                                                                  §§push(_loc18_);
                                                                                                                                                                                                                                                                  addr1589:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(-§§pop());
                                                                                                                                                                                                                                                                     addr1590:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1594:
                                                                                                                                                                                                                                                                        §§push(§§pop() * _loc22_ - _loc19_ * _loc23_);
                                                                                                                                                                                                                                                                        do
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           _loc26_ = §§pop();
                                                                                                                                                                                                                                                                           §§push(-_loc18_);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        while(!_loc35_);
                                                                                                                                                                                                                                                                        
                                                                                                                                                                                                                                                                        if(!(_loc34_ && _loc3_))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr1568:
                                                                                                                                                                                                                                                                           §§push(§§pop() * _loc23_);
                                                                                                                                                                                                                                                                           break loop56;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§push(_loc5_);
                                                                                                                                                                                                                                                            if(!_loc34_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr1295);
                                                                                                                                                                                                                                                               §§push(2);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr1326:
                                                                                                                                                                                                                                                            §§goto(addr1295);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr1623:
                                                                                                                                                                                                                                       §§push(§§pop() * _loc22_);
                                                                                                                                                                                                                                       §§push(_loc19_ * _loc23_);
                                                                                                                                                                                                                                       break loop16;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§push(-(§§pop() + §§pop() * _loc22_));
                                                                                                                                                                                                                                    break loop10;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1594);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1623);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1594);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1413);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc27_ = §§pop();
                                                                                                                                                                                                                        addr1586:
                                                                                                                                                                                                                        §§push(_loc18_);
                                                                                                                                                                                                                        §§push(_loc22_);
                                                                                                                                                                                                                        addr1530:
                                                                                                                                                                                                                        loop37:
                                                                                                                                                                                                                        while(!(_loc34_ && param1))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           §§push(_loc19_);
                                                                                                                                                                                                                           §§push(_loc23_);
                                                                                                                                                                                                                           if(_loc35_ || this)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc34_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                    if(!_loc34_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                          addr1554:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             _loc28_ = §§pop();
                                                                                                                                                                                                                                             break loop58;
                                                                                                                                                                                                                                             §§goto(addr1496);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr1553:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1589);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 addr1502:
                                                                                                                                                                                                                                 §§push(_loc19_ * _loc22_);
                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                 if(_loc34_ && _loc2_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(-§§pop());
                                                                                                                                                                                                                                    addr1515:
                                                                                                                                                                                                                                    addr1629:
                                                                                                                                                                                                                                    while(!_loc34_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc35_ || _loc3_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1525:
                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             _loc29_ = §§pop();
                                                                                                                                                                                                                                             continue loop54;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr1525:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr1663);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc24_ = §§pop();
                                                                                                                                                                                                                                       §§push(_loc18_);
                                                                                                                                                                                                                                       if(!_loc34_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1606:
                                                                                                                                                                                                                                          §§push(§§pop() * _loc23_);
                                                                                                                                                                                                                                          §§push(_loc19_ * _loc22_);
                                                                                                                                                                                                                                          break loop37;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr1616:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(-§§pop());
                                                                                                                                                                                                                                          break loop57;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1373);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1413);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                           if(_loc35_ || _loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr1616);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           break loop57;
                                                                                                                                                                                                                           §§goto(addr1606);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr1585:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1514);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1594);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1554);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         break;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc18_);
                                                                                                                                                                                                         §§push(_loc23_);
                                                                                                                                                                                                         addr1500:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc34_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr1502);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr1679);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1457);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1515);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1525);
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc25_ = §§pop();
                                                                                                                                                                                             §§goto(addr1619);
                                                                                                                                                                                             §§goto(addr1616);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1579:
                                                                                                                                                                                          §§goto(addr1413);
                                                                                                                                                                                          §§push(_loc19_);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1530);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr1628:
                                                                                                                                                                                    if(!(_loc34_ && _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc35_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr1579);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1623);
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr1629);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr1628:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1594);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1500);
                                                                                                                                                                           }
                                                                                                                                                                           _loc23_ = §§pop();
                                                                                                                                                                           §§goto(addr1623);
                                                                                                                                                                           §§push(_loc18_);
                                                                                                                                                                           addr1450:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1558);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1450);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1287);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1193);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            loop22:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!§§pop())
                                                                                                                                                               {
                                                                                                                                                                  loop23:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop();
                                                                                                                                                                     if(!_loc34_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc17_);
                                                                                                                                                                        loop24:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(-1.1);
                                                                                                                                                                           if(!_loc34_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() < §§pop());
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 loop26:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop();
                                                                                                                                                                                       if(_loc35_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc17_);
                                                                                                                                                                                          if(_loc35_ || _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr761:
                                                                                                                                                                                             §§push(§§pop() > 1.1);
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§[Z§.§%m§)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc34_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(Number(Math.max(_loc18_,_loc19_)));
                                                                                                                                                                                                         if(!_loc34_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc35_ || this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop19;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                            if(!_loc34_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc20_ = §§pop();
                                                                                                                                                                                                               §§push(§[Z§.§%m§.§ !8§);
                                                                                                                                                                                                               if(!_loc34_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                                                                                                                  if(_loc35_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc20_ = Number(§§pop());
                                                                                                                                                                                                                     if(_loc35_ || _loc2_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(1.1);
                                                                                                                                                                                                                        if(_loc35_ || _loc2_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc20_);
                                                                                                                                                                                                                           if(_loc35_ || this)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                              if(!(_loc34_ && _loc3_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc35_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop10;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                 if(_loc35_ || _loc2_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc35_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop13;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    _loc21_ = §§pop();
                                                                                                                                                                                                                                    §§goto(addr749);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1606);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1590);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1606);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1449);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1193);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1492);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1679);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1623);
                                                                                                                                                                                                            continue loop19;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1585);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1586);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1002);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr979:
                                                                                                                                                                                                if(_loc15_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr980:
                                                                                                                                                                                                   §§push((_loc32_ = this).dynamic);
                                                                                                                                                                                                   if(!(_loc34_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() + 1);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   _loc33_ = §§pop();
                                                                                                                                                                                                   if(!_loc34_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc32_.dynamic = _loc33_;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break loop23;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1002);
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop10;
                                                                                                                                                                                             addr762:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1449);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr980);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr761);
                                                                                                                                                                                    addr632:
                                                                                                                                                                                    §§push(§§pop() < -§§pop());
                                                                                                                                                                                    if(!(_loc35_ || _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue;
                                                                                                                                                                                    }
                                                                                                                                                                                    loop34:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                       if(_loc35_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             addr591:
                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc34_ && _loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc34_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(false);
                                                                                                                                                                                                      if(!(_loc34_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc35_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc15_ = §§pop();
                                                                                                                                                                                                            if(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc17_);
                                                                                                                                                                                                               §§push(_loc21_);
                                                                                                                                                                                                               if(_loc34_ && _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop20;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr625:
                                                                                                                                                                                                               if(!(_loc34_ && param1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr632);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop22;
                                                                                                                                                                                                                     §§goto(addr625);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr854:
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop26;
                                                                                                                                                                                                            addr615:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr762);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1682);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc16_);
                                                                                                                                                                                                         §§push(-_loc21_);
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() < §§pop());
                                                                                                                                                                                                            §§push(§§pop() < §§pop());
                                                                                                                                                                                                            addr695:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!§§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc35_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc35_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop11;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop23;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr979);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(§§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop34;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(_loc35_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§pop();
                                                                                                                                                                                                                        if(!(_loc34_ && _loc2_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr615);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr1700);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1682);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr675:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1682);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr583:
                                                                                                                                                                                                            continue loop24;
                                                                                                                                                                                                            if(_loc34_ && _loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr591);
                                                                                                                                                                                                            §§push(§§pop() > §§pop());
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr749:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1682);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr980);
                                                                                                                                                                                             }
                                                                                                                                                                                             break;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc35_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop();
                                                                                                                                                                                             §§push(_loc17_);
                                                                                                                                                                                             if(!(_loc34_ && _loc2_))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop24;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1525);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1682);
                                                                                                                                                                                          §§goto(addr1682);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr695);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr979);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr815:
                                                                                                                                                                           }
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1594);
                                                                                                                                                                     }
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1689);
                                                                                                                                                                  §§push(this.§"!F§);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr815);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1002);
                                                                                                                                                      }
                                                                                                                                                      continue loop16;
                                                                                                                                                   }
                                                                                                                                                   continue loop15;
                                                                                                                                                }
                                                                                                                                                addr710:
                                                                                                                                                §§push(_loc16_);
                                                                                                                                                if(!_loc35_)
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                §§goto(addr660);
                                                                                                                                                §§push(_loc21_);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr1628);
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§goto(addr1628);
                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                 }
                                                                                                                                 continue loop12;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr1568);
                                                                                                                     }
                                                                                                                     §§goto(addr1103);
                                                                                                                  }
                                                                                                                  §§goto(addr1432);
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            §§goto(addr1326);
                                                                                                         }
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr1585);
                                                                                                      §§goto(addr1413);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr1628);
                                                                                             }
                                                                                             §§goto(addr1553);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr542);
                                                                                 }
                                                                                 addr1705:
                                                                                 return;
                                                                              }
                                                                              §§goto(addr542);
                                                                           }
                                                                           addr470:
                                                                        }
                                                                        break;
                                                                     }
                                                                     addr461:
                                                                  }
                                                                  §§goto(addr474);
                                                               }
                                                               §§goto(addr470);
                                                            }
                                                            if(§§pop() != Number.MAX_VALUE)
                                                            {
                                                               if(!_loc35_)
                                                               {
                                                               }
                                                            }
                                                            §§goto(addr481);
                                                         }
                                                         §§goto(addr491);
                                                      }
                                                      §§goto(addr474);
                                                   }
                                                   §§goto(addr481);
                                                }
                                                §§goto(addr471);
                                             }
                                             §§goto(addr470);
                                          }
                                          while(true)
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                if(!(_loc34_ && _loc3_))
                                                {
                                                   this.§#!D§(this.§5j§);
                                                   addr330:
                                                   _loc4_ = this.§6l§[this.§?!"§++] as §50§;
                                                   this.initParticle(_loc4_);
                                                   loop2:
                                                   while(true)
                                                   {
                                                      this.advanceParticle(_loc4_,this.§4!=§);
                                                      §§push(_loc12_);
                                                      loop3:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         loop4:
                                                         while(true)
                                                         {
                                                            _loc13_ = §§pop();
                                                            while(!_loc34_)
                                                            {
                                                               if(!isNaN(this.§'!L§))
                                                               {
                                                                  loop6:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc12_);
                                                                     if(_loc35_)
                                                                     {
                                                                        if(_loc34_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(1 - this.§'!L§);
                                                                        if(_loc35_)
                                                                        {
                                                                           §§push(Math.random() * this.§'!L§);
                                                                           if(!_loc34_)
                                                                           {
                                                                              §§push(§§pop() * 2);
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc35_)
                                                                           {
                                                                              addr425:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc35_ || this)
                                                                              {
                                                                                 addr435:
                                                                                 §§push(§§pop() + this.§ '§);
                                                                                 if(_loc35_)
                                                                                 {
                                                                                    addr438:
                                                                                    if(!_loc35_)
                                                                                    {
                                                                                       continue loop3;
                                                                                    }
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                              }
                                                                              _loc13_ = §§pop();
                                                                              while(true)
                                                                              {
                                                                                 §§push(this);
                                                                                 addr395:
                                                                                 §§push(this.§4!=§);
                                                                                 continue loop6;
                                                                                 if(!(_loc34_ && this))
                                                                                 {
                                                                                    §§push(§§pop() - _loc13_);
                                                                                 }
                                                                                 §§pop().§4!=§ = §§pop();
                                                                                 if(!_loc35_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(false)
                                                                                 {
                                                                                    continue loop6;
                                                                                 }
                                                                                 §§goto(addr461);
                                                                              }
                                                                              addr442:
                                                                           }
                                                                           §§goto(addr435);
                                                                        }
                                                                        §§goto(addr425);
                                                                     }
                                                                     §§goto(addr438);
                                                                  }
                                                                  continue loop4;
                                                                  addr402:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(this);
                                                                  §§push(this.§ '§);
                                                                  if(_loc35_)
                                                                  {
                                                                     §§push(_loc12_);
                                                                     if(!(_loc34_ && this))
                                                                     {
                                                                        §§push(§§pop() - _loc13_);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                  }
                                                                  §§pop().§ '§ = §§pop();
                                                                  if(!(_loc34_ && param1))
                                                                  {
                                                                     if(!_loc35_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§goto(addr395);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr402);
                                                                  }
                                                               }
                                                            }
                                                            continue loop2;
                                                         }
                                                      }
                                                   }
                                                }
                                                break;
                                             }
                                             §§goto(addr330);
                                             break loop0;
                                          }
                                          §§goto(addr481);
                                          addr318:
                                       }
                                       break;
                                    }
                                    while(true)
                                    {
                                       §§goto(addr318);
                                    }
                                 }
                                 §§goto(addr126);
                              }
                           }
                           §§goto(addr108);
                        }
                        §§goto(addr112);
                     }
                     §§goto(addr108);
                  }
               }
            }
            §§goto(addr99);
         }
         addr107:
      }
      
      private function §>_§(param1:Matrix3D) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§50§ = null;
         var _loc2_:int = 0;
         loop0:
         while(_loc2_ < this.§?!"§)
         {
            _loc3_ = this.§6l§[_loc2_];
            if(_loc4_)
            {
               this.§#d§[_loc2_ * 3] = _loc3_.x;
            }
            loop1:
            while(true)
            {
               while(true)
               {
                  this.§#d§[_loc2_ * 3 + 1] = _loc3_.y;
                  do
                  {
                     _loc2_++;
                  }
                  while(_loc5_);
                  
                  if(_loc4_)
                  {
                     if(true)
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop1;
               }
               continue loop0;
            }
         }
         if(!(_loc5_ && param1))
         {
            param1.transformVectors(this.§#d§,this.§]!"§);
         }
      }
      
      override public function render(param1:§4]§, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param1))
         {
            this.§!!>§(param1.§^Z§);
            do
            {
               loop1:
               while(true)
               {
                  if(this.dynamic == 0)
                  {
                     if(_loc7_)
                     {
                        break;
                     }
                     while(true)
                     {
                        addr40:
                        param2 = §§pop();
                        if(!(_loc7_ || this))
                        {
                           continue;
                        }
                        while(false)
                        {
                           continue loop1;
                        }
                        §§push(§]5§);
                        §§push(param2 == 1);
                        if(_loc7_ || _loc3_)
                        {
                           §§push(!§§pop());
                        }
                        §§push(§§pop().§ !L§(§§pop(),this.§-`§.mipMapping,false,this.§=o§,true));
                        if(_loc7_ || this)
                        {
                           §§push(§§pop());
                        }
                        var _loc3_:* = §§pop();
                        var _loc4_:Context3D;
                        if((_loc4_ = param1.§,!D§) == null)
                        {
                           if(!(_loc6_ && this))
                           {
                              return;
                           }
                        }
                        var _loc5_:Vector.<Number> = !!this.§7o§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
                        if(_loc7_ || param1)
                        {
                           if(param1.§!!E§ != this.§4!<§)
                           {
                              while(true)
                              {
                                 this.§#!D§(0);
                                 loop6:
                                 while(true)
                                 {
                                    this.§4!<§ = param1.§!!E§;
                                    addr394:
                                    while(true)
                                    {
                                       addr360:
                                       if(!(_loc7_ || param2))
                                       {
                                          continue;
                                       }
                                       this.§ >§.uploadFromVector(this.§"!F§.§+!R§,0,this.dynamic * 4);
                                       while(true)
                                       {
                                          this.§;F§.uploadFromVector(this.§"!F§.§5q§,0,this.dynamic * 4);
                                          loop10:
                                          while(true)
                                          {
                                             addr327:
                                             while(true)
                                             {
                                                _loc4_.setBlendFactors(this.§;p§,this.§>=§);
                                                continue loop10;
                                             }
                                          }
                                          _loc4_.setProgram(§[Z§.§%m§.§ %§(_loc3_));
                                          if(_loc6_ && this)
                                          {
                                             continue;
                                          }
                                          while(true)
                                          {
                                             _loc4_.setTextureAt(0,this.§-`§.getBase(_loc4_));
                                             _loc4_.setVertexBufferAt(0,this.§;F§,§0&§.§%#§,Context3DVertexBufferFormat.FLOAT_3);
                                             while(!_loc6_)
                                             {
                                                _loc4_.setVertexBufferAt(1,this.§=t§,§0&§.§@!%§,Context3DVertexBufferFormat.FLOAT_2);
                                                loop15:
                                                while(true)
                                                {
                                                   _loc4_.setVertexBufferAt(2,this.§ >§,§0&§.§ C§,Context3DVertexBufferFormat.FLOAT_4);
                                                   while(_loc7_)
                                                   {
                                                      _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§^Z§,true);
                                                      if(_loc7_ || _loc3_)
                                                      {
                                                         continue loop15;
                                                      }
                                                   }
                                                   §§goto(addr334);
                                                }
                                             }
                                             continue loop6;
                                          }
                                       }
                                    }
                                 }
                                 addr219:
                                 _loc4_.setVertexBufferAt(1,null);
                                 if(_loc6_ && param1)
                                 {
                                    continue;
                                 }
                                 _loc4_.setVertexBufferAt(2,null);
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    if(!_loc7_)
                                    {
                                       §§goto(addr239);
                                    }
                                    return;
                                 }
                                 §§goto(addr219);
                              }
                           }
                           while(true)
                           {
                              if(!this.§finally§(_loc4_))
                              {
                                 §§goto(addr360);
                              }
                              §§goto(addr327);
                              §§goto(addr394);
                           }
                        }
                        §§goto(addr326);
                     }
                  }
                  while(true)
                  {
                     §§push(param2);
                     if(_loc7_)
                     {
                        §§push(§§pop() * this.alpha);
                        if(!(_loc6_ && this))
                        {
                           addr39:
                           §§push(Number(§§pop()));
                        }
                        §§goto(addr40);
                     }
                     §§goto(addr39);
                  }
               }
            }
            while(_loc6_);
            
            return;
         }
         §§goto(addr48);
      }
      
      public function get §,y§() : Boolean
      {
         return false;
      }
      
      public function get §5j§() : int
      {
         return this.§"!F§.§6P§ / 4;
      }
      
      public function get §>!!§() : int
      {
         return this.§?!"§;
      }
      
      public function get §^!?§() : Number
      {
         return this.§-o§;
      }
      
      public function set §^!?§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§-o§ = param1;
         }
      }
      
      public function get §8!%§() : Number
      {
         return this.§^!4§;
      }
      
      public function set §8!%§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§^!4§ = param1;
         }
      }
      
      public function get §7N§() : Number
      {
         return this.§>g§;
      }
      
      public function set §7N§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§>g§ = param1;
         }
      }
      
      public function get texture() : Texture
      {
         return this.§-`§;
      }
   }
}
