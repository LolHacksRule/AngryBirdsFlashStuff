package §=s§
{
   import § M§.§]-§;
   import §#!;§.§,U§;
   import §#!;§.§;T§;
   import §#!;§.§?h§;
   import §5!@§.Texture;
   import §8k§.§&E§;
   import §9W§.DisplayObject;
   import §@e§.§;2§;
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
   
   public class §#!H§ extends DisplayObject implements §]-§
   {
       
      
      private var §7#§:Texture;
      
      private var §5o§:Vector.<§ !H§>;
      
      private var §&_§:Number;
      
      private var §=!E§:Vector.<Number>;
      
      private var §'!C§:Vector.<Number>;
      
      private var §5J§:§;2§;
      
      private var §-!H§:VertexBuffer3D;
      
      private var § e§:VertexBuffer3D;
      
      private var §?k§:VertexBuffer3D;
      
      private var §`p§:Vector.<uint>;
      
      private var §'!%§:IndexBuffer3D;
      
      private var §=i§:int;
      
      private var §1!?§:int;
      
      private var §4q§:Number;
      
      protected var §]+§:Number;
      
      private var §=!4§:Number = 0.0;
      
      private var §]p§:Number;
      
      protected var §+I§:Number;
      
      protected var §8]§:Number;
      
      protected var §+!8§:Boolean;
      
      protected var §-!&§:String;
      
      protected var §]`§:String;
      
      protected var §6@§:String;
      
      private var §#!F§:int = -1;
      
      private var §switch§:Boolean = false;
      
      private var §,T§:Number = 0.0;
      
      public function §#!H§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         super();
         if(param1 == null)
         {
            throw new ArgumentError("texture must not be null");
         }
         this.§7#§ = param1;
         if(!(_loc7_ && param2))
         {
            this.§+!8§ = param1.premultipliedAlpha;
            if(!(_loc7_ && param2))
            {
               this.§5o§ = new Vector.<§ !H§>(0,false);
            }
            this.§=!E§ = new Vector.<Number>();
            this.§'!C§ = new Vector.<Number>();
            this.§5J§ = new §;2§(0,this.§+!8§);
            if(_loc8_)
            {
               this.§`p§ = new Vector.<uint>(0);
               this.§4q§ = param2;
               if(_loc8_)
               {
                  this.§]p§ = 0;
                  this.§&_§ = 0;
                  if(_loc8_ || this)
                  {
                     addr112:
                     this.§+I§ = this.§8]§ = 0;
                     §§push(this);
                     if(_loc8_)
                     {
                        §§push(param5);
                        if(_loc8_ || param1)
                        {
                           §§push(§§pop());
                           if(!_loc7_)
                           {
                              if(!§§pop())
                              {
                                 if(!(_loc7_ && this))
                                 {
                                    addr144:
                                    §§pop();
                                    §§push(Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA);
                                 }
                              }
                              §§pop().§]`§ = §§pop();
                              if(!_loc7_)
                              {
                                 addr151:
                                 §§push(this);
                                 if(!_loc7_)
                                 {
                                    §§push(param4);
                                    if(_loc8_ || param1)
                                    {
                                       §§push(§§pop());
                                       if(_loc8_ || this)
                                       {
                                          if(!§§pop())
                                          {
                                             if(_loc8_)
                                             {
                                                §§pop();
                                                if(!_loc7_)
                                                {
                                                   addr187:
                                                   if(this.§+!8§)
                                                   {
                                                   }
                                                   §§goto(addr199);
                                                }
                                                §§push(Context3DBlendFactor.ONE);
                                                if(!_loc8_)
                                                {
                                                }
                                             }
                                          }
                                       }
                                    }
                                    addr199:
                                    §§pop().§-!&§ = Context3DBlendFactor.SOURCE_ALPHA;
                                    if(!(_loc7_ && this))
                                    {
                                       addr207:
                                       if(param3 > 0)
                                       {
                                          this.§0"§(param3);
                                       }
                                    }
                                    return;
                                 }
                                 §§goto(addr187);
                              }
                              §§goto(addr207);
                           }
                        }
                     }
                     §§goto(addr144);
                  }
                  §§goto(addr151);
               }
               §§goto(addr112);
            }
            §§goto(addr207);
         }
         §§goto(addr112);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(this.§-!H§)
         {
            if(_loc2_ || this)
            {
               this.§-!H§.dispose();
               if(_loc2_ || _loc2_)
               {
                  addr47:
                  if(this.§ e§)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        this.§ e§.dispose();
                        if(_loc2_)
                        {
                           addr72:
                           if(this.§?k§)
                           {
                              if(!(_loc1_ && _loc2_))
                              {
                                 §§goto(addr82);
                              }
                              §§goto(addr93);
                           }
                           §§goto(addr87);
                        }
                        §§goto(addr96);
                     }
                     addr82:
                     this.§?k§.dispose();
                     if(!_loc1_)
                     {
                        addr87:
                        if(this.§'!%§)
                        {
                           this.§'!%§.dispose();
                           addr93:
                           this.§=!E§ = null;
                           addr96:
                           this.§'!C§ = null;
                           super.dispose();
                        }
                        §§goto(addr93);
                     }
                     return;
                  }
                  §§goto(addr72);
               }
               §§goto(addr87);
            }
            §§goto(addr93);
         }
         §§goto(addr47);
      }
      
      protected function createParticle() : § !H§
      {
         return new § !H§();
      }
      
      protected function initParticle(param1:§ !H§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         param1.x = this.§+I§;
         if(!(_loc3_ && param1))
         {
            param1.y = this.§8]§;
            param1.currentTime = 0;
            if(!_loc3_)
            {
               param1.§=!,§ = 1;
               if(!(_loc3_ && _loc2_))
               {
                  param1.red = Math.random();
                  if(_loc2_)
                  {
                     param1.green = Math.random();
                  }
               }
               §§goto(addr80);
            }
            param1.blue = Math.random();
         }
         addr80:
         param1.alpha = 0;
      }
      
      protected function advanceParticle(param1:§ !H§, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            §§push(param1);
            §§push(param1.y);
            if(_loc4_ || _loc3_)
            {
               §§push(param2);
               if(!_loc3_)
               {
                  §§push(§§pop() * 250);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().y = §§pop();
            if(_loc4_ || param2)
            {
               addr58:
               §§push(param1);
               §§push(1);
               §§push(param1.currentTime);
               if(_loc4_ || param1)
               {
                  §§push(§§pop() / param1.§=!,§);
               }
               §§pop().alpha = §§pop() - §§pop();
               if(_loc4_)
               {
                  param1.scaleX = 1 - param1.alpha;
                  if(_loc3_ && _loc3_)
                  {
                  }
                  §§goto(addr112);
               }
               param1.scaleY = 1 - param1.alpha;
               if(_loc4_ || param1)
               {
               }
               §§goto(addr112);
            }
            addr112:
            §§push(param1);
            §§push(param1.currentTime);
            if(_loc4_)
            {
               §§push(§§pop() + param2);
            }
            §§pop().currentTime = §§pop();
            return;
         }
         §§goto(addr58);
      }
      
      private function §0"§(param1:int) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         §§push(this.§1v§);
         if(_loc8_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§1v§);
         if(!(_loc9_ && _loc2_))
         {
            §§push(int(§§pop() + param1));
         }
         var _loc3_:* = §§pop();
         var _loc4_:§;2§;
         (_loc4_ = new §;2§(4)).setTexCoords(0,0,0);
         if(!_loc9_)
         {
            _loc4_.setTexCoords(1,1,0);
            _loc4_.setTexCoords(2,0,1);
         }
         _loc4_.setTexCoords(3,1,1);
         this.§7#§.adjustVertexData(_loc4_,0,4);
         if(_loc8_)
         {
            this.§5o§.fixed = false;
         }
         this.§`p§.fixed = false;
         §§push(_loc2_);
         if(_loc8_)
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
               while(§§pop() < §§pop())
               {
                  §§push(_loc5_);
                  if(!(_loc9_ && param1))
                  {
                     §§push(4);
                     if(_loc8_ || _loc3_)
                     {
                        §§push(int(§§pop() * §§pop()));
                        if(_loc8_ || _loc2_)
                        {
                           _loc6_ = §§pop();
                           this.§5o§.push(this.createParticle());
                           §§push(0);
                           if(_loc8_)
                           {
                              addr138:
                              _loc7_ = §§pop();
                              addr166:
                              while(true)
                              {
                                 §§push(_loc7_);
                                 if(!(_loc8_ || _loc2_))
                                 {
                                    continue loop1;
                                 }
                              }
                              addr166:
                           }
                        }
                        while(true)
                        {
                           §§push(3);
                           if(!(_loc8_ || _loc2_))
                           {
                              break;
                           }
                           §§goto(addr166);
                        }
                        continue;
                     }
                     while(true)
                     {
                        if(§§pop() >= §§pop())
                        {
                           this.§5J§.append(_loc4_);
                           if(_loc8_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        this.§=!E§.push(0);
                        if(_loc9_)
                        {
                           break;
                        }
                        this.§'!C§.push(0);
                        if(_loc8_ || _loc3_)
                        {
                           _loc7_++;
                           if(!(_loc8_ || _loc3_))
                           {
                              continue loop0;
                           }
                           §§goto(addr166);
                        }
                        else
                        {
                           §§goto(addr249);
                        }
                     }
                     this.§`p§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
                     if(!_loc9_)
                     {
                        _loc5_++;
                        if(_loc9_ && this)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     §§goto(addr242);
                  }
                  §§goto(addr138);
               }
               this.§5o§.fixed = true;
               if(!(_loc9_ && _loc2_))
               {
                  addr242:
                  this.§`p§.fixed = true;
                  this.§switch§ = true;
                  §§goto(addr249);
               }
               addr249:
               return;
            }
         }
      }
      
      private function §%3§(param1:Context3D) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§switch§);
            if(!_loc3_)
            {
               if(!§§pop())
               {
                  if(!(_loc3_ && this))
                  {
                     §§goto(addr32);
                  }
               }
               else
               {
                  addr35:
                  if(param1 == null)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        §§goto(addr45);
                     }
                  }
                  §§push(this.§5J§.§2!5§);
                  if(!(_loc3_ && param1))
                  {
                     §§push(int(§§pop() / 4));
                  }
                  var _loc2_:* = §§pop();
                  if(_loc4_)
                  {
                     if(this.§-!H§)
                     {
                        if(_loc4_ || param1)
                        {
                           this.§-!H§.dispose();
                           addr77:
                           if(this.§ e§)
                           {
                              this.§ e§.dispose();
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr90:
                                 if(this.§?k§)
                                 {
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       this.§?k§.dispose();
                                       if(_loc4_ || _loc2_)
                                       {
                                          addr120:
                                          if(this.§'!%§)
                                          {
                                             this.§'!%§.dispose();
                                          }
                                       }
                                       this.§-!H§ = param1.createVertexBuffer(_loc2_ * 4,§;2§.§%]§);
                                       if(!_loc3_)
                                       {
                                          this.§-!H§.uploadFromByteArray(this.§5J§.§&!#§,0,0,_loc2_ * 4);
                                          if(_loc4_ || _loc2_)
                                          {
                                             this.§ e§ = param1.createVertexBuffer(_loc2_ * 4,§;2§.§-Z§);
                                             if(_loc4_)
                                             {
                                                this.§ e§.uploadFromVector(this.§5J§.§;!3§,0,_loc2_ * 4);
                                                addr176:
                                                this.§?k§ = param1.createVertexBuffer(_loc2_ * 4,§;2§.§%0§);
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   addr202:
                                                   this.§?k§.uploadFromVector(this.§5J§.§13§,0,_loc2_ * 4);
                                                }
                                             }
                                          }
                                          §§goto(addr228);
                                       }
                                       this.§'!%§ = param1.createIndexBuffer(_loc2_ * 6);
                                       this.§'!%§.uploadFromVector(this.§`p§,0,_loc2_ * 6);
                                       §§goto(addr228);
                                    }
                                    §§goto(addr202);
                                 }
                                 §§goto(addr120);
                              }
                              addr228:
                              return true;
                           }
                           §§goto(addr90);
                        }
                        §§goto(addr176);
                     }
                     §§goto(addr77);
                  }
                  §§goto(addr120);
               }
               addr45:
               throw new §&E§();
            }
            addr32:
            return false;
         }
         §§goto(addr35);
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(this.§4q§ != 0)
            {
               if(_loc2_ || _loc2_)
               {
                  this.§]p§ = param1;
               }
            }
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§]p§ = 0;
         }
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Matrix = §8w§(param1);
         var _loc4_:Point = _loc3_.transformPoint(new Point(x,y));
         if(param2 == null)
         {
            if(_loc5_)
            {
               return new Rectangle(_loc4_.x,_loc4_.y);
            }
            addr67:
            param2.y = _loc4_.y;
            if(!(_loc6_ && _loc3_))
            {
               param2.width = 0;
               param2.height = 0;
            }
         }
         else
         {
            param2.x = _loc4_.x;
            if(_loc5_)
            {
               §§goto(addr67);
            }
         }
         return param2;
      }
      
      public function §<!+§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.advanceTime(param1);
            if(_loc3_ || this)
            {
               this.§"!-§(null);
            }
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§,T§ = param1;
         }
      }
      
      private function §"!-§(param1:Matrix3D) : void
      {
         var _loc34_:Boolean = true;
         var _loc35_:Boolean = false;
         var _loc4_:§ !H§ = null;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§ !H§ = null;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = 0;
         var _loc15_:* = false;
         var _loc16_:Number = NaN;
         var _loc17_:* = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:* = NaN;
         var _loc23_:* = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:* = NaN;
         var _loc28_:* = NaN;
         var _loc29_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc31_:Number = NaN;
         if(!(_loc35_ && _loc2_))
         {
            §§push(Boolean(isNaN(this.§,T§)));
            if(_loc34_)
            {
               if(!§§pop())
               {
                  if(_loc34_)
                  {
                     §§goto(addr84);
                  }
               }
               §§goto(addr98);
            }
            addr84:
            §§pop();
            if(!_loc35_)
            {
               addr87:
               §§push(this.§,T§);
               if(!(_loc35_ && param1))
               {
                  addr98:
                  if(§§pop() == 0)
                  {
                     if(!_loc35_)
                     {
                        §§goto(addr101);
                     }
                  }
                  §§push(this.§,T§);
                  if(!(_loc35_ && _loc2_))
                  {
                     addr111:
                     §§push(Number(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  if(_loc34_)
                  {
                     this.§,T§ = 0;
                     if(_loc34_)
                     {
                        addr120:
                        _loc2_ = Number(Math.min(0.2,_loc2_));
                     }
                     var _loc3_:int = 0;
                     loop0:
                     while(true)
                     {
                        §§push(_loc3_);
                        if(!(_loc35_ && param1))
                        {
                           §§push(this.§=i§);
                           if(_loc34_ || this)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 if(_loc34_)
                                 {
                                    §§push(this.§]p§);
                                    if(_loc34_)
                                    {
                                       §§push(0);
                                       if(!_loc35_)
                                       {
                                          if(§§pop() > §§pop())
                                          {
                                             addr232:
                                             §§push(1);
                                             if(_loc34_)
                                             {
                                                §§push(§§pop() / this.§4q§);
                                                if(!_loc35_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(!_loc35_)
                                                   {
                                                      addr243:
                                                      _loc12_ = §§pop();
                                                      §§push(this);
                                                      §§push(this.§&_§);
                                                      if(!_loc35_)
                                                      {
                                                         §§push(§§pop() + _loc2_);
                                                      }
                                                      §§pop().§&_§ = §§pop();
                                                      if(!_loc35_)
                                                      {
                                                         loop5:
                                                         while(true)
                                                         {
                                                            §§push(this.§&_§);
                                                            if(_loc34_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(0);
                                                                  addr408:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop() > §§pop())
                                                                     {
                                                                        §§push(this.§=i§);
                                                                        if(!(_loc35_ && _loc3_))
                                                                        {
                                                                           loop8:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§1v§);
                                                                              addr267:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop() == §§pop())
                                                                                 {
                                                                                    if(!_loc35_)
                                                                                    {
                                                                                       this.§0"§(this.§1v§);
                                                                                       addr274:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc4_ = this.§5o§[this.§=i§++] as § !H§;
                                                                                          if(!_loc35_)
                                                                                          {
                                                                                             this.initParticle(_loc4_);
                                                                                             this.advanceParticle(_loc4_,this.§&_§);
                                                                                             if(!(_loc35_ && this))
                                                                                             {
                                                                                                §§push(_loc12_);
                                                                                                if(_loc34_ || _loc2_)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(_loc34_)
                                                                                                   {
                                                                                                      addr321:
                                                                                                      _loc13_ = §§pop();
                                                                                                      if(!isNaN(this.§]+§))
                                                                                                      {
                                                                                                         §§push(_loc12_);
                                                                                                         if(_loc34_)
                                                                                                         {
                                                                                                            §§push(1 - this.§]+§);
                                                                                                            if(!(_loc35_ && _loc2_))
                                                                                                            {
                                                                                                               §§push(Math.random() * this.§]+§);
                                                                                                               if(_loc34_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * 2);
                                                                                                               }
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(_loc34_ || _loc2_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!_loc35_)
                                                                                                                  {
                                                                                                                     addr363:
                                                                                                                     §§push(§§pop() + this.§=!4§);
                                                                                                                     if(!(_loc35_ && param1))
                                                                                                                     {
                                                                                                                        addr371:
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                  }
                                                                                                                  _loc13_ = §§pop();
                                                                                                                  addr373:
                                                                                                                  §§push(this);
                                                                                                                  §§push(this.§=!4§);
                                                                                                                  if(!_loc35_)
                                                                                                                  {
                                                                                                                     §§push(_loc12_);
                                                                                                                     if(!(_loc35_ && _loc2_))
                                                                                                                     {
                                                                                                                        §§push(§§pop() - _loc13_);
                                                                                                                     }
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                  }
                                                                                                                  §§pop().§=!4§ = §§pop();
                                                                                                                  §§push(this);
                                                                                                                  §§push(this.§&_§);
                                                                                                                  if(_loc34_ || _loc3_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - _loc13_);
                                                                                                                  }
                                                                                                                  §§pop().§&_§ = §§pop();
                                                                                                                  continue loop5;
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr363);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr373);
                                                                                                   }
                                                                                                   §§goto(addr371);
                                                                                                }
                                                                                                §§goto(addr321);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr373);
                                                                                       }
                                                                                       addr274:
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr274);
                                                                                 continue loop8;
                                                                              }
                                                                              §§goto(addr411);
                                                                           }
                                                                           addr265:
                                                                        }
                                                                        break loop0;
                                                                     }
                                                                     addr411:
                                                                     if(this.§]p§ != Number.MAX_VALUE)
                                                                     {
                                                                        if(_loc34_ || this)
                                                                        {
                                                                        }
                                                                        addr430:
                                                                        break loop0;
                                                                     }
                                                                     §§goto(addr430);
                                                                     this.§]p§ = Math.max(0,this.§]p§ - _loc2_);
                                                                     §§goto(addr430);
                                                                  }
                                                               }
                                                               addr407:
                                                            }
                                                            §§goto(addr411);
                                                         }
                                                      }
                                                      §§goto(addr274);
                                                   }
                                                   §§goto(addr407);
                                                }
                                                §§goto(addr411);
                                             }
                                             §§goto(addr265);
                                          }
                                          §§goto(addr430);
                                       }
                                       §§goto(addr408);
                                    }
                                    §§goto(addr243);
                                 }
                                 §§goto(addr232);
                              }
                              else
                              {
                                 if((_loc4_ = this.§5o§[_loc3_]).currentTime < _loc4_.§=!,§)
                                 {
                                    if(_loc34_)
                                    {
                                       this.advanceParticle(_loc4_,_loc2_);
                                       if(_loc34_)
                                       {
                                          _loc3_++;
                                          if(_loc35_)
                                          {
                                          }
                                       }
                                    }
                                    continue;
                                 }
                                 if(_loc3_ != this.§=i§ - 1)
                                 {
                                    if(_loc35_)
                                    {
                                       continue;
                                    }
                                    _loc11_ = this.§5o§[this.§=i§ - 1];
                                    if(_loc34_ || _loc2_)
                                    {
                                       this.§5o§[this.§=i§ - 1] = _loc4_;
                                       if(_loc35_)
                                       {
                                       }
                                       addr189:
                                       var _loc32_:*;
                                       §§push((_loc32_ = this).§=i§);
                                       if(_loc34_)
                                       {
                                          §§push(§§pop() - 1);
                                       }
                                       var _loc33_:* = §§pop();
                                       if(!_loc35_)
                                       {
                                          _loc32_.§=i§ = _loc33_;
                                       }
                                       continue;
                                    }
                                    this.§5o§[_loc3_] = _loc11_;
                                 }
                                 §§goto(addr189);
                              }
                           }
                           §§goto(addr267);
                        }
                        break;
                     }
                     var _loc5_:* = §§pop();
                     §§push(this.§7#§.width);
                     if(_loc34_ || _loc2_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc8_:* = §§pop();
                     §§push(this.§7#§.height);
                     if(!_loc35_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc9_:* = §§pop();
                     if(_loc34_ || _loc2_)
                     {
                        this.§1!?§ = 0;
                     }
                     var _loc10_:Vector3D = new Vector3D();
                     if(!_loc35_)
                     {
                        if(param1)
                        {
                           if(!_loc35_)
                           {
                              addr471:
                              this.§9r§(param1);
                              if(_loc34_)
                              {
                                 §§push(0);
                                 if(!_loc35_)
                                 {
                                    _loc14_ = §§pop();
                                    if(_loc34_)
                                    {
                                       addr482:
                                       while(true)
                                       {
                                          §§push(_loc14_);
                                       }
                                       addr1500:
                                       return;
                                       addr1496:
                                    }
                                    §§goto(addr1500);
                                 }
                                 while(true)
                                 {
                                    if(§§pop() >= this.§=i§)
                                    {
                                       §§goto(addr1500);
                                    }
                                    else
                                    {
                                       §§push(Number((_loc4_ = this.§5o§[_loc14_]).x));
                                       if(!_loc35_)
                                       {
                                          _loc6_ = §§pop();
                                          §§push(_loc4_.y);
                                          if(_loc34_ || _loc3_)
                                          {
                                             _loc7_ = §§pop();
                                             if(_loc34_ || _loc2_)
                                             {
                                                §§push(true);
                                                if(_loc34_)
                                                {
                                                   _loc15_ = §§pop();
                                                   _loc10_.x = _loc6_;
                                                   _loc10_.y = _loc7_;
                                                   if(!_loc35_)
                                                   {
                                                      _loc16_ = this.§'!C§[_loc14_ * 3];
                                                      §§push(Number(this.§'!C§[_loc14_ * 3 + 1]));
                                                      if(!(_loc35_ && param1))
                                                      {
                                                         _loc17_ = §§pop();
                                                         §§push(_loc8_);
                                                         if(!(_loc35_ && _loc2_))
                                                         {
                                                            §§push(_loc4_.scaleX);
                                                            if(_loc34_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc35_ && this))
                                                               {
                                                                  §§push(2);
                                                                  if(_loc34_ || this)
                                                                  {
                                                                     §§push(§§pop() / §§pop());
                                                                     if(_loc34_)
                                                                     {
                                                                        _loc18_ = §§pop();
                                                                        if(_loc34_)
                                                                        {
                                                                           §§push(_loc9_);
                                                                           if(_loc34_)
                                                                           {
                                                                              addr593:
                                                                              §§push(§§pop() * _loc4_.scaleY / 2);
                                                                              if(!(_loc35_ && _loc3_))
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(_loc34_)
                                                                                 {
                                                                                    _loc19_ = §§pop();
                                                                                    if(!(_loc35_ && this))
                                                                                    {
                                                                                       addr612:
                                                                                       §§push(_loc16_);
                                                                                       if(!(_loc35_ && _loc2_))
                                                                                       {
                                                                                          §§push(§§pop() < -1.1);
                                                                                          if(!_loc35_)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                if(_loc34_)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   if(_loc34_ || this)
                                                                                                   {
                                                                                                      §§push(_loc16_);
                                                                                                      §§push(1.1);
                                                                                                      if(_loc34_)
                                                                                                      {
                                                                                                         addr641:
                                                                                                         §§push(§§pop() > §§pop());
                                                                                                         §§push(§§pop() > §§pop());
                                                                                                         if(!(_loc35_ && this))
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               §§push(_loc17_);
                                                                                                               if(!(_loc35_ && _loc3_))
                                                                                                               {
                                                                                                                  addr659:
                                                                                                                  §§push(-1.1);
                                                                                                                  if(!(_loc35_ && _loc2_))
                                                                                                                  {
                                                                                                                     addr668:
                                                                                                                     §§push(§§pop() < §§pop());
                                                                                                                     if(!(§§pop() < §§pop()))
                                                                                                                     {
                                                                                                                        if(_loc34_ || _loc2_)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           §§push(_loc17_);
                                                                                                                           if(!(_loc35_ && param1))
                                                                                                                           {
                                                                                                                              §§push(1.1);
                                                                                                                              if(_loc34_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() > §§pop());
                                                                                                                                 if(!(_loc35_ && this))
                                                                                                                                 {
                                                                                                                                    addr697:
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc34_ || param1)
                                                                                                                                       {
                                                                                                                                          addr705:
                                                                                                                                          if(§;T§.§,H§)
                                                                                                                                          {
                                                                                                                                             §§push(Number(Math.max(_loc18_,_loc19_)));
                                                                                                                                             if(!_loc35_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop());
                                                                                                                                                if(_loc34_)
                                                                                                                                                {
                                                                                                                                                   addr718:
                                                                                                                                                   _loc20_ = §§pop();
                                                                                                                                                   §§push(Number(§§pop() / §;T§.§,H§.§"F§));
                                                                                                                                                   if(!(_loc35_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      _loc20_ = §§pop();
                                                                                                                                                      addr733:
                                                                                                                                                      §§push(1.1);
                                                                                                                                                      §§push(_loc20_);
                                                                                                                                                      if(!_loc35_)
                                                                                                                                                      {
                                                                                                                                                         _loc21_ = §§pop() + §§pop();
                                                                                                                                                         addr749:
                                                                                                                                                         §§push(_loc16_);
                                                                                                                                                         if(_loc34_ || param1)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() < -_loc21_);
                                                                                                                                                            if(!(_loc35_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop());
                                                                                                                                                               if(!_loc35_)
                                                                                                                                                               {
                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc34_)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop();
                                                                                                                                                                        if(!_loc34_)
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(_loc16_);
                                                                                                                                                                        if(_loc34_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc21_);
                                                                                                                                                                           if(_loc34_)
                                                                                                                                                                           {
                                                                                                                                                                              addr783:
                                                                                                                                                                              §§push(§§pop() > §§pop());
                                                                                                                                                                              if(!(§§pop() > §§pop()))
                                                                                                                                                                              {
                                                                                                                                                                                 addr785:
                                                                                                                                                                                 §§pop();
                                                                                                                                                                                 §§push(_loc17_);
                                                                                                                                                                                 if(!(_loc35_ && _loc2_))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc21_);
                                                                                                                                                                                    if(_loc34_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(-§§pop());
                                                                                                                                                                                       if(!(_loc35_ && _loc2_))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr811:
                                                                                                                                                                                          §§push(§§pop() < §§pop());
                                                                                                                                                                                          if(!(§§pop() < §§pop()))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc35_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr815:
                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                addr817:
                                                                                                                                                                                                §§push(_loc17_ > _loc21_);
                                                                                                                                                                                                if(_loc34_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                }
                                                                                                                                                                                                addr905:
                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc35_ && _loc2_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr914:
                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                      addr922:
                                                                                                                                                                                                      if(Math.abs(_loc18_ - _loc19_) > 0.5)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(Number(Math.cos(_loc4_.rotation)));
                                                                                                                                                                                                         if(!_loc35_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc22_ = §§pop();
                                                                                                                                                                                                            §§push(Number(Math.sin(_loc4_.rotation)));
                                                                                                                                                                                                            if(_loc34_ || _loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc23_ = §§pop();
                                                                                                                                                                                                               if(_loc34_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr946:
                                                                                                                                                                                                                  §§push(_loc18_);
                                                                                                                                                                                                                  if(_loc34_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr949:
                                                                                                                                                                                                                     §§push(_loc22_);
                                                                                                                                                                                                                     if(_loc34_ || _loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        if(!_loc35_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr960:
                                                                                                                                                                                                                           §§push(_loc19_);
                                                                                                                                                                                                                           §§push(_loc23_);
                                                                                                                                                                                                                           if(!(_loc35_ && this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              if(_loc34_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                 if(!_loc35_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr975:
                                                                                                                                                                                                                                    _loc24_ = §§pop();
                                                                                                                                                                                                                                    if(_loc34_ || this)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr984:
                                                                                                                                                                                                                                       §§push(_loc18_);
                                                                                                                                                                                                                                       if(!(_loc35_ && param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr993:
                                                                                                                                                                                                                                          §§push(§§pop() * _loc23_);
                                                                                                                                                                                                                                          if(_loc34_ || this)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1001:
                                                                                                                                                                                                                                             §§push(_loc19_);
                                                                                                                                                                                                                                             if(_loc34_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc22_);
                                                                                                                                                                                                                                                if(!_loc35_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                                   if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1016:
                                                                                                                                                                                                                                                      §§push(-§§pop());
                                                                                                                                                                                                                                                      if(!_loc35_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1019:
                                                                                                                                                                                                                                                         _loc25_ = §§pop();
                                                                                                                                                                                                                                                         §§push(-_loc18_);
                                                                                                                                                                                                                                                         if(!_loc35_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1025:
                                                                                                                                                                                                                                                            §§push(§§pop() * _loc22_);
                                                                                                                                                                                                                                                            §§push(_loc19_);
                                                                                                                                                                                                                                                            if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() - §§pop() * _loc23_);
                                                                                                                                                                                                                                                               if(!_loc35_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1041:
                                                                                                                                                                                                                                                                  _loc26_ = §§pop();
                                                                                                                                                                                                                                                                  addr1040:
                                                                                                                                                                                                                                                                  if(_loc35_ && _loc2_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr1049:
                                                                                                                                                                                                                                                                  §§push(-_loc18_);
                                                                                                                                                                                                                                                                  if(_loc34_ || _loc3_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1058:
                                                                                                                                                                                                                                                                     §§push(_loc23_);
                                                                                                                                                                                                                                                                     if(!_loc35_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1061:
                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                        if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr1069:
                                                                                                                                                                                                                                                                           §§push(Number(-(§§pop() + _loc19_ * _loc22_)));
                                                                                                                                                                                                                                                                           if(!_loc35_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1077:
                                                                                                                                                                                                                                                                              _loc27_ = §§pop();
                                                                                                                                                                                                                                                                              if(_loc34_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1081:
                                                                                                                                                                                                                                                                                 §§push(_loc18_);
                                                                                                                                                                                                                                                                                 §§push(_loc22_);
                                                                                                                                                                                                                                                                                 if(_loc34_ || _loc3_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                    if(_loc34_ || _loc2_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1097:
                                                                                                                                                                                                                                                                                       §§push(_loc19_);
                                                                                                                                                                                                                                                                                       if(!_loc35_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc23_);
                                                                                                                                                                                                                                                                                          if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(Number(§§pop() + §§pop() * §§pop()));
                                                                                                                                                                                                                                                                                             if(!_loc35_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr1113:
                                                                                                                                                                                                                                                                                                _loc28_ = §§pop();
                                                                                                                                                                                                                                                                                                if(_loc34_ || _loc2_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr1122:
                                                                                                                                                                                                                                                                                                   §§push(_loc18_);
                                                                                                                                                                                                                                                                                                   §§push(_loc23_);
                                                                                                                                                                                                                                                                                                   if(_loc34_ || this)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr1131:
                                                                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                      §§push(_loc19_);
                                                                                                                                                                                                                                                                                                      if(!_loc35_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr1135:
                                                                                                                                                                                                                                                                                                         §§push(§§pop() * _loc22_);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                      if(_loc34_ || _loc3_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr1145:
                                                                                                                                                                                                                                                                                                         _loc29_ = -§§pop();
                                                                                                                                                                                                                                                                                                         if(!_loc35_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr1149:
                                                                                                                                                                                                                                                                                                            §§push(_loc18_);
                                                                                                                                                                                                                                                                                                            if(_loc34_ || this)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr1157:
                                                                                                                                                                                                                                                                                                               §§push(-§§pop());
                                                                                                                                                                                                                                                                                                               if(!_loc35_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr1160:
                                                                                                                                                                                                                                                                                                                  §§push(§§pop() * _loc22_);
                                                                                                                                                                                                                                                                                                                  §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                  §§push(_loc23_);
                                                                                                                                                                                                                                                                                                                  if(_loc34_ || param1)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr1174:
                                                                                                                                                                                                                                                                                                                     _loc30_ = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                                                                                     addr1172:
                                                                                                                                                                                                                                                                                                                     if(!_loc35_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr1183:
                                                                                                                                                                                                                                                                                                                        addr1179:
                                                                                                                                                                                                                                                                                                                        addr1177:
                                                                                                                                                                                                                                                                                                                        addr1184:
                                                                                                                                                                                                                                                                                                                        addr1182:
                                                                                                                                                                                                                                                                                                                        §§push(-_loc18_ * _loc23_ - _loc19_ * _loc22_);
                                                                                                                                                                                                                                                                                                                        if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr1192:
                                                                                                                                                                                                                                                                                                                           §§push(-§§pop());
                                                                                                                                                                                                                                                                                                                           if(_loc35_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           addr1492:
                                                                                                                                                                                                                                                                                                                           _loc5_ = int(§§pop());
                                                                                                                                                                                                                                                                                                                           addr1491:
                                                                                                                                                                                                                                                                                                                           if(_loc34_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr1495:
                                                                                                                                                                                                                                                                                                                              _loc14_++;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           continue;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        _loc31_ = §§pop();
                                                                                                                                                                                                                                                                                                                        if(!(_loc35_ && _loc2_))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr1204:
                                                                                                                                                                                                                                                                                                                           §§push(this.§5J§);
                                                                                                                                                                                                                                                                                                                           if(!_loc35_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                              §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                              if(!_loc35_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(_loc26_);
                                                                                                                                                                                                                                                                                                                                 if(_loc34_ || param1)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                    if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       addr1223:
                                                                                                                                                                                                                                                                                                                                       §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                       if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr1226:
                                                                                                                                                                                                                                                                                                                                          §§push(_loc27_);
                                                                                                                                                                                                                                                                                                                                          if(_loc34_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                             if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                addr1242:
                                                                                                                                                                                                                                                                                                                                                §§pop().§3!E§(§§pop(),§§pop(),§§pop());
                                                                                                                                                                                                                                                                                                                                                if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   addr1245:
                                                                                                                                                                                                                                                                                                                                                   §§push(this.§5J§);
                                                                                                                                                                                                                                                                                                                                                   if(_loc34_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                      §§push(1);
                                                                                                                                                                                                                                                                                                                                                      if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                         if(_loc34_ || this)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                            if(_loc34_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(_loc24_);
                                                                                                                                                                                                                                                                                                                                                               if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc25_);
                                                                                                                                                                                                                                                                                                                                                                     if(_loc34_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                        if(_loc34_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§pop().§3!E§(§§pop(),§§pop(),§§pop());
                                                                                                                                                                                                                                                                                                                                                                           addr1288:
                                                                                                                                                                                                                                                                                                                                                                           §§push(this.§5J§);
                                                                                                                                                                                                                                                                                                                                                                           if(_loc34_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              addr1292:
                                                                                                                                                                                                                                                                                                                                                                              §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                                              §§push(2);
                                                                                                                                                                                                                                                                                                                                                                              if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    addr1299:
                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc30_);
                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       addr1304:
                                                                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          addr1307:
                                                                                                                                                                                                                                                                                                                                                                                          §§push(_loc31_);
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc34_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                             if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§pop().§3!E§(§§pop(),§§pop(),§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                if(!_loc34_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   continue;
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§push(this.§5J§);
                                                                                                                                                                                                                                                                                                                                                                                                §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                                                                §§push(3);
                                                                                                                                                                                                                                                                                                                                                                                                if(!(_loc35_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   addr1327:
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc34_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc34_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() + _loc28_);
                                                                                                                                                                                                                                                                                                                                                                                                         if(!(_loc35_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc34_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               addr1350:
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(_loc29_);
                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc34_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                  if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     §§pop().§3!E§(§§pop(),§§pop(),§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc34_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        addr1486:
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc34_)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1491);
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() + 4);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1492);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        addr1427:
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(this.§5J§);
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc5_ + 2);
                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc34_)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc6_ - _loc18_);
                                                                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc35_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              addr1444:
                                                                                                                                                                                                                                                                                                                                                                                                                              addr1445:
                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                                                                                                              if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 addr1448:
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§pop().§3!E§(§§pop(),§§pop(),§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                 addr1455:
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(this.§5J§);
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc5_ + 3);
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    addr1475:
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() + _loc18_);
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1475);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§pop().§3!E§(§§pop(),§§pop(),§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc34_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1486);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1475);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1455);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     addr1420:
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                                                                                                     if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        addr1425:
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1448);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1448);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§pop().§3!E§(§§pop(),§§pop(),§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1427);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1444);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      addr1409:
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                                                      if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(_loc18_);
                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc34_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1420);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1445);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1475);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   addr1406:
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc34_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1409);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1448);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1420);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1425);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1420);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1350);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1448);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              addr1397:
                                                                                                                                                                                                                                                                                                                                                                              §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                                              §§push(1);
                                                                                                                                                                                                                                                                                                                                                                              if(_loc34_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1406);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1427);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1307);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1448);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1304);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1444);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1299);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1448);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      addr1367:
                                                                                                                                                                                                                                                                                                                                                      §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                      if(!(_loc35_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                         if(_loc34_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(_loc18_);
                                                                                                                                                                                                                                                                                                                                                            if(_loc34_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr1382:
                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                               §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                               if(_loc35_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               addr1387:
                                                                                                                                                                                                                                                                                                                                                               §§pop().§3!E§(§§pop(),§§pop(),§§pop());
                                                                                                                                                                                                                                                                                                                                                               §§push(this.§5J§);
                                                                                                                                                                                                                                                                                                                                                               if(_loc34_ || this)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1397);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1448);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            addr1386:
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1387);
                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() - _loc19_);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1382);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1427);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1382);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1386);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1242);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1382);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1226);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1223);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1292);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1448);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1183);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1192);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1179);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1177);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1160);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1204);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1131);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1135);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1184);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1157);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1172);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1427);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1131);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1157);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1160);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1069);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1192);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1160);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1069);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1174);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1069);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1135);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1061);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1025);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1058);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1288);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1122);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1174);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1069);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1025);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1182);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr960);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1288);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1113);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr949);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§5J§);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1367);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr922);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr905);
                                                                                                                                                                                          }
                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(false);
                                                                                                                                                                                             if(!_loc35_)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc15_ = §§pop();
                                                                                                                                                                                                addr831:
                                                                                                                                                                                                §§push(_loc15_);
                                                                                                                                                                                                if(!_loc35_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr834:
                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push((_loc32_ = this).§1!?§);
                                                                                                                                                                                                      if(_loc34_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() + 1);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      _loc33_ = §§pop();
                                                                                                                                                                                                      if(_loc34_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc32_.§1!?§ = _loc33_;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(!(_loc35_ && param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§5J§);
                                                                                                                                                                                                         §§push(_loc5_);
                                                                                                                                                                                                         §§push(4);
                                                                                                                                                                                                         if(!_loc35_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§pop().§`!-§(§§pop(),§§pop(),_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
                                                                                                                                                                                                            if(!(_loc35_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc4_.rotation);
                                                                                                                                                                                                               if(!(_loc35_ && _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() == 0);
                                                                                                                                                                                                                  if(_loc34_ || _loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(!§§pop());
                                                                                                                                                                                                                     if(!(_loc35_ && _loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr905);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr922);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr914);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1040);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr984);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1327);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1245);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1495);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr914);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr834);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr831);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr993);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1025);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr817);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr811);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1160);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1019);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr811);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr783);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr817);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr815);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1157);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr783);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1122);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1061);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1097);
                                                                                                                                          }
                                                                                                                                          §§goto(addr831);
                                                                                                                                       }
                                                                                                                                       §§goto(addr946);
                                                                                                                                    }
                                                                                                                                    §§goto(addr831);
                                                                                                                                 }
                                                                                                                                 §§goto(addr914);
                                                                                                                              }
                                                                                                                              §§goto(addr718);
                                                                                                                           }
                                                                                                                           §§goto(addr1122);
                                                                                                                        }
                                                                                                                        §§goto(addr811);
                                                                                                                     }
                                                                                                                     §§goto(addr697);
                                                                                                                  }
                                                                                                                  §§goto(addr1131);
                                                                                                               }
                                                                                                               §§goto(addr1016);
                                                                                                            }
                                                                                                            §§goto(addr668);
                                                                                                         }
                                                                                                         §§goto(addr815);
                                                                                                      }
                                                                                                      §§goto(addr1069);
                                                                                                   }
                                                                                                   §§goto(addr705);
                                                                                                }
                                                                                                §§goto(addr815);
                                                                                             }
                                                                                             §§goto(addr641);
                                                                                          }
                                                                                          §§goto(addr785);
                                                                                       }
                                                                                       §§goto(addr733);
                                                                                    }
                                                                                    §§goto(addr749);
                                                                                 }
                                                                                 §§goto(addr1077);
                                                                              }
                                                                              §§goto(addr975);
                                                                           }
                                                                           §§goto(addr1041);
                                                                        }
                                                                        §§goto(addr1049);
                                                                     }
                                                                     §§goto(addr1001);
                                                                  }
                                                                  §§goto(addr593);
                                                               }
                                                               §§goto(addr1174);
                                                            }
                                                            §§goto(addr960);
                                                         }
                                                         §§goto(addr1081);
                                                      }
                                                      §§goto(addr1145);
                                                   }
                                                   §§goto(addr612);
                                                }
                                                §§goto(addr815);
                                             }
                                             §§goto(addr1149);
                                          }
                                          §§goto(addr659);
                                       }
                                       §§goto(addr1019);
                                    }
                                 }
                              }
                              §§goto(addr1500);
                           }
                        }
                        §§goto(addr482);
                     }
                     §§goto(addr471);
                  }
                  §§goto(addr120);
               }
               §§goto(addr111);
            }
            addr101:
            return;
         }
         §§goto(addr87);
      }
      
      private function §9r§(param1:Matrix3D) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§ !H§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§=i§)
         {
            _loc3_ = this.§5o§[_loc2_];
            if(!(_loc4_ && _loc2_))
            {
               this.§=!E§[_loc2_ * 3] = _loc3_.x;
               if(!_loc4_)
               {
                  addr67:
                  this.§=!E§[_loc2_ * 3 + 1] = _loc3_.y;
                  if(!_loc5_)
                  {
                     continue;
                  }
               }
               _loc2_++;
               continue;
            }
            §§goto(addr67);
         }
         if(_loc5_)
         {
            param1.transformVectors(this.§=!E§,this.§'!C§);
         }
      }
      
      override public function render(param1:§?h§, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param1))
         {
            this.§"!-§(param1.§;+§);
            if(_loc7_)
            {
               if(this.§1!?§ == 0)
               {
                  if(_loc7_)
                  {
                     return;
                  }
               }
            }
         }
         §§push(param2);
         if(_loc7_)
         {
            §§push(§§pop() * this.alpha);
            if(_loc7_ || this)
            {
               addr52:
               §§push(Number(§§pop()));
            }
            param2 = §§pop();
            §§push(§,U§);
            §§push(param2 == 1);
            if(!_loc6_)
            {
               §§push(!§§pop());
            }
            §§push(§§pop().§%K§(§§pop(),this.§7#§.mipMapping,false,this.§6@§,true));
            if(!_loc6_)
            {
               §§push(§§pop());
            }
            var _loc3_:* = §§pop();
            var _loc4_:Context3D;
            if((_loc4_ = param1.context) == null)
            {
               if(!(_loc6_ && param1))
               {
                  return;
               }
            }
            else
            {
               var _loc5_:Vector.<Number> = !!this.§+!8§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
               if(param1.§4+§ != this.§#!F§)
               {
                  this.§0"§(0);
                  this.§#!F§ = param1.§4+§;
                  if(_loc7_ || param1)
                  {
                     addr176:
                     if(!this.§%3§(_loc4_))
                     {
                        if(!(_loc6_ && param1))
                        {
                           this.§ e§.uploadFromVector(this.§5J§.§;!3§,0,this.§1!?§ * 4);
                           if(_loc7_)
                           {
                              this.§?k§.uploadFromVector(this.§5J§.§13§,0,this.§1!?§ * 4);
                              if(!_loc6_)
                              {
                                 addr213:
                                 _loc4_.setBlendFactors(this.§-!&§,this.§]`§);
                                 if(_loc7_)
                                 {
                                    _loc4_.setProgram(§;T§.§,H§.§-=§(_loc3_));
                                    if(!_loc6_)
                                    {
                                       _loc4_.setTextureAt(0,this.§7#§.getBase(_loc4_));
                                       if(_loc7_)
                                       {
                                          addr238:
                                          _loc4_.setVertexBufferAt(0,this.§?k§,§;2§.§-!8§,Context3DVertexBufferFormat.FLOAT_3);
                                          _loc4_.setVertexBufferAt(1,this.§-!H§,§;2§.§ !<§,Context3DVertexBufferFormat.FLOAT_2);
                                          if(!_loc6_)
                                          {
                                             _loc4_.setVertexBufferAt(2,this.§ e§,§;2§.§>,§,Context3DVertexBufferFormat.FLOAT_4);
                                             if(!_loc6_)
                                             {
                                                _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§;+§,true);
                                                addr277:
                                                _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
                                                if(_loc7_ || param2)
                                                {
                                                }
                                                §§goto(addr314);
                                             }
                                             _loc4_.drawTriangles(this.§'!%§,0,this.§1!?§ * 2);
                                          }
                                          _loc4_.setVertexBufferAt(0,null);
                                          addr314:
                                          _loc4_.setVertexBufferAt(1,null);
                                          if(!_loc6_)
                                          {
                                             _loc4_.setVertexBufferAt(2,null);
                                          }
                                          §§goto(addr324);
                                       }
                                       addr324:
                                       return;
                                    }
                                    §§goto(addr314);
                                 }
                                 §§goto(addr238);
                              }
                           }
                        }
                        §§goto(addr314);
                     }
                     §§goto(addr213);
                  }
                  §§goto(addr277);
               }
               §§goto(addr176);
            }
            §§goto(addr98);
         }
         §§goto(addr52);
      }
      
      public function get §@!+§() : Boolean
      {
         return false;
      }
      
      public function get §1v§() : int
      {
         return this.§5J§.§2!5§ / 4;
      }
      
      public function get §#!+§() : int
      {
         return this.§=i§;
      }
      
      public function get §9@§() : Number
      {
         return this.§4q§;
      }
      
      public function set §9@§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§4q§ = param1;
         }
      }
      
      public function get §]!;§() : Number
      {
         return this.§+I§;
      }
      
      public function set §]!;§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§+I§ = param1;
         }
      }
      
      public function get §%!H§() : Number
      {
         return this.§8]§;
      }
      
      public function set §%!H§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§8]§ = param1;
         }
      }
      
      public function get texture() : Texture
      {
         return this.§7#§;
      }
   }
}
