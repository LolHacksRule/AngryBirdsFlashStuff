package §>!H§
{
   import §,G§.§ u§;
   import §,_§.DisplayObject;
   import §7!=§.Texture;
   import §8E§.§#!C§;
   import §^X§.§5!D§;
   import §catch§.§'d§;
   import §catch§.§2O§;
   import §catch§.§4@§;
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
   
   public class §;N§ extends DisplayObject implements §5!D§
   {
       
      
      private var §[#§:Texture;
      
      private var §?j§:Vector.<§<J§>;
      
      private var §2N§:Number;
      
      private var §9y§:Vector.<Number>;
      
      private var §2!5§:Vector.<Number>;
      
      private var § !!§:§ u§;
      
      private var §!Y§:VertexBuffer3D;
      
      private var §=J§:VertexBuffer3D;
      
      private var §^<§:VertexBuffer3D;
      
      private var §31§:Vector.<uint>;
      
      private var §%r§:IndexBuffer3D;
      
      private var §]N§:int;
      
      private var §0n§:int;
      
      private var §7t§:Number;
      
      protected var §"!C§:Number;
      
      private var §9!5§:Number = 0.0;
      
      private var §4!-§:Number;
      
      protected var §0=§:Number;
      
      protected var §9E§:Number;
      
      protected var §7M§:Boolean;
      
      protected var §5d§:String;
      
      protected var §7&§:String;
      
      protected var §@>§:String;
      
      private var §9l§:int = -1;
      
      private var §!!#§:Boolean = false;
      
      private var §?_§:Number = 0.0;
      
      public function §;N§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§[#§ = param1;
         this.§7M§ = param1.premultipliedAlpha;
         this.§?j§ = new Vector.<§<J§>(0,false);
         if(_loc8_ || this)
         {
            this.§9y§ = new Vector.<Number>();
            this.§2!5§ = new Vector.<Number>();
            this.§ !!§ = new § u§(0,this.§7M§);
         }
         this.§31§ = new Vector.<uint>(0);
         this.§7t§ = param2;
         if(!(_loc7_ && this))
         {
            this.§4!-§ = 0;
            this.§2N§ = 0;
         }
         this.§0=§ = this.§9E§ = 0;
         if(_loc8_)
         {
            §§push(this);
            if(!_loc7_)
            {
               §§push(param5);
               if(!(_loc7_ && this))
               {
                  §§push(§§pop());
                  if(!(_loc7_ && this))
                  {
                     if(!§§pop())
                     {
                        if(_loc8_ || param3)
                        {
                           addr142:
                           §§pop();
                           §§push(Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA);
                        }
                     }
                     §§pop().§7&§ = §§pop();
                     if(!(_loc7_ && this))
                     {
                        §§push(this);
                        if(_loc8_ || param1)
                        {
                           §§push(param4);
                           if(!_loc7_)
                           {
                              §§push(§§pop());
                              if(_loc8_)
                              {
                                 §§goto(addr168);
                              }
                              §§goto(addr182);
                           }
                           addr168:
                           if(!§§pop())
                           {
                              if(_loc8_)
                              {
                                 addr182:
                                 §§pop();
                                 if(_loc8_)
                                 {
                                    if(this.§7M§)
                                    {
                                       addr188:
                                       §§push(Context3DBlendFactor.ONE);
                                       if(_loc8_ || param3)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       §§push(Context3DBlendFactor.SOURCE_ALPHA);
                                    }
                                 }
                                 §§goto(addr188);
                              }
                           }
                           §§pop().§5d§ = §§pop();
                           §§goto(addr203);
                        }
                        §§goto(addr188);
                     }
                     addr203:
                     if(param3 > 0)
                     {
                        if(_loc8_)
                        {
                           this.§&P§(param3);
                        }
                     }
                     return;
                  }
               }
            }
            §§goto(addr142);
         }
         §§goto(addr168);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(this.§!Y§)
         {
            if(!_loc2_)
            {
               this.§!Y§.dispose();
               §§goto(addr24);
            }
            §§goto(addr39);
         }
         addr24:
         if(this.§=J§)
         {
            if(_loc1_)
            {
               addr39:
               this.§=J§.dispose();
               if(!(_loc2_ && this))
               {
                  §§goto(addr59);
               }
               §§goto(addr62);
            }
            §§goto(addr68);
         }
         addr59:
         if(this.§^<§)
         {
            addr62:
            this.§^<§.dispose();
         }
         if(this.§%r§)
         {
            addr68:
            this.§%r§.dispose();
         }
         this.§9y§ = null;
         if(!_loc2_)
         {
            this.§2!5§ = null;
            super.dispose();
         }
      }
      
      protected function createParticle() : §<J§
      {
         return new §<J§();
      }
      
      protected function initParticle(param1:§<J§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         param1.x = this.§0=§;
         if(!(_loc3_ && _loc2_))
         {
            param1.y = this.§9E§;
            param1.currentTime = 0;
            if(_loc2_ || param1)
            {
               param1.§2S§ = 1;
               param1.red = Math.random();
               param1.green = Math.random();
               if(_loc2_ || _loc2_)
               {
                  param1.blue = Math.random();
                  if(!_loc3_)
                  {
                     addr85:
                     param1.alpha = 0;
                  }
               }
               return;
            }
         }
         §§goto(addr85);
      }
      
      protected function advanceParticle(param1:§<J§, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            §§push(param1);
            §§push(param1.y);
            if(_loc4_)
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
               §§push(param1);
               §§push(1);
               §§push(param1.currentTime);
               if(!_loc3_)
               {
                  §§push(§§pop() / param1.§2S§);
               }
               §§pop().alpha = §§pop() - §§pop();
               if(_loc4_)
               {
                  param1.scaleX = 1 - param1.alpha;
                  if(!_loc3_)
                  {
                     addr84:
                     param1.scaleY = 1 - param1.alpha;
                     if(_loc3_ && _loc3_)
                     {
                     }
                     §§goto(addr110);
                  }
                  §§push(param1);
                  §§push(param1.currentTime);
                  if(!(_loc3_ && this))
                  {
                     §§push(§§pop() + param2);
                  }
                  §§pop().currentTime = §§pop();
                  addr110:
                  return;
               }
               §§goto(addr84);
            }
         }
         §§goto(addr84);
      }
      
      private function §&P§(param1:int) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         §§push(this.§if§);
         if(!(_loc8_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§if§);
         if(_loc9_ || _loc3_)
         {
            §§push(int(§§pop() + param1));
         }
         var _loc3_:* = §§pop();
         var _loc4_:§ u§;
         (_loc4_ = new § u§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         _loc4_.setTexCoords(2,0,1);
         if(!_loc8_)
         {
            _loc4_.setTexCoords(3,1,1);
         }
         this.§[#§.adjustVertexData(_loc4_,0,4);
         if(_loc9_)
         {
            this.§?j§.fixed = false;
            this.§31§.fixed = false;
         }
         §§push(_loc2_);
         if(_loc9_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc5_);
            loop1:
            while(true)
            {
               §§push(_loc3_);
               loop2:
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(_loc9_)
                     {
                        this.§?j§.fixed = true;
                        break;
                     }
                     break;
                  }
                  §§push(_loc5_);
                  if(_loc8_ && param1)
                  {
                     continue loop1;
                  }
                  §§push(4);
                  if(_loc8_ && _loc3_)
                  {
                     continue;
                  }
                  §§push(int(§§pop() * §§pop()));
                  if(_loc9_)
                  {
                     _loc6_ = §§pop();
                     this.§?j§.push(this.createParticle());
                     if(!(_loc8_ && this))
                     {
                        §§push(0);
                        if(!(_loc8_ && this))
                        {
                           addr151:
                           _loc7_ = §§pop();
                           while(true)
                           {
                              §§push(_loc7_);
                              if(_loc8_)
                              {
                                 continue loop1;
                              }
                           }
                           addr170:
                        }
                        while(true)
                        {
                           §§push(3);
                           if(_loc8_)
                           {
                              continue loop2;
                           }
                           if(§§pop() >= §§pop())
                           {
                              if(!(_loc8_ && _loc2_))
                              {
                                 this.§ !!§.append(_loc4_);
                                 break;
                              }
                              break loop2;
                           }
                           this.§9y§.push(0);
                        }
                        continue loop0;
                     }
                     while(true)
                     {
                        this.§2!5§.push(0);
                        _loc7_++;
                        if(_loc8_ && _loc2_)
                        {
                           continue loop0;
                        }
                        §§goto(addr170);
                     }
                  }
                  §§goto(addr151);
               }
               this.§31§.fixed = true;
               if(_loc9_)
               {
                  this.§!!#§ = true;
               }
               return;
            }
         }
      }
      
      private function §8Y§(param1:Context3D) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§!!#§);
            if(!_loc4_)
            {
               if(!§§pop())
               {
                  if(_loc3_ || param1)
                  {
                     §§goto(addr31);
                  }
               }
               else
               {
                  addr34:
                  if(param1 == null)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        throw new §#!C§();
                     }
                  }
               }
               §§push(this.§ !!§.§3K§);
               if(!_loc4_)
               {
                  §§push(int(§§pop() / 4));
               }
               var _loc2_:* = §§pop();
               if(this.§!Y§)
               {
                  if(!_loc4_)
                  {
                     this.§!Y§.dispose();
                     if(_loc3_ || this)
                     {
                        addr71:
                        if(this.§=J§)
                        {
                           this.§=J§.dispose();
                           if(!_loc4_)
                           {
                              addr79:
                              if(this.§^<§)
                              {
                                 this.§^<§.dispose();
                              }
                              if(this.§%r§)
                              {
                                 this.§%r§.dispose();
                                 addr101:
                                 this.§!Y§ = param1.createVertexBuffer(_loc2_ * 4,§ u§.§=#§);
                              }
                              §§goto(addr101);
                           }
                           this.§!Y§.uploadFromByteArray(this.§ !!§.§;@§,0,0,_loc2_ * 4);
                           if(_loc3_)
                           {
                              this.§=J§ = param1.createVertexBuffer(_loc2_ * 4,§ u§.§-q§);
                              if(_loc3_)
                              {
                                 addr134:
                                 this.§=J§.uploadFromVector(this.§ !!§.§2,§,0,_loc2_ * 4);
                                 addr144:
                                 this.§^<§ = param1.createVertexBuffer(_loc2_ * 4,§ u§.§18§);
                                 this.§^<§.uploadFromVector(this.§ !!§.§-h§,0,_loc2_ * 4);
                                 if(!_loc4_)
                                 {
                                    this.§%r§ = param1.createIndexBuffer(_loc2_ * 6);
                                    if(!_loc3_)
                                    {
                                    }
                                    §§goto(addr193);
                                 }
                                 this.§%r§.uploadFromVector(this.§31§,0,_loc2_ * 6);
                              }
                              addr193:
                              return true;
                           }
                           §§goto(addr144);
                        }
                        §§goto(addr79);
                     }
                     §§goto(addr134);
                  }
                  §§goto(addr101);
               }
               §§goto(addr71);
            }
            addr31:
            return false;
         }
         §§goto(addr34);
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(this.§7t§ != 0)
            {
               if(!(_loc3_ && _loc2_))
               {
                  this.§4!-§ = param1;
               }
            }
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§4!-§ = 0;
         }
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Matrix = §>!>§(param1);
         var _loc4_:Point = _loc3_.transformPoint(new Point(x,y));
         if(param2 == null)
         {
            if(_loc5_ || param2)
            {
               return new Rectangle(_loc4_.x,_loc4_.y);
            }
         }
         else
         {
            param2.x = _loc4_.x;
         }
         param2.y = _loc4_.y;
         param2.width = 0;
         param2.height = 0;
         return param2;
      }
      
      public function §"!D§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.advanceTime(param1);
            if(_loc2_ || _loc2_)
            {
               addr28:
               this.§[r§(null);
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§?_§ = param1;
         }
      }
      
      private function §[r§(param1:Matrix3D) : void
      {
         var _loc34_:Boolean = true;
         var _loc35_:Boolean = false;
         var _loc4_:§<J§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc11_:§<J§ = null;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = 0;
         var _loc15_:* = false;
         var _loc16_:Number = NaN;
         var _loc17_:* = NaN;
         var _loc18_:* = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:* = NaN;
         var _loc21_:* = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:* = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:* = NaN;
         var _loc27_:* = NaN;
         var _loc28_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc30_:* = NaN;
         var _loc31_:Number = NaN;
         if(_loc34_ || this)
         {
            §§push(Boolean(isNaN(this.§?_§)));
            if(!(_loc35_ && param1))
            {
               if(!§§pop())
               {
                  if(_loc34_ || this)
                  {
                     §§pop();
                     if(_loc34_)
                     {
                        §§push(this.§?_§);
                        if(!(_loc35_ && this))
                        {
                           addr108:
                           if(§§pop() == 0)
                           {
                              if(!(_loc35_ && _loc2_))
                              {
                                 §§goto(addr116);
                              }
                           }
                           §§push(this.§?_§);
                           if(_loc34_)
                           {
                              addr121:
                              §§push(Number(§§pop()));
                           }
                           var _loc2_:* = §§pop();
                           if(!_loc35_)
                           {
                              this.§?_§ = 0;
                              if(!(_loc35_ && _loc3_))
                              {
                                 _loc2_ = Number(Math.min(0.2,_loc2_));
                              }
                           }
                           var _loc3_:int = 0;
                           while(true)
                           {
                              §§push(_loc3_);
                              if(!_loc35_)
                              {
                                 §§push(this.§]N§);
                                 if(_loc34_ || this)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       if(_loc34_)
                                       {
                                          §§push(this.§4!-§);
                                          if(!_loc35_)
                                          {
                                             §§push(0);
                                             if(_loc34_)
                                             {
                                                if(§§pop() > §§pop())
                                                {
                                                   §§push(1);
                                                   if(!(_loc35_ && param1))
                                                   {
                                                      break;
                                                   }
                                                   addr479:
                                                   var _loc5_:* = §§pop();
                                                   §§push(this.§[#§.width);
                                                   if(!(_loc35_ && _loc3_))
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc8_:* = §§pop();
                                                   §§push(this.§[#§.height);
                                                   if(_loc34_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc9_:* = §§pop();
                                                   if(!_loc35_)
                                                   {
                                                      this.§0n§ = 0;
                                                   }
                                                   var _loc10_:Vector3D = new Vector3D();
                                                   if(!_loc35_)
                                                   {
                                                      if(param1)
                                                      {
                                                         if(_loc34_ || this)
                                                         {
                                                            this.§88§(param1);
                                                            if(_loc35_ && _loc2_)
                                                            {
                                                            }
                                                            §§goto(addr1528);
                                                         }
                                                         §§push(0);
                                                         if(_loc34_ || _loc2_)
                                                         {
                                                            _loc14_ = §§pop();
                                                            if(_loc34_)
                                                            {
                                                               addr540:
                                                               while(true)
                                                               {
                                                                  §§push(_loc14_);
                                                               }
                                                               addr1524:
                                                            }
                                                            §§goto(addr1528);
                                                         }
                                                         for(; §§pop() < this.§]N§; §§goto(addr1524))
                                                         {
                                                            §§push((_loc4_ = this.§?j§[_loc14_]).x);
                                                            if(!(_loc35_ && this))
                                                            {
                                                               _loc6_ = §§pop();
                                                               §§push(Number(_loc4_.y));
                                                               if(_loc34_ || param1)
                                                               {
                                                                  _loc7_ = §§pop();
                                                                  §§push(true);
                                                                  if(!(_loc35_ && _loc3_))
                                                                  {
                                                                     _loc15_ = §§pop();
                                                                     _loc10_.x = _loc6_;
                                                                     _loc10_.y = _loc7_;
                                                                     _loc16_ = this.§2!5§[_loc14_ * 3];
                                                                     §§push(Number(this.§2!5§[_loc14_ * 3 + 1]));
                                                                     if(!(_loc35_ && _loc3_))
                                                                     {
                                                                        _loc17_ = §§pop();
                                                                        §§push(_loc8_);
                                                                        §§push(_loc4_.scaleX);
                                                                        if(!(_loc35_ && param1))
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           §§push(2);
                                                                           if(!_loc35_)
                                                                           {
                                                                              §§push(Number(§§pop() / §§pop()));
                                                                              if(!_loc35_)
                                                                              {
                                                                                 _loc18_ = §§pop();
                                                                                 §§push(_loc9_);
                                                                                 if(!(_loc35_ && _loc2_))
                                                                                 {
                                                                                    addr637:
                                                                                    §§push(_loc4_.scaleY);
                                                                                    if(_loc34_ || this)
                                                                                    {
                                                                                       addr648:
                                                                                       _loc19_ = §§pop() * §§pop() / 2;
                                                                                       if(_loc34_)
                                                                                       {
                                                                                          §§push(_loc16_);
                                                                                          §§push(-1.1);
                                                                                          if(!(_loc35_ && param1))
                                                                                          {
                                                                                             §§push(§§pop() < §§pop());
                                                                                             if(!(_loc35_ && param1))
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   if(!_loc35_)
                                                                                                   {
                                                                                                      addr674:
                                                                                                      §§pop();
                                                                                                      §§push(_loc16_);
                                                                                                      if(_loc34_)
                                                                                                      {
                                                                                                         §§push(1.1);
                                                                                                         if(!_loc35_)
                                                                                                         {
                                                                                                            addr682:
                                                                                                            §§push(§§pop() > §§pop());
                                                                                                            §§push(§§pop() > §§pop());
                                                                                                            if(!_loc35_)
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  if(!(_loc35_ && _loc2_))
                                                                                                                  {
                                                                                                                     §§push(_loc17_ < -1.1);
                                                                                                                     if(!(_loc35_ && _loc2_))
                                                                                                                     {
                                                                                                                        addr704:
                                                                                                                        §§push(§§pop());
                                                                                                                        if(_loc34_)
                                                                                                                        {
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              §§push(_loc17_);
                                                                                                                              if(_loc34_ || this)
                                                                                                                              {
                                                                                                                                 addr719:
                                                                                                                                 if(§§pop() > 1.1)
                                                                                                                                 {
                                                                                                                                    if(§4@§.§0W§)
                                                                                                                                    {
                                                                                                                                       if(_loc34_ || this)
                                                                                                                                       {
                                                                                                                                          §§push(Number(Math.max(_loc18_,_loc19_)));
                                                                                                                                          §§push(Number(Math.max(_loc18_,_loc19_)));
                                                                                                                                          if(!_loc35_)
                                                                                                                                          {
                                                                                                                                             _loc20_ = §§pop();
                                                                                                                                             if(!_loc35_)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop() / §4@§.§0W§.§[J§));
                                                                                                                                                if(!(_loc35_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   _loc20_ = §§pop();
                                                                                                                                                   §§push(1.1);
                                                                                                                                                   §§push(_loc20_);
                                                                                                                                                   if(!_loc35_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      if(!(_loc35_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         if(_loc34_)
                                                                                                                                                         {
                                                                                                                                                            _loc21_ = §§pop();
                                                                                                                                                            if(!_loc35_)
                                                                                                                                                            {
                                                                                                                                                               addr786:
                                                                                                                                                               §§push(_loc16_ < -_loc21_);
                                                                                                                                                               §§push(_loc16_ < -_loc21_);
                                                                                                                                                               if(!_loc35_)
                                                                                                                                                               {
                                                                                                                                                                  addr789:
                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc34_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop();
                                                                                                                                                                        addr799:
                                                                                                                                                                        §§push(_loc16_);
                                                                                                                                                                        §§push(_loc21_);
                                                                                                                                                                        if(_loc34_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() > §§pop());
                                                                                                                                                                           if(_loc34_)
                                                                                                                                                                           {
                                                                                                                                                                              addr810:
                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                              if(_loc34_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 addr818:
                                                                                                                                                                                 if(!§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc35_ && _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop();
                                                                                                                                                                                       addr1056:
                                                                                                                                                                                       §§push(_loc17_);
                                                                                                                                                                                       §§push(_loc21_);
                                                                                                                                                                                       if(!(_loc35_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() < -§§pop());
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       §§push(_loc19_);
                                                                                                                                                                                       if(!_loc35_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(-(§§pop() + §§pop() * _loc22_));
                                                                                                                                                                                          if(!_loc35_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                             if(!_loc35_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1069:
                                                                                                                                                                                                _loc27_ = §§pop();
                                                                                                                                                                                                if(!(_loc34_ || _loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue;
                                                                                                                                                                                                }
                                                                                                                                                                                                addr1082:
                                                                                                                                                                                                §§push(_loc18_ * _loc22_ + _loc19_ * _loc23_);
                                                                                                                                                                                                if(_loc34_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc28_ = §§pop();
                                                                                                                                                                                                   addr1095:
                                                                                                                                                                                                   §§push(_loc18_ * _loc23_);
                                                                                                                                                                                                   §§push(_loc19_ * _loc22_);
                                                                                                                                                                                                   if(!(_loc35_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1106:
                                                                                                                                                                                                      §§push(-(§§pop() - §§pop()));
                                                                                                                                                                                                      if(!_loc35_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc29_ = §§pop();
                                                                                                                                                                                                         addr1112:
                                                                                                                                                                                                         §§push(_loc18_);
                                                                                                                                                                                                         if(_loc34_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1115:
                                                                                                                                                                                                            §§push(-§§pop());
                                                                                                                                                                                                            if(!(_loc35_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc22_);
                                                                                                                                                                                                               if(!_loc35_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  if(!_loc35_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1129:
                                                                                                                                                                                                                     §§push(_loc19_);
                                                                                                                                                                                                                     §§push(_loc23_);
                                                                                                                                                                                                                     if(_loc34_ || _loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1139:
                                                                                                                                                                                                                        §§push(Number(§§pop() + §§pop() * §§pop()));
                                                                                                                                                                                                                        if(!(_loc35_ && this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr1148:
                                                                                                                                                                                                                           _loc30_ = §§pop();
                                                                                                                                                                                                                           if(!(_loc35_ && param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1173:
                                                                                                                                                                                                                              §§push(-_loc18_);
                                                                                                                                                                                                                              §§push(_loc23_);
                                                                                                                                                                                                                              if(_loc34_ || _loc2_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1166:
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 §§push(_loc19_);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              _loc31_ = -(§§pop() - §§pop() * _loc22_);
                                                                                                                                                                                                                              if(!(_loc35_ && _loc2_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(this.§ !!§);
                                                                                                                                                                                                                                 if(_loc34_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc5_);
                                                                                                                                                                                                                                    §§push(_loc6_);
                                                                                                                                                                                                                                    if(_loc34_ || this)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc26_);
                                                                                                                                                                                                                                       if(!(_loc35_ && _loc3_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                          if(_loc34_ || this)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc7_);
                                                                                                                                                                                                                                             if(!_loc35_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc27_);
                                                                                                                                                                                                                                                if(!(_loc35_ && _loc2_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                   if(_loc34_ || _loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§pop().§8!4§(§§pop(),§§pop(),§§pop());
                                                                                                                                                                                                                                                      if(!(_loc35_ && this))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1237:
                                                                                                                                                                                                                                                         §§push(this.§ !!§);
                                                                                                                                                                                                                                                         §§push(_loc5_);
                                                                                                                                                                                                                                                         §§push(1);
                                                                                                                                                                                                                                                         if(_loc34_ || _loc2_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                            if(_loc34_ || _loc2_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc6_);
                                                                                                                                                                                                                                                               if(!_loc35_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc24_);
                                                                                                                                                                                                                                                                  if(!(_loc35_ && _loc2_))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1268:
                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                     §§push(_loc7_);
                                                                                                                                                                                                                                                                     if(_loc34_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc25_);
                                                                                                                                                                                                                                                                        if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                           if(_loc34_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§pop().§8!4§(§§pop(),§§pop(),§§pop());
                                                                                                                                                                                                                                                                              if(_loc34_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(this.§ !!§);
                                                                                                                                                                                                                                                                                 §§push(_loc5_);
                                                                                                                                                                                                                                                                                 §§push(2);
                                                                                                                                                                                                                                                                                 if(!_loc35_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr1291:
                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                    if(!(_loc35_ && _loc2_))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1299:
                                                                                                                                                                                                                                                                                       §§push(_loc6_ + _loc30_);
                                                                                                                                                                                                                                                                                       if(!(_loc35_ && _loc3_))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc7_);
                                                                                                                                                                                                                                                                                          if(!_loc35_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc31_);
                                                                                                                                                                                                                                                                                             if(_loc34_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§pop().§8!4§(§§pop(),§§pop(),§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                §§push(this.§ !!§);
                                                                                                                                                                                                                                                                                                §§push(_loc5_);
                                                                                                                                                                                                                                                                                                if(_loc34_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr1322:
                                                                                                                                                                                                                                                                                                   §§push(3);
                                                                                                                                                                                                                                                                                                   if(!_loc35_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                      if(_loc34_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(_loc6_ + _loc28_);
                                                                                                                                                                                                                                                                                                         if(!(_loc35_ && _loc3_))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc7_);
                                                                                                                                                                                                                                                                                                            if(_loc34_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr1341:
                                                                                                                                                                                                                                                                                                               §§push(_loc29_);
                                                                                                                                                                                                                                                                                                               if(_loc34_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                  if(_loc34_ || param1)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§pop().§8!4§(§§pop(),§§pop(),§§pop());
                                                                                                                                                                                                                                                                                                                     if(_loc34_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr1516:
                                                                                                                                                                                                                                                                                                                        §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                        if(_loc34_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr1521:
                                                                                                                                                                                                                                                                                                                           §§push(int(§§pop() + 4));
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        _loc5_ = §§pop();
                                                                                                                                                                                                                                                                                                                        _loc14_++;
                                                                                                                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr1483:
                                                                                                                                                                                                                                                                                                                     §§push(this.§ !!§);
                                                                                                                                                                                                                                                                                                                     §§push(_loc5_ + 3);
                                                                                                                                                                                                                                                                                                                     §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                     if(_loc34_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr1501:
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() + _loc18_);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                     if(_loc34_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr1507:
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() + _loc19_);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§pop().§8!4§(§§pop(),§§pop(),§§pop());
                                                                                                                                                                                                                                                                                                                     if(_loc35_ && _loc2_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1516);
                                                                                                                                                                                                                                                                                                                     §§goto(addr1516);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr1419:
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                     if(_loc34_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr1423:
                                                                                                                                                                                                                                                                                                                        §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                        §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                        if(_loc34_ || param1)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr1432:
                                                                                                                                                                                                                                                                                                                           §§pop().§8!4§(§§pop(),§§pop(),§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                           if(_loc35_ && _loc3_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           addr1440:
                                                                                                                                                                                                                                                                                                                           §§push(this.§ !!§);
                                                                                                                                                                                                                                                                                                                           if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr1449:
                                                                                                                                                                                                                                                                                                                              §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                              if(!(_loc35_ && _loc2_))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(2);
                                                                                                                                                                                                                                                                                                                                 if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    addr1460:
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                    if(_loc34_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       addr1463:
                                                                                                                                                                                                                                                                                                                                       §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                       §§push(_loc18_);
                                                                                                                                                                                                                                                                                                                                       if(_loc34_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr1473:
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                          §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                          §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                          if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             addr1477:
                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                             if(_loc34_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                addr1480:
                                                                                                                                                                                                                                                                                                                                                §§pop().§8!4§(§§pop(),§§pop(),§§pop());
                                                                                                                                                                                                                                                                                                                                                if(!_loc34_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   continue;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1483);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1507);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1483);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1501);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1477);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1423);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr1403:
                                                                                                                                                                                                                                                                                                         §§push(_loc6_);
                                                                                                                                                                                                                                                                                                         if(!(_loc35_ && _loc2_))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc18_);
                                                                                                                                                                                                                                                                                                            if(!(_loc35_ && _loc2_))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§goto(addr1419);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1480);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1501);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr1395:
                                                                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                      if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§goto(addr1403);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1483);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr1387:
                                                                                                                                                                                                                                                                                                   §§push(1);
                                                                                                                                                                                                                                                                                                   if(!(_loc35_ && _loc2_))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§goto(addr1395);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1460);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1507);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1432);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1473);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1463);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1483);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1440);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1501);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1507);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1341);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1268);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1299);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1291);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1516);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1383:
                                                                                                                                                                                                                                                      §§pop().§8!4§(§§pop(),§§pop(),§§pop() - _loc19_);
                                                                                                                                                                                                                                                      §§push(this.§ !!§);
                                                                                                                                                                                                                                                      §§push(_loc5_);
                                                                                                                                                                                                                                                      addr1382:
                                                                                                                                                                                                                                                      addr1381:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1387);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1382);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1373:
                                                                                                                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                §§push(_loc7_);
                                                                                                                                                                                                                                                if(!(_loc35_ && this))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr1381);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1383);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1373);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1383);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1373);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1449);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1440);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1383);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1173);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1139);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1173);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1115);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1166);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1129);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1115);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1095);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 if(!§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc35_ && _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr847:
                                                                                                                                                                                       §§pop();
                                                                                                                                                                                       §§push(_loc17_ > _loc21_);
                                                                                                                                                                                       if(!_loc35_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr853:
                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc35_ && _loc2_))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(false);
                                                                                                                                                                                                if(_loc34_ || _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr869:
                                                                                                                                                                                                   _loc15_ = §§pop();
                                                                                                                                                                                                   addr870:
                                                                                                                                                                                                   §§push(_loc15_);
                                                                                                                                                                                                   if(_loc34_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr873:
                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc34_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            var _loc32_:*;
                                                                                                                                                                                                            §§push((_loc32_ = this).§0n§);
                                                                                                                                                                                                            if(_loc34_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() + 1);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            var _loc33_:* = §§pop();
                                                                                                                                                                                                            if(_loc34_ || param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc32_.§0n§ = _loc33_;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(this.§ !!§);
                                                                                                                                                                                                            §§push(_loc5_);
                                                                                                                                                                                                            if(!(_loc35_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(4);
                                                                                                                                                                                                               if(_loc34_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§pop().§0g§(§§pop(),§§pop(),_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
                                                                                                                                                                                                                  §§push(_loc4_.rotation);
                                                                                                                                                                                                                  §§push(0);
                                                                                                                                                                                                                  if(!_loc35_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr928:
                                                                                                                                                                                                                     §§push(§§pop() == §§pop());
                                                                                                                                                                                                                     if(!_loc35_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr931:
                                                                                                                                                                                                                        §§push(!§§pop());
                                                                                                                                                                                                                        if(!_loc35_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr935:
                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr936:
                                                                                                                                                                                                                              §§pop();
                                                                                                                                                                                                                              if(_loc34_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr946:
                                                                                                                                                                                                                                 if(Math.abs(_loc18_ - _loc19_) > 0.5)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr952:
                                                                                                                                                                                                                                    _loc22_ = Math.cos(_loc4_.rotation);
                                                                                                                                                                                                                                    if(!_loc35_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(Number(Math.sin(_loc4_.rotation)));
                                                                                                                                                                                                                                       if(!(_loc35_ && this))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc23_ = §§pop();
                                                                                                                                                                                                                                          if(_loc34_ || param1)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr975:
                                                                                                                                                                                                                                             §§push(_loc18_ * _loc22_);
                                                                                                                                                                                                                                             §§push(_loc19_);
                                                                                                                                                                                                                                             if(_loc34_ || _loc2_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr986:
                                                                                                                                                                                                                                                _loc24_ = §§pop() - §§pop() * _loc23_;
                                                                                                                                                                                                                                                if(!_loc35_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc18_);
                                                                                                                                                                                                                                                   §§push(_loc23_);
                                                                                                                                                                                                                                                   if(!_loc35_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                      if(_loc34_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc19_);
                                                                                                                                                                                                                                                         §§push(_loc22_);
                                                                                                                                                                                                                                                         if(_loc34_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1005:
                                                                                                                                                                                                                                                            §§push(-(§§pop() + §§pop() * §§pop()));
                                                                                                                                                                                                                                                            if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               _loc25_ = §§pop();
                                                                                                                                                                                                                                                               §§push(-_loc18_);
                                                                                                                                                                                                                                                               §§push(_loc22_);
                                                                                                                                                                                                                                                               if(_loc34_ || _loc3_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                  §§push(_loc19_);
                                                                                                                                                                                                                                                                  §§push(_loc23_);
                                                                                                                                                                                                                                                                  if(_loc34_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1033:
                                                                                                                                                                                                                                                                     §§push(Number(§§pop() - §§pop() * §§pop()));
                                                                                                                                                                                                                                                                     if(_loc34_ || _loc3_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        _loc26_ = §§pop();
                                                                                                                                                                                                                                                                        if(!_loc35_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc18_);
                                                                                                                                                                                                                                                                           if(_loc34_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1047:
                                                                                                                                                                                                                                                                              §§push(-§§pop());
                                                                                                                                                                                                                                                                              §§push(_loc23_);
                                                                                                                                                                                                                                                                              if(_loc34_ || this)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§goto(addr1056);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1106);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1148);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1237);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1047);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1139);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1095);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1082);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1173);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1056);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1483);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1106);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1440);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1069);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1112);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(this.§ !!§);
                                                                                                                                                                                                                                    §§push(_loc5_);
                                                                                                                                                                                                                                    if(_loc34_ || this)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc6_);
                                                                                                                                                                                                                                       if(_loc34_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc18_);
                                                                                                                                                                                                                                          if(_loc34_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr1373);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1383);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1373);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1387);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1173);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr946);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr936);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr946);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1005);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1291);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1322);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1173);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1516);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr931);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr946);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr975);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr870);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr873);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr869);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr853);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr935);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr847);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1166);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr936);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr810);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr818);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr847);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1056);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1521);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr986);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1173);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1166);
                                                                                                                                          }
                                                                                                                                          §§goto(addr928);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1173);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr869);
                                                                                                                              }
                                                                                                                              §§goto(addr1082);
                                                                                                                           }
                                                                                                                           §§goto(addr719);
                                                                                                                        }
                                                                                                                        §§goto(addr789);
                                                                                                                     }
                                                                                                                     §§goto(addr873);
                                                                                                                  }
                                                                                                                  §§goto(addr1095);
                                                                                                               }
                                                                                                               §§goto(addr704);
                                                                                                            }
                                                                                                            §§goto(addr789);
                                                                                                         }
                                                                                                         §§goto(addr719);
                                                                                                      }
                                                                                                      §§goto(addr799);
                                                                                                   }
                                                                                                   §§goto(addr936);
                                                                                                }
                                                                                                §§goto(addr682);
                                                                                             }
                                                                                             §§goto(addr786);
                                                                                          }
                                                                                          §§goto(addr986);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr1056);
                                                                                 }
                                                                                 §§goto(addr952);
                                                                              }
                                                                              §§goto(addr637);
                                                                           }
                                                                           §§goto(addr648);
                                                                        }
                                                                        §§goto(addr986);
                                                                     }
                                                                     §§goto(addr1033);
                                                                  }
                                                                  §§goto(addr674);
                                                               }
                                                               §§goto(addr1069);
                                                            }
                                                            §§goto(addr1148);
                                                         }
                                                      }
                                                      addr1528:
                                                      return;
                                                   }
                                                   §§goto(addr540);
                                                }
                                                addr478:
                                                §§goto(addr479);
                                                §§push(0);
                                             }
                                             loop8:
                                             while(true)
                                             {
                                                if(§§pop() > §§pop())
                                                {
                                                   §§push(this.§]N§);
                                                   if(!_loc35_)
                                                   {
                                                      addr297:
                                                      §§push(this.§if§);
                                                      loop1:
                                                      while(true)
                                                      {
                                                         if(§§pop() == §§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               this.§&P§(this.§if§);
                                                               if(!_loc35_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     _loc4_ = this.§?j§[this.§]N§++] as §<J§;
                                                                     if(!(_loc35_ && _loc2_))
                                                                     {
                                                                        this.initParticle(_loc4_);
                                                                        this.advanceParticle(_loc4_,this.§2N§);
                                                                        if(_loc34_)
                                                                        {
                                                                           §§push(_loc12_);
                                                                           if(_loc34_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(_loc34_ || param1)
                                                                              {
                                                                                 addr353:
                                                                                 _loc13_ = §§pop();
                                                                                 if(_loc34_)
                                                                                 {
                                                                                    if(!isNaN(this.§"!C§))
                                                                                    {
                                                                                       §§push(_loc12_);
                                                                                       if(!_loc35_)
                                                                                       {
                                                                                          addr364:
                                                                                          §§push(1 - this.§"!C§);
                                                                                          if(_loc34_ || _loc2_)
                                                                                          {
                                                                                             §§push(Math.random() * this.§"!C§);
                                                                                             if(_loc34_ || _loc3_)
                                                                                             {
                                                                                                §§push(§§pop() * 2);
                                                                                             }
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(_loc34_ || _loc2_)
                                                                                             {
                                                                                                addr397:
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!_loc35_)
                                                                                                {
                                                                                                   addr402:
                                                                                                   §§push(§§pop() + this.§9!5§);
                                                                                                   if(_loc34_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                }
                                                                                                _loc13_ = §§pop();
                                                                                                §§push(this);
                                                                                                §§push(this.§9!5§);
                                                                                                if(_loc34_ || _loc3_)
                                                                                                {
                                                                                                   §§push(_loc12_);
                                                                                                   if(_loc34_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(§§pop() - _loc13_);
                                                                                                   }
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                }
                                                                                                §§pop().§9!5§ = §§pop();
                                                                                                if(_loc34_ || _loc3_)
                                                                                                {
                                                                                                   addr444:
                                                                                                   §§push(this);
                                                                                                   §§push(this.§2N§);
                                                                                                   if(_loc34_)
                                                                                                   {
                                                                                                      §§push(§§pop() - _loc13_);
                                                                                                   }
                                                                                                   §§pop().§2N§ = §§pop();
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§2N§);
                                                                                                      if(_loc35_ && this)
                                                                                                      {
                                                                                                         break loop1;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop8;
                                                                                                      }
                                                                                                   }
                                                                                                   addr444:
                                                                                                }
                                                                                                §§goto(addr444);
                                                                                             }
                                                                                             §§goto(addr402);
                                                                                          }
                                                                                          §§goto(addr397);
                                                                                       }
                                                                                       §§goto(addr402);
                                                                                    }
                                                                                    §§goto(addr397);
                                                                                 }
                                                                                 §§goto(addr444);
                                                                              }
                                                                              §§goto(addr364);
                                                                           }
                                                                           §§goto(addr353);
                                                                        }
                                                                        §§goto(addr397);
                                                                     }
                                                                     §§goto(addr444);
                                                                  }
                                                                  addr306:
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr478);
                                                            addr300:
                                                         }
                                                         §§goto(addr306);
                                                         §§goto(addr297);
                                                      }
                                                      §§goto(addr459);
                                                      addr299:
                                                   }
                                                   break;
                                                }
                                                if(!_loc35_)
                                                {
                                                   addr459:
                                                   if(this.§4!-§ != Number.MAX_VALUE)
                                                   {
                                                      if(_loc34_ || _loc3_)
                                                      {
                                                         this.§4!-§ = Math.max(0,this.§4!-§ - _loc2_);
                                                      }
                                                   }
                                                }
                                                §§goto(addr478);
                                             }
                                             §§goto(addr479);
                                          }
                                       }
                                       §§goto(addr459);
                                    }
                                    else
                                    {
                                       if((_loc4_ = this.§?j§[_loc3_]).currentTime < _loc4_.§2S§)
                                       {
                                          if(_loc34_)
                                          {
                                             this.advanceParticle(_loc4_,_loc2_);
                                             if(!(_loc35_ && param1))
                                             {
                                                _loc3_++;
                                                if(_loc35_)
                                                {
                                                }
                                                continue;
                                             }
                                          }
                                          addr180:
                                          _loc11_ = this.§?j§[this.§]N§ - 1];
                                          if(_loc34_)
                                          {
                                             this.§?j§[this.§]N§ - 1] = _loc4_;
                                             if(_loc35_ && param1)
                                             {
                                             }
                                             addr209:
                                             §§push((_loc32_ = this).§]N§);
                                             if(!_loc35_)
                                             {
                                                §§push(§§pop() - 1);
                                             }
                                             _loc33_ = §§pop();
                                             if(!_loc35_)
                                             {
                                                _loc32_.§]N§ = _loc33_;
                                             }
                                             continue;
                                          }
                                          this.§?j§[_loc3_] = _loc11_;
                                       }
                                       else if(_loc3_ != this.§]N§ - 1)
                                       {
                                          if(_loc35_)
                                          {
                                             continue;
                                          }
                                          §§goto(addr180);
                                       }
                                       §§goto(addr209);
                                    }
                                 }
                                 §§goto(addr299);
                              }
                              break;
                           }
                           §§push(§§pop() / this.§7t§);
                           if(_loc34_ || param1)
                           {
                              §§push(Number(§§pop()));
                              if(_loc34_)
                              {
                                 addr268:
                                 _loc12_ = §§pop();
                                 if(_loc34_ || _loc2_)
                                 {
                                    §§push(this);
                                    §§push(this.§2N§);
                                    if(_loc34_)
                                    {
                                       §§push(§§pop() + _loc2_);
                                    }
                                    §§pop().§2N§ = §§pop();
                                    if(_loc34_ || this)
                                    {
                                       §§goto(addr444);
                                    }
                                    §§goto(addr459);
                                 }
                                 §§goto(addr300);
                              }
                              §§goto(addr453);
                           }
                           §§goto(addr268);
                        }
                        §§goto(addr121);
                     }
                     §§goto(addr116);
                  }
               }
            }
            §§goto(addr108);
         }
         addr116:
      }
      
      private function §88§(param1:Matrix3D) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§<J§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§]N§)
         {
            _loc3_ = this.§?j§[_loc2_];
            if(_loc4_ || _loc2_)
            {
               this.§9y§[_loc2_ * 3] = _loc3_.x;
               if(_loc4_ || this)
               {
                  addr71:
                  this.§9y§[_loc2_ * 3 + 1] = _loc3_.y;
                  if(_loc5_)
                  {
                     continue;
                  }
               }
               _loc2_++;
               continue;
            }
            §§goto(addr71);
         }
         if(!_loc5_)
         {
            param1.transformVectors(this.§9y§,this.§2!5§);
         }
      }
      
      override public function render(param1:§'d§, param2:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param2)
         {
            this.§[r§(param1.§get §);
            if(_loc6_)
            {
               if(this.§0n§ == 0)
               {
                  if(!_loc7_)
                  {
                     §§goto(addr35);
                  }
               }
               §§push(param2);
               if(!_loc7_)
               {
                  §§push(§§pop() * this.alpha);
                  if(_loc6_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               param2 = §§pop();
               §§push(§2O§);
               §§push(param2 == 1);
               if(!(_loc7_ && param1))
               {
                  §§push(!§§pop());
               }
               §§push(§§pop().§#+§(§§pop(),this.§[#§.mipMapping,false,this.§@>§,true));
               if(_loc6_)
               {
                  §§push(§§pop());
               }
               var _loc3_:* = §§pop();
               var _loc4_:Context3D;
               if((_loc4_ = param1.context) == null)
               {
                  if(_loc6_)
                  {
                     return;
                  }
               }
               else
               {
                  var _loc5_:Vector.<Number> = !!this.§7M§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
                  if(!(_loc7_ && _loc3_))
                  {
                     if(param1.§!!C§ != this.§9l§)
                     {
                        if(_loc6_)
                        {
                           this.§&P§(0);
                           if(_loc6_)
                           {
                              this.§9l§ = param1.§!!C§;
                              addr174:
                              if(!this.§8Y§(_loc4_))
                              {
                                 this.§=J§.uploadFromVector(this.§ !!§.§2,§,0,this.§0n§ * 4);
                                 this.§^<§.uploadFromVector(this.§ !!§.§-h§,0,this.§0n§ * 4);
                                 addr200:
                                 _loc4_.setBlendFactors(this.§5d§,this.§7&§);
                                 _loc4_.setProgram(§4@§.§0W§.§0!<§(_loc3_));
                                 _loc4_.setTextureAt(0,this.§[#§.getBase(_loc4_));
                                 if(!(_loc7_ && param2))
                                 {
                                    _loc4_.setVertexBufferAt(0,this.§^<§,§ u§.§`&§,Context3DVertexBufferFormat.FLOAT_3);
                                    _loc4_.setVertexBufferAt(1,this.§!Y§,§ u§.§]!$§,Context3DVertexBufferFormat.FLOAT_2);
                                 }
                                 _loc4_.setVertexBufferAt(2,this.§=J§,§ u§.§<4§,Context3DVertexBufferFormat.FLOAT_4);
                                 if(!_loc7_)
                                 {
                                    §§goto(addr255);
                                 }
                                 §§goto(addr300);
                              }
                              §§goto(addr200);
                           }
                           §§goto(addr300);
                        }
                        §§goto(addr200);
                     }
                     §§goto(addr174);
                  }
                  addr255:
                  _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§get §,true);
                  if(!_loc7_)
                  {
                     _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
                     if(!_loc7_)
                     {
                        _loc4_.drawTriangles(this.§%r§,0,this.§0n§ * 2);
                        if(!(_loc7_ && _loc3_))
                        {
                           addr300:
                           _loc4_.setVertexBufferAt(0,null);
                           if(_loc6_ || param2)
                           {
                           }
                           §§goto(addr315);
                        }
                        _loc4_.setVertexBufferAt(1,null);
                     }
                     §§goto(addr315);
                  }
                  addr315:
                  _loc4_.setVertexBufferAt(2,null);
                  return;
               }
               §§goto(addr92);
            }
         }
         addr35:
      }
      
      public function get §&+§() : Boolean
      {
         return false;
      }
      
      public function get §if§() : int
      {
         return this.§ !!§.§3K§ / 4;
      }
      
      public function get §7o§() : int
      {
         return this.§]N§;
      }
      
      public function get §2U§() : Number
      {
         return this.§7t§;
      }
      
      public function set §2U§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§7t§ = param1;
         }
      }
      
      public function get §7m§() : Number
      {
         return this.§0=§;
      }
      
      public function set §7m§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§0=§ = param1;
         }
      }
      
      public function get §@w§() : Number
      {
         return this.§9E§;
      }
      
      public function set §@w§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§9E§ = param1;
         }
      }
      
      public function get texture() : Texture
      {
         return this.§[#§;
      }
   }
}
