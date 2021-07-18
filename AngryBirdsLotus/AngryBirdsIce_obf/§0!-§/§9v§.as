package §0!-§
{
   import § F§.§9U§;
   import §-Z§.§ G§;
   import §-Z§.§0o§;
   import §-Z§.§?h§;
   import §3!$§.§+^§;
   import §5d§.§=i§;
   import §[P§.Texture;
   import §^V§.DisplayObject;
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
   
   public class §9v§ extends DisplayObject implements §9U§
   {
       
      
      private var §<i§:Texture;
      
      private var §;!4§:Vector.<§9T§>;
      
      private var §6[§:Number;
      
      private var §;a§:Vector.<Number>;
      
      private var §6i§:Vector.<Number>;
      
      private var §;#§:§+^§;
      
      private var §]#§:VertexBuffer3D;
      
      private var §]8§:VertexBuffer3D;
      
      private var §25§:VertexBuffer3D;
      
      private var §^X§:Vector.<uint>;
      
      private var §'5§:IndexBuffer3D;
      
      private var §<"§:int;
      
      private var §8_§:int;
      
      private var §<X§:Number;
      
      protected var §&E§:Number;
      
      private var §!!G§:Number = 0.0;
      
      private var §'!=§:Number;
      
      protected var §5!A§:Number;
      
      protected var §2?§:Number;
      
      protected var §3Y§:Boolean;
      
      protected var §3k§:String;
      
      protected var §9^§:String;
      
      protected var §7!8§:String;
      
      private var §9t§:int = -1;
      
      private var §<S§:Boolean = false;
      
      private var §1%§:Number = 0.0;
      
      public function §9v§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && param2))
         {
            super();
            if(param1 == null)
            {
               throw new ArgumentError("texture must not be null");
            }
            loop0:
            while(true)
            {
               this.§<i§ = param1;
               this.§3Y§ = param1.premultipliedAlpha;
               loop1:
               while(true)
               {
                  this.§;!4§ = new Vector.<§9T§>(0,false);
                  this.§;a§ = new Vector.<Number>();
                  if(_loc8_)
                  {
                     this.§6i§ = new Vector.<Number>();
                     this.§;#§ = new §+^§(0,this.§3Y§);
                     if(!(_loc7_ && this))
                     {
                        if(!_loc8_)
                        {
                           continue;
                        }
                        this.§^X§ = new Vector.<uint>(0);
                        this.§<X§ = param2;
                        if(_loc8_)
                        {
                           while(true)
                           {
                              this.§'!=§ = 0;
                              if(!(_loc8_ || param2))
                              {
                                 break;
                              }
                              if(_loc8_ || param2)
                              {
                                 continue;
                              }
                              continue loop0;
                           }
                           §§push(this);
                           if(_loc8_)
                           {
                              §§push(param4);
                              if(!(_loc7_ && this))
                              {
                                 §§push(§§pop());
                                 if(!_loc7_)
                                 {
                                    if(!§§pop())
                                    {
                                       if(_loc8_)
                                       {
                                          addr194:
                                          §§pop();
                                          if(_loc8_)
                                          {
                                             addr197:
                                             if(!this.§3Y§)
                                             {
                                                addr224:
                                                §§pop().§3k§ = Context3DBlendFactor.SOURCE_ALPHA;
                                                while(param3 > 0)
                                                {
                                                   if(_loc8_ || this)
                                                   {
                                                      break loop1;
                                                   }
                                                }
                                                return;
                                                addr225:
                                             }
                                             §§goto(addr224);
                                          }
                                          §§push(Context3DBlendFactor.ONE);
                                          if(_loc8_ || param2)
                                          {
                                             addr210:
                                          }
                                       }
                                       §§goto(addr210);
                                    }
                                    §§goto(addr224);
                                 }
                                 §§goto(addr210);
                              }
                              §§goto(addr194);
                           }
                           §§goto(addr197);
                           addr249:
                        }
                     }
                     §§push(this);
                     if(_loc8_)
                     {
                        §§push(param5);
                        if(_loc8_)
                        {
                           §§push(§§pop());
                           if(!_loc7_)
                           {
                              if(!§§pop())
                              {
                                 if(!(_loc7_ && param2))
                                 {
                                    addr244:
                                    §§pop();
                                    §§push(Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA);
                                 }
                              }
                              §§pop().§9^§ = §§pop();
                              §§goto(addr249);
                           }
                        }
                     }
                     §§goto(addr244);
                  }
                  break;
               }
               this.§'_§(param3);
               §§goto(addr224);
            }
         }
         §§goto(addr225);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§]#§)
            {
               if(_loc2_)
               {
                  this.§]#§.dispose();
               }
               while(true)
               {
                  loop3:
                  while(!(_loc1_ && _loc2_))
                  {
                     while(true)
                     {
                        if(this.§25§)
                        {
                           this.§25§.dispose();
                        }
                        if(this.§'5§)
                        {
                           while(true)
                           {
                              if(!(_loc1_ && _loc2_))
                              {
                                 this.§'5§.dispose();
                                 while(!(_loc1_ && _loc2_))
                                 {
                                 }
                                 continue loop3;
                                 addr66:
                              }
                              else
                              {
                                 addr96:
                              }
                              while(true)
                              {
                                 this.§]8§.dispose();
                                 continue loop3;
                              }
                           }
                           addr56:
                        }
                        while(true)
                        {
                           this.§;a§ = null;
                           if(_loc2_)
                           {
                              if(!_loc1_)
                              {
                                 break;
                              }
                              §§goto(addr56);
                           }
                           §§goto(addr66);
                        }
                        this.§6i§ = null;
                        §§goto(addr32);
                     }
                  }
               }
               addr115:
            }
            while(true)
            {
               if(this.§]8§)
               {
                  §§goto(addr96);
               }
               §§goto(addr74);
               §§goto(addr115);
            }
         }
         addr32:
         super.dispose();
      }
      
      protected function createParticle() : §9T§
      {
         return new §9T§();
      }
      
      protected function initParticle(param1:§9T§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            param1.x = this.§5!A§;
            loop0:
            while(true)
            {
               param1.y = this.§2?§;
               loop1:
               while(true)
               {
                  param1.currentTime = 0;
                  while(_loc2_)
                  {
                     param1.§6<§ = 1;
                     param1.red = Math.random();
                     while(true)
                     {
                        param1.green = Math.random();
                        param1.blue = Math.random();
                        if(_loc3_ && param1)
                        {
                           break;
                        }
                        if(!_loc3_)
                        {
                           continue;
                        }
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr29);
      }
      
      protected function advanceParticle(param1:§9T§, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §§push(param1);
            §§push(param1.y);
            if(_loc4_ || param2)
            {
               §§push(param2);
               if(_loc4_)
               {
                  §§push(§§pop() * 250);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().y = §§pop();
         }
         loop0:
         while(true)
         {
            §§push(param1);
            §§push(1);
            §§push(param1.currentTime);
            if(!_loc3_)
            {
               §§push(§§pop() / param1.§6<§);
            }
            §§pop().alpha = §§pop() - §§pop();
            addr105:
            while(true)
            {
               param1.scaleX = 1 - param1.alpha;
               continue loop0;
            }
         }
      }
      
      private function §'_§(param1:int) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:* = 0;
         var _loc7_:int = 0;
         §§push(this.§#z§);
         if(!_loc9_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§#z§);
         if(!(_loc9_ && this))
         {
            §§push(int(§§pop() + param1));
         }
         var _loc3_:* = §§pop();
         var _loc4_:§+^§;
         (_loc4_ = new §+^§(4)).setTexCoords(0,0,0);
         if(!_loc9_)
         {
            _loc4_.setTexCoords(1,1,0);
            do
            {
               _loc4_.setTexCoords(2,0,1);
               _loc4_.setTexCoords(3,1,1);
               this.§<i§.adjustVertexData(_loc4_,0,4);
            }
            while(!_loc8_);
            
            while(true)
            {
               this.§;!4§.fixed = false;
               §§goto(addr64);
            }
         }
         addr64:
         while(true)
         {
            this.§^X§.fixed = false;
            if(true)
            {
               break;
            }
            continue loop1;
         }
         §§push(_loc2_);
         if(!(_loc9_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         while(true)
         {
            §§push(_loc5_);
            if(_loc8_)
            {
               if(_loc8_)
               {
                  §§push(_loc3_);
                  if(!(_loc9_ && param1))
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(_loc8_)
                        {
                           break;
                        }
                        loop4:
                        while(_loc9_)
                        {
                           loop5:
                           while(true)
                           {
                              _loc7_++;
                              loop6:
                              while(true)
                              {
                                 §§push(_loc7_);
                                 addr181:
                                 while(true)
                                 {
                                    if(!_loc9_)
                                    {
                                       if(!(_loc9_ && param1))
                                       {
                                          §§push(3);
                                          while(true)
                                          {
                                             if(!(_loc9_ && param1))
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   continue loop4;
                                                }
                                                this.§;a§.push(0);
                                                if(!_loc9_)
                                                {
                                                   this.§6i§.push(0);
                                                   continue loop5;
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§push(int(§§pop() * §§pop()));
                                                   addr252:
                                                   while(true)
                                                   {
                                                      _loc6_ = §§pop();
                                                   }
                                                }
                                                addr250:
                                             }
                                             while(true)
                                             {
                                                this.§;!4§.push(this.createParticle());
                                                continue loop6;
                                             }
                                          }
                                          addr191:
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                          }
                                          addr249:
                                       }
                                       §§goto(addr250);
                                    }
                                    §§goto(addr252);
                                 }
                              }
                           }
                        }
                        continue;
                     }
                     §§push(_loc5_);
                     §§goto(addr249);
                  }
                  §§goto(addr191);
               }
               §§goto(addr237);
            }
            §§goto(addr181);
         }
         this.§;!4§.fixed = true;
         do
         {
            this.§^X§.fixed = true;
         }
         while(_loc9_);
         
         this.§<S§ = true;
      }
      
      private function §1+§(param1:Context3D) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §§push(this.§<S§);
            if(!_loc4_)
            {
               if(!§§pop())
               {
                  if(!_loc4_)
                  {
                     §§goto(addr31);
                  }
               }
               else
               {
                  if(param1 == null)
                  {
                     if(!(_loc3_ || _loc2_))
                     {
                        addr52:
                        §§push(this.§;#§.§7U§);
                        if(!_loc4_)
                        {
                           §§push(int(§§pop() / 4));
                        }
                        var _loc2_:* = §§pop();
                        if(!(_loc4_ && _loc2_))
                        {
                           if(this.§]#§)
                           {
                              this.§]#§.dispose();
                           }
                           if(this.§]8§)
                           {
                              loop0:
                              while(true)
                              {
                                 this.§]8§.dispose();
                                 addr208:
                                 this.§'5§.dispose();
                                 if(_loc4_ && param1)
                                 {
                                    continue;
                                 }
                                 addr186:
                                 this.§]#§ = param1.createVertexBuffer(_loc2_ * 4,§+^§.§6!4§);
                                 if(_loc3_ || param1)
                                 {
                                    this.§]#§.uploadFromByteArray(this.§;#§.§]!E§,0,0,_loc2_ * 4);
                                    addr236:
                                    while(!(_loc4_ && _loc2_))
                                    {
                                       this.§]8§ = param1.createVertexBuffer(_loc2_ * 4,§+^§.§"!%§);
                                       while(true)
                                       {
                                          this.§]8§.uploadFromVector(this.§;#§.§3!?§,0,_loc2_ * 4);
                                          this.§25§ = param1.createVertexBuffer(_loc2_ * 4,§+^§.§>!E§);
                                          if(!(_loc3_ || _loc2_))
                                          {
                                             break;
                                          }
                                          this.§25§.uploadFromVector(this.§;#§.§[&§,0,_loc2_ * 4);
                                          do
                                          {
                                             this.§'5§ = param1.createIndexBuffer(_loc2_ * 6);
                                          }
                                          while(_loc4_ && this);
                                          
                                          this.§'5§.uploadFromVector(this.§^X§,0,_loc2_ * 6);
                                          if(_loc3_)
                                          {
                                             return true;
                                          }
                                       }
                                    }
                                    loop7:
                                    while(true)
                                    {
                                       addr204:
                                       while(true)
                                       {
                                          if(this.§'5§)
                                          {
                                             §§goto(addr208);
                                          }
                                          §§goto(addr186);
                                          continue loop7;
                                       }
                                       continue loop0;
                                    }
                                    addr236:
                                 }
                                 while(true)
                                 {
                                    this.§25§.dispose();
                                    §§goto(addr236);
                                    §§goto(addr186);
                                 }
                                 addr233:
                              }
                              addr241:
                           }
                           while(true)
                           {
                              if(this.§25§)
                              {
                                 §§goto(addr233);
                              }
                              §§goto(addr204);
                              §§goto(addr241);
                           }
                        }
                        §§goto(addr236);
                     }
                  }
                  §§goto(addr52);
               }
               throw new §=i§();
            }
            addr31:
            return false;
         }
         §§goto(addr52);
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(this.§<X§ != 0)
            {
               if(_loc2_)
               {
                  this.§'!=§ = param1;
               }
            }
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§'!=§ = 0;
         }
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Matrix = §8n§(param1);
         var _loc4_:Point = _loc3_.transformPoint(new Point(x,y));
         if(param2 != null)
         {
            param2.x = _loc4_.x;
            param2.y = _loc4_.y;
            while(!_loc6_)
            {
               param2.width = 0;
               if(_loc5_ || this)
               {
                  param2.height = 0;
                  return param2;
               }
            }
         }
         return new Rectangle(_loc4_.x,_loc4_.y);
      }
      
      public function §[t§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.advanceTime(param1);
         }
         do
         {
            this.§0!$§(null);
         }
         while(!(_loc3_ || param1));
         
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§1%§ = param1;
         }
      }
      
      private function §0!$§(param1:Matrix3D) : void
      {
         var _loc34_:Boolean = true;
         var _loc35_:Boolean = false;
         var _loc4_:§9T§ = null;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§9T§ = null;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = 0;
         var _loc15_:Boolean = false;
         var _loc16_:* = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:* = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:* = NaN;
         var _loc28_:* = NaN;
         var _loc29_:* = NaN;
         var _loc30_:* = NaN;
         var _loc31_:* = NaN;
         if(!_loc35_)
         {
            §§push(Boolean(isNaN(this.§1%§)));
            if(_loc34_ || param1)
            {
               if(!§§pop())
               {
                  if(_loc34_)
                  {
                     §§pop();
                     if(!_loc35_)
                     {
                        addr87:
                        §§push(this.§1%§);
                        if(_loc34_)
                        {
                           addr93:
                           if(§§pop() == 0)
                           {
                              if(!(_loc35_ && this))
                              {
                                 return;
                              }
                              addr102:
                              §§push(this.§1%§);
                              if(_loc34_)
                              {
                                 addr106:
                                 §§push(Number(§§pop()));
                              }
                              var _loc2_:* = §§pop();
                              if(_loc34_ || _loc2_)
                              {
                                 this.§1%§ = 0;
                                 if(_loc34_ || param1)
                                 {
                                    addr125:
                                    _loc2_ = Number(Math.min(0.2,_loc2_));
                                 }
                                 var _loc3_:int = 0;
                                 loop0:
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    if(!(_loc35_ && _loc2_))
                                    {
                                       §§push(this.§<"§);
                                       if(!(_loc35_ && _loc3_))
                                       {
                                          if(§§pop() < §§pop())
                                          {
                                             if((_loc4_ = this.§;!4§[_loc3_]).currentTime < _loc4_.§6<§)
                                             {
                                                if(_loc34_ || this)
                                                {
                                                   this.advanceParticle(_loc4_,_loc2_);
                                                   if(!(_loc34_ || param1))
                                                   {
                                                      continue;
                                                   }
                                                   _loc3_++;
                                                   if(!_loc34_)
                                                   {
                                                      continue;
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                if(_loc3_ != this.§<"§ - 1)
                                                {
                                                   if(_loc35_ && this)
                                                   {
                                                      continue;
                                                   }
                                                   _loc11_ = this.§;!4§[this.§<"§ - 1];
                                                   if(!(_loc35_ && param1))
                                                   {
                                                      this.§;!4§[this.§<"§ - 1] = _loc4_;
                                                      if(_loc34_)
                                                      {
                                                         this.§;!4§[_loc3_] = _loc11_;
                                                      }
                                                   }
                                                }
                                                var _loc32_:*;
                                                §§push((_loc32_ = this).§<"§);
                                                if(!(_loc35_ && param1))
                                                {
                                                   §§push(§§pop() - 1);
                                                }
                                                var _loc33_:* = §§pop();
                                                if(!_loc35_)
                                                {
                                                   _loc32_.§<"§ = _loc33_;
                                                }
                                             }
                                             continue;
                                          }
                                          §§push(this.§'!=§);
                                          if(_loc34_ || this)
                                          {
                                             §§push(0);
                                             if(_loc34_ || _loc2_)
                                             {
                                                if(§§pop() > §§pop())
                                                {
                                                   if(!(_loc35_ && _loc3_))
                                                   {
                                                      §§push(1);
                                                      if(_loc34_)
                                                      {
                                                         §§push(§§pop() / this.§<X§);
                                                         if(!_loc35_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(!_loc35_)
                                                            {
                                                               _loc12_ = §§pop();
                                                               if(!_loc35_)
                                                               {
                                                                  addr286:
                                                                  §§push(this);
                                                                  §§push(this.§6[§);
                                                                  if(!(_loc35_ && this))
                                                                  {
                                                                     §§push(§§pop() + _loc2_);
                                                                  }
                                                                  §§pop().§6[§ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§6[§);
                                                                     if(_loc34_ || _loc2_)
                                                                     {
                                                                        §§push(0);
                                                                        while(§§pop() > §§pop())
                                                                        {
                                                                           §§push(this.§<"§);
                                                                           if(_loc34_ || _loc3_)
                                                                           {
                                                                              break loop0;
                                                                           }
                                                                           var _loc5_:* = §§pop();
                                                                           §§push(this.§<i§.width);
                                                                           if(!(_loc35_ && this))
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           var _loc8_:* = §§pop();
                                                                           §§push(this.§<i§.height);
                                                                           if(_loc34_ || _loc2_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           var _loc9_:* = §§pop();
                                                                           if(_loc34_)
                                                                           {
                                                                              this.§8_§ = 0;
                                                                           }
                                                                           var _loc10_:Vector3D = new Vector3D();
                                                                           if(_loc34_)
                                                                           {
                                                                              if(param1)
                                                                              {
                                                                                 if(_loc34_ || this)
                                                                                 {
                                                                                    this.§^!!§(param1);
                                                                                    if(!_loc34_)
                                                                                    {
                                                                                    }
                                                                                    §§goto(addr1752);
                                                                                 }
                                                                                 §§push(0);
                                                                                 if(_loc34_)
                                                                                 {
                                                                                    _loc14_ = §§pop();
                                                                                    if(!_loc35_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc14_);
                                                                                       }
                                                                                       addr1748:
                                                                                    }
                                                                                    §§goto(addr1752);
                                                                                 }
                                                                                 loop12:
                                                                                 for(; §§pop() < this.§<"§; §§goto(addr1748))
                                                                                 {
                                                                                    §§push((_loc4_ = this.§;!4§[_loc14_]).x);
                                                                                    if(_loc34_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       if(_loc34_)
                                                                                       {
                                                                                          _loc6_ = §§pop();
                                                                                          if(_loc34_ || this)
                                                                                          {
                                                                                             §§push(_loc4_.y);
                                                                                             loop13:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc7_ = §§pop();
                                                                                                if(!(_loc35_ && this))
                                                                                                {
                                                                                                   _loc15_ = true;
                                                                                                   _loc10_.x = _loc6_;
                                                                                                   _loc10_.y = _loc7_;
                                                                                                   §§push(Number(this.§6i§[_loc14_ * 3]));
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc16_ = §§pop();
                                                                                                      loop15:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc17_ = this.§6i§[_loc14_ * 3 + 1];
                                                                                                         loop16:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc8_);
                                                                                                            if(!(_loc35_ && _loc2_))
                                                                                                            {
                                                                                                               §§push(§§pop() * _loc4_.scaleX);
                                                                                                               if(_loc34_)
                                                                                                               {
                                                                                                                  §§push(2);
                                                                                                                  loop17:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                     if(!(_loc34_ || param1))
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc18_ = §§pop();
                                                                                                                        if(_loc35_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§push(_loc9_);
                                                                                                                        continue loop17;
                                                                                                                        addr911:
                                                                                                                        if(_loc34_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           if(!_loc35_)
                                                                                                                           {
                                                                                                                              _loc19_ = §§pop();
                                                                                                                              loop20:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc16_);
                                                                                                                                 if(_loc34_ || param1)
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(-1.1);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() < §§pop());
                                                                                                                                          if(_loc34_ || this)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             loop89:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!§§pop())
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      if(_loc34_ || param1)
                                                                                                                                                      {
                                                                                                                                                         continue loop20;
                                                                                                                                                      }
                                                                                                                                                      addr1005:
                                                                                                                                                      addr1005:
                                                                                                                                                      addr1747:
                                                                                                                                                      §§push((_loc32_ = this).§8_§);
                                                                                                                                                      if(!(_loc35_ && this))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + 1);
                                                                                                                                                      }
                                                                                                                                                      _loc33_ = §§pop();
                                                                                                                                                      if(_loc34_)
                                                                                                                                                      {
                                                                                                                                                         _loc32_.§8_§ = _loc33_;
                                                                                                                                                      }
                                                                                                                                                      addr1738:
                                                                                                                                                      this.§;#§.§4!F§(_loc5_,4,_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
                                                                                                                                                      addr1737:
                                                                                                                                                      loop47:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc4_.rotation);
                                                                                                                                                         addr1727:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(0);
                                                                                                                                                            loop49:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               addr1731:
                                                                                                                                                               §§push(§§pop() != §§pop());
                                                                                                                                                               if(§§pop() != §§pop())
                                                                                                                                                               {
                                                                                                                                                                  addr1732:
                                                                                                                                                                  do
                                                                                                                                                                  {
                                                                                                                                                                     §§pop();
                                                                                                                                                                     §§push(Math.abs(_loc18_ - _loc19_) > 0.5);
                                                                                                                                                                  }
                                                                                                                                                                  while(_loc35_ && _loc2_);
                                                                                                                                                                  
                                                                                                                                                                  addr1732:
                                                                                                                                                               }
                                                                                                                                                               addr1706:
                                                                                                                                                               if(!§§pop())
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§;#§);
                                                                                                                                                                  §§push(_loc5_);
                                                                                                                                                                  §§push(_loc6_);
                                                                                                                                                                  if(!(_loc35_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc34_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc35_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc18_);
                                                                                                                                                                           if(_loc34_ || _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              addr1313:
                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                              §§push(_loc7_);
                                                                                                                                                                              if(!_loc35_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc35_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc19_);
                                                                                                                                                                                    if(!(_loc35_ && _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1332:
                                                                                                                                                                                       §§pop().§^0§(§§pop(),§§pop(),§§pop() - §§pop());
                                                                                                                                                                                       §§push(this.§;#§);
                                                                                                                                                                                       if(_loc34_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc5_);
                                                                                                                                                                                          loop51:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() + 1);
                                                                                                                                                                                             loop52:
                                                                                                                                                                                             while(_loc34_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc6_);
                                                                                                                                                                                                if(_loc34_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc18_);
                                                                                                                                                                                                   if(_loc34_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                      loop53:
                                                                                                                                                                                                      while(_loc34_ || _loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc7_);
                                                                                                                                                                                                         loop54:
                                                                                                                                                                                                         for(; _loc34_; if(!(_loc34_ || _loc2_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue;
                                                                                                                                                                                                         },§§goto(addr1106),§§push(§§pop() + §§pop()))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc34_ || _loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc19_);
                                                                                                                                                                                                               loop55:
                                                                                                                                                                                                               for(; !(_loc35_ && param1); if(!(_loc34_ || param1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue;
                                                                                                                                                                                                               },if(_loc34_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr1134);
                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                               },§§goto(addr1393))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc35_ && this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§pop().§^0§(§§pop(),§§pop(),§§pop() - §§pop());
                                                                                                                                                                                                                     loop74:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(this.§;#§);
                                                                                                                                                                                                                        §§push(_loc5_);
                                                                                                                                                                                                                        continue loop51;
                                                                                                                                                                                                                        loop79:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§pop().§^0§(§§pop(),§§pop(),§§pop());
                                                                                                                                                                                                                           if(_loc34_ || _loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc35_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc34_ || _loc2_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(this.§;#§);
                                                                                                                                                                                                                                    if(!(_loc35_ && param1))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr1063:
                                                                                                                                                                                                                                       §§push(_loc5_);
                                                                                                                                                                                                                                       if(!(_loc34_ || param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop51;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§push(3);
                                                                                                                                                                                                                                       if(!(_loc34_ || _loc2_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop47;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr1079:
                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                       if(_loc35_ && _loc3_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(_loc34_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc35_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc34_ || this)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc6_);
                                                                                                                                                                                                                                                   §§push(_loc18_);
                                                                                                                                                                                                                                                   if(_loc35_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop79;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(_loc34_ || _loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr1199);
                                                                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1394);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1388);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1079);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop52;
                                                                                                                                                                                                                                          addr1176:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§push(_loc6_);
                                                                                                                                                                                                                                       if(!_loc35_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc18_);
                                                                                                                                                                                                                                          if(_loc34_ || _loc3_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop54;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr1134:
                                                                                                                                                                                                                                          addr1134:
                                                                                                                                                                                                                                          if(_loc34_ || this)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§pop().§^0§(§§pop(),§§pop(),§§pop());
                                                                                                                                                                                                                                             if(_loc34_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc34_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1146:
                                                                                                                                                                                                                                                   if(!(_loc34_ || _loc2_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      while(_loc34_ || _loc3_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc34_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop47;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§push(_loc18_);
                                                                                                                                                                                                                                                         §§push(_loc22_);
                                                                                                                                                                                                                                                         §§goto(addr1146);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr1707:
                                                                                                                                                                                                                                                      _loc22_ = Math.cos(_loc4_.rotation);
                                                                                                                                                                                                                                                      break loop13;
                                                                                                                                                                                                                                                      addr1680:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc5_);
                                                                                                                                                                                                                                                      if(!_loc35_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1036:
                                                                                                                                                                                                                                                         §§push(int(§§pop() + 4));
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      _loc5_ = §§pop();
                                                                                                                                                                                                                                                      if(!(_loc34_ || param1))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(_loc34_ || this)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1027:
                                                                                                                                                                                                                                                         _loc14_++;
                                                                                                                                                                                                                                                         if(false)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop12;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr1654:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1627:
                                                                                                                                                                                                                                                         §§push(-_loc18_);
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() * _loc22_);
                                                                                                                                                                                                                                                            if(_loc34_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc19_);
                                                                                                                                                                                                                                                               if(_loc35_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§push(_loc23_);
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() - §§pop() * §§pop());
                                                                                                                                                                                                                                                                  break loop17;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            break loop20;
                                                                                                                                                                                                                                                            loop37:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                               if(!(_loc34_ || _loc2_))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               _loc27_ = §§pop();
                                                                                                                                                                                                                                                               §§push(_loc18_ * _loc22_);
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc19_);
                                                                                                                                                                                                                                                                  addr1588:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc23_);
                                                                                                                                                                                                                                                                     loop40:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                        if(_loc34_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                           if(!_loc35_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           loop41:
                                                                                                                                                                                                                                                                           for(; _loc34_ || _loc3_; §§push(§§pop() * §§pop()),if(!(_loc34_ || param1))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue;
                                                                                                                                                                                                                                                                           },§§push(_loc19_),if(_loc34_ || _loc2_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc23_);
                                                                                                                                                                                                                                                                              while(!_loc35_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                 §§push(_loc22_);
                                                                                                                                                                                                                                                                                 continue loop49;
                                                                                                                                                                                                                                                                                 if(!(_loc34_ || _loc3_))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1472);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1636);
                                                                                                                                                                                                                                                                           },while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1614:
                                                                                                                                                                                                                                                                              continue loop37;
                                                                                                                                                                                                                                                                           })
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              _loc28_ = §§pop();
                                                                                                                                                                                                                                                                              §§push(_loc18_);
                                                                                                                                                                                                                                                                              §§push(_loc23_);
                                                                                                                                                                                                                                                                              if(_loc34_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                 if(_loc35_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr1566:
                                                                                                                                                                                                                                                                                    break loop17;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§push(_loc19_);
                                                                                                                                                                                                                                                                                 §§push(_loc22_);
                                                                                                                                                                                                                                                                                 while(_loc34_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                    if(_loc35_ && this)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                    if(!_loc35_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(-(§§pop() - §§pop()));
                                                                                                                                                                                                                                                                                       if(_loc34_ || _loc3_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop37;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr1499:
                                                                                                                                                                                                                                                                                       addr1499:
                                                                                                                                                                                                                                                                                       if(_loc34_ || _loc3_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          _loc31_ = §§pop();
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc35_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                break loop13;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§push(this.§;#§);
                                                                                                                                                                                                                                                                                             §§push(_loc5_);
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc6_);
                                                                                                                                                                                                                                                                                                addr1401:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc26_);
                                                                                                                                                                                                                                                                                                   if(_loc34_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(_loc7_);
                                                                                                                                                                                                                                                                                                         if(_loc34_ || _loc2_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(_loc27_);
                                                                                                                                                                                                                                                                                                               addr1414:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr1413:
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr1415:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§pop().§^0§(§§pop(),§§pop(),§§pop());
                                                                                                                                                                                                                                                                                                            §§push(this.§;#§);
                                                                                                                                                                                                                                                                                                            addr1385:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr1386:
                                                                                                                                                                                                                                                                                                               §§push(_loc5_);
                                                                                                                                                                                                                                                                                                               §§push(1);
                                                                                                                                                                                                                                                                                                               addr1387:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr1388:
                                                                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                  §§push(_loc6_ + _loc24_);
                                                                                                                                                                                                                                                                                                                  break loop53;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr1405:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1413);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr1507:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr1515:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc22_);
                                                                                                                                                                                                                                                                                             addr1516:
                                                                                                                                                                                                                                                                                             while(_loc34_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop41;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr1660:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc23_);
                                                                                                                                                                                                                                                                                                addr1661:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(§§pop() - §§pop() * §§pop());
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1499);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr1515:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1571:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                          loop44:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(-§§pop());
                                                                                                                                                                                                                                                                                             addr1573:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                addr1574:
                                                                                                                                                                                                                                                                                                while(_loc34_ || _loc3_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   _loc29_ = §§pop();
                                                                                                                                                                                                                                                                                                   §§push(_loc18_);
                                                                                                                                                                                                                                                                                                   if(_loc35_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop44;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1515);
                                                                                                                                                                                                                                                                                                   §§push(-§§pop());
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr1571:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       _loc24_ = §§pop();
                                                                                                                                                                                                                                                                                       §§push(_loc18_);
                                                                                                                                                                                                                                                                                       break loop41;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop40;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1571);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc23_);
                                                                                                                                                                                                                                                                              break loop40;
                                                                                                                                                                                                                                                                              §§goto(addr1596);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr1596:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1646:
                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                        §§push(_loc19_);
                                                                                                                                                                                                                                                                        §§push(_loc22_);
                                                                                                                                                                                                                                                                        if(_loc34_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                                                           break loop20;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1661);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1367:
                                                                                                                                                                                                                                                      §§push(this.§;#§);
                                                                                                                                                                                                                                                      if(_loc34_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc5_);
                                                                                                                                                                                                                                                         loop59:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(2);
                                                                                                                                                                                                                                                            if(_loc35_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                            §§push(_loc6_);
                                                                                                                                                                                                                                                            §§push(_loc30_);
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                               addr1377:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1378:
                                                                                                                                                                                                                                                                  §§push(_loc7_);
                                                                                                                                                                                                                                                                  addr1379:
                                                                                                                                                                                                                                                                  §§push(_loc31_);
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§pop().§^0§(§§pop(),§§pop(),§§pop() + §§pop());
                                                                                                                                                                                                                                                                     continue loop59;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr1385);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1387);
                                                                                                                                                                                                                                                      addr1394:
                                                                                                                                                                                                                                                      §§pop().§^0§(§§pop(),§§pop(),§§pop());
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr1395:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                      addr1659:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr1660);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1557:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc18_);
                                                                                                                                                                                                                                                      if(_loc34_ || this)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(-§§pop());
                                                                                                                                                                                                                                                         §§push(_loc23_);
                                                                                                                                                                                                                                                         if(!(_loc35_ && _loc2_))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc35_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1437:
                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                               if(_loc34_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc34_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     break loop16;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1587);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1573);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1516);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1480);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1574);
                                                                                                                                                                                                                                                   addr1557:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1663);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1507);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1378);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1106:
                                                                                                                                                                                                                                          if(_loc34_ || param1)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc7_);
                                                                                                                                                                                                                                             if(!(_loc35_ && param1))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc19_);
                                                                                                                                                                                                                                                if(!_loc35_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop55;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1134);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             while(_loc34_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc34_ || this)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc7_);
                                                                                                                                                                                                                                                   §§push(_loc19_);
                                                                                                                                                                                                                                                   continue loop79;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr1355:
                                                                                                                                                                                                                                                addr1392:
                                                                                                                                                                                                                                                §§push(_loc28_);
                                                                                                                                                                                                                                                if(!_loc35_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                   §§push(_loc7_);
                                                                                                                                                                                                                                                   break loop54;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1393:
                                                                                                                                                                                                                                                   §§goto(addr1394);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1106);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop53;
                                                                                                                                                                                                                                             addr1199:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1395);
                                                                                                                                                                                                                                       §§goto(addr1374);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1367);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1381);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop74;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr1363:
                                                                                                                                                                                                                        §§goto(addr1030);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr1285:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr1379);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§pop().§^0§(§§pop(),§§pop(),§§pop() + §§pop());
                                                                                                                                                                                                                  §§goto(addr1363);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr1361:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1376);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr1361);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr1392);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1259);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1377);
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr1355);
                                                                                                                                                                                                §§goto(addr1345);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr1737);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1737);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1414);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1415);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1332);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1401);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1405);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1313);
                                                                                                                                                               }
                                                                                                                                                               addr1607:
                                                                                                                                                               §§goto(addr1707);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc35_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     addr1545:
                                                                                                                                                                     §§push(Number(§§pop() + §§pop()));
                                                                                                                                                                     if(_loc34_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc34_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           _loc30_ = §§pop();
                                                                                                                                                                           §§goto(addr1557);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1659);
                                                                                                                                                                     }
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop49;
                                                                                                                                                                  addr1450:
                                                                                                                                                                  if(_loc35_ && param1)
                                                                                                                                                                  {
                                                                                                                                                                     continue;
                                                                                                                                                                  }
                                                                                                                                                                  if(!(_loc35_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr1464);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1588);
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr1611);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue loop20;
                                                                                                                                                   addr879:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr835:
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                   loop90:
                                                                                                                                                   while(!_loc35_)
                                                                                                                                                   {
                                                                                                                                                      if(!§§pop())
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            if(!(_loc35_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc17_);
                                                                                                                                                               if(_loc34_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(-1.1);
                                                                                                                                                                  if(_loc34_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() < §§pop());
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        loop93:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop();
                                                                                                                                                                                 §§push(_loc17_);
                                                                                                                                                                                 if(_loc34_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(1.1);
                                                                                                                                                                                    if(!_loc35_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() > §§pop());
                                                                                                                                                                                       if(!(_loc35_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc34_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr753:
                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc35_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!§?h§.§ n§)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break loop93;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(Number(Math.max(_loc18_,_loc19_)));
                                                                                                                                                                                                   if(_loc34_ || this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc20_ = §§pop());
                                                                                                                                                                                                      if(!_loc35_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() / §?h§.§ n§.§,i§);
                                                                                                                                                                                                         if(!(_loc35_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop13;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1614);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr1679:
                                                                                                                                                                                                      _loc23_ = §§pop();
                                                                                                                                                                                                      §§goto(addr1680);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1627);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1733);
                                                                                                                                                                                             }
                                                                                                                                                                                             break loop93;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1706);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1646);
                                                                                                                                                                                 }
                                                                                                                                                                                 break loop16;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr753);
                                                                                                                                                                           addr655:
                                                                                                                                                                           if(!(_loc34_ || _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           §§pop();
                                                                                                                                                                           §§push(_loc17_);
                                                                                                                                                                           if(!_loc35_)
                                                                                                                                                                           {
                                                                                                                                                                              addr600:
                                                                                                                                                                              if(_loc35_ && _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop17;
                                                                                                                                                                              }
                                                                                                                                                                              §§push(_loc21_);
                                                                                                                                                                              if(!_loc35_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr611:
                                                                                                                                                                                 if(§§pop() <= §§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(_loc34_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc15_ = false;
                                                                                                                                                                                    if(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       break;
                                                                                                                                                                                       addr624:
                                                                                                                                                                                    }
                                                                                                                                                                                    loop96:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc17_);
                                                                                                                                                                                       §§push(-_loc21_);
                                                                                                                                                                                       if(!(_loc35_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() < §§pop());
                                                                                                                                                                                          if(_loc34_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                                if(_loc34_ || _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc34_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break loop96;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(!§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr655);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr611);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1731);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr643:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1732);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1588);
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop90;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop15;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1545);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1603);
                                                                                                                                                                        }
                                                                                                                                                                        §§push(_loc15_);
                                                                                                                                                                        if(!_loc35_)
                                                                                                                                                                        {
                                                                                                                                                                           addr1002:
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc34_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr1005);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1689);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1027);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1732);
                                                                                                                                                                     }
                                                                                                                                                                     addr822:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1571);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1646);
                                                                                                                                                            }
                                                                                                                                                            break;
                                                                                                                                                            addr680:
                                                                                                                                                            if(!(_loc34_ || this))
                                                                                                                                                            {
                                                                                                                                                               continue;
                                                                                                                                                            }
                                                                                                                                                            §§pop();
                                                                                                                                                            if(!_loc35_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr624);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1557);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1747);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr822);
                                                                                                                                                   }
                                                                                                                                                   continue loop89;
                                                                                                                                                }
                                                                                                                                                §§goto(addr1732);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr879);
                                                                                                                                          addr894:
                                                                                                                                          §§push(_loc16_);
                                                                                                                                          §§push(1.1);
                                                                                                                                          if(_loc35_)
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          §§push(§§pop() > §§pop());
                                                                                                                                          if(!_loc35_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr835);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1732);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr868:
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc25_ = -§§pop();
                                                                                                                                 §§goto(addr1654);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           break loop17;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop16;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc26_ = §§pop();
                                                                                                                     §§goto(addr1607);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr1566);
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push(_loc19_);
                                                                                                         if(!(_loc35_ && this))
                                                                                                         {
                                                                                                            §§goto(addr1450);
                                                                                                         }
                                                                                                         §§goto(addr1480);
                                                                                                      }
                                                                                                      addr735:
                                                                                                      §§push(_loc16_);
                                                                                                      if(_loc35_)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      §§push(_loc21_);
                                                                                                      if(!(_loc35_ && _loc3_))
                                                                                                      {
                                                                                                         §§push(§§pop() < -§§pop());
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() || _loc16_ > _loc21_);
                                                                                                            if(!(§§pop() || _loc16_ > _loc21_))
                                                                                                            {
                                                                                                               if(_loc34_ || param1)
                                                                                                               {
                                                                                                                  if(_loc35_)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  §§goto(addr680);
                                                                                                               }
                                                                                                               §§goto(addr1002);
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         §§goto(addr643);
                                                                                                      }
                                                                                                      §§goto(addr1437);
                                                                                                   }
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(Math.sin(_loc4_.rotation)));
                                                                                                if(!(_loc35_ && _loc3_))
                                                                                                {
                                                                                                   §§goto(addr1679);
                                                                                                }
                                                                                                §§goto(addr1727);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr1285);
                                                                                       }
                                                                                       §§goto(addr1515);
                                                                                    }
                                                                                    §§goto(addr868);
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr1752:
                                                                           return;
                                                                        }
                                                                        break;
                                                                        addr498:
                                                                     }
                                                                     break;
                                                                  }
                                                                  addr501:
                                                                  if(§§pop() != Number.MAX_VALUE)
                                                                  {
                                                                     if(_loc34_)
                                                                     {
                                                                        this.§'!=§ = Math.max(0,this.§'!=§ - _loc2_);
                                                                        addr515:
                                                                        §§goto(addr516);
                                                                        §§push(0);
                                                                     }
                                                                  }
                                                                  §§goto(addr515);
                                                                  addr488:
                                                               }
                                                               while(true)
                                                               {
                                                                  this.§'_§(this.§#z§);
                                                                  if(!(_loc35_ && param1))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        _loc4_ = this.§;!4§[this.§<"§++] as §9T§;
                                                                        this.initParticle(_loc4_);
                                                                        loop3:
                                                                        while(true)
                                                                        {
                                                                           this.advanceParticle(_loc4_,this.§6[§);
                                                                           §§push(_loc12_);
                                                                           loop4:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              while(true)
                                                                              {
                                                                                 _loc13_ = §§pop();
                                                                                 loop6:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!isNaN(this.§&E§))
                                                                                    {
                                                                                       §§push(_loc12_);
                                                                                       if(_loc34_)
                                                                                       {
                                                                                          if(!(_loc34_ || _loc2_))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          if(!_loc34_)
                                                                                          {
                                                                                             continue loop4;
                                                                                          }
                                                                                          §§push(1 - this.§&E§);
                                                                                          if(!(_loc35_ && _loc2_))
                                                                                          {
                                                                                             §§push(Math.random() * this.§&E§);
                                                                                             if(!(_loc35_ && _loc3_))
                                                                                             {
                                                                                                §§push(§§pop() * 2);
                                                                                             }
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(!(_loc35_ && param1))
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!(_loc35_ && _loc3_))
                                                                                                {
                                                                                                   addr461:
                                                                                                   §§push(§§pop() + this.§!!G§);
                                                                                                   if(_loc35_ && param1)
                                                                                                   {
                                                                                                   }
                                                                                                   addr470:
                                                                                                   _loc13_ = §§pop();
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr367:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this);
                                                                                                         §§push(this.§!!G§);
                                                                                                         if(_loc34_ || this)
                                                                                                         {
                                                                                                            §§push(_loc12_);
                                                                                                            if(!(_loc35_ && _loc2_))
                                                                                                            {
                                                                                                               §§push(§§pop() - _loc13_);
                                                                                                            }
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                         }
                                                                                                         §§pop().§!!G§ = §§pop();
                                                                                                         if(!_loc34_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         continue loop3;
                                                                                                      }
                                                                                                      addr399:
                                                                                                      §§push(this);
                                                                                                      §§push(this.§6[§);
                                                                                                      continue loop6;
                                                                                                      if(_loc34_ || this)
                                                                                                      {
                                                                                                         §§push(§§pop() - _loc13_);
                                                                                                      }
                                                                                                      §§pop().§6[§ = §§pop();
                                                                                                      if(_loc35_ && _loc2_)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      if(false)
                                                                                                      {
                                                                                                         §§goto(addr367);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr488);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr470);
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr461);
                                                                                    }
                                                                                    §§goto(addr367);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr324:
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr499);
                                                               addr313:
                                                            }
                                                         }
                                                         §§goto(addr501);
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr286);
                                                }
                                                §§goto(addr515);
                                             }
                                             §§goto(addr498);
                                          }
                                          §§goto(addr286);
                                       }
                                       while(true)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             §§goto(addr313);
                                          }
                                          §§goto(addr324);
                                       }
                                       addr312:
                                    }
                                    break;
                                 }
                                 while(true)
                                 {
                                    §§goto(addr312);
                                 }
                              }
                              §§goto(addr125);
                           }
                           §§goto(addr102);
                        }
                        §§goto(addr106);
                     }
                     §§goto(addr102);
                  }
               }
            }
            §§goto(addr93);
         }
         §§goto(addr87);
      }
      
      private function §^!!§(param1:Matrix3D) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§9T§ = null;
         var _loc2_:int = 0;
         loop0:
         while(_loc2_ < this.§<"§)
         {
            _loc3_ = this.§;!4§[_loc2_];
            if(_loc5_ || param1)
            {
               this.§;a§[_loc2_ * 3] = _loc3_.x;
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     this.§;a§[_loc2_ * 3 + 1] = _loc3_.y;
                     do
                     {
                        _loc2_++;
                     }
                     while(!_loc5_);
                     
                     if(!_loc5_)
                     {
                        break;
                        addr54:
                     }
                     while(false)
                     {
                        continue loop2;
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr54);
         }
         if(_loc5_ || _loc2_)
         {
            param1.transformVectors(this.§;a§,this.§6i§);
         }
      }
      
      override public function render(param1:§ G§, param2:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            this.§0!$§(param1.§4L§);
            do
            {
               while(this.§8_§ != 0)
               {
                  loop2:
                  while(true)
                  {
                     §§push(param2);
                     if(!(_loc7_ && this))
                     {
                        §§push(§§pop() * this.alpha);
                        if(!(_loc7_ && param2))
                        {
                           addr38:
                           §§push(Number(§§pop()));
                        }
                        param2 = §§pop();
                        if(!_loc7_)
                        {
                           break;
                        }
                        addr54:
                        while(true)
                        {
                           continue loop2;
                        }
                     }
                     §§goto(addr38);
                  }
                  if(!_loc6_)
                  {
                     break;
                  }
                  if(false)
                  {
                     continue;
                  }
                  §§push(§0o§);
                  §§push(param2 == 1);
                  if(!_loc7_)
                  {
                     §§push(!§§pop());
                  }
                  §§push(§§pop().§4I§(§§pop(),this.§<i§.mipMapping,false,this.§7!8§,true));
                  if(_loc6_ || param1)
                  {
                     §§push(§§pop());
                  }
                  var _loc3_:* = §§pop();
                  var _loc4_:Context3D;
                  if((_loc4_ = param1.context) == null)
                  {
                     if(!(_loc7_ && param1))
                     {
                        return;
                     }
                  }
                  else
                  {
                     var _loc5_:Vector.<Number> = !!this.§3Y§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
                     if(!_loc7_)
                     {
                        if(param1.§@R§ != this.§9t§)
                        {
                           while(true)
                           {
                              this.§'_§(0);
                              addr373:
                              addr293:
                              while(true)
                              {
                                 this.§9t§ = param1.§@R§;
                              }
                              _loc4_.setVertexBufferAt(1,this.§]#§,§+^§.§!^§,Context3DVertexBufferFormat.FLOAT_2);
                              do
                              {
                                 _loc4_.setVertexBufferAt(2,this.§]8§,§+^§.§;F§,Context3DVertexBufferFormat.FLOAT_4);
                                 _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§4L§,true);
                                 _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
                                 do
                                 {
                                    _loc4_.drawTriangles(this.§'5§,0,this.§8_§ * 2);
                                 }
                                 while(!(_loc6_ || param2));
                                 
                                 _loc4_.setVertexBufferAt(0,null);
                              }
                              while(!_loc6_);
                              
                              if(_loc7_)
                              {
                                 continue;
                              }
                              _loc4_.setVertexBufferAt(1,null);
                              loop12:
                              while(true)
                              {
                                 if(!_loc7_)
                                 {
                                    addr190:
                                    if(!(_loc7_ && param2))
                                    {
                                       if(_loc6_)
                                       {
                                          if(_loc6_ || param1)
                                          {
                                             continue;
                                          }
                                          §§goto(addr373);
                                       }
                                       break;
                                    }
                                    while(true)
                                    {
                                       _loc4_.setVertexBufferAt(0,this.§25§,§+^§.§;u§,Context3DVertexBufferFormat.FLOAT_3);
                                       §§goto(addr190);
                                    }
                                    addr302:
                                 }
                                 addr286:
                                 addr318:
                                 while(_loc6_ || param2)
                                 {
                                    §§goto(addr293);
                                 }
                                 while(true)
                                 {
                                    _loc4_.setProgram(§?h§.§ n§.§;?§(_loc3_));
                                    break loop12;
                                    §§goto(addr286);
                                 }
                              }
                              while(true)
                              {
                                 _loc4_.setTextureAt(0,this.§<i§.getBase(_loc4_));
                                 §§goto(addr302);
                              }
                              addr310:
                           }
                        }
                        while(true)
                        {
                           if(!this.§1+§(_loc4_))
                           {
                              this.§]8§.uploadFromVector(this.§;#§.§3!?§,0,this.§8_§ * 4);
                              this.§25§.uploadFromVector(this.§;#§.§[&§,0,this.§8_§ * 4);
                           }
                           _loc4_.setBlendFactors(this.§3k§,this.§9^§);
                           §§goto(addr318);
                        }
                     }
                     §§goto(addr310);
                  }
                  §§goto(addr104);
               }
            }
            while(!_loc6_);
            
            return;
         }
         §§goto(addr54);
      }
      
      public function get §7L§() : Boolean
      {
         return false;
      }
      
      public function get §#z§() : int
      {
         return this.§;#§.§7U§ / 4;
      }
      
      public function get §-m§() : int
      {
         return this.§<"§;
      }
      
      public function get §,b§() : Number
      {
         return this.§<X§;
      }
      
      public function set §,b§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§<X§ = param1;
         }
      }
      
      public function get §!T§() : Number
      {
         return this.§5!A§;
      }
      
      public function set §!T§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§5!A§ = param1;
         }
      }
      
      public function get §%P§() : Number
      {
         return this.§2?§;
      }
      
      public function set §%P§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§2?§ = param1;
         }
      }
      
      public function get texture() : Texture
      {
         return this.§<i§;
      }
   }
}
