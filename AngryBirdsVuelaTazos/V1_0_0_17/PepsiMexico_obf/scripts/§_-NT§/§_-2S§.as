package §_-NT§
{
   import §_-1Q§.§_-G7§;
   import §_-4g§.Texture;
   import §_-4g§.§_-Jq§;
   import §_-HT§.§_-8c§;
   import §_-LP§.DisplayObject;
   import §_-LP§.§_-19§;
   import §_-gY§.§_-K6§;
   import §_-gY§.§_-Vu§;
   import §_-ia§.§_-dF§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DBlendFactor;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-2S§ extends DisplayObject implements §_-G7§
   {
       
      
      private var §_-cX§:Texture;
      
      private var §_-ja§:Vector.<§_-Eo§>;
      
      private var §_-68§:Number;
      
      private var §_-bk§:§_-dF§;
      
      private var §_-VU§:VertexBuffer3D;
      
      private var §_-iD§:VertexBuffer3D;
      
      private var §_-O6§:Vector.<uint>;
      
      private var §_-aB§:IndexBuffer3D;
      
      private var §_-q5§:int;
      
      private var §_-7c§:Number;
      
      private var §_-6k§:Number;
      
      protected var §_-CF§:Number;
      
      protected var §_-Pd§:Number;
      
      protected var §_-Cr§:Boolean;
      
      protected var §_-pM§:String;
      
      protected var §_-Wx§:String;
      
      private var §_-Rx§:int = -1;
      
      public function §_-2S§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            super();
            if(param1 != null)
            {
               this.§_-cX§ = param1;
               if(!(_loc8_ && this))
               {
                  this.§_-Cr§ = param1.premultipliedAlpha;
                  this.§_-ja§ = new Vector.<§_-Eo§>(0,false);
                  this.§_-bk§ = new §_-dF§(0,this.§_-Cr§);
                  this.§_-O6§ = new Vector.<uint>(0);
                  this.§_-7c§ = param2;
                  this.§_-6k§ = 0;
                  this.§_-68§ = 0;
                  this.§_-CF§ = this.§_-Pd§ = 0;
                  if(_loc7_ || param2)
                  {
                     §§push(this);
                     if(_loc7_)
                     {
                        §§push(param5);
                        if(_loc7_)
                        {
                           §§push(§§pop());
                           if(_loc7_)
                           {
                              addr102:
                              if(!§§pop())
                              {
                                 if(!_loc8_)
                                 {
                                    addr106:
                                    §§pop();
                                    §§push(Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA);
                                 }
                              }
                              §§pop().§_-Wx§ = §§pop();
                              if(_loc7_)
                              {
                                 addr113:
                                 §§push(this);
                                 if(_loc7_)
                                 {
                                    §§push(param4);
                                    if(!_loc8_)
                                    {
                                       §§push(§§pop());
                                       if(_loc7_ || param2)
                                       {
                                          if(!§§pop())
                                          {
                                             if(_loc7_ || this)
                                             {
                                                addr136:
                                                §§pop();
                                                if(_loc7_ || param1)
                                                {
                                                   if(this.§_-Cr§)
                                                   {
                                                      addr147:
                                                      §§push(Context3DBlendFactor.ONE);
                                                      if(_loc7_ || param2)
                                                      {
                                                      }
                                                      §§goto(addr161);
                                                   }
                                                   else
                                                   {
                                                      addr161:
                                                      §§pop().§_-pM§ = §§pop();
                                                      if(_loc7_ || param3)
                                                      {
                                                         addr176:
                                                         this.§_-Wq§(param3);
                                                         §§goto(addr179);
                                                      }
                                                      addr179:
                                                      return;
                                                      §§push(Context3DBlendFactor.SOURCE_ALPHA);
                                                   }
                                                   §§goto(addr161);
                                                }
                                                §§goto(addr147);
                                             }
                                          }
                                       }
                                       §§goto(addr147);
                                    }
                                    §§goto(addr136);
                                 }
                                 §§goto(addr147);
                              }
                              §§goto(addr179);
                           }
                           §§goto(addr106);
                        }
                        §§goto(addr102);
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr176);
               }
               §§goto(addr113);
            }
         }
         throw new ArgumentError("texture must not be null");
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§_-VU§)
            {
               this.§_-VU§.dispose();
            }
            if(this.§_-iD§)
            {
               this.§_-iD§.dispose();
            }
         }
         if(this.§_-aB§)
         {
            this.§_-aB§.dispose();
            if(_loc2_ || _loc2_)
            {
               addr55:
               super.dispose();
            }
            return;
         }
         §§goto(addr55);
      }
      
      protected function createParticle() : §_-Eo§
      {
         return new §_-Eo§();
      }
      
      protected function initParticle(param1:§_-Eo§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            param1.x = this.§_-CF§;
            if(_loc3_)
            {
               param1.y = this.§_-Pd§;
               addr22:
               if(!_loc2_)
               {
                  param1.§_-mm§ = 0;
                  if(!_loc2_)
                  {
                     param1.§_-UL§ = 1;
                     if(_loc3_ || _loc2_)
                     {
                     }
                     §§goto(addr63);
                  }
               }
               param1.color = Math.random() * 16777215;
            }
            addr63:
            return;
         }
         §§goto(addr22);
      }
      
      protected function advanceParticle(param1:§_-Eo§, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(param1);
            §§push(param1.y);
            if(!_loc3_)
            {
               §§push(param2);
               if(!(_loc3_ && param1))
               {
                  §§push(§§pop() * 250);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().y = §§pop();
            if(!_loc3_)
            {
               addr35:
               §§push(param1);
               §§push(1);
               §§push(param1.§_-mm§);
               if(_loc4_)
               {
                  §§push(§§pop() / param1.§_-UL§);
               }
               §§pop().alpha = §§pop() - §§pop();
               if(!_loc3_)
               {
                  param1.scale = 1 - param1.alpha;
                  if(!(_loc3_ && param2))
                  {
                     addr68:
                     §§push(param1);
                     §§push(param1.§_-mm§);
                     if(_loc4_ || param2)
                     {
                        §§push(§§pop() + param2);
                     }
                     §§pop().§_-mm§ = §§pop();
                  }
                  return;
               }
            }
            §§goto(addr68);
         }
         §§goto(addr35);
      }
      
      private function §_-Wq§(param1:int) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:* = 0;
         §§push(this.§_-HR§);
         if(_loc8_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§_-HR§);
         if(!_loc9_)
         {
            §§push(int(§§pop() + param1));
         }
         var _loc3_:* = §§pop();
         var _loc4_:Context3D;
         if((_loc4_ = §_-Vu§.§_-ez§) == null)
         {
            if(!(_loc9_ && _loc2_))
            {
               throw new §_-8c§();
            }
         }
         var _loc5_:§_-dF§;
         (_loc5_ = new §_-dF§(4)).setTexCoords(0,0,0);
         if(_loc8_)
         {
            _loc5_.setTexCoords(1,1,0);
            if(!_loc9_)
            {
               _loc5_.setTexCoords(2,0,1);
               if(!_loc9_)
               {
                  _loc5_.setTexCoords(3,1,1);
               }
            }
         }
         _loc5_ = this.§_-cX§.adjustVertexData(_loc5_);
         if(!_loc9_)
         {
            this.§_-ja§.fixed = false;
            if(_loc8_)
            {
               this.§_-O6§.fixed = false;
            }
         }
         §§push(_loc2_);
         if(!(_loc9_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc6_);
            loop1:
            while(true)
            {
               §§push(_loc3_);
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(_loc8_ || _loc3_)
                     {
                        this.§_-ja§.fixed = true;
                        this.§_-O6§.fixed = true;
                        if(_loc8_ || param1)
                        {
                           addr198:
                           if(this.§_-VU§)
                           {
                              if(_loc8_ || param1)
                              {
                                 break;
                              }
                              §§goto(addr222);
                           }
                           if(this.§_-iD§)
                           {
                              if(_loc8_)
                              {
                                 this.§_-iD§.dispose();
                                 addr219:
                                 if(this.§_-aB§)
                                 {
                                    addr222:
                                    this.§_-aB§.dispose();
                                    §§goto(addr225);
                                 }
                                 addr225:
                                 this.§_-VU§ = _loc4_.createVertexBuffer(_loc3_ * 4,§_-dF§.§_-YF§);
                                 §§goto(addr234);
                              }
                              addr234:
                              this.§_-VU§.uploadFromVector(this.§_-bk§.data,0,_loc3_ * 4);
                              this.§_-iD§ = _loc4_.createVertexBuffer(_loc3_ * 4,§_-dF§.§_-T6§);
                              this.§_-iD§.uploadFromVector(this.§_-bk§.§_-rc§,0,_loc3_ * 4);
                              if(_loc8_ || _loc2_)
                              {
                                 this.§_-aB§ = _loc4_.createIndexBuffer(_loc3_ * 6);
                                 this.§_-aB§.uploadFromVector(this.§_-O6§,0,_loc3_ * 6);
                              }
                              return;
                           }
                           §§goto(addr219);
                        }
                        break;
                     }
                     §§goto(addr198);
                  }
                  else
                  {
                     §§push(_loc6_);
                     if(_loc8_ || _loc2_)
                     {
                        §§push(4);
                        if(_loc9_)
                        {
                           continue;
                        }
                        §§push(int(§§pop() * §§pop()));
                        if(_loc9_)
                        {
                           continue loop1;
                        }
                     }
                     _loc7_ = §§pop();
                     this.§_-ja§.push(this.createParticle());
                     this.§_-bk§.§_-Zi§(_loc5_);
                     if(!_loc8_)
                     {
                        break;
                     }
                     this.§_-O6§.push(_loc7_,_loc7_ + 1,_loc7_ + 2,_loc7_ + 1,_loc7_ + 3,_loc7_ + 2);
                     if(_loc8_ || param1)
                     {
                        continue loop0;
                     }
                  }
                  §§goto(addr198);
               }
               this.§_-VU§.dispose();
               §§goto(addr198);
            }
         }
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(this.§_-7c§ != 0)
            {
               if(_loc2_ || param1)
               {
                  addr45:
                  this.§_-6k§ = param1;
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
         if(_loc2_ || _loc2_)
         {
            this.§_-6k§ = 0;
         }
      }
      
      override public function getBounds(param1:DisplayObject) : Rectangle
      {
         var _loc2_:Matrix = §_-OX§(param1);
         var _loc3_:Point = _loc2_.transformPoint(new Point(x,y));
         return new Rectangle(_loc3_.x,_loc3_.y);
      }
      
      public function §_-IE§(param1:Number) : void
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc3_:§_-Eo§ = null;
         var _loc5_:* = uint(0);
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:* = NaN;
         var _loc14_:§_-Eo§ = null;
         var _loc15_:* = NaN;
         if(_loc18_)
         {
            param1 = Math.min(0.2,param1);
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(_loc18_)
            {
               §§push(this.§_-q5§);
               if(!(_loc19_ && _loc2_))
               {
                  if(§§pop() >= §§pop())
                  {
                     if(_loc18_)
                     {
                        §§push(this.§_-6k§);
                        if(!(_loc19_ && _loc3_))
                        {
                           §§push(0);
                           if(_loc18_)
                           {
                              if(§§pop() > §§pop())
                              {
                                 addr220:
                                 if(_loc18_ || _loc3_)
                                 {
                                    §§push(1);
                                    if(_loc18_)
                                    {
                                       §§push(§§pop() / this.§_-7c§);
                                       if(_loc18_ || this)
                                       {
                                          §§push(Number(§§pop()));
                                          if(!_loc19_)
                                          {
                                             addr187:
                                             _loc15_ = §§pop();
                                             if(_loc18_)
                                             {
                                                §§push(this);
                                                §§push(this.§_-68§);
                                                if(!_loc19_)
                                                {
                                                   §§push(§§pop() + param1);
                                                }
                                                §§pop().§_-68§ = §§pop();
                                                if(!_loc19_)
                                                {
                                                   addr200:
                                                   while(true)
                                                   {
                                                      §§push(this.§_-68§);
                                                      if(_loc18_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(0);
                                                            addr271:
                                                            addr272:
                                                            while(§§pop() > §§pop())
                                                            {
                                                               §§push(this.§_-q5§);
                                                               if(_loc18_ || this)
                                                               {
                                                                  break loop0;
                                                               }
                                                               var _loc4_:* = §§pop();
                                                               §§push(this.§_-cX§.width);
                                                               if(_loc18_ || _loc2_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc11_:* = §§pop();
                                                               §§push(this.§_-cX§.height);
                                                               if(_loc18_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc12_:* = §§pop();
                                                               var _loc13_:int = 0;
                                                               if(!(_loc19_ && _loc3_))
                                                               {
                                                                  loop2:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc13_);
                                                                     loop3:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§_-q5§);
                                                                        while(§§pop() < §§pop())
                                                                        {
                                                                           §§push(_loc13_);
                                                                           if(_loc18_)
                                                                           {
                                                                              §§push(2);
                                                                              if(_loc19_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§push(§§pop() << §§pop());
                                                                              if(_loc19_)
                                                                              {
                                                                                 continue loop3;
                                                                              }
                                                                           }
                                                                           _loc4_ = §§pop();
                                                                           if(_loc19_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              _loc3_ = this.§_-ja§[_loc13_] as §_-Eo§;
                                                                              §§push(_loc3_.color);
                                                                              if(!(_loc19_ && this))
                                                                              {
                                                                                 §§push(uint(§§pop()));
                                                                              }
                                                                              _loc5_ = §§pop();
                                                                              if(_loc18_ || this)
                                                                              {
                                                                                 _loc6_ = _loc3_.alpha;
                                                                                 _loc7_ = _loc3_.x;
                                                                                 if(!_loc19_)
                                                                                 {
                                                                                    §§push(_loc3_.y);
                                                                                    if(!(_loc19_ && _loc2_))
                                                                                    {
                                                                                       _loc8_ = §§pop();
                                                                                       if(_loc18_ || _loc3_)
                                                                                       {
                                                                                          §§push(_loc11_);
                                                                                          if(_loc18_ || param1)
                                                                                          {
                                                                                             §§push(_loc3_.scale);
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                addr404:
                                                                                                §§push(§§pop() * §§pop());
                                                                                                §§push(2);
                                                                                                if(!(_loc19_ && param1))
                                                                                                {
                                                                                                   _loc9_ = §§pop() / §§pop();
                                                                                                   if(!(_loc19_ && this))
                                                                                                   {
                                                                                                      addr425:
                                                                                                      §§push(_loc12_ * _loc3_.scale);
                                                                                                      if(!_loc19_)
                                                                                                      {
                                                                                                         addr429:
                                                                                                         §§push(§§pop() / 2);
                                                                                                         if(_loc19_ && this)
                                                                                                         {
                                                                                                         }
                                                                                                         addr438:
                                                                                                         _loc10_ = §§pop();
                                                                                                         §§push(this.§_-bk§);
                                                                                                         if(!(_loc19_ && this))
                                                                                                         {
                                                                                                            §§push(_loc4_);
                                                                                                            if(!(_loc19_ && _loc2_))
                                                                                                            {
                                                                                                               §§push(4);
                                                                                                               if(_loc18_ || _loc3_)
                                                                                                               {
                                                                                                                  §§pop().§_-9D§(§§pop(),§§pop(),_loc5_,_loc6_);
                                                                                                                  §§push(this.§_-bk§);
                                                                                                                  if(_loc18_)
                                                                                                                  {
                                                                                                                     §§push(_loc4_);
                                                                                                                     if(_loc18_ || param1)
                                                                                                                     {
                                                                                                                        §§push(_loc7_);
                                                                                                                        if(!(_loc19_ && this))
                                                                                                                        {
                                                                                                                           §§push(_loc9_);
                                                                                                                           if(_loc18_)
                                                                                                                           {
                                                                                                                              addr491:
                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                              §§push(_loc8_);
                                                                                                                              if(_loc18_ || _loc3_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - _loc10_);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                                                                                                           addr502:
                                                                                                                           §§push(this.§_-bk§);
                                                                                                                           if(!(_loc19_ && _loc2_))
                                                                                                                           {
                                                                                                                              addr511:
                                                                                                                              §§push(_loc4_);
                                                                                                                              if(_loc18_ || _loc2_)
                                                                                                                              {
                                                                                                                                 addr519:
                                                                                                                                 §§push(1);
                                                                                                                                 if(!(_loc19_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(!_loc19_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc7_);
                                                                                                                                       if(!(_loc19_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + _loc9_);
                                                                                                                                          if(!_loc19_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc8_);
                                                                                                                                             if(_loc18_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc10_);
                                                                                                                                                if(!(_loc19_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   §§pop().setPosition(§§pop(),§§pop(),§§pop() - §§pop());
                                                                                                                                                   §§push(this.§_-bk§);
                                                                                                                                                   if(!(_loc19_ && param1))
                                                                                                                                                   {
                                                                                                                                                      addr564:
                                                                                                                                                      §§push(_loc4_);
                                                                                                                                                      if(_loc18_)
                                                                                                                                                      {
                                                                                                                                                         addr567:
                                                                                                                                                         §§push(2);
                                                                                                                                                         if(!(_loc19_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            addr575:
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            if(_loc18_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               addr583:
                                                                                                                                                               §§push(_loc7_);
                                                                                                                                                               if(!_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  addr586:
                                                                                                                                                                  §§push(§§pop() - _loc9_);
                                                                                                                                                                  if(!_loc19_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc8_);
                                                                                                                                                                     §§push(_loc10_);
                                                                                                                                                                     if(_loc18_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().setPosition(§§pop(),§§pop(),§§pop() + §§pop());
                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop2;
                                                                                                                                                                        }
                                                                                                                                                                        addr608:
                                                                                                                                                                        §§push(this.§_-bk§);
                                                                                                                                                                        §§push(_loc4_ + 3);
                                                                                                                                                                        §§push(_loc7_);
                                                                                                                                                                        if(!(_loc19_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           addr616:
                                                                                                                                                                           §§push(_loc9_);
                                                                                                                                                                           if(!(_loc19_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              addr625:
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              §§push(_loc8_);
                                                                                                                                                                              if(_loc18_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 addr641:
                                                                                                                                                                                 §§push(§§pop() + _loc10_);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                                                                                                                                                           _loc13_++;
                                                                                                                                                                           continue loop2;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr641);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr625);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr616);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr608);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr641);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr586);
                                                                                                                                    }
                                                                                                                                    §§goto(addr583);
                                                                                                                                 }
                                                                                                                                 §§goto(addr608);
                                                                                                                              }
                                                                                                                              §§goto(addr567);
                                                                                                                           }
                                                                                                                           §§goto(addr564);
                                                                                                                        }
                                                                                                                        §§goto(addr491);
                                                                                                                     }
                                                                                                                     §§goto(addr519);
                                                                                                                  }
                                                                                                                  §§goto(addr511);
                                                                                                               }
                                                                                                               §§goto(addr575);
                                                                                                            }
                                                                                                            §§goto(addr567);
                                                                                                         }
                                                                                                         §§goto(addr564);
                                                                                                      }
                                                                                                      §§goto(addr438);
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                   §§goto(addr608);
                                                                                                }
                                                                                                §§goto(addr429);
                                                                                             }
                                                                                             §§goto(addr425);
                                                                                          }
                                                                                          §§goto(addr404);
                                                                                       }
                                                                                       §§goto(addr502);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr429);
                                                                              }
                                                                              §§goto(addr616);
                                                                           }
                                                                        }
                                                                        return;
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr337);
                                                            }
                                                            addr274:
                                                            addr286:
                                                            if(this.§_-6k§ != Number.MAX_VALUE)
                                                            {
                                                            }
                                                            §§goto(addr287);
                                                         }
                                                         addr270:
                                                      }
                                                      §§goto(addr274);
                                                   }
                                                   addr266:
                                                }
                                                §§goto(addr286);
                                             }
                                             this.§_-6k§ = Math.max(0,this.§_-6k§ - param1);
                                             §§goto(addr286);
                                          }
                                          §§goto(addr274);
                                       }
                                       §§goto(addr270);
                                    }
                                    §§goto(addr287);
                                 }
                                 while(true)
                                 {
                                    _loc3_ = this.§_-ja§[this.§_-q5§++] as §_-Eo§;
                                    if(_loc18_)
                                    {
                                       this.initParticle(_loc3_);
                                       if(_loc18_)
                                       {
                                          this.advanceParticle(_loc3_,this.§_-68§);
                                          if(!_loc19_)
                                          {
                                             addr253:
                                             §§push(this);
                                             §§push(this.§_-68§);
                                             if(_loc18_ || param1)
                                             {
                                                §§push(§§pop() - _loc15_);
                                             }
                                             §§pop().§_-68§ = §§pop();
                                          }
                                          §§goto(addr266);
                                       }
                                    }
                                    §§goto(addr253);
                                 }
                                 §§goto(addr274);
                                 addr220:
                              }
                              §§goto(addr286);
                           }
                           §§goto(addr271);
                        }
                        §§goto(addr187);
                     }
                     §§goto(addr200);
                  }
                  else
                  {
                     _loc3_ = this.§_-ja§[_loc2_] as §_-Eo§;
                     if(_loc18_)
                     {
                        if(_loc3_.§_-mm§ < _loc3_.§_-UL§)
                        {
                           if(!(_loc19_ && _loc2_))
                           {
                              this.advanceParticle(_loc3_,param1);
                              if(!_loc19_)
                              {
                                 _loc2_++;
                                 if(_loc18_)
                                 {
                                    addr77:
                                    continue;
                                 }
                              }
                           }
                           addr90:
                           _loc14_ = this.§_-ja§[this.§_-q5§ - 1] as §_-Eo§;
                           if(!(_loc19_ && _loc3_))
                           {
                              this.§_-ja§[this.§_-q5§ - 1] = _loc3_;
                              if(!_loc18_)
                              {
                              }
                              addr121:
                              var _loc16_:*;
                              §§push((_loc16_ = this).§_-q5§);
                              if(!_loc19_)
                              {
                                 §§push(§§pop() - 1);
                              }
                              var _loc17_:* = §§pop();
                              if(!_loc19_)
                              {
                                 _loc16_.§_-q5§ = _loc17_;
                              }
                              continue;
                           }
                           this.§_-ja§[_loc2_] = _loc14_;
                        }
                        else if(_loc2_ != this.§_-q5§ - 1)
                        {
                           if(!(_loc18_ || _loc2_))
                           {
                              continue;
                           }
                           §§goto(addr90);
                        }
                        §§goto(addr121);
                     }
                     §§goto(addr77);
                  }
               }
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     if(!_loc19_)
                     {
                        this.§_-Wq§(this.§_-HR§);
                        §§goto(addr220);
                     }
                     §§goto(addr272);
                  }
                  §§goto(addr220);
               }
               addr213:
            }
            break;
         }
         while(true)
         {
            §§goto(addr213);
         }
      }
      
      override public function render(param1:§_-K6§, param2:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || param2)
         {
            if(this.§_-q5§ == 0)
            {
               if(!_loc8_)
               {
                  return;
               }
            }
         }
         §§push(param2);
         if(_loc7_)
         {
            §§push(§§pop() * this.alpha);
            if(!_loc8_)
            {
               addr42:
               §§push(Number(§§pop()));
            }
            param2 = §§pop();
            §§push(§_-19§.§_-R4§(this.§_-cX§.mipMapping,false,§_-Jq§.§_-mg§,true));
            if(_loc7_)
            {
               §§push(§§pop());
            }
            var _loc3_:* = §§pop();
            var _loc4_:Context3D = §_-Vu§.§_-ez§;
            if(_loc7_ || param1)
            {
               var _loc5_:Vector.<Number> = !!this.§_-Cr§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
               if(!_loc8_)
               {
                  if(_loc4_ == null)
                  {
                     if(!(_loc8_ && this))
                     {
                        throw new §_-8c§();
                     }
                  }
               }
               var _loc6_:§_-Vu§ = §_-Vu§.§_-dq§;
               if(_loc7_)
               {
                  if(§_-Vu§.§_-Wf§ != this.§_-Rx§)
                  {
                     if(_loc7_ || param2)
                     {
                        this.§_-Wq§(0);
                        if(!_loc8_)
                        {
                           this.§_-Rx§ = §_-Vu§.§_-Wf§;
                           if(_loc7_)
                           {
                              §§goto(addr171);
                           }
                           §§goto(addr262);
                        }
                        §§goto(addr189);
                     }
                     §§goto(addr208);
                  }
                  addr171:
                  this.§_-VU§.uploadFromVector(this.§_-bk§.data,0,this.§_-q5§ * 4);
                  if(_loc7_ || param1)
                  {
                     addr189:
                     this.§_-iD§.uploadFromVector(this.§_-bk§.§_-rc§,0,this.§_-q5§ * 4);
                     _loc4_.setBlendFactors(this.§_-pM§,this.§_-Wx§);
                     if(_loc7_)
                     {
                        addr208:
                        param1.setProgram(§_-Vu§.§_-dq§.§_-qm§(_loc3_));
                        param1.setTextureAt(1,this.§_-cX§.base);
                        _loc4_.setVertexBufferAt(0,this.§_-iD§,§_-dF§.§_-TJ§,Context3DVertexBufferFormat.FLOAT_3);
                        _loc4_.setVertexBufferAt(1,this.§_-VU§,§_-dF§.§_-j4§,Context3DVertexBufferFormat.FLOAT_2);
                        _loc4_.setVertexBufferAt(2,this.§_-VU§,§_-dF§.§_-RM§,Context3DVertexBufferFormat.FLOAT_4);
                        _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§_-wW§,true);
                        if(!(_loc8_ && param1))
                        {
                           addr262:
                           _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
                        }
                        §§goto(addr269);
                     }
                     §§goto(addr295);
                  }
                  addr269:
                  _loc4_.drawTriangles(this.§_-aB§,0,this.§_-q5§ * 2);
                  if(!_loc8_)
                  {
                     _loc4_.setVertexBufferAt(0,null);
                     _loc4_.setVertexBufferAt(1,null);
                     addr295:
                     _loc4_.setVertexBufferAt(2,null);
                  }
                  return;
               }
               §§goto(addr208);
            }
            §§goto(addr71);
         }
         §§goto(addr42);
      }
      
      public function get §_-ZY§() : Boolean
      {
         return false;
      }
      
      public function get §_-HR§() : int
      {
         return this.§_-bk§.§_-4f§ / 4;
      }
      
      public function get §_-K8§() : int
      {
         return this.§_-q5§;
      }
      
      public function get §_-0n§() : Number
      {
         return this.§_-7c§;
      }
      
      public function set §_-0n§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§_-7c§ = param1;
         }
      }
      
      public function get §_-jz§() : Number
      {
         return this.§_-CF§;
      }
      
      public function set §_-jz§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§_-CF§ = param1;
         }
      }
      
      public function get §_-4R§() : Number
      {
         return this.§_-Pd§;
      }
      
      public function set §_-4R§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-Pd§ = param1;
         }
      }
      
      public function get texture() : Texture
      {
         return this.§_-cX§;
      }
   }
}
